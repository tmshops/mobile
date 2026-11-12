import 'package:injectable/injectable.dart';

import '../../../../core/auth/session_data.dart';
import '../../../../core/auth/token_storage.dart';
import '../../../../core/dev/fake_backend/fake_auth_backend.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/network/network_info.dart';

/// Profile edit API. Throws `NetworkException` / `ServerException`.
abstract interface class ProfileEditRemoteDataSource {
  Future<UserProfileModel> save(String languageCode, Map<String, dynamic> body);

  /// `{request_id, code_length, destination}`.
  Future<Map<String, dynamic>> startPhoneChange(
    String languageCode,
    String phone,
  );

  Future<UserProfileModel> confirmPhoneChange(
    String languageCode,
    String requestId,
    String code,
  );
}

/// Dev stand-in. The real one gets the token from the HTTP client.
@LazySingleton(as: ProfileEditRemoteDataSource, env: [Environment.dev])
class FakeProfileEditRemoteDataSource implements ProfileEditRemoteDataSource {
  FakeProfileEditRemoteDataSource(
    this._backend,
    this._tokens,
    this._networkInfo,
  );

  final FakeAuthBackend _backend;
  final TokenStorage _tokens;
  final NetworkInfo _networkInfo;

  static const _latency = Duration(milliseconds: 400);

  Future<T> _call<T>(T Function(String accessToken) run) async {
    if (!await _networkInfo.isOnline) throw const NetworkException();
    await Future<void>.delayed(_latency);
    final tokens = await _tokens.read();
    if (tokens == null) throw const ServerException(code: 'unauthorized');
    try {
      return run(tokens.access);
    } on ServerException {
      rethrow;
    } on Object catch (e) {
      throw ServerException(cause: e);
    }
  }

  @override
  Future<UserProfileModel> save(
    String languageCode,
    Map<String, dynamic> body,
  ) => _call(
    (token) => UserProfileModel.fromJson(
      _backend.updateProfile(languageCode, token, body),
    ),
  );

  @override
  Future<Map<String, dynamic>> startPhoneChange(
    String languageCode,
    String phone,
  ) => _call((token) => _backend.startPhoneChange(languageCode, token, phone));

  @override
  Future<UserProfileModel> confirmPhoneChange(
    String languageCode,
    String requestId,
    String code,
  ) => _call(
    (_) => UserProfileModel.fromJson(
      _backend.confirmPhoneChange(languageCode, requestId, code),
    ),
  );
}
