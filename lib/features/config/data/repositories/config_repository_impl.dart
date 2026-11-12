import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/error/guard.dart';
import '../../domain/entities/app_config.dart';
import '../../domain/repositories/config_repository.dart';
import '../datasources/config_data_sources.dart';
import '../models/app_config_model.dart';

@LazySingleton(as: ConfigRepository)
class ConfigRepositoryImpl implements ConfigRepository {
  const ConfigRepositoryImpl(this._remote, this._local);

  final ConfigRemoteDataSource _remote;
  final ConfigLocalDataSource _local;

  @override
  Future<Either<Failure, AppConfig?>> cached() =>
      guardCall(() async => (await _local.read())?.toEntity());

  @override
  Future<Either<Failure, AppConfig>> fetch(String languageCode) =>
      guardCall(() async {
        final config = await _remote.fetch(languageCode);
        try {
          await _local.write(config);
        } on CacheException {
          // A failed cache write must not hide the fresh config.
        }
        return config.toEntity();
      });
}
