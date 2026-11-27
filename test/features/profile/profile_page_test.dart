import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tmshop/core/auth/auth_cubit.dart';
import 'package:tmshop/core/auth/user_profile.dart';
import 'package:tmshop/core/di/injection.dart';
import 'package:tmshop/core/l10n/l10n.dart';
import 'package:tmshop/core/product/presentation/for_you_bloc.dart';
import 'package:tmshop/core/theme/theme.dart';
import 'package:tmshop/core/utils/money_format.dart';
import 'package:tmshop/features/profile/presentation/pages/profile_page.dart';

import '../../helpers/home_fixtures.dart';
import '../../helpers/mock_blocs.dart';

const _ordersSection = 'orders-section';

const _customer = UserProfile(
  id: 'u',
  phone: '65127777',
  firstName: 'Айна',
  lastName: 'Атаева',
  balance: 120,
  debt: 86,
  bonuses: 35,
  isWholesale: true,
);

void main() {
  final ru = lookupAppLocalizations(AppLocales.ru);
  late GlobalCubits cubits;
  late List<String> taps;
  late MockForYouBloc forYou;

  setUp(() {
    forYou = MockForYouBloc();
    when(() => forYou.state).thenReturn(
      ForYouState(
        items: samplePage('ru').items,
        nextCursor: '1',
        status: ForYouStatus.idle,
      ),
    );
    getIt.registerFactory<ForYouBloc>(() => forYou);
  });

  tearDown(getIt.reset);

  Future<void> pump(
    WidgetTester tester,
    AuthState auth, {
    Locale locale = AppLocales.ru,
    double textScale = 1,
    double width = 360,
  }) async {
    cubits = GlobalCubits(locale: locale, auth: auth);
    taps = [];
    tester.view.physicalSize = Size(width, 800) * tester.view.devicePixelRatio;
    addTearDown(tester.view.resetPhysicalSize);
    await tester.pumpWidget(
      MultiBlocProvider(
        providers: cubits.providers,
        child: MaterialApp(
          theme: AppTheme.light(),
          locale: locale,
          localizationsDelegates: AppLocales.delegates,
          supportedLocales: AppLocales.supported,
          builder: (context, app) => MediaQuery(
            data: MediaQuery.of(
              context,
            ).copyWith(textScaler: TextScaler.linear(textScale)),
            child: app!,
          ),
          home: ProfilePage(
            onLogin: () => taps.add('login'),
            onOpenOrders: () => taps.add('orders'),
            onOpenParcels: () => taps.add('parcels'),
            onOpenViewed: () => taps.add('viewed'),
            onOpenPriceAlerts: () => taps.add('alerts'),
            onOpenBalance: () => taps.add('balance'),
            onOpenSurcharges: () => taps.add('surcharges'),
            onOpenSettings: () => taps.add('settings'),
            onEditProfile: () => taps.add('edit'),
            onOpenNotifications: () => taps.add('notifications'),
            onOpenMyReviews: () => taps.add('reviews'),
            onOpenInfo: () => taps.add('info'),
            onOpenSupport: () => taps.add('support'),
            onOpenAddresses: () => taps.add('addresses'),
            onOpenWholesale: () => taps.add('wholesale'),
            onOpenProduct: (p) => taps.add('product:${p.id}'),
            ordersSection: const Text(_ordersSection),
          ),
        ),
      ),
    );
    await tester.pump();
  }

  testWidgets('«Мои заказы» sits under the header, signed-in only', (
    tester,
  ) async {
    await pump(tester, const AuthState.guest());
    expect(find.text(_ordersSection), findsNothing);

    await pump(tester, const AuthState.signedIn(_customer));
    expect(find.text(_ordersSection), findsOneWidget);
    final header = tester
        .getTopLeft(find.textContaining(_customer.firstName))
        .dy;
    final orders = tester.getTopLeft(find.text(_ordersSection)).dy;
    final menu = tester.getTopLeft(find.text(ru.profileOrders)).dy;
    expect(orders, greaterThan(header));
    expect(orders, lessThan(menu));
  });

  testWidgets('recommendations grid at the bottom opens a product', (
    tester,
  ) async {
    await pump(tester, const AuthState.signedIn(_customer));
    final first = samplePage('ru').items.first;
    final tile = find.text(first.title);
    await tester.dragUntilVisible(
      tile,
      find.byType(CustomScrollView),
      const Offset(0, -300),
    );
    expect(find.text(ru.profileRecommendations), findsOneWidget);
    await tester.ensureVisible(tile);
    await tester.pump();
    await tester.tap(tile);
    expect(taps, ['product:${first.id}']);
    await tester.pumpWidget(const SizedBox());
  });

  testWidgets('scrolling near the end asks for the next page', (tester) async {
    await pump(tester, const AuthState.signedIn(_customer));
    verify(() => forYou.add(const ForYouEvent.started('ru'))).called(1);
    await tester.drag(find.byType(CustomScrollView), const Offset(0, -3000));
    await tester.pump();
    verify(
      () => forYou.add(const ForYouEvent.nextPageRequested()),
    ).called(greaterThan(0));
    await tester.pumpWidget(const SizedBox());
  });

  testWidgets('guest: sign-in card, language and region', (tester) async {
    await pump(tester, const AuthState.guest());
    expect(find.text(ru.profileGuestTitle), findsOneWidget);
    expect(find.text(ru.profileLanguage), findsOneWidget);
    expect(find.text(ru.profileOrders), findsNothing);

    await tester.tap(find.text(ru.profileSignIn));
    expect(taps, ['login']);

    await tester.tap(find.text('TK'));
    verify(() => cubits.locale.select(AppLocales.tk)).called(1);
  });

  testWidgets('guest: «Поддержка» opens the chat (via login)', (tester) async {
    await pump(tester, const AuthState.guest());
    final row = find.text(ru.profileSupport);
    await tester.ensureVisible(row);
    await tester.tap(row);
    expect(taps, ['support']);
  });

  testWidgets('customer: header, debt, wholesale badge, orders', (
    tester,
  ) async {
    await pump(tester, const AuthState.signedIn(_customer));
    expect(find.text('Айна Атаева'), findsOneWidget);
    expect(find.text('+993 65 12 77 77'), findsOneWidget);
    expect(find.text(ru.profileWholesaleBadge), findsOneWidget);
    expect(find.text(MoneyFormat.tmt(ru, 86)), findsOneWidget);

    await tester.tap(find.byTooltip(ru.profileEditTitle));
    expect(taps, ['edit']);
    taps.clear();
    // The debt figure pays the debt.
    await tester.tap(find.text(MoneyFormat.tmt(ru, 86)));
    await tester.tap(find.text(ru.profileOrders));
    await tester.tap(find.text(ru.profileParcels));
    await tester.tap(find.text(ru.profileSurcharges));
    await tester.tap(find.text(ru.profileBalance).last);
    await tester.ensureVisible(find.text(ru.profilePriceAlerts));
    await tester.tap(find.text(ru.profileViewed));
    await tester.tap(find.text(ru.profilePriceAlerts));
    expect(taps, [
      'surcharges',
      'orders',
      'parcels',
      'surcharges',
      'balance',
      'viewed',
      'alerts',
    ]);
    verify(() => cubits.auth.refresh('ru')).called(1);
  });

  testWidgets('no debt, no debt pill', (tester) async {
    await pump(
      tester,
      const AuthState.signedIn(UserProfile(id: 'u', phone: '65123456')),
    );
    expect(find.text(ru.profileDebt), findsNothing);
    // Without a name the phone is the title.
    expect(find.text('+993 65 12 34 56'), findsOneWidget);
  });

  testWidgets('settings open from the menu; sign-out lives there', (
    tester,
  ) async {
    await pump(tester, const AuthState.signedIn(_customer));
    final row = find.text(ru.profileSettings);
    await tester.ensureVisible(row);
    await tester.pump();
    await tester.tap(row);
    expect(taps, ['settings']);
    expect(find.text(ru.profileSignOut), findsNothing);
  });

  for (final width in [360.0, 412.0]) {
    for (final auth in const [
      AuthState.guest(),
      AuthState.signedIn(_customer),
    ]) {
      testWidgets(
        '${auth.runtimeType} fits in Turkmen at 1.3× on ${width.toInt()} dp',
        (tester) async {
          await pump(
            tester,
            auth,
            locale: AppLocales.tk,
            textScale: 1.3,
            width: width,
          );
          for (var i = 0; i < 6; i++) {
            await tester.drag(
              find.byType(Scrollable).first,
              const Offset(0, -600),
              warnIfMissed: false,
            );
            await tester.pump();
          }
          expect(tester.takeException(), isNull);
        },
      );
    }
  }
}
