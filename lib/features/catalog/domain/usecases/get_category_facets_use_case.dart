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
    required ProductQuery query,
  }) => _repository.getFacets(languageCode: languageCode, query: query);
}
