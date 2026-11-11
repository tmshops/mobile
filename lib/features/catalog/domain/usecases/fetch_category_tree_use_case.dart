import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../entities/category.dart';
import '../repositories/catalog_repository.dart';

@lazySingleton
class FetchCategoryTreeUseCase {
  const FetchCategoryTreeUseCase(this._repository);

  final CatalogRepository _repository;

  Future<Either<Failure, CategoryTree>> call(String languageCode) =>
      _repository.fetchTree(languageCode);
}
