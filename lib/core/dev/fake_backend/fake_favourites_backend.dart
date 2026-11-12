import 'package:injectable/injectable.dart';

import 'fake_product_backend.dart';

/// Dev stand-in for the customer's favourites and price alerts on the
/// server (TZ §5.16, §5.6.10).
///
/// Seeded so sign-in has something to merge: two dresses saved when they
/// cost more (the «Цена снизилась» ribbon), one at today's price and one
/// taken off sale. Records keep ids and prices; titles are built per
/// request in the asked language.
@LazySingleton(env: [Environment.dev])
class FakeFavouritesBackend {
  FakeFavouritesBackend({@ignoreParam DateTime Function()? now})
    : _now = now ?? DateTime.now {
    _seed();
  }

  final DateTime Function() _now;
  final _products = FakeProductBackend();

  /// Product id → saved price and time, in no particular order.
  final _favourites = <String, ({int savedPrice, DateTime addedAt})>{};

  /// Product id → price when subscribed.
  final _alerts = <String, int>{};

  /// Dresses first; no dress is sold out, so a power bank fills that slot.
  static const _seedCategories = [
    'clothes-women-dresses',
    'el-phone-powerbanks',
  ];
  static const _scanLimit = 18;

  // ── Favourites ────────────────────────────────────────────────────────

  List<Map<String, dynamic>> favourites(String lang) {
    final entries = _favourites.entries.toList()
      ..sort((a, b) => b.value.addedAt.compareTo(a.value.addedAt));
    return [
      for (final MapEntry(:key, :value) in entries)
        if (summary(lang, key) case final product?)
          {
            'product': product,
            'saved_price': value.savedPrice,
            'added_at': value.addedAt.toUtc().toIso8601String(),
          },
    ];
  }

  /// Union of the device list and the server list. A product saved on both
  /// keeps the earlier date and its price.
  List<Map<String, dynamic>> merge(
    String lang,
    List<Map<String, dynamic>> items,
  ) {
    for (final item in items) {
      add(item);
    }
    return favourites(lang);
  }

  /// [item]: `{product_id, saved_price, added_at}`.
  void add(Map<String, dynamic> item) {
    final id = item['product_id'] as String;
    final addedAt = DateTime.parse(item['added_at'] as String);
    final known = _favourites[id];
    if (known != null && !known.addedAt.isAfter(addedAt)) return;
    _favourites[id] = (
      savedPrice: item['saved_price'] as int,
      addedAt: addedAt,
    );
  }

  void remove(List<String> ids) => ids.forEach(_favourites.remove);

  /// Today's tile and availability of each product; unknown ids are left
  /// out (deleted products).
  List<Map<String, dynamic>> offers(String lang, List<String> ids) => [
    for (final id in ids)
      if (_products.details(lang, id) case final details?)
        {
          'product': _summaryOf(details),
          'is_available': details['is_available'],
          'seller_name': (details['seller'] as Map<String, dynamic>?)?['name'],
        },
  ];

  // ── Price alerts ──────────────────────────────────────────────────────

  List<Map<String, dynamic>> alerts(String lang) => [
    for (final MapEntry(:key, :value) in _alerts.entries)
      if (summary(lang, key) case final product?)
        {'product': product, 'subscribed_price': value},
  ];

  /// Subscribes at today's price; `null` for unknown products.
  Map<String, dynamic>? subscribe(String lang, String id) {
    final product = summary(lang, id);
    if (product == null) return null;
    _alerts[id] = product['price'] as int;
    return {'product': product, 'subscribed_price': _alerts[id]};
  }

  void unsubscribe(String id) => _alerts.remove(id);

  // ── Helpers ───────────────────────────────────────────────────────────

  Map<String, dynamic>? summary(String lang, String id) {
    final details = _products.details(lang, id);
    return details == null ? null : _summaryOf(details);
  }

  static Map<String, dynamic> _summaryOf(Map<String, dynamic> details) {
    final media = (details['media'] as List<dynamic>)
        .cast<Map<String, dynamic>>();
    return {
      'id': details['id'],
      'title': details['title'],
      'image_url': media.isEmpty ? '' : media.first['image_url'],
      'price': details['price'],
      'old_price': ?details['old_price'],
      'sold_count': ?details['sold_count'],
    };
  }

  void _seed() {
    final available = <(String, int)>[];
    String? gone;
    for (final category in _seedCategories) {
      for (var i = 0; i < _scanLimit; i++) {
        final details = _products.details('ru', '$category-$i');
        if (details == null) continue;
        final id = details['id'] as String;
        if (details['is_available'] == true) {
          if (available.length < 3) {
            available.add((id, details['price'] as int));
          }
        } else {
          gone ??= id;
        }
        if (available.length == 3 && gone != null) break;
      }
    }
    final now = _now();
    for (final (k, (id, price)) in available.indexed) {
      // The first two were saved when they cost about 18% more.
      final saved = k < 2 ? (price * 1.18).ceil() : price;
      _favourites[id] = (
        savedPrice: saved,
        addedAt: now.subtract(Duration(days: 3 + k * 4)),
      );
      if (k != 1) _alerts[id] = saved;
    }
    if (gone case final id?) {
      final price = _products.details('ru', id)?['price'] as int? ?? 0;
      _favourites[id] = (
        savedPrice: price,
        addedAt: now.subtract(const Duration(days: 20)),
      );
    }
  }
}
