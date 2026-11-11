import 'package:tmshop/core/cart/cart_item.dart';
import 'package:tmshop/core/dev/fake_backend/fake_cart_backend.dart';
import 'package:tmshop/core/dev/fake_backend/fake_product_backend.dart';
import 'package:tmshop/features/cart/data/models/cart_mappers.dart';
import 'package:tmshop/features/cart/data/models/cart_models.dart';
import 'package:tmshop/features/cart/domain/entities/cart_quote.dart';

final _products = FakeProductBackend();
final _cart = FakeCartBackend();

/// A cart line built from the fake product, as the product page would add
/// it: first in-stock SKU, its price at the time, the seller's name.
CartItem sampleLine(
  String lang,
  String productId, {
  int quantity = 1,
  bool isSelected = true,
}) {
  final details = _products.details(lang, productId);
  if (details == null) throw ArgumentError('No fake product $productId');
  final skus = (details['skus'] as List<dynamic>).cast<Map<String, dynamic>>();
  final sku = skus.firstWhere((s) => (s['stock'] as int) > 0);
  final values = (sku['values'] as Map<String, dynamic>).values.join(', ');
  return CartItem(
    productId: productId,
    skuId: sku['id'] as String,
    skuLabel: values,
    title: details['title'] as String,
    imageUrl: (details['media'] as List<dynamic>).first['image_url'] as String,
    price: sku['price'] as int,
    quantity: quantity,
    sellerName: (details['seller'] as Map<String, dynamic>)['name'] as String,
    isSelected: isSelected,
  );
}

/// A product whose price went up since adding (fake rule: 1 in 6).
String pricedUpProductId() {
  for (var i = 0; i < 80; i++) {
    final id = 'clothes-women-dresses-$i';
    final line = sampleLine('ru', id);
    final quote = sampleQuote('ru', [line]);
    if (quote.lines[line.key]?.price != line.price) return id;
  }
  throw StateError('No priced-up fake product found');
}

/// Real quote from the fake server, run through the real parser.
CartQuote sampleQuote(
  String lang,
  List<CartItem> lines, {
  String region = 'ashgabat',
  String? promo,
}) => CartQuoteModel.fromJson(
  _cart.quote(
    lang,
    CartQuoteRequest.body(lines: lines, regionId: region, promoCode: promo),
  ),
).toEntity();

/// Two sellers, three lines: enough for groups and the minimum sum.
List<CartItem> sampleCart(String lang) => [
  sampleLine(lang, 'clothes-women-dresses-1', quantity: 2),
  sampleLine(lang, 'clothes-women-dresses-5'),
  sampleLine(lang, 'el-audio-headphones-2'),
];
