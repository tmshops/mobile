import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/auth/session_repository.dart';
import '../../../../core/auth/user_profile.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/error/guard.dart';
import '../../domain/entities/profile_edit.dart';
import '../../domain/repositories/profile_edit_repository.dart';
import '../datasources/profile_edit_remote_data_source.dart';

@LazySingleton(as: ProfileEditRepository)
class ProfileEditRepositoryImpl implements ProfileEditRepository {
  const ProfileEditRepositoryImpl(this._remote, this._session);

  final ProfileEditRemoteDataSource _remote;
  final SessionRepository _session;

  @override
  Future<Either<Failure, UserProfile>> save(
    String languageCode,
    ProfileDraft draft,
  ) => _updating(() async {
    final d = draft.normalized;
    return (await _remote.save(languageCode, {
      'first_name': d.firstName,
      'last_name': d.lastName,
      'email': d.email.isEmpty ? null : d.email,
      'region_id': d.regionId,
    })).toEntity();
  });

  @override
  Future<Either<Failure, PhoneChange>> startPhoneChange(
    String languageCode,
    String phone,
  ) => guardCall(() async {
    final json = await _remote.startPhoneChange(languageCode, phone);
    return PhoneChange(
      requestId: json['request_id'] as String,
      codeLength: json['code_length'] as int,
      destination: json['destination'] as String,
    );
  });

  @override
  Future<Either<Failure, UserProfile>> confirmPhoneChange(
    String languageCode,
    String requestId,
    String code,
  ) => _updating(
    () async => (await _remote.confirmPhoneChange(
      languageCode,
      requestId,
      code,
    )).toEntity(),
  );

  Future<Either<Failure, UserProfile>> _updating(
    Future<UserProfile> Function() run,
  ) async {
    final result = await guardCall(run);
    final profile = result.toNullable();
    if (profile != null) await _session.update(profile);
    return result;
  }
}
