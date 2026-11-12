import 'package:fpdart/fpdart.dart';

import '../../../../core/auth/user_profile.dart';
import '../../../../core/error/failures.dart';
import '../entities/profile_edit.dart';

/// Changes to the customer's own data. A saved change becomes the
/// session's profile at once, so every screen shows it.
abstract interface class ProfileEditRepository {
  Future<Either<Failure, UserProfile>> save(
    String languageCode,
    ProfileDraft draft,
  );

  /// Sends a code to [phone] (8 national digits).
  Future<Either<Failure, PhoneChange>> startPhoneChange(
    String languageCode,
    String phone,
  );

  Future<Either<Failure, UserProfile>> confirmPhoneChange(
    String languageCode,
    String requestId,
    String code,
  );
}
