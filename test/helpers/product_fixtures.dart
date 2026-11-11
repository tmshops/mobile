import 'package:tmshop/core/dev/fake_backend/fake_product_backend.dart';
import 'package:tmshop/features/product/data/models/product_mappers.dart';
import 'package:tmshop/features/product/data/models/product_models.dart';
import 'package:tmshop/features/product/domain/entities/product_details.dart';

import 'home_fixtures.dart';

final _backend = FakeProductBackend();

/// A catalog dress: colours, sizes, size chart, sold-out combinations.
const clothingId = 'clothes-women-dresses-3';

/// A power bank: no sizes («Комплектация» instead), air delivery refused.
const batteryId = 'el-phone-powerbanks-2';

ProductDetailsModel sampleProductModel(String lang, String id) =>
    ProductDetailsModel.fromJson(
      _backend.details(lang, id, now: fixtureNow) ??
          (throw ArgumentError('No fake product $id')),
    );

/// Realistic details: the dev fake backend run through the real parser.
ProductDetails sampleProduct(String lang, String id) =>
    sampleProductModel(lang, id).toEntity(fetchedAt: fixtureNow);

List<DeliveryQuote> sampleDelivery(String lang, String id, String region) => [
  for (final json in _backend.delivery(lang, id, region))
    ?DeliveryQuoteModel.fromJson(json).toEntity(),
];

/// First product id of the fake set that is taken off sale.
String unavailableProductId() {
  for (var i = 0; i < 60; i++) {
    final id = 'clothes-men-tshirts-$i';
    final json = _backend.details('ru', id);
    if (json != null && json['is_available'] == false) return id;
  }
  throw StateError('No unavailable fake product found');
}
