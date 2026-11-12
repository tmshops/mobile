import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/auth/user_profile.dart';

part 'profile_edit.freezed.dart';

/// What «Личные данные» can change directly (TZ §5.14). The phone changes
/// only through a code sent to the new number.
@freezed
abstract class ProfileDraft with _$ProfileDraft {
  const factory ProfileDraft({
    @Default('') String firstName,
    @Default('') String lastName,
    @Default('') String email,
    String? regionId,
  }) = _ProfileDraft;

  const ProfileDraft._();

  factory ProfileDraft.of(UserProfile profile) => ProfileDraft(
    firstName: profile.firstName,
    lastName: profile.lastName,
    email: profile.email ?? '',
    regionId: profile.regionId,
  );

  /// Trimmed, as it is compared and sent.
  ProfileDraft get normalized => copyWith(
    firstName: firstName.trim(),
    lastName: lastName.trim(),
    email: email.trim(),
  );

  /// Empty is fine (email is optional); anything else must look like one.
  bool get isEmailValid =>
      email.trim().isEmpty ||
      RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$').hasMatch(email.trim());

  /// «АА» for the avatar while typing.
  String get initials => [firstName.trim(), lastName.trim()]
      .where((part) => part.isNotEmpty)
      .map((part) => part[0])
      .join()
      .toUpperCase();
}

/// A code went to the new number.
@freezed
abstract class PhoneChange with _$PhoneChange {
  const factory PhoneChange({
    required String requestId,
    required int codeLength,

    /// Masked new number, ready to show.
    required String destination,
  }) = _PhoneChange;
}
