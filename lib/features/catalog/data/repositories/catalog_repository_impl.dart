import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/category.dart';
import '../../domain/entities/facet.dart';
import '../../domain/entities/product_list_page.dart';
import '../../domain/entities/product_query.dart';
import '../../domain/repositories/catalog_repository.dart';
import '../datasources/catalog_local_data_source.dart';
import '../datasources/catalog_remote_data_source.dart';
import '../models/catalog_mappers.dart';

@LazySingleton(as: CatalogRepository)
class CatalogRepositoryImpl implements CatalogRepository {
  CatalogRepositoryImpl(
    this._remote,
    this._local, {
    // Clock override for tests.
    @ignoreParam DateTime Function()? now,
  }) : _now = now ?? DateTime.now;

  final CatalogRemoteDataSource _remote;
  final CatalogLocalDataSource _local;
  final DateTime Function() _now;

  @override
  Future<Either<Failure, CategoryTree?>> getCachedTree(
    String languageCode,
  ) async {
    try {
      final cached = await _local.readTree(languageCode);
      return right(
        cached?.tree.toEntity(fetchedAt: cached.fetchedAt, isFromCache: true),
      );
    } on CacheException {
      return left(const CacheFailure());
    }
  }

  @override
  Future<Either<Failure, CategoryTree>> fetchTree(String languageCode) async {
    try {
      final tree = await _remote.getTree(languageCode);
      final fetchedAt = _now();
      try {
        await _local.writeTree(
          languageCode,
          CachedTree(tree: tree, fetchedAt: fetchedAt),
        );
      } on CacheException {
        // A failed cache write must not hide fresh content.
      }
      return right(tree.toEntity(fetchedAt: fetchedAt));
    } on AppException catch (e) {
      return left(_map(e));
    }
  }

  @override
  Future<Either<Failure, Category?>> getCategory({
    required String languageCode,
    required String slug,
  }) async {
    // The cached tree is enough to name the page and list subcategories;
    // only download when the slug is not in it (new category, deep link).
    final cached = (await getCachedTree(
      languageCode,
    )).getOrElse((_) => null)?.find(slug);
    if (cached != null) return right(cached);
    return (await fetchTree(languageCode)).map((tree) => tree.find(slug));
  }

  @override
  Future<Either<Failure, ProductListPage>> getProducts({
    required String languageCode,
    required ProductQuery query,
    String? cursor,
  }) => _guard(
    () async => (await _remote.getProducts(
      languageCode,
      CatalogQueryParams.products(query, cursor: cursor),
    )).toEntity(),
  );

  @override
  Future<Either<Failure, FacetsResult>> getFacets({
    required String languageCode,
    required String categorySlug,
    required AppliedFilters filters,
  }) => _guard(
    () async => (await _remote.getFacets(
      languageCode,
      CatalogQueryParams.filters(categorySlug, filters),
    )).toEntity(),
  );

  static Future<Either<Failure, T>> _guard<T>(Future<T> Function() run) async {
    try {
      return right(await run());
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
