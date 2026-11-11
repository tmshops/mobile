import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_item.freezed.dart';

/// One cart line: a product in one variant, with quantity and an optional
/// note for the operator (TZ §5.6.9). Price is the server price at the
/// moment of adding; the cart quote compares it with today's (TZ §5.10).
@freezed
abstract class CartItem with _$CartItem {
  const factory CartItem({
    required String productId,
    required String title,
    required String imageUrl,
    required int price,
    required int quantity,

    /// `null` for products without variants.
    String? skuId,

    /// Human-readable variant, e.g. «Чёрный, M».
    String? skuLabel,
    String? comment,

    /// Lines are grouped by seller; known from the product page, so the
    /// groups show even before the quote arrives or when offline.
    String? sellerName,

    /// Ticked lines go into the order (TZ §5.10).
    @Default(true) bool isSelected,
  }) = _CartItem;

  const CartItem._();

  /// Identifies the line: same product in the same variant.
  String get key => '$productId|${skuId ?? ''}';

  bool isSameLine(CartItem other) => other.key == key;
}
