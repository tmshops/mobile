import '../models/product_models.dart';

/// Product API. Throws `NetworkException` / `ServerException`.
abstract interface class ProductRemoteDataSource {
  /// `null` when the server answers 404.
  Future<ProductDetailsModel?> getProduct(String languageCode, String id);

  Future<List<DeliveryQuoteModel>> getDelivery(
    String languageCode,
    String id,
    String regionId,
  );
}
