import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/auth/session_repository.dart';
import '../../../../core/auth/user_profile.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/code_request.dart';
import '../../domain/repositories/login_repository.dart';
import '../datasources/login_remote_data_source.dart';

@LazySingleton(as: LoginRepository)
class LoginRepositoryImpl implements LoginRepository {
  LoginRepositoryImpl(
    this._remote,
    this._session, {
    @ignoreParam DateTime Function()? now,
  }) : _now = now ?? DateTime.now;

  final LoginRemoteDataSource _remote;
  final SessionRepository _session;
  final DateTime Function() _now;

  @override
  Future<Either<Failure, CodeRequest>> requestCode({
    required String languageCode,
    required String phone,
  }) => _guard(
    () async =>
        (await _remote.requestCode(languageCode, phone)).toEntity(_now()),
  );

  @override
  Future<Either<Failure, UserProfile>> verifyCode({
    required String languageCode,
    required String requestId,
    required String code,
  }) => _guard(() async {
    final response = await _remote.verify(languageCode, requestId, code);
    final profile = response.profile.toEntity();
    await _session.start(
      SessionTokens(
        access: response.accessToken,
        refresh: response.refreshToken,
      ),
      profile,
    );
    return profile;
  });

  static Future<Either<Failure, T>> _guard<T>(Future<T> Function() run) async {
    try {
      return right(await run());
    } on NetworkException {
      return left(const NetworkFailure());
    } on ServerException catch (e) {
      return left(ServerFailure(code: e.code, message: e.message));
    } on CacheException {
      return left(const CacheFailure());
    }
  }
}
