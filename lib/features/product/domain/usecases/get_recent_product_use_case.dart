import 'package:injectable/injectable.dart';

import '../entities/product_details.dart';
import '../repositories/product_repository.dart';

@lazySingleton
class GetRecentProductUseCase {
  const GetRecentProductUseCase(this._repository);

  final ProductRepository _repository;

  ProductDetails? call(String languageCode, String id) =>
      _repository.getRecent(languageCode, id);
}
