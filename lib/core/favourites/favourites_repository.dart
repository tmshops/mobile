import 'dart:convert';

import 'package:fpdart/fpdart.dart';
import 'package:hive_ce/hive_ce.dart';
import 'package:injectable/injectable.dart';

import '../database/hive_registry.dart';
import '../dev/fake_backend/fake_favourites_backend.dart';
import '../error/exceptions.dart';
import '../error/failures.dart';
import '../error/guard.dart';
import '../network/network_info.dart';
import 'favourite.dart';
import 'favourite_model.dart';

/// Favourites of this device and, once signed in, of the account
/// (TZ §5.16: a guest's live in Hive and are merged on sign-in).
abstract interface class FavouritesRepository {
  Future<Either<Failure, List<Favourite>>> loadLocal();

  Future<Either<Failure, Unit>> saveLocal(List<Favourite> items);

  /// Sends the device list and returns the merged account list.
  Future<Either<Failure, List<Favourite>>> merge(
    String languageCode,
    List<Favourite> items,
  );

  Future<Either<Failure, Unit>> add(Favourite item);

  Future<Either<Failure, Unit>> remove(List<String> ids);
}

/// Favourites API. Throws `NetworkException` / `ServerException`.
abstract interface class FavouritesRemoteDataSource {
  Future<List<FavouriteModel>> merge(
    String languageCode,
    List<Map<String, dynamic>> items,
  );

  Future<void> add(Map<String, dynamic> item);

  Future<void> remove(List<String> ids);
}

@LazySingleton(as: FavouritesRemoteDataSource, env: [Environment.dev])
class FakeFavouritesRemoteDataSource implements FavouritesRemoteDataSource {
  FakeFavouritesRemoteDataSource(this._networkInfo, this._backend);

  final NetworkInfo _networkInfo;
  final FakeFavouritesBackend _backend;

  static const _latency = Duration(milliseconds: 300);

  Future<void> _request() async {
    if (!await _networkInfo.isOnline) throw const NetworkException();
    await Future<void>.delayed(_latency);
  }

  @override
  Future<List<FavouriteModel>> merge(
    String languageCode,
    List<Map<String, dynamic>> items,
  ) async {
    await _request();
    try {
      return [
        for (final json in _backend.merge(languageCode, items))
          FavouriteModel.fromJson(json),
      ];
    } on Object catch (e) {
      throw ServerException(cause: e);
    }
  }

  @override
  Future<void> add(Map<String, dynamic> item) async {
    await _request();
    _backend.add(item);
  }

  @override
  Future<void> remove(List<String> ids) async {
    await _request();
    _backend.remove(ids);
  }
}

@LazySingleton(as: FavouritesRepository)
class FavouritesRepositoryImpl implements FavouritesRepository {
  const FavouritesRepositoryImpl(
    this._remote,
    @Named(HiveBoxes.favourites) this._box,
  );

  final FavouritesRemoteDataSource _remote;
  final Box<String> _box;

  static const _key = 'items';

  @override
  Future<Either<Failure, List<Favourite>>> loadLocal() async {
    try {
      final raw = _box.get(_key);
      if (raw == null) return right(const []);
      final list = (jsonDecode(raw) as List<dynamic>)
          .cast<Map<String, dynamic>>();
      return right([
        for (final json in list) FavouriteModel.fromJson(json).toEntity(),
      ]);
    } on Object {
      return left(const CacheFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> saveLocal(List<Favourite> items) async {
    try {
      await _box.put(
        _key,
        jsonEncode([for (final f in items) FavouriteModel.fromEntity(f)]),
      );
      return right(unit);
    } on Object {
      return left(const CacheFailure());
    }
  }

  @override
  Future<Either<Failure, List<Favourite>>> merge(
    String languageCode,
    List<Favourite> items,
  ) => guardCall(() async {
    final merged = await _remote.merge(languageCode, [
      for (final f in items) FavouriteModel.fromEntity(f).toRequest(),
    ]);
    return [for (final m in merged) m.toEntity()];
  });

  @override
  Future<Either<Failure, Unit>> add(Favourite item) => guardCall(() async {
    await _remote.add(FavouriteModel.fromEntity(item).toRequest());
    return unit;
  });

  @override
  Future<Either<Failure, Unit>> remove(List<String> ids) => guardCall(() async {
    await _remote.remove(ids);
    return unit;
  });
}
