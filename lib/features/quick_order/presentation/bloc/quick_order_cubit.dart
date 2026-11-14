import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/cart/cart_item.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/quick_order.dart';
import '../../domain/repositories/quick_order_repository.dart';

part 'quick_order_cubit.freezed.dart';

/// Guest: phone → code → done. Signed in: phone (shown, not typed) → done.
enum QuickOrderStep { phone, code, done }

@freezed
abstract class QuickOrderState with _$QuickOrderState {
  const factory QuickOrderState({
    @Default(QuickOrderStep.phone) QuickOrderStep step,

    /// A request is on its way: buttons show a spinner, taps are ignored.
    @Default(false) bool isBusy,
    QuickOrderCode? code,
    Failure? failure,

    /// Set once the order is placed.
    String? orderNumber,
  }) = _QuickOrderState;
}

/// The quick order sheet (UI_DESIGN §7.15, TZ §5.11). The lines come with
/// each call, so one cubit serves both the product page and the cart.
@injectable
class QuickOrderCubit extends Cubit<QuickOrderState> {
  QuickOrderCubit(this._repository) : super(const QuickOrderState());

  final QuickOrderRepository _repository;

  /// 8 national digits, as [PhoneField] reports them.
  static const phoneLength = 8;

  /// Guest: «Получить код».
  Future<void> requestCode(String languageCode, String phone) async {
    if (phone.length != phoneLength || state.isBusy) return;
    emit(state.copyWith(isBusy: true, failure: null));
    final result = await _repository.requestCode(languageCode, phone);
    if (isClosed) return;
    emit(
      result.match(
        (failure) => state.copyWith(isBusy: false, failure: failure),
        (code) => QuickOrderState(step: QuickOrderStep.code, code: code),
      ),
    );
  }

  /// Guest: the code is typed in full.
  Future<void> confirmCode(
    String languageCode,
    String code,
    List<CartItem> lines,
  ) async {
    final request = state.code;
    if (request == null || state.isBusy) return;
    emit(state.copyWith(isBusy: true, failure: null));
    final result = await _repository.confirmAsGuest(
      languageCode,
      requestId: request.requestId,
      code: code,
      lines: lines,
    );
    _finish(result);
  }

  /// Signed in: «Подтвердить».
  Future<void> place(String languageCode, List<CartItem> lines) async {
    if (state.isBusy) return;
    emit(state.copyWith(isBusy: true, failure: null));
    final result = await _repository.place(languageCode, lines);
    _finish(result);
  }

  /// Typing in the code boxes clears the last error.
  void codeEdited() {
    if (state.failure != null) emit(state.copyWith(failure: null));
  }

  /// «Другой номер» from the code step.
  void back() => emit(const QuickOrderState());

  void _finish(Either<Failure, String> result) {
    if (isClosed) return;
    emit(
      result.match(
        (failure) => state.copyWith(isBusy: false, failure: failure),
        (number) =>
            QuickOrderState(step: QuickOrderStep.done, orderNumber: number),
      ),
    );
  }
}
