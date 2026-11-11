import 'dart:convert';

import 'package:fpdart/fpdart.dart';
import 'package:hive_ce/hive_ce.dart';
import 'package:injectable/injectable.dart';

import '../database/hive_registry.dart';
import '../error/failures.dart';
import 'cart_item.dart';

/// Guest cart on the device (TZ §5.10: source of truth until sign-in, then
/// merged to the server). Lives in `core`: the cart badge, product page and
/// cart screen all use it.
abstract interface class CartRepository {
  Future<Either<Failure, List<CartItem>>> load();

  Future<Either<Failure, Unit>> save(List<CartItem> items);
}

@LazySingleton(as: CartRepository)
class CartRepositoryImpl implements CartRepository {
  const CartRepositoryImpl(@Named(HiveBoxes.cart) this._box);

  final Box<String> _box;

  static const _key = 'items';

  @override
  Future<Either<Failure, List<CartItem>>> load() async {
    try {
      final raw = _box.get(_key);
      if (raw == null) return right(const []);
      final list = jsonDecode(raw) as List<dynamic>;
      return right([
        for (final json in list.cast<Map<String, dynamic>>()) _fromJson(json),
      ]);
    } on Object {
      return left(const CacheFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> save(List<CartItem> items) async {
    try {
      await _box.put(_key, jsonEncode([for (final i in items) _toJson(i)]));
      return right(unit);
    } on Object {
      return left(const CacheFailure());
    }
  }

  // Mapped by hand: the entity stays free of JSON annotations.
  static Map<String, Object?> _toJson(CartItem i) => {
    'product_id': i.productId,
    'title': i.title,
    'image_url': i.imageUrl,
    'price': i.price,
    'quantity': i.quantity,
    'sku_id': i.skuId,
    'sku_label': i.skuLabel,
    'comment': i.comment,
    'seller_name': i.sellerName,
    'is_selected': i.isSelected,
  };

  static CartItem _fromJson(Map<String, dynamic> j) => CartItem(
    productId: j['product_id'] as String,
    title: j['title'] as String,
    imageUrl: j['image_url'] as String,
    price: j['price'] as int,
    quantity: j['quantity'] as int,
    skuId: j['sku_id'] as String?,
    skuLabel: j['sku_label'] as String?,
    comment: j['comment'] as String?,
    sellerName: j['seller_name'] as String?,
    // Saved by an older version without ticks: ticked.
    isSelected: j['is_selected'] as bool? ?? true,
  );
}
