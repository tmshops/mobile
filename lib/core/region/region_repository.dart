import 'package:fpdart/fpdart.dart';
import 'package:hive_ce/hive_ce.dart';
import 'package:injectable/injectable.dart';

import '../database/hive_registry.dart';
import '../error/exceptions.dart';
import '../error/failures.dart';
import 'region.dart';
import 'region_data_source.dart';

/// Region list and the customer's choice. Kept in `core` because cart,
/// product and checkout all price by region (TZ §3: RegionCubit is global).
abstract interface class RegionRepository {
  Future<Either<Failure, List<Region>>> getRegions(String languageCode);

  /// `null` until the customer picks one (onboarding will ask).
  String? get savedRegionId;

  Future<void> saveRegionId(String id);
}

@LazySingleton(as: RegionRepository)
class RegionRepositoryImpl implements RegionRepository {
  const RegionRepositoryImpl(
    this._remote,
    @Named(HiveBoxes.settings) this._settings,
  );

  final RegionRemoteDataSource _remote;
  final Box<String> _settings;

  @override
  Future<Either<Failure, List<Region>>> getRegions(String languageCode) async {
    try {
      final raw = await _remote.getRegions(languageCode);
      return right([
        for (final r in raw)
          if (r case {'id': final id, 'name': final name})
            Region(id: id, name: name),
      ]);
    } on NetworkException {
      return left(const NetworkFailure());
    } on ServerException catch (e) {
      return left(ServerFailure(code: e.code, message: e.message));
    }
  }

  @override
  String? get savedRegionId => _settings.get(SettingsKeys.regionId);

  @override
  Future<void> saveRegionId(String id) =>
      _settings.put(SettingsKeys.regionId, id);
}
