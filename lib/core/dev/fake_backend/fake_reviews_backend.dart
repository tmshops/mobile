import 'dart:math';

import 'package:injectable/injectable.dart';

import '../../error/exceptions.dart';
import 'fake_orders_backend.dart';
import 'fake_product_backend.dart';

/// Dev stand-in for reviews (TZ §5.18): a product's reviews with filters,
/// «Мои отзывы» and writing one for a received item.
///
/// A product's reviews are derived from its id, so the product page's
/// preview ([preview]) and the full list agree. Written reviews wait in
/// moderation and are not added to the product.
@LazySingleton(env: [Environment.dev])
class FakeReviewsBackend {
  FakeReviewsBackend(this._orders, {@ignoreParam DateTime Function()? now})
    : _now = now ?? DateTime.now;

  final FakeOrdersBackend _orders;
  final DateTime Function() _now;
  final _products = FakeProductBackend();
  final _mine = <Map<String, Object?>>[];
  int _nextId = 1;
  bool _isSeeded = false;

  static const pageSize = 10;
  static const maxText = 2000;

  // ── A product's reviews ───────────────────────────────────────────────

  /// Average, count and photos for the product page, plus two reviews.
  static Map<String, dynamic> preview(String lang, String productId) {
    final all = _generate(lang, productId);
    return {
      ..._summary(all),
      'items': [for (final r in all.take(2)) r],
    };
  }

  /// [filter]: `all`, `photos`, `translated` or a star count `1`–`5`.
  Map<String, dynamic>? page(
    String lang,
    String productId,
    String filter,
    String? cursor,
  ) {
    if (_products.details(lang, productId) == null) return null;
    final all = _generate(lang, productId);
    final stars = int.tryParse(filter);
    final matching = [
      for (final r in all)
        if (switch (filter) {
          'photos' => (r['photo_urls'] as List).isNotEmpty,
          'translated' => r['is_translated'] == true,
          _ when stars != null => r['rating'] == stars,
          _ => true,
        })
          r,
    ];
    final offset = int.tryParse(cursor ?? '') ?? 0;
    final next = offset + pageSize;
    return {
      'summary': _summary(all),
      'items': matching.skip(offset).take(pageSize).toList(),
      'next_cursor': next < matching.length ? '$next' : null,
    };
  }

  static Map<String, dynamic> _summary(List<Map<String, dynamic>> all) {
    final counts = {for (var s = 1; s <= 5; s++) s: 0};
    for (final r in all) {
      counts[r['rating'] as int] = counts[r['rating'] as int]! + 1;
    }
    final sum = all.fold<int>(0, (s, r) => s + (r['rating'] as int));
    return {
      'average': all.isEmpty ? 0 : (sum / all.length * 10).round() / 10,
      'count': all.length,
      'distribution': {for (final e in counts.entries) '${e.key}': e.value},
      'photo_urls': [
        for (final r in all)
          for (final url in r['photo_urls'] as List) url,
      ].take(8).toList(),
    };
  }

  static List<Map<String, dynamic>> _generate(String lang, String id) {
    String t(String ru, String tk) => lang == 'tk' ? tk : ru;
    final seed = id.codeUnits.fold<int>(17, (h, c) => h * 31 + c);
    final count = 8 + seed.abs() % 40;
    final texts = [
      t(
        'Пришло быстро, качество отличное. Размер подошёл, цвет как на фото. Буду заказывать ещё.',
        'Çalt geldi, hili ajaýyp. Ölçegi gabat geldi, reňki suratdaky ýaly. Ýene sargyt ederin.',
      ),
      t(
        'Хорошая вещь за свои деньги, упаковка немного помялась.',
        'Bahasyna görä gowy zat, gaplamasy birneme ezilipdir.',
      ),
      t(
        'Нормально, но ждал дольше, чем обещали. Сам товар без нареканий, работает как надо, рекомендую тем, кто не спешит.',
        'Kadaly, ýöne wada berlenden köp garaşdym. Harydyň özi kemçiliksiz, gowy işleýär, howlukmaýanlara maslahat berýärin.',
      ),
      t(
        'Цвет немного отличается от фотографии, в остальном всё хорошо.',
        'Reňki suratdakydan birneme tapawutly, galan zatlary gowy.',
      ),
      t(
        'Не подошёл размер, маломерит на один размер. Берите больше.',
        'Ölçegi gabat gelmedi, bir ölçeg kiçi. Ulusyny alyň.',
      ),
    ];
    const authors = [
      'Айна',
      'Мерген',
      'Gülşat',
      'Wang L.',
      'Ораз',
      'Li Na',
      'Jeren',
      'Arslan',
    ];
    final today = DateTime.utc(2026, 11, 10);
    return [
      for (var i = 0; i < count; i++)
        () {
          final r = Random(seed + i);
          final roll = r.nextInt(20);
          // Mostly fours and fives, a few low ones.
          final rating = roll < 11
              ? 5
              : roll < 16
              ? 4
              : roll < 18
              ? 3
              : roll < 19
              ? 2
              : 1;
          final author = authors[(seed + i).abs() % authors.length];
          // Imported from the marketplace and machine-translated.
          final isTranslated = author == 'Wang L.' || author == 'Li Na';
          return <String, dynamic>{
            'id': '$id-rev$i',
            'author': author,
            'date': today.subtract(Duration(days: i * 3)).toIso8601String(),
            'rating': rating,
            'text': texts[rating >= 4 ? i % 3 : 3 + i % 2],
            if (i.isEven) 'sku_label': t('Чёрный, M', 'Gara, M'),
            'photo_urls': [
              if (i % 4 == 0)
                for (var k = 0; k < 1 + i % 3; k++)
                  'https://picsum.photos/seed/$id-r$i-$k/600/600',
            ],
            'is_translated': isTranslated,
            if (i % 7 == 2)
              'store_reply': t(
                'Спасибо за отзыв! Передали замечание продавцу.',
                'Teswiriňiz üçin sag boluň! Belligi satyja ýetirdik.',
              ),
          };
        }(),
    ];
  }

