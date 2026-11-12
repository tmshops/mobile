import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../domain/entities/checkout.dart';
import '../../domain/usecases/checkout_use_cases.dart';

part 'payment_cubit.freezed.dart';

@freezed
sealed class PaymentState with _$PaymentState {
  /// «Проверяем оплату…».
  const factory PaymentState.checking() = PaymentChecking;

  const factory PaymentState.paid() = PaymentPaid;

  /// [reason] is server text; [failure] is set when the check itself
  /// failed (offline) rather than the bank refusing.
  const factory PaymentState.failed({String? reason, Failure? failure}) =
      PaymentFailed;
}

/// Asks the server for the payment result until it is final, for up to a
/// minute (TZ §5.13: the app never decides on its own).
@injectable
class PaymentCubit extends Cubit<PaymentState> {
  PaymentCubit(this._getStatus, this._restart)
    : super(const PaymentState.checking());

  final GetPaymentStatusUseCase _getStatus;
  final RestartPaymentUseCase _restart;

  static const interval = Duration(milliseconds: 1500);
  static const timeout = Duration(seconds: 60);

  int _run = 0;

  Future<void> check({
    required String languageCode,
    required String paymentId,
  }) async {
    final run = ++_run;
    emit(const PaymentState.checking());
    final deadline = DateTime.now().add(timeout);
    while (!isClosed && run == _run) {
      final result = await _getStatus(
        languageCode: languageCode,
        paymentId: paymentId,
      );
      if (isClosed || run != _run) return;
      final done = result.match(
        (failure) {
          emit(PaymentState.failed(failure: failure));
          return true;
        },
        (check) => switch (check.status) {
          PaymentStatus.paid => () {
            emit(const PaymentState.paid());
            return true;
          }(),
          PaymentStatus.failed => () {
            emit(PaymentState.failed(reason: check.reason));
            return true;
          }(),
          PaymentStatus.pending => false,
        },
      );
      if (done) return;
      if (DateTime.now().isAfter(deadline)) {
        // Still pending after a minute: the order is kept; the customer
        // can retry, and the server will settle it by webhook.
        emit(const PaymentState.failed());
        return;
      }
      await Future<void>.delayed(interval);
    }
  }

  /// «Повторить оплату»: a new payment for the same order.
  Future<void> retry({
    required String languageCode,
    required String orderNumber,
  }) async {
    emit(const PaymentState.checking());
    final result = await _restart(orderNumber);
    if (isClosed) return;
    await result.match(
      (failure) async => emit(PaymentState.failed(failure: failure)),
      (paymentId) => check(languageCode: languageCode, paymentId: paymentId),
    );
  }

  @override
  Future<void> close() {
    _run++;
    return super.close();
  }
}
