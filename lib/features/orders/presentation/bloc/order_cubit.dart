import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart' show Either;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../domain/entities/order.dart';
import '../../domain/usecases/orders_use_cases.dart';
import 'loadable.dart';

part 'order_cubit.freezed.dart';

/// What the customer asked the server to do on this order.
enum OrderAction { cancel, resolve, repeat }

@freezed
abstract class OrderState with _$OrderState {
  const factory OrderState({
    @Default(Loadable<OrderDetails>()) Loadable<OrderDetails> order,

    /// Running change; its buttons show a spinner, the rest are disabled.
    OrderAction? busy,

    /// Problem action being sent (to spin the right button).
    String? busyActionId,
    Failure? actionFailure,

    /// The last change that succeeded, for a confirming toast.
    OrderAction? done,
    RepeatedOrder? repeated,
  }) = _OrderState;

  const OrderState._();

  /// Changes need fresh data and the network (TZ §8: offline is view only).
  bool get canChange =>
      busy == null && this.order.hasData && !this.order.isFromCache;
}

/// Order details (TZ §5.15): every change returns the new server state.
@injectable
class OrderCubit extends Cubit<OrderState> {
  OrderCubit(this._getOrder, this._cancel, this._resolve, this._repeat)
    : super(const OrderState());

  final GetOrderUseCase _getOrder;
  final CancelOrderUseCase _cancel;
  final ResolveProblemUseCase _resolve;
  final RepeatOrderUseCase _repeat;

  String _languageCode = '';
  String _number = '';

  Future<void> load({
    required String languageCode,
    required String number,
  }) async {
    _languageCode = languageCode;
    _number = number;
    await refresh();
  }

  Future<void> refresh() async {
    if (state.order.isLoading || _number.isEmpty) return;
    emit(state.copyWith(order: state.order.started()));
    final result = await _getOrder(
      languageCode: _languageCode,
      number: _number,
    );
    if (isClosed) return;
    emit(
      state.copyWith(
        order: result.match(state.order.failed, state.order.loaded),
      ),
    );
  }

  Future<void> cancel(String reasonId) => _change(
    OrderAction.cancel,
    () => _cancel(
      languageCode: _languageCode,
      number: _number,
      reasonId: reasonId,
    ),
  );

  Future<void> resolve({required String itemId, required String actionId}) =>
      _change(
        OrderAction.resolve,
        () => _resolve(
          languageCode: _languageCode,
          number: _number,
          itemId: itemId,
          actionId: actionId,
        ),
        actionId: actionId,
      );

  Future<void> repeat() async {
    if (!state.canChange) return;
    emit(
      state.copyWith(
        busy: OrderAction.repeat,
        actionFailure: null,
        done: null,
        repeated: null,
      ),
    );
    final result = await _repeat(languageCode: _languageCode, number: _number);
    if (isClosed) return;
    emit(
      result.match(
        (failure) => state.copyWith(busy: null, actionFailure: failure),
        (repeated) => state.copyWith(
          busy: null,
          done: OrderAction.repeat,
          repeated: repeated,
        ),
      ),
    );
  }

  Future<void> _change(
    OrderAction action,
    Future<Either<Failure, OrderDetails>> Function() run, {
    String? actionId,
  }) async {
    if (!state.canChange) return;
    emit(
      state.copyWith(
        busy: action,
        busyActionId: actionId,
        actionFailure: null,
        done: null,
      ),
    );
    final result = await run();
    if (isClosed) return;
    emit(
      result.match(
        (failure) => state.copyWith(
          busy: null,
          busyActionId: null,
          actionFailure: failure,
        ),
        (order) => state.copyWith(
          busy: null,
          busyActionId: null,
          done: action,
          order: Loadable(data: order, fetchedAt: DateTime.now()),
        ),
      ),
    );
  }
}
