import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/product_details.dart';
import '../../domain/repositories/product_repository.dart';
import '../datasources/product_remote_data_source.dart';
import '../models/product_mappers.dart';

@LazySingleton(as: ProductRepository)
class ProductRepositoryImpl implements ProductRepository {
  ProductRepositoryImpl(
    this._remote, {
    // Clock override for tests.
    @ignoreParam DateTime Function()? now,
  }) : _now = now ?? DateTime.now;

  final ProductRemoteDataSource _remote;
  final DateTime Function() _now;

  /// In-memory LRU of recently opened products (TZ §8: product cards are
  /// not stored on disk).
  // Map literals keep insertion order: the first key is the oldest.
  final _recent = <String, ProductDetails>{};
  static const _recentLimit = 20;

  static String _key(String languageCode, String id) => '$languageCode/$id';

  @override
  ProductDetails? getRecent(String languageCode, String id) {
    final key = _key(languageCode, id);
    final details = _recent.remove(key);
    if (details != null) _recent[key] = details;
    return details;
  }

  @override
  Future<Either<Failure, ProductDetails?>> fetch({
    required String languageCode,
    required String id,
  }) async {
    try {
      final model = await _remote.getProduct(languageCode, id);
      if (model == null) return right(null);
      final details = model.toEntity(fetchedAt: _now());
      final key = _key(languageCode, id);
      _recent
        ..remove(key)
        ..[key] = details;
      if (_recent.length > _recentLimit) _recent.remove(_recent.keys.first);
      return right(details);
    } on AppException catch (e) {
      return left(_map(e));
    }
  }

  @override
  Future<Either<Failure, List<DeliveryQuote>>> getDelivery({
    required String languageCode,
    required String id,
    required String regionId,
  }) async {
    try {
      final quotes = await _remote.getDelivery(languageCode, id, regionId);
      return right([for (final q in quotes) ?q.toEntity()]);
    } on AppException catch (e) {
      return left(_map(e));
    }
  }

  static Failure _map(AppException e) => switch (e) {
    NetworkException() => const NetworkFailure(),
    ServerException(:final code, :final message) => ServerFailure(
      code: code,
      message: message,
    ),
    CacheException() => const CacheFailure(),
  };
}
