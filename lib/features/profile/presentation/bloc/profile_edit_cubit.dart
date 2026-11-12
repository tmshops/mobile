import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/auth/user_profile.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/profile_edit.dart';
import '../../domain/repositories/profile_edit_repository.dart';

part 'profile_edit_cubit.freezed.dart';

@freezed
abstract class ProfileEditState with _$ProfileEditState {
  const factory ProfileEditState({
    /// What the form shows.
    @Default(ProfileDraft()) ProfileDraft draft,

    /// What the server has; «Сохранить» needs a difference.
    @Default(ProfileDraft()) ProfileDraft saved,
    @Default(false) bool isSaving,
    Failure? failure,
  }) = _ProfileEditState;

  const ProfileEditState._();

  bool get isChanged => draft.normalized != saved.normalized;

  bool get canSave => isChanged && draft.isEmailValid && !isSaving;
}

/// «Личные данные» (UI_DESIGN §7.24): name, email and region.
@injectable
class ProfileEditCubit extends Cubit<ProfileEditState> {
  ProfileEditCubit(this._repository) : super(const ProfileEditState());

  final ProfileEditRepository _repository;

  void start(UserProfile profile) {
    final draft = ProfileDraft.of(profile);
    emit(ProfileEditState(draft: draft, saved: draft));
  }

  void change(ProfileDraft draft) =>
      emit(state.copyWith(draft: draft, failure: null));

  Future<Either<Failure, UserProfile>> save(String languageCode) async {
    if (!state.canSave) return left(const UnexpectedFailure());
    emit(state.copyWith(isSaving: true, failure: null));
    final draft = state.draft.normalized;
    final result = await _repository.save(languageCode, draft);
    if (isClosed) return result;
    emit(
      result.match(
        (failure) => state.copyWith(isSaving: false, failure: failure),
        (_) => state.copyWith(isSaving: false, saved: draft, draft: draft),
      ),
    );
    return result;
  }
}
