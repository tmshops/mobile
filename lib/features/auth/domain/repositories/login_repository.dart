import 'package:fpdart/fpdart.dart';

import '../../../../core/auth/user_profile.dart';
import '../../../../core/error/failures.dart';
import '../entities/code_request.dart';

/// Server error codes the login screens react to; the text comes from the
/// server in the customer's language (TZ §5.2).
abstract final class LoginErrorCodes {
  /// Wrong code; the message says how many attempts are left.
  static const invalidCode = 'invalid_code';

  /// Out of attempts or out of time: a new code is needed.
  static const codeExpired = 'code_expired';

  static const tooManyRequests = 'too_many_requests';
  static const blocked = 'blocked';
}

abstract interface class LoginRepository {
  Future<Either<Failure, CodeRequest>> requestCode({
    required String languageCode,
    required String phone,
  });

  /// On success the session is started: the whole app is signed in.
  Future<Either<Failure, UserProfile>> verifyCode({
    required String languageCode,
    required String requestId,
    required String code,
  });
}
