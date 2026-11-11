import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../entities/category.dart';
import '../repositories/catalog_repository.dart';

@lazySingleton
class GetCategoryUseCase {
  const GetCategoryUseCase(this._repository);

  final CatalogRepository _repository;

  Future<Either<Failure, Category?>> call({
    required String languageCode,
    required String slug,
  }) => _repository.getCategory(languageCode: languageCode, slug: slug);
}
