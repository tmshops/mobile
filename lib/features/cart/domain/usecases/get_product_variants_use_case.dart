import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../entities/cart_quote.dart';
import '../repositories/cart_quote_repository.dart';

@lazySingleton
class GetProductVariantsUseCase {
  const GetProductVariantsUseCase(this._repository);

  final CartQuoteRepository _repository;

  Future<Either<Failure, ProductVariants?>> call({
    required String languageCode,
    required String productId,
  }) =>
      _repository.getVariants(languageCode: languageCode, productId: productId);
}
