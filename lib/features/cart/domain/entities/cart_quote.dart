import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/product/domain/sku.dart';

part 'cart_quote.freezed.dart';

/// The server's view of the cart (TZ §5.10): today's prices and stock per
/// line, sellers with their China delivery, and the totals of the ticked
/// lines. The app only shows it; it never adds money up itself.
@freezed
abstract class CartQuote with _$CartQuote {
  const factory CartQuote({
    /// By line key (`productId|skuId`).
    required Map<String, LineQuote> lines,

    /// By seller name.
    required Map<String, SellerQuote> sellers,
    required CartSummary summary,
    required int minOrderSum,
    PromoResult? promo,
  }) = _CartQuote;

  const CartQuote._();

  /// TMT still missing to the minimum order sum; 0 when reached.
  int get missingToMinimum {
    final missing = minOrderSum - summary.items;
    return missing > 0 ? missing : 0;
  }
}

@freezed
abstract class LineQuote with _$LineQuote {
  const factory LineQuote({
    required int price,
    required int stock,
    required bool isAvailable,
  }) = _LineQuote;
}

@freezed
abstract class SellerQuote with _$SellerQuote {
  const factory SellerQuote({
    required String name,
    required String source,

    /// For ticked lines only; 0 when none of the seller's lines are ticked.
    required int chinaDelivery,
  }) = _SellerQuote;
}

@freezed
abstract class CartSummary with _$CartSummary {
  const factory CartSummary({
    required int items,
    required int chinaDelivery,

    /// Air, by weight estimate and region: «уточнится после взвешивания».
    required int internationalEstimate,
    required int discount,
    required int total,
  }) = _CartSummary;
}

@freezed
abstract class PromoResult with _$PromoResult {
  const factory PromoResult({
    required String code,
    required bool isApplied,

    /// Server text in the request language, for a rejected code.
    String? message,
  }) = _PromoResult;
}

/// A product's variant groups and SKUs, for the change-variant sheet.
@freezed
abstract class ProductVariants with _$ProductVariants {
  const factory ProductVariants({
    required List<SkuProperty> properties,
    required List<Sku> skus,
  }) = _ProductVariants;
}
