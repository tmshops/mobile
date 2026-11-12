import 'package:fpdart/fpdart.dart';

import '../../../../core/error/failures.dart';
import '../entities/category.dart';
import '../entities/facet.dart';
import '../entities/product_list_page.dart';
import '../entities/product_query.dart';

abstract interface class CatalogRepository {
  /// Last saved tree for [languageCode], or `null` when there is none.
  Future<Either<Failure, CategoryTree?>> getCachedTree(String languageCode);

  /// Downloads the tree and replaces the cache on success.
  Future<Either<Failure, CategoryTree>> fetchTree(String languageCode);

  /// One category by slug: from the cached tree when possible, else a fresh
  /// one. Right(null) when the slug does not exist (old deep link).
  Future<Either<Failure, Category?>> getCategory({
    required String languageCode,
    required String slug,
  });

  Future<Either<Failure, ProductListPage>> getProducts({
    required String languageCode,
    required ProductQuery query,
    String? cursor,
  });

  /// Facet counts and total for a draft of filters (not yet applied).
  Future<Either<Failure, FacetsResult>> getFacets({
    required String languageCode,
    required String categorySlug,
    required AppliedFilters filters,
    String? promoSlug,
  });
}
