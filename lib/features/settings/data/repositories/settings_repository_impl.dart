import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/error/guard.dart';
import '../../domain/entities/account_settings.dart';
import '../../domain/repositories/settings_repository.dart';
import '../datasources/settings_remote_data_source.dart';
import '../models/settings_models.dart';

@LazySingleton(as: SettingsRepository)
class SettingsRepositoryImpl implements SettingsRepository {
  const SettingsRepositoryImpl(this._remote);

  final SettingsRemoteDataSource _remote;

  @override
  Future<Either<Failure, AccountSettings>> load(String languageCode) =>
      guardCall(() async => (await _remote.load(languageCode)).toEntity());

  @override
  Future<Either<Failure, Unit>> setCodeChannel(
    String languageCode,
    CodeChannel channel,
  ) => _unit(() => _remote.setCodeChannel(languageCode, channel.name));

  @override
  Future<Either<Failure, Unit>> setTopic(
    String languageCode,
    String id, {
    required bool isOn,
  }) => _unit(() => _remote.setTopic(languageCode, id, isOn: isOn));

  @override
  Future<Either<Failure, CodeRequest>> startEmailLink(
    String languageCode,
    String email,
  ) => guardCall(
    () async => _codeRequest(await _remote.startEmailLink(languageCode, email)),
  );

  @override
  Future<Either<Failure, Unit>> confirmEmailLink(
    String languageCode,
    String requestId,
    String code,
  ) => _unit(() => _remote.confirmEmailLink(languageCode, requestId, code));

  @override
  Future<Either<Failure, TelegramLink>> startTelegramLink() =>
      guardCall(() async {
        final json = await _remote.startTelegramLink();
        return TelegramLink(
          bot: json['bot'] as String,
          code: json['code'] as String,
        );
      });

  @override
  Future<Either<Failure, bool>> checkTelegramLink() =>
      guardCall(_remote.checkTelegramLink);

  @override
  Future<Either<Failure, DeletionCheck>> deletionCheck(String languageCode) =>
      guardCall(
        () async => (await _remote.deletionCheck(languageCode)).toEntity(),
      );

  @override
  Future<Either<Failure, CodeRequest>> requestDeletionCode() =>
      guardCall(() async => _codeRequest(await _remote.requestDeletionCode()));

  @override
  Future<Either<Failure, Unit>> deleteAccount(
    String languageCode,
    String requestId,
    String code,
  ) => _unit(() => _remote.deleteAccount(languageCode, requestId, code));

  static CodeRequest _codeRequest(Map<String, dynamic> json) => CodeRequest(
    requestId: json['request_id'] as String,
    codeLength: json['code_length'] as int,
  );

  static Future<Either<Failure, Unit>> _unit(Future<void> Function() run) =>
      guardCall(() async {
        await run();
        return unit;
      });
}
