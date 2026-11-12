import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../domain/entities/account_settings.dart';
import '../../domain/repositories/settings_repository.dart';

part 'delete_account_cubit.freezed.dart';

/// Warning → SMS code → deleted (UI_DESIGN §7.24, store requirement).
enum DeleteStep { checking, warning, code, deleted }

@freezed
abstract class DeleteAccountState with _$DeleteAccountState {
  const factory DeleteAccountState({
    @Default(DeleteStep.checking) DeleteStep step,
    DeletionCheck? check,
    CodeRequest? request,
    @Default(false) bool isBusy,
    Failure? failure,
  }) = _DeleteAccountState;
}

@injectable
class DeleteAccountCubit extends Cubit<DeleteAccountState> {
  DeleteAccountCubit(this._repository) : super(const DeleteAccountState());

  final SettingsRepository _repository;

  Future<void> load(String languageCode) async {
    emit(const DeleteAccountState());
    final result = await _repository.deletionCheck(languageCode);
    if (isClosed) return;
    emit(
      result.match(
        (failure) => state.copyWith(failure: failure),
        (check) => DeleteAccountState(step: DeleteStep.warning, check: check),
      ),
    );
  }

  /// «Продолжить»: sends the confirmation code.
  Future<void> requestCode() async {
    if (state.isBusy || !(state.check?.canDelete ?? false)) return;
    emit(state.copyWith(isBusy: true, failure: null));
    final result = await _repository.requestDeletionCode();
    if (isClosed) return;
    emit(
      result.match(
        (failure) => state.copyWith(isBusy: false, failure: failure),
        (request) => state.copyWith(
          step: DeleteStep.code,
          request: request,
          isBusy: false,
        ),
      ),
    );
  }

  Future<void> delete(String languageCode, String code) async {
    final request = state.request;
    if (request == null || state.isBusy) return;
    emit(state.copyWith(isBusy: true, failure: null));
    final result = await _repository.deleteAccount(
      languageCode,
      request.requestId,
      code,
    );
    if (isClosed) return;
    emit(
      result.match(
        (failure) => state.copyWith(isBusy: false, failure: failure),
        (_) => state.copyWith(step: DeleteStep.deleted, isBusy: false),
      ),
    );
  }
}