  // ── Writing and «Мои отзывы» ──────────────────────────────────────────

  /// The received item to review, or `null` if it cannot be reviewed.
  Map<String, dynamic>? target(String lang, String orderNumber, String itemId) {
    final item = _orders.reviewableItem(lang, orderNumber, itemId);
    if (item == null) return null;
    return {...item, 'order_number': orderNumber, 'item_id': itemId};
  }

  Map<String, dynamic> submit(
    String lang,
    String orderNumber,
    String itemId,
    int rating,
    String text,
  ) {
    String t(String ru, String tk) => lang == 'tk' ? tk : ru;
    final item = target(lang, orderNumber, itemId);
    if (item == null) {
      throw ServerException(
        code: 'not_reviewable',
        message: t(
          'Этот товар уже оценён или ещё не получен',
          'Bu haryda eýýäm baha berildi ýa-da entek alynmady',
        ),
      );
    }
    if (rating < 1 || rating > 5 || text.length > maxText) {
      throw ServerException(
        code: 'invalid',
        message: t('Проверьте оценку и текст', 'Bahany we teksti barlaň'),
      );
    }
    _seed(lang);
    final review = <String, Object?>{
      'id': 'mine-${_nextId++}',
      'product_id': item['product_id'],
      'title': item['title'],
      'image_url': item['image_url'],
      'rating': rating,
      'text': text.trim(),
      'date': _now().toUtc().toIso8601String(),
      'status': 'moderation',
    };
    _mine.insert(0, review);
    _orders.markReviewed(itemId);
    return review.cast<String, dynamic>();
  }

  List<Map<String, dynamic>> mine(String lang) {
    _seed(lang);
    return [for (final r in _mine) r.cast<String, dynamic>()];
  }

  void _seed(String lang) {
    if (_isSeeded) return;
    _isSeeded = true;
    String t(String ru, String tk) => lang == 'tk' ? tk : ru;
    final now = _now();
    Map<String, Object?> seeded(
      String productId,
      int rating,
      String text,
      String status,
      int daysAgo, {
      String? reason,
      String? reply,
    }) {
      final summary = _products.details(lang, productId);
      final media = (summary?['media'] as List?)?.cast<Map<String, dynamic>>();
      return {
        'id': 'mine-${_nextId++}',
        'product_id': productId,
        'title': summary?['title'] ?? productId,
        'image_url': media?.firstOrNull?['image_url'] ?? '',
        'rating': rating,
        'text': text,
        'date': now.subtract(Duration(days: daysAgo)).toUtc().toIso8601String(),
        'status': status,
        'reject_reason': ?reason,
        'store_reply': ?reply,
      };
    }

    _mine.addAll([
      seeded(
        'clothes-women-jeans-2',
        5,
        t('Сели идеально, ткань плотная.', 'Edil gabat geldi, matasy galyň.'),
        'published',
        5,
        reply: t(
          'Спасибо, носите с удовольствием!',
          'Sag boluň, şatlyk bilen geýiň!',
        ),
      ),
      seeded(
        'shoes-women-boots-0',
        2,
        t('Звоните мне 65 00 00 00', 'Maňa 65 00 00 00 jaň ediň'),
        'rejected',
        4,
        reason: t(
          'В отзыве нельзя оставлять контакты',
          'Teswirde habarlaşmak üçin maglumat goýmak bolmaýar',
        ),
      ),
    ]);
  }
}
