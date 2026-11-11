import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../entities/product_details.dart';
import '../repositories/product_repository.dart';

@lazySingleton
class FetchProductUseCase {
  const FetchProductUseCase(this._repository);

  final ProductRepository _repository;

  Future<Either<Failure, ProductDetails?>> call({
    required String languageCode,
    required String id,
  }) => _repository.fetch(languageCode: languageCode, id: id);
}
