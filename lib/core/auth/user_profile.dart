import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile.freezed.dart';

/// The signed-in customer (TZ §5.14). Money is whole TMT, from the server.
@freezed
abstract class UserProfile with _$UserProfile {
  const factory UserProfile({
    required String id,

    /// 8 national digits, without +993.
    required String phone,
    @Default('') String firstName,
    @Default('') String lastName,
    String? email,
    String? regionId,
    @Default(0) int balance,

    /// Owed for surcharges; a parcel with debt is not handed over (TZ §6.3).
    @Default(0) int debt,
    @Default(0) int bonuses,

    /// Wholesale group: «Опт» badge and wholesale screens (TZ §6.4).
    @Default(false) bool isWholesale,
  }) = _UserProfile;

  const UserProfile._();

  String get fullName => [
    firstName.trim(),
    lastName.trim(),
  ].where((part) => part.isNotEmpty).join(' ');

  bool get hasName => fullName.isNotEmpty;

  /// «АА» for the avatar circle; empty when no name is known yet.
  String get initials => [firstName.trim(), lastName.trim()]
      .where((part) => part.isNotEmpty)
      .map((part) => part[0])
      .join()
      .toUpperCase();
}

/// Access and refresh tokens of a session (TZ §7.2).
class SessionTokens {
  const SessionTokens({required this.access, required this.refresh});

  final String access;
  final String refresh;
}
