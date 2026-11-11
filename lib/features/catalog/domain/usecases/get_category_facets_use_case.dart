import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../entities/facet.dart';
import '../entities/product_query.dart';
import '../repositories/catalog_repository.dart';

@lazySingleton
class GetCategoryFacetsUseCase {
  const GetCategoryFacetsUseCase(this._repository);

  final CatalogRepository _repository;

  Future<Either<Failure, FacetsResult>> call({
    required String languageCode,
    required String categorySlug,
    required AppliedFilters filters,
  }) => _repository.getFacets(
    languageCode: languageCode,
    categorySlug: categorySlug,
    filters: filters,
  );
}
