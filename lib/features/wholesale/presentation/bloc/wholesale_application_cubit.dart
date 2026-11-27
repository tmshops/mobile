import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../domain/entities/wholesale.dart';
import '../../domain/repositories/wholesale_repository.dart';

part 'wholesale_application_cubit.freezed.dart';

@freezed
abstract class WholesaleApplicationState with _$WholesaleApplicationState {
  const factory WholesaleApplicationState({
    @Default(true) bool isLoading,

    /// `null` until loaded.
    WholesaleApplication? application,

    /// Loading failed: nothing to show but «Повторить».
    Failure? loadFailure,
    @Default(WholesaleForm()) WholesaleForm form,

    /// «Подать снова» after a rejection: the form instead of the status.
    @Default(false) bool isReapplying,
    @Default(false) bool isSending,
    Failure? sendFailure,
  }) = _WholesaleApplicationState;

  const WholesaleApplicationState._();

  /// The form is shown: never applied, or applying again.
  bool get showsForm => application is WholesaleNone || isReapplying;

  bool get canSend => form.isComplete && !isSending;
}

/// «Стать оптовиком» (UI_DESIGN §7.23): benefits and a form, then the
/// status card (На рассмотрении / Одобрена / Отклонена → «Подать снова»).
@injectable
class WholesaleApplicationCubit extends Cubit<WholesaleApplicationState> {
  WholesaleApplicationCubit(this._repository)
    : super(const WholesaleApplicationState());

  final WholesaleRepository _repository;

  /// [prefill]: name and phone of the signed-in customer.
  Future<void> load(String languageCode, {WholesaleForm? prefill}) async {
    emit(
      state.copyWith(
        isLoading: true,
        loadFailure: null,
        form: prefill ?? state.form,
      ),
    );
    final result = await _repository.application(languageCode);
    if (isClosed) return;
    result.match(
      (failure) => emit(state.copyWith(isLoading: false, loadFailure: failure)),
      (application) =>
          emit(state.copyWith(isLoading: false, application: application)),
    );
  }

  void changed(WholesaleForm form) =>
      emit(state.copyWith(form: form, sendFailure: null));

  /// After a rejection: the same answers, to correct.
  void reapply() {
    final previous = switch (state.application) {
      WholesaleRejected(:final form) => form,
      _ => state.form,
    };
    emit(state.copyWith(isReapplying: true, form: previous));
  }

  Future<void> submit(String languageCode) async {
    if (!state.canSend) return;
    emit(state.copyWith(isSending: true, sendFailure: null));
    final result = await _repository.apply(languageCode, state.form);
    if (isClosed) return;
    result.match(
      (failure) => emit(state.copyWith(isSending: false, sendFailure: failure)),
      (application) => emit(
        state.copyWith(
          isSending: false,
          isReapplying: false,
          application: application,
        ),
      ),
    );
  }
}
