import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tmshop/core/auth/auth_cubit.dart';
import 'package:tmshop/core/cart/cart_cubit.dart';
import 'package:tmshop/core/cart/cart_item.dart';
import 'package:tmshop/core/l10n/l10n.dart';
import 'package:tmshop/core/locale/locale_cubit.dart';
import 'package:tmshop/core/network/connectivity_cubit.dart';
import 'package:tmshop/core/region/region.dart';
import 'package:tmshop/core/region/region_cubit.dart';
import 'package:tmshop/features/home/presentation/bloc/for_you_bloc.dart';
import 'package:tmshop/features/home/presentation/bloc/home_bloc.dart';

class MockHomeBloc extends MockBloc<HomeEvent, HomeState> implements HomeBloc {}

class MockForYouBloc extends MockBloc<ForYouEvent, ForYouState>
    implements ForYouBloc {}

class MockLocaleCubit extends MockCubit<Locale> implements LocaleCubit {}

class MockConnectivityCubit extends MockCubit<bool>
    implements ConnectivityCubit {}

class MockCartCubit extends MockCubit<CartState> implements CartCubit {}

class MockRegionCubit extends MockCubit<RegionState> implements RegionCubit {}

class MockAuthCubit extends MockCubit<AuthState> implements AuthCubit {}

const sampleRegions = [
  Region(id: 'ashgabat', name: 'Ашхабад'),
  Region(id: 'mary', name: 'Марыйский велаят'),
];

/// The app-wide cubits, stubbed with fixed values.
class GlobalCubits {
  GlobalCubits({
    Locale locale = AppLocales.ru,
    bool isOnline = true,
    CartState cart = const CartState(),
    AuthState auth = const AuthState.guest(),
  }) {
    registerFallbackValue(
      const CartItem(
        productId: '',
        title: '',
        imageUrl: '',
        price: 0,
        quantity: 1,
      ),
    );
    when(() => this.locale.state).thenReturn(locale);
    registerFallbackValue(AppLocales.ru);
    when(this.locale.toggle).thenAnswer((_) async {});
    when(() => this.locale.select(any())).thenAnswer((_) async {});
    when(() => connectivity.state).thenReturn(isOnline);
    when(() => this.cart.state).thenReturn(cart);
    when(() => this.cart.add(any())).thenAnswer((_) async {});
    when(() => region.state).thenReturn(
      const RegionState(selectedId: 'ashgabat', regions: sampleRegions),
    );
    when(() => region.select(any())).thenAnswer((_) async {});
    when(() => this.auth.state).thenReturn(auth);
    when(() => this.auth.refresh(any())).thenAnswer((_) async => null);
    when(this.auth.signOut).thenAnswer((_) async {});
  }

  final locale = MockLocaleCubit();
  final connectivity = MockConnectivityCubit();
  final cart = MockCartCubit();
  final region = MockRegionCubit();
  final auth = MockAuthCubit();

  List<BlocProvider> get providers => [
    BlocProvider<LocaleCubit>.value(value: locale),
    BlocProvider<ConnectivityCubit>.value(value: connectivity),
    BlocProvider<CartCubit>.value(value: cart),
    BlocProvider<RegionCubit>.value(value: region),
    BlocProvider<AuthCubit>.value(value: auth),
  ];
}
