import 'package:injectable/injectable.dart';

import '../../../../core/dev/fake_backend/fake_auth_backend.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/network/network_info.dart';
import '../models/login_models.dart';

/// Sign-in API. Throws `NetworkException` / `ServerException`.
abstract interface class LoginRemoteDataSource {
  Future<CodeRequestModel> requestCode(String languageCode, String phone);

  Future<LoginResponseModel> verify(
    String languageCode,
    String requestId,
    String code,
  );
}

@LazySingleton(as: LoginRemoteDataSource, env: [Environment.dev])
class FakeLoginRemoteDataSource implements LoginRemoteDataSource {
  const FakeLoginRemoteDataSource(this._backend, this._networkInfo);

  final FakeAuthBackend _backend;
  final NetworkInfo _networkInfo;

  static const _latency = Duration(milliseconds: 600);

  @override
  Future<CodeRequestModel> requestCode(String languageCode, String phone) =>
      _call(
        () => CodeRequestModel.fromJson(
          _backend.requestCode(languageCode, phone),
        ),
      );

  @override
  Future<LoginResponseModel> verify(
    String languageCode,
    String requestId,
    String code,
  ) => _call(
    () => LoginResponseModel.fromJson(
      _backend.verify(languageCode, requestId, code),
    ),
  );

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
}
