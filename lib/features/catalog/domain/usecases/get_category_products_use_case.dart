import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../entities/product_list_page.dart';
import '../entities/product_query.dart';
import '../repositories/catalog_repository.dart';

@lazySingleton
class GetCategoryProductsUseCase {
  const GetCategoryProductsUseCase(this._repository);

  final CatalogRepository _repository;

  Future<Either<Failure, ProductListPage>> call({
    required String languageCode,
    required ProductQuery query,
    String? cursor,
  }) => _repository.getProducts(
    languageCode: languageCode,
    query: query,
    cursor: cursor,
  );
}
