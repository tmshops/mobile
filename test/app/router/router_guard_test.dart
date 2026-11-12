import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tmshop/app/router/app_router.dart';
import 'package:tmshop/app/router/app_routes.dart';
import 'package:tmshop/app/router/home_navigation.dart';
import 'package:tmshop/core/auth/auth_cubit.dart';
import 'package:tmshop/core/auth/user_profile.dart';
import 'package:tmshop/core/di/injection.dart';
import 'package:tmshop/core/l10n/l10n.dart';
import 'package:tmshop/core/theme/theme.dart';
import 'package:tmshop/features/auth/presentation/bloc/login_bloc.dart';
import 'package:tmshop/features/auth/presentation/widgets/login_view.dart';
import 'package:tmshop/features/orders/presentation/bloc/order_cubit.dart';
import 'package:tmshop/features/orders/presentation/bloc/orders_cubit.dart';
import 'package:tmshop/features/orders/presentation/widgets/order_view.dart';
import 'package:tmshop/features/orders/presentation/widgets/orders_view.dart';

import 'package:tmshop/features/favourites/presentation/bloc/viewed_cubit.dart';

import '../../helpers/mock_blocs.dart';

class _MockLoginBloc extends MockBloc<LoginEvent, LoginState>
    implements LoginBloc {}

class _MockOrdersCubit extends MockCubit<OrdersState> implements OrdersCubit {}

class _MockOrderCubit extends MockCubit<OrderState> implements OrderCubit {}

class _MockViewedCubit extends MockCubit<ViewedState> implements ViewedCubit {}

void main() {
  late GlobalCubits cubits;
  late GoRouter router;

  setUp(() {
    final login = _MockLoginBloc();
    when(() => login.state).thenReturn(const LoginState());
    final orders = _MockOrdersCubit();
    when(() => orders.state).thenReturn(const OrdersState());
    when(() => orders.load(any())).thenAnswer((_) async {});
    final order = _MockOrderCubit();
    when(() => order.state).thenReturn(const OrderState());
    when(
      () => order.load(
        languageCode: any(named: 'languageCode'),
        number: any(named: 'number'),
      ),
    ).thenAnswer((_) async {});
    final viewed = _MockViewedCubit();
    when(() => viewed.state).thenReturn(const ViewedState(isLoading: false));
    when(viewed.load).thenAnswer((_) async {});
    getIt
      ..registerFactory<ViewedCubit>(() => viewed)
      ..registerFactory<LoginBloc>(() => login)
      ..registerFactory<OrdersCubit>(() => orders)
      ..registerFactory<OrderCubit>(() => order);
  });

  tearDown(getIt.reset);

  Future<void> pump(WidgetTester tester, AuthState auth) async {
    cubits = GlobalCubits(auth: auth);
    router = createAppRouter(
      auth: cubits.auth,
      initialLocation: AppRoutes.profile,
    );
    addTearDown(router.dispose);
    await tester.pumpWidget(
      MultiBlocProvider(
        providers: cubits.providers,
        child: MaterialApp.router(
          theme: AppTheme.light(),
          locale: AppLocales.ru,
          localizationsDelegates: AppLocales.delegates,
          supportedLocales: AppLocales.supported,
          routerConfig: router,
        ),
      ),
    );
    await tester.pump();
  }

  String location() =>
      router.routerDelegate.currentConfiguration.uri.toString();

  Future<void> go(WidgetTester tester, String to) async {
    router.go(to);
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 500));
  }

  testWidgets('a guest is sent to login, remembering where to', (tester) async {
    await pump(tester, const AuthState.guest());
    await go(tester, AppRoutes.orders);

    expect(find.byType(LoginView), findsOneWidget);
    expect(location(), AppRoutes.loginFrom(AppRoutes.orders));
  });

  testWidgets('price alerts need an account; viewed does not', (tester) async {
    await pump(tester, const AuthState.guest());
    await go(tester, AppRoutes.priceAlerts);
    expect(location(), AppRoutes.loginFrom(AppRoutes.priceAlerts));

    await go(tester, AppRoutes.viewed);
    expect(location(), AppRoutes.viewed);
  });

  test('money screens need an account; a parcel opens its payment', () {
    expect(AppRoutes.needsLogin(AppRoutes.balance), isTrue);
    expect(AppRoutes.needsLogin(AppRoutes.settings), isTrue);
    expect(AppRoutes.needsLogin(AppRoutes.profileEdit), isTrue);
    expect(AppRoutes.needsLogin(AppRoutes.notifications), isTrue);
    expect(AppRoutes.needsLogin(AppRoutes.deleteAccount), isTrue);
    expect(AppRoutes.needsLogin(AppRoutes.walletPay), isTrue);
    final link = AppRoutes.surchargesWith(payParcel: 'P-5518');
    expect(AppRoutes.needsLogin(link), isTrue);
    expect(Uri.parse(link).queryParameters[AppRoutes.parcelPayParam], 'P-5518');
    expect(
      AppRoutes.surchargesWith(isRefunds: true),
      '${AppRoutes.surcharges}?${AppRoutes.tabParam}=${AppRoutes.refundsTab}',
    );
  });

  testWidgets('checkout keeps its promo code through login', (tester) async {
    await pump(tester, const AuthState.guest());
    final checkout = AppRoutes.checkoutWith('TM10');
    await go(tester, checkout);
    expect(
      Uri.parse(location()).queryParameters[AppRoutes.fromParam],
      checkout,
    );
  });

  testWidgets('a customer opens orders; website links map to them', (
    tester,
  ) async {
    await pump(
      tester,
      const AuthState.signedIn(UserProfile(id: 'u', phone: '65123456')),
    );
    await go(tester, AppRoutes.orders);
    expect(find.byType(OrdersView), findsOneWidget);

    await go(tester, '/account/orders/10228');
    expect(location(), AppRoutes.order('10228'));
    expect(find.byType(OrderView), findsOneWidget);
  });

  testWidgets('notification links: tabs switch, unbuilt ones toast', (
    tester,
  ) async {
    await pump(
      tester,
      const AuthState.signedIn(UserProfile(id: 'u', phone: '65123456')),
    );
    openAppLink(
      tester.element(find.byType(Scaffold).first),
      '/account/orders/10228',
    );
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 500));
    expect(location(), AppRoutes.order('10228'));

    openAppLink(tester.element(find.byType(Scaffold).first), '/support');
    await tester.pump();
    expect(
      find.text(lookupAppLocalizations(AppLocales.ru).comingSoon),
      findsOneWidget,
    );
    expect(location(), AppRoutes.order('10228'));
  });
}
