import 'fake_product_backend.dart';

/// Dev stand-in for the server cart calculation (TZ §5.10: even the guest
/// cart total is computed by the server) and the variants endpoint.
class FakeCartBackend {
  FakeCartBackend();

  final _products = FakeProductBackend();

  /// Whole-order minimum, TMT (from the app config in production).
  static const minOrderSum = 300;
  static const validPromo = 'SALE10';
  static const _promoPercent = 10;

  /// Air estimate per piece and region surcharge, TMT.
  static const _airPerPiece = 18;
  static const _regionFactor = {'ashgabat': 1.0, 'ahal': 1.1};
  static const _farRegionFactor = 1.3;

  // ── Quote ─────────────────────────────────────────────────────────────

  /// [body]: `{region, promo_code?, lines: [{product_id, sku_id, quantity,
  /// selected}]}`.
  Map<String, dynamic> quote(String lang, Map<String, dynamic> body) {
    final tk = lang == 'tk';
    final region = body['region'] as String? ?? 'ashgabat';
    final promo = (body['promo_code'] as String?)?.trim().toUpperCase();
    final lines = (body['lines'] as List<dynamic>).cast<Map<String, dynamic>>();

    final quoted = <Map<String, dynamic>>[];
    final sellers = <String, Map<String, dynamic>>{};
    var items = 0;
    var pieces = 0;
    for (final line in lines) {
      final id = line['product_id'] as String;
      final skuId = line['sku_id'] as String?;
      final quantity = line['quantity'] as int;
      final details = _products.details(lang, id);
      final sku = _findSku(details, skuId);
      final isAvailable =
          details != null &&
          details['is_available'] == true &&
          sku != null &&
          (sku['stock'] as int) > 0;
      final price = sku == null ? 0 : _currentPrice(id, sku['price'] as int);
      quoted.add({
        'product_id': id,
        'sku_id': skuId,
        'price': price,
        'stock': sku?['stock'] ?? 0,
        'is_available': isAvailable,
      });
      final seller = details?['seller'] as Map<String, dynamic>?;
      if (seller == null) continue;
      final name = seller['name'] as String;
      final counts = line['selected'] == true && isAvailable;
      final entry = sellers.putIfAbsent(
        name,
        () => {'name': name, 'source': seller['source'], 'china_delivery': 0},
      );
      if (counts) {
        items += price * quantity;
        pieces += quantity;
        entry['china_delivery'] = 15 + name.length % 26;
      }
    }

    final chinaDelivery = sellers.values.fold<int>(
      0,
      (sum, s) => sum + (s['china_delivery'] as int),
    );
    final factor = _regionFactor[region] ?? _farRegionFactor;
    final international = (pieces * _airPerPiece * factor).ceil();
    final promoOk = promo == validPromo;
    final discount = promoOk ? (items * _promoPercent / 100).round() : 0;
    return {
      'lines': quoted,
      'sellers': sellers.values.toList(),
      'summary': {
        'items': items,
        'china_delivery': chinaDelivery,
        'international_estimate': international,
        'discount': discount,
        'total': items + chinaDelivery + international - discount,
      },
      'min_order_sum': minOrderSum,
      if (promo != null && promo.isNotEmpty)
        'promo': {
          'code': promo,
          'status': promoOk ? 'applied' : 'invalid',
          if (!promoOk)
            'message': tk ? 'Promokod tapylmady' : 'Промокод не найден',
        },
    };
  }

  // ── Variants ──────────────────────────────────────────────────────────

  /// `{properties, skus}` with today's prices, or `null` for unknown ids.
  Map<String, dynamic>? variants(String lang, String id) {
    final details = _products.details(lang, id);
    if (details == null) return null;
    return {
      'properties': details['properties'],
      'skus': [
        for (final sku
            in (details['skus'] as List<dynamic>).cast<Map<String, dynamic>>())
          {...sku, 'price': _currentPrice(id, sku['price'] as int)},
      ],
    };
  }

  /// About one product in six got dearer on the marketplace since it was
  /// added, so the «цена изменилась» warning can be seen in dev.
  static int _currentPrice(String id, int price) =>
      id.codeUnits.fold<int>(0, (a, c) => a + c) % 6 == 0
      ? price + (price * 0.07).ceil()
      : price;

  static Map<String, dynamic>? _findSku(
    Map<String, dynamic>? details,
    String? skuId,
  ) {
    if (details == null) return null;
    for (final sku
        in (details['skus'] as List<dynamic>).cast<Map<String, dynamic>>()) {
      if (sku['id'] == skuId) return sku;
    }
    return null;
  }
}
