import 'package:fpdart/fpdart.dart';

import '../../../../core/error/failures.dart';
import '../entities/product_details.dart';

abstract interface class ProductRepository {
  /// Recently opened product from memory, or `null`. Shown at once while
  /// the fresh copy loads; never used to price a purchase (TZ §8).
  ProductDetails? getRecent(String languageCode, String id);

  /// Fresh details. Right(null) when the product does not exist.
  Future<Either<Failure, ProductDetails?>> fetch({
    required String languageCode,
    required String id,
  });

  Future<Either<Failure, List<DeliveryQuote>>> getDelivery({
    required String languageCode,
    required String id,
    required String regionId,
  });
}
