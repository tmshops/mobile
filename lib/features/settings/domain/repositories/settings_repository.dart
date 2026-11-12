import 'package:fpdart/fpdart.dart';

import '../../../../core/error/failures.dart';
import '../entities/account_settings.dart';

/// Account settings and account deletion (TZ §5.19).
abstract interface class SettingsRepository {
  Future<Either<Failure, AccountSettings>> load(String languageCode);

  /// Only a linked channel can be chosen.
  Future<Either<Failure, Unit>> setCodeChannel(
    String languageCode,
    CodeChannel channel,
  );

  Future<Either<Failure, Unit>> setTopic(
    String languageCode,
    String id, {
    required bool isOn,
  });

  /// Sends a code to [email].
  Future<Either<Failure, CodeRequest>> startEmailLink(
    String languageCode,
    String email,
  );

  /// Links the email; it becomes the code channel.
  Future<Either<Failure, Unit>> confirmEmailLink(
    String languageCode,
    String requestId,
    String code,
  );

  Future<Either<Failure, TelegramLink>> startTelegramLink();

  /// Right(true) once the bot got the code.
  Future<Either<Failure, bool>> checkTelegramLink();

  Future<Either<Failure, DeletionCheck>> deletionCheck(String languageCode);

  /// Sends a code by SMS to confirm deletion.
  Future<Either<Failure, CodeRequest>> requestDeletionCode();

  Future<Either<Failure, Unit>> deleteAccount(
    String languageCode,
    String requestId,
    String code,
  );
}
