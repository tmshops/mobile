import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tmshop/core/auth/auth_cubit.dart';
import 'package:tmshop/core/auth/user_profile.dart';
import 'package:tmshop/core/l10n/l10n.dart';
import 'package:tmshop/core/theme/theme.dart';
import 'package:tmshop/core/utils/money_format.dart';
import 'package:tmshop/features/profile/presentation/pages/profile_page.dart';

import '../../helpers/mock_blocs.dart';

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
            onComingSoon: () => taps.add('soon'),
          ),
        ),
      ),
    );
    await tester.pump();
  }

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

  testWidgets('customer: header, debt, wholesale badge, orders', (
    tester,
  ) async {
    await pump(tester, const AuthState.signedIn(_customer));
    expect(find.text('Айна Атаева'), findsOneWidget);
    expect(find.text('+993 65 12 77 77'), findsOneWidget);
    expect(find.text(ru.profileWholesaleBadge), findsOneWidget);
    expect(find.text(MoneyFormat.tmt(ru, 86)), findsOneWidget);

    await tester.tap(find.text(ru.profileOrders));
    await tester.tap(find.text(ru.profileParcels));
    await tester.ensureVisible(find.text(ru.profilePriceAlerts));
    await tester.tap(find.text(ru.profileViewed));
    await tester.tap(find.text(ru.profilePriceAlerts));
    expect(taps, ['orders', 'parcels', 'viewed', 'alerts']);
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

  testWidgets('sign-out asks first', (tester) async {
    await pump(tester, const AuthState.signedIn(_customer));
    final row = find.text(ru.profileSignOut);
    await tester.ensureVisible(row);
    await tester.pump();
    await tester.tap(row);
    await tester.pump(const Duration(milliseconds: 500));
    expect(find.text(ru.profileSignOutTitle), findsOneWidget);
    await tester.tap(find.text(ru.profileSignOut).last);
    await tester.pump(const Duration(milliseconds: 500));
    verify(() => cubits.auth.signOut()).called(1);
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
