import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/auth/user_profile.dart';
import '../../../../core/error/failures.dart';
import '../entities/code_request.dart';
import '../repositories/login_repository.dart';

@lazySingleton
class RequestCodeUseCase {
  const RequestCodeUseCase(this._repository);

  final LoginRepository _repository;

  Future<Either<Failure, CodeRequest>> call({
    required String languageCode,
    required String phone,
  }) => _repository.requestCode(languageCode: languageCode, phone: phone);
}

@lazySingleton
class VerifyCodeUseCase {
  const VerifyCodeUseCase(this._repository);

  final LoginRepository _repository;

  Future<Either<Failure, UserProfile>> call({
    required String languageCode,
    required String requestId,
    required String code,
  }) => _repository.verifyCode(
    languageCode: languageCode,
    requestId: requestId,
    code: code,
  );
}
