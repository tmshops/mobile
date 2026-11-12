import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/app/app_info.dart';
import '../../domain/entities/app_config.dart';
import '../../domain/repositories/config_repository.dart';

part 'app_config_cubit.freezed.dart';

@freezed
abstract class AppConfigState with _$AppConfigState {
  const factory AppConfigState({
    AppConfig? config,
    @Default(AppAccess.open) AppAccess access,

    /// A request is running («Проверить снова» shows a spinner).
    @Default(false) bool isChecking,

    /// The last request failed: retried when the network comes back.
    @Default(false) bool hasFailed,
  }) = _AppConfigState;
}

/// App config and the access it grants (TZ §3 AppConfigCubit, §4 guards).
///
/// Starts open: until a config arrives the app is usable, so a slow or
/// missing network never locks the customer out.
@lazySingleton
class AppConfigCubit extends Cubit<AppConfigState> {
  AppConfigCubit(this._repository, {@ignoreParam String? appVersion})
    : _version = appVersion ?? AppInfo.version,
      super(const AppConfigState());

  final ConfigRepository _repository;
  final String _version;

  /// The device copy first (instant gate on launch), then the server.
  Future<void> load(String languageCode) async {
    if (state.config == null) {
      final cached = await _repository.cached();
      if (isClosed) return;
      cached.match((_) {}, (config) {
        if (config != null) _show(config);
      });
    }
    emit(state.copyWith(isChecking: true));
    final result = await _repository.fetch(languageCode);
    if (isClosed) return;
    result.match(
      (_) => emit(state.copyWith(isChecking: false, hasFailed: true)),
      (config) => _show(config),
    );
  }

  /// A request answered 403 «blocked» (TZ §8.1).
  void accountBlocked() => emit(state.copyWith(access: AppAccess.blocked));

  void _show(AppConfig config) =>
      emit(AppConfigState(config: config, access: config.accessFor(_version)));
}
