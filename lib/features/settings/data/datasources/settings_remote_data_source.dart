import 'package:injectable/injectable.dart';

import '../../../../core/dev/fake_backend/fake_settings_backend.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/network/network_info.dart';
import '../models/settings_models.dart';

/// Account settings API. Throws `NetworkException` / `ServerException`.
abstract interface class SettingsRemoteDataSource {
  Future<AccountSettingsModel> load(String languageCode);

  Future<void> setCodeChannel(String languageCode, String channel);

  Future<void> setTopic(String languageCode, String id, {required bool isOn});

  /// `{request_id, code_length}`.
  Future<Map<String, dynamic>> startEmailLink(
    String languageCode,
    String email,
  );

  Future<void> confirmEmailLink(
    String languageCode,
    String requestId,
    String code,
  );

  /// `{bot, code}`.
  Future<Map<String, dynamic>> startTelegramLink();

  Future<bool> checkTelegramLink();

  Future<DeletionCheckModel> deletionCheck(String languageCode);

  /// `{request_id, code_length}`.
  Future<Map<String, dynamic>> requestDeletionCode();

  Future<void> deleteAccount(
    String languageCode,
    String requestId,
    String code,
  );
}

@LazySingleton(as: SettingsRemoteDataSource, env: [Environment.dev])
class FakeSettingsRemoteDataSource implements SettingsRemoteDataSource {
  FakeSettingsRemoteDataSource(this._networkInfo, this._backend);

  final NetworkInfo _networkInfo;
  final FakeSettingsBackend _backend;

  static const _latency = Duration(milliseconds: 350);

  Future<T> _call<T>(T Function() run) async {
    if (!await _networkInfo.isOnline) throw const NetworkException();
    await Future<void>.delayed(_latency);
    try {
      return run();
    } on ServerException {
      rethrow;
    } on Object catch (e) {
      throw ServerException(cause: e);
    }
  }

  @override
  Future<AccountSettingsModel> load(String languageCode) => _call(
    () => AccountSettingsModel.fromJson(_backend.settings(languageCode)),
  );

  @override
  Future<void> setCodeChannel(String languageCode, String channel) =>
      _call(() => _backend.setCodeChannel(languageCode, channel));

  @override
  Future<void> setTopic(String languageCode, String id, {required bool isOn}) =>
      _call(() => _backend.setNotification(languageCode, id, isOn: isOn));

  @override
  Future<Map<String, dynamic>> startEmailLink(
    String languageCode,
    String email,
  ) => _call(() => _backend.startEmailLink(languageCode, email));

  @override
  Future<void> confirmEmailLink(
    String languageCode,
    String requestId,
    String code,
  ) => _call(() => _backend.confirmEmailLink(languageCode, requestId, code));

  @override
  Future<Map<String, dynamic>> startTelegramLink() =>
      _call(_backend.startTelegramLink);

  @override
  Future<bool> checkTelegramLink() => _call(_backend.checkTelegramLink);

  @override
  Future<DeletionCheckModel> deletionCheck(String languageCode) => _call(
    () => DeletionCheckModel.fromJson(_backend.deletionCheck(languageCode)),
  );

  @override
  Future<Map<String, dynamic>> requestDeletionCode() =>
      _call(_backend.requestDeletionCode);

  @override
  Future<void> deleteAccount(
    String languageCode,
    String requestId,
    String code,
  ) => _call(() => _backend.deleteAccount(languageCode, requestId, code));
}
