import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../domain/entities/wallet.dart';
import '../../domain/repositories/wallet_repository.dart';

part 'surcharges_cubit.freezed.dart';

@freezed
abstract class SurchargesState with _$SurchargesState {
  const factory SurchargesState({
    @Default(true) bool isLoading,
    @Default(<SurchargeBill>[]) List<SurchargeBill> surcharges,
    @Default(<Refund>[]) List<Refund> refunds,

    /// Balance available for «С баланса».
    @Default(0) int balance,
    Failure? failure,

    /// The surcharge whose payment is being started.
    String? payingId,
  }) = _SurchargesState;
}

/// «Доплаты и возвраты» (UI_DESIGN §7.18, TZ §5.16).
@injectable
class SurchargesCubit extends Cubit<SurchargesState> {
  SurchargesCubit(this._repository) : super(const SurchargesState());

  final WalletRepository _repository;

  Future<void> load(String languageCode) async {
    emit(state.copyWith(isLoading: true, failure: null));
    final (surcharges, refunds, summary) = await (
      _repository.surcharges(languageCode),
      _repository.refunds(languageCode),
      _repository.summary(),
    ).wait;
    if (isClosed) return;
    final failure =
        surcharges.getLeft().toNullable() ?? refunds.getLeft().toNullable();
    if (failure != null) {
      emit(state.copyWith(isLoading: false, failure: failure));
      return;
    }
    emit(
      SurchargesState(
        isLoading: false,
        surcharges: surcharges.getOrElse((_) => const []),
        refunds: refunds.getOrElse((_) => const []),
        // Without a balance, «С баланса» is simply not offered.
        balance: summary.map((s) => s.balance).getOrElse((_) => 0),
      ),
    );
  }

  /// Pays [bill]. From the balance it is done at once and leaves the
  /// list; by card the caller checks the returned payment.
  Future<Either<Failure, PaymentStart>> pay(
    String languageCode,
    SurchargeBill bill,
    PayMethod method,
  ) async {
    if (state.payingId != null) {
      return left(const UnexpectedFailure());
    }
    emit(state.copyWith(payingId: bill.id));
    final result = await _repository.paySurcharge(
      languageCode,
      bill.id,
      method,
    );
    if (isClosed) return result;
    final isPaid = result.match((_) => false, (s) => s is PaymentStartPaid);
    emit(
      state.copyWith(
        payingId: null,
        surcharges: isPaid
            ? [
                for (final s in state.surcharges)
                  if (s.id != bill.id) s,
              ]
            : state.surcharges,
        balance: isPaid ? state.balance - bill.amount : state.balance,
      ),
    );
    return result;
  }
}
