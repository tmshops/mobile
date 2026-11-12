import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../dev/fake_backend/fake_auth_backend.dart';
import '../error/exceptions.dart';
import '../network/network_info.dart';
import 'user_profile.dart';

part 'session_data.freezed.dart';
part 'session_data.g.dart';

/// Profile as the API sends it.
@freezed
abstract class UserProfileModel with _$UserProfileModel {
  const factory UserProfileModel({
    required String id,
    required String phone,
    @Default('') String firstName,
    @Default('') String lastName,
    String? email,
    String? regionId,
    @Default(0) int balance,
    @Default(0) int debt,
    @Default(0) int bonuses,
    @Default(false) bool isWholesale,
  }) = _UserProfileModel;

  const UserProfileModel._();

  factory UserProfileModel.fromJson(Map<String, dynamic> json) =>
      _$UserProfileModelFromJson(json);

  factory UserProfileModel.fromEntity(UserProfile p) => UserProfileModel(
    id: p.id,
    phone: p.phone,
    firstName: p.firstName,
    lastName: p.lastName,
    email: p.email,
    regionId: p.regionId,
    balance: p.balance,
    debt: p.debt,
    bonuses: p.bonuses,
    isWholesale: p.isWholesale,
  );

  UserProfile toEntity() => UserProfile(
    id: id,
    phone: phone,
    firstName: firstName,
    lastName: lastName,
    email: email,
    regionId: regionId,
    balance: balance,
    debt: debt,
    bonuses: bonuses,
    isWholesale: isWholesale,
  );
}

/// Profile and sign-out API. Throws `NetworkException` / `ServerException`
/// (code `unauthorized` for a dead session).
abstract interface class SessionRemoteDataSource {
  Future<UserProfileModel> profile(String languageCode, String accessToken);

  /// Revokes the refresh token (and, later, the push token) on the server.
  Future<void> revoke(String refreshToken);
}

@LazySingleton(as: SessionRemoteDataSource, env: [Environment.dev])
class FakeSessionRemoteDataSource implements SessionRemoteDataSource {
  const FakeSessionRemoteDataSource(this._backend, this._networkInfo);

  final FakeAuthBackend _backend;
  final NetworkInfo _networkInfo;

  static const _latency = Duration(milliseconds: 400);

  @override
  Future<UserProfileModel> profile(
    String languageCode,
    String accessToken,
  ) async {
    if (!await _networkInfo.isOnline) throw const NetworkException();
    await Future<void>.delayed(_latency);
    try {
      return UserProfileModel.fromJson(_backend.profile(accessToken));
    } on ServerException {
      rethrow;
    } on Object catch (e) {
      throw ServerException(cause: e);
    }
  }

  @override
  Future<void> revoke(String refreshToken) async {
    if (!await _networkInfo.isOnline) throw const NetworkException();
  }
}
