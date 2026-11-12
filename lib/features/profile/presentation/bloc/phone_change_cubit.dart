import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../domain/entities/profile_edit.dart';
import '../../domain/repositories/profile_edit_repository.dart';

part 'phone_change_cubit.freezed.dart';

enum PhoneChangeStep { phone, code, done }

@freezed
abstract class PhoneChangeState with _$PhoneChangeState {
  const factory PhoneChangeState({
    @Default(PhoneChangeStep.phone) PhoneChangeStep step,
    PhoneChange? request,
    @Default(false) bool isBusy,
    Failure? failure,
  }) = _PhoneChangeState;
}

/// New number → code sent to it → changed (UI_DESIGN §7.24).
@injectable
class PhoneChangeCubit extends Cubit<PhoneChangeState> {
  PhoneChangeCubit(this._repository) : super(const PhoneChangeState());

  final ProfileEditRepository _repository;

  /// 8 national digits, as [PhoneField] reports them.
  static const phoneLength = 8;

  Future<void> send(String languageCode, String phone) async {
    if (phone.length != phoneLength || state.isBusy) return;
    emit(state.copyWith(isBusy: true, failure: null));
    final result = await _repository.startPhoneChange(languageCode, phone);
    if (isClosed) return;
    emit(
      result.match(
        (failure) => state.copyWith(isBusy: false, failure: failure),
        (request) =>
            PhoneChangeState(step: PhoneChangeStep.code, request: request),
      ),
    );
  }

  Future<void> confirm(String languageCode, String code) async {
    final request = state.request;
    if (request == null || state.isBusy) return;
    emit(state.copyWith(isBusy: true, failure: null));
    final result = await _repository.confirmPhoneChange(
      languageCode,
      request.requestId,
      code,
    );
    if (isClosed) return;
    emit(
      result.match(
        (failure) => state.copyWith(isBusy: false, failure: failure),
        (_) => const PhoneChangeState(step: PhoneChangeStep.done),
      ),
    );
  }

  /// «Изменить номер» from the code step.
  void back() => emit(const PhoneChangeState());
}
