import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../domain/entities/account_settings.dart';
import '../../domain/repositories/settings_repository.dart';

part 'settings_cubit.freezed.dart';

@freezed
abstract class SettingsState with _$SettingsState {
  const factory SettingsState({
    @Default(true) bool isLoading,
    AccountSettings? settings,

    /// The account settings could not be loaded; the device ones (language,
    /// region, sign-out) still work.
    Failure? failure,
  }) = _SettingsState;
}

/// Server side of «Настройки» (UI_DESIGN §7.24): code channel and
/// notification topics. Changes show at once and roll back on failure.
@injectable
class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit(this._repository) : super(const SettingsState());

  final SettingsRepository _repository;

  Future<void> load(String languageCode) async {
    emit(state.copyWith(isLoading: true, failure: null));
    final result = await _repository.load(languageCode);
    if (isClosed) return;
    emit(
      result.match(
        (failure) => state.copyWith(isLoading: false, failure: failure),
        (settings) => SettingsState(isLoading: false, settings: settings),
      ),
    );
  }

  /// A linked channel only; linking goes through its own sheet first.
  Future<Either<Failure, Unit>> setCodeChannel(
    String languageCode,
    CodeChannel channel,
  ) => _change(
    (s) => s.copyWith(codeChannel: channel),
    () => _repository.setCodeChannel(languageCode, channel),
  );

  Future<Either<Failure, Unit>> setTopic(
    String languageCode,
    String id, {
    required bool isOn,
  }) => _change(
    (s) => s.copyWith(
      topics: [
        for (final t in s.topics)
          if (t.id == id && !t.isRequired) t.copyWith(isOn: isOn) else t,
      ],
    ),
    () => _repository.setTopic(languageCode, id, isOn: isOn),
  );

  Future<Either<Failure, Unit>> _change(
    AccountSettings Function(AccountSettings) apply,
    Future<Either<Failure, Unit>> Function() save,
  ) async {
    final before = state.settings;
    if (before == null) return left(const UnexpectedFailure());
    emit(state.copyWith(settings: apply(before)));
    final result = await save();
    if (!isClosed && result.isLeft()) emit(state.copyWith(settings: before));
    return result;
  }
}
