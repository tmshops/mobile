import '../../../../core/cart/cart_item.dart';
import '../../domain/entities/cart_quote.dart';
import 'cart_models.dart';

extension CartQuoteModelX on CartQuoteModel {
  CartQuote toEntity() => CartQuote(
    lines: {
      for (final l in lines)
        '${l.productId}|${l.skuId ?? ''}': LineQuote(
          price: l.price,
          stock: l.stock,
          isAvailable: l.isAvailable,
        ),
    },
    sellers: {
      for (final s in sellers)
        s.name: SellerQuote(
          name: s.name,
          source: s.source,
          chinaDelivery: s.chinaDelivery,
        ),
    },
    summary: CartSummary(
      items: summary.items,
      chinaDelivery: summary.chinaDelivery,
      internationalEstimate: summary.internationalEstimate,
      discount: summary.discount,
      total: summary.total,
    ),
    minOrderSum: minOrderSum,
    promo: switch (promo) {
      final p? => PromoResult(
        code: p.code,
        isApplied: p.status == 'applied',
        message: p.message,
      ),
      null => null,
    },
  );
}

/// Request body for `POST /cart/quote`.
abstract final class CartQuoteRequest {
  static Map<String, dynamic> body({
    required List<CartItem> lines,
    required String regionId,
    String? promoCode,
  }) => {
    'region': regionId,
    'promo_code': ?promoCode,
    'lines': [
      for (final l in lines)
        {
          'product_id': l.productId,
          'sku_id': l.skuId,
          'quantity': l.quantity,
          'selected': l.isSelected,
          // Lets the server flag a price change since adding.
          'price_at_add': l.price,
        },
    ],
  };
}
