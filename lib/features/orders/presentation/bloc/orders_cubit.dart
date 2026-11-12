import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../domain/entities/order.dart';
import '../../domain/usecases/orders_use_cases.dart';
import 'loadable.dart';

part 'orders_cubit.freezed.dart';

@freezed
abstract class OrdersState with _$OrdersState {
  const factory OrdersState({
    @Default(OrderTab.active) OrderTab tab,
    @Default(<OrderTab, Loadable<List<OrderSummary>>>{})
    Map<OrderTab, Loadable<List<OrderSummary>>> tabs,

    /// «Повторить» in progress for this order.
    String? repeating,

    /// Result of the last «Повторить», for the screen to put in the cart.
    RepeatedOrder? repeated,
    Failure? repeatFailure,
  }) = _OrdersState;

  const OrdersState._();

  Loadable<List<OrderSummary>> get current =>
      tabs[tab] ?? const Loadable<List<OrderSummary>>();
}

/// «Мои заказы»: three tabs, each loaded the first time it is opened.
@injectable
class OrdersCubit extends Cubit<OrdersState> {
  OrdersCubit(this._getOrders, this._repeat) : super(const OrdersState());

  final GetOrdersUseCase _getOrders;
  final RepeatOrderUseCase _repeat;

  String _languageCode = '';

  Future<void> load(String languageCode) {
    _languageCode = languageCode;
    return _load(state.tab);
  }

  Future<void> selectTab(OrderTab tab) async {
    if (tab == state.tab) return;
    emit(state.copyWith(tab: tab));
    if (state.tabs[tab]?.hasData ?? false) return;
    await _load(tab);
  }

  Future<void> refresh() => _load(state.tab);

  Future<void> _load(OrderTab tab) async {
    final slot = state.tabs[tab] ?? const Loadable<List<OrderSummary>>();
    if (slot.isLoading || _languageCode.isEmpty) return;
    _put(tab, slot.started());
    final result = await _getOrders(languageCode: _languageCode, tab: tab);
    if (isClosed) return;
    final now = state.tabs[tab] ?? slot;
    _put(tab, result.match(now.failed, now.loaded));
  }

  void _put(OrderTab tab, Loadable<List<OrderSummary>> slot) =>
      emit(state.copyWith(tabs: {...state.tabs, tab: slot}));

  /// «Повторить»: the lines come back in [OrdersState.repeated].
  Future<void> repeat(String number) async {
    if (state.repeating != null) return;
    emit(
      state.copyWith(repeating: number, repeated: null, repeatFailure: null),
    );
    final result = await _repeat(languageCode: _languageCode, number: number);
    if (isClosed) return;
    emit(
      result.match(
        (failure) => state.copyWith(repeating: null, repeatFailure: failure),
        (repeated) => state.copyWith(repeating: null, repeated: repeated),
      ),
    );
  }
}
