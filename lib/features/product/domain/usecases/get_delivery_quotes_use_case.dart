import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../entities/product_details.dart';
import '../repositories/product_repository.dart';

@lazySingleton
class GetDeliveryQuotesUseCase {
  const GetDeliveryQuotesUseCase(this._repository);

  final ProductRepository _repository;

  Future<Either<Failure, List<DeliveryQuote>>> call({
    required String languageCode,
    required String id,
    required String regionId,
  }) => _repository.getDelivery(
    languageCode: languageCode,
    id: id,
    regionId: regionId,
  );
}
