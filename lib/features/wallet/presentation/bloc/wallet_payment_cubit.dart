import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../domain/entities/wallet.dart';
import '../../domain/repositories/wallet_repository.dart';

part 'wallet_payment_cubit.freezed.dart';

/// A card payment from the wallet screens, for the result page.
@freezed
sealed class WalletPayment with _$WalletPayment {
  /// Top-up of [amount] TMT.
  const factory WalletPayment.topUp({
    required String paymentId,
    required int amount,
  }) = WalletTopUp;

  /// Surcharge [surchargeId] of [amount] TMT.
  const factory WalletPayment.surcharge({
    required String paymentId,
    required int amount,
    required String surchargeId,
  }) = WalletSurchargePayment;
}

@freezed
sealed class WalletPaymentState with _$WalletPaymentState {
  const factory WalletPaymentState.checking() = WalletPaymentChecking;

  const factory WalletPaymentState.paid() = WalletPaymentPaid;

  /// [reason] is bank text from the server; [failure] means the check
  /// itself failed (offline). Neither: still pending after the timeout.
  const factory WalletPaymentState.failed({String? reason, Failure? failure}) =
      WalletPaymentFailed;
}

/// Asks the server for the result until it is final (TZ §5.13: the app
/// never decides on its own), for up to a minute.
@injectable
class WalletPaymentCubit extends Cubit<WalletPaymentState> {
  WalletPaymentCubit(this._repository, {@ignoreParam Duration? interval})
    : _interval = interval ?? const Duration(milliseconds: 1500),
      super(const WalletPaymentState.checking());

  final WalletRepository _repository;
  final Duration _interval;

  static const timeout = Duration(seconds: 60);

  int _run = 0;

  Future<void> check(String languageCode, WalletPayment payment) async {
    final run = ++_run;
    emit(const WalletPaymentState.checking());
    final deadline = DateTime.now().add(timeout);
    while (!isClosed && run == _run) {
      final result = await _repository.paymentStatus(
        languageCode,
        payment.paymentId,
      );
      if (isClosed || run != _run) return;
      final next = result.match<WalletPaymentState?>(
        (failure) => WalletPaymentState.failed(failure: failure),
        (check) => switch (check?.status) {
          WalletPaymentStatus.paid => const WalletPaymentState.paid(),
          WalletPaymentStatus.failed => WalletPaymentState.failed(
            reason: check?.reason,
          ),
          WalletPaymentStatus.pending => null,
          // Unknown payment: nothing more to wait for.
          null => const WalletPaymentState.failed(),
        },
      );
      if (next != null) return emit(next);
      if (DateTime.now().isAfter(deadline)) {
        return emit(const WalletPaymentState.failed());
      }
      await Future<void>.delayed(_interval);
    }
  }

  /// «Повторить»: a new card payment for the same thing. Returns the new
  /// payment, or `null` if it could not be started.
  Future<WalletPayment?> retry(
    String languageCode,
    WalletPayment payment,
  ) async {
    emit(const WalletPaymentState.checking());
    final WalletPayment? next = switch (payment) {
      WalletTopUp(:final amount) =>
        (await _repository.topUp(languageCode, amount)).match((failure) {
          emit(WalletPaymentState.failed(failure: failure));
          return null;
        }, (id) => payment.copyWith(paymentId: id)),
      WalletSurchargePayment(:final surchargeId) =>
        (await _repository.paySurcharge(
          languageCode,
          surchargeId,
          PayMethod.card,
        )).match(
          (failure) {
            emit(WalletPaymentState.failed(failure: failure));
            return null;
          },
          (start) => switch (start) {
            PaymentStartCard(:final paymentId) => payment.copyWith(
              paymentId: paymentId,
            ),
            PaymentStartPaid() => null,
          },
        ),
    };
    if (isClosed) return next;
    if (next != null) await check(languageCode, next);
    return next;
  }

  @override
  Future<void> close() {
    _run++;
    return super.close();
  }
}
