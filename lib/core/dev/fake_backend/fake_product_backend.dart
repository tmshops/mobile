import 'dart:math';

import '../fake_image_url.dart';
import 'fake_catalog_backend.dart';
import 'fake_home_samples.dart';
import 'fake_reviews_backend.dart';

/// Builds product page JSON for the dev fake data source, starting from the
/// same generated product a list tile showed, so title, photo and price
/// match what the user tapped. Everything else is derived from the id, so
/// a product always looks the same.
class FakeProductBackend {
  FakeProductBackend();

  final _catalog = FakeCatalogBackend();

  static const _homePrefix = 'p';

  /// Placeholder until the site domain is agreed (TZ §13).
  static const _shareBase = 'https://example.com/product/';

  // ── Product ───────────────────────────────────────────────────────────

  Map<String, dynamic>? details(String lang, String id, {DateTime? now}) {
    final base = _catalog.productBase(lang, id) ?? _homeBase(lang, id);
    if (base == null) return null;
    final tk = lang == 'tk';
    String t(String ru, String tm) => tk ? tm : ru;
    final r = Random(id.codeUnits.fold<int>(11, (h, c) => h * 37 + c));
    final clock = now ?? DateTime.now();
    final summary = base.summary;
    final reviews = FakeReviewsBackend.preview(lang, id);
    final price = summary['price'] as int;
    final oldPrice = summary['old_price'] as int?;

    final properties = _properties(id, base, t);
    final skus = _skus(id, properties, price, oldPrice, r);
    final weightKnown = r.nextInt(10) < 6;

    return {
      'id': id,
      'title': summary['title'],
      'server_time': clock.toUtc().toIso8601String(),
      'media': _media(id, summary, r),
      'price': price,
      'old_price': ?oldPrice,
      if (oldPrice != null)
        'promo_ends_at': clock
            .add(Duration(hours: 6 + r.nextInt(60)))
            .toUtc()
            .toIso8601String(),
      'price_tiers': [
        if (r.nextBool()) ...[
          {'min_quantity': 10, 'price': (price * 0.92).ceil()},
          {'min_quantity': 50, 'price': (price * 0.85).ceil()},
        ],
      ],
      // Same numbers as the full review list.
      'rating': reviews['average'],
      // The draw stays so everything generated after it is unchanged.
      'review_count': _keep(r.nextInt(400), reviews['count']),
      'sold_count': summary['sold_count'],
      'properties': properties,
      'skus': skus,
      if (base.isClothing) 'size_chart': _sizeChart(t),
      'description_html': _description(base, t),
      'specs': [
        {'name': t('Бренд', 'Brend'), 'value': base.brand},
        {
          'name': t('Материал', 'Material'),
          'value': t('Полиэстер, хлопок', 'Poliester, pagta'),
        },
        {
          'name': t('Страна производства', 'Öndürilen ýurdy'),
          'value': t('Китай', 'Hytaý'),
        },
        {
          'name': t('Вес, кг', 'Agramy, kg'),
          'value': weightKnown
              ? (0.3 + r.nextInt(22) / 10)
                    .toStringAsFixed(1)
                    .replaceAll('.', ',')
              : t(
                  'уточнится после взвешивания',
                  'agramy ölçenenden soň takyklanar',
                ),
        },
        {'name': t('Артикул', 'Artikul'), 'value': id.toUpperCase()},
      ],
      'seller': {
        'name': '${base.brand} Official Store',
        'source': base.source,
        'rating': 4 + r.nextInt(10) / 10,
        'sales_count': 1000 + r.nextInt(90000),
      },
      'reviews': reviews,
      'is_available': id.codeUnits.fold<int>(0, (a, c) => a + c) % 17 != 0,
      'similar': base.similar,
      'bought_together': base.boughtTogether,
      'share_url': '$_shareBase$id',
      // Read by [delivery]; a real server keeps weight to itself.
      'weight_known': weightKnown,
    };
  }

  // ── Delivery ──────────────────────────────────────────────────────────

  /// Region → extra days on top of the base term.
  static const _regionExtraDays = {
    'ashgabat': 0,
    'ahal': 1,
    'balkan': 3,
    'dashoguz': 3,
    'lebap': 2,
    'mary': 2,
  };

  List<Map<String, dynamic>> delivery(String lang, String id, String region) {
    final base = _catalog.productBase(lang, id) ?? _homeBase(lang, id);
    if (base == null) return const [];
    final tk = lang == 'tk';
    String t(String ru, String tm) => tk ? tm : ru;
    final r = Random(id.codeUnits.fold<int>(11, (h, c) => h * 37 + c));
    // Same draw order as [details] up to the weight flag.
    final weightKnown = r.nextInt(10) < 6;
    final weight = 0.3 + (id.length % 20) / 10;
    final extra = _regionExtraDays[region] ?? 2;

    Map<String, dynamic> row(
      String type,
      String ru,
      String tm,
      int tariff,
      (int, int) days, {
      String? refusal,
    }) => {
      'type': type,
      'name': t(ru, tm),
      'term': t(
        '${days.$1 + extra}–${days.$2 + extra} дней',
        '${days.$1 + extra}–${days.$2 + extra} gün',
      ),
      if (weightKnown) 'price': (max(weight, 0.5) * tariff).ceil(),
      'unavailable_reason': ?refusal,
    };

    return [
      row('express', 'Экспресс', 'Ekspress', 22, (7, 10)),
      row(
        'air',
        'Авиа',
        'Howa ýoly',
        15,
        (14, 21),
        refusal: base.hasBattery
            ? t(
                'Аккумуляторы нельзя отправить авиа',
                'Akkumulýatorlary howa ýoly bilen iberip bolmaýar',
              )
            : null,
      ),
      row('truck', 'Авто', 'Awtoulag', 8, (28, 42)),
      // Not known to this app version: must be skipped.
      {'type': 'drone', 'name': '?', 'term': '?'},
    ];
  }

  // ── Parts ─────────────────────────────────────────────────────────────

  FakeProductBase? _homeBase(String lang, String id) {
    if (!id.startsWith(_homePrefix)) return null;
    final i = int.tryParse(id.substring(_homePrefix.length));
    if (i == null) return null;
    final tk = lang == 'tk';
    return FakeProductBase(
      summary: FakeHomeSamples.product(lang, i),
      brand: const ['Baseus', 'Xiaomi', 'Anta', 'Miniso'][i % 4],
      source: const ['Taobao', '1688', 'Tmall'][i % 3],
      rating: 4 + (i % 10) / 10,
      colors: [
        ('black', tk ? 'Gara' : 'Чёрный'),
        ('white', tk ? 'Ak' : 'Белый'),
        if (i.isEven) ('blue', tk ? 'Gök' : 'Синий'),
      ],
      sizes: i % 3 == 0 ? const ['S', 'M', 'L', 'XL'] : const [],
      isClothing: i % 3 == 0,
      hasBattery: i % 10 == 9,
      similar: [
        for (var k = 1; k <= 8; k++) FakeHomeSamples.product(lang, i + k),
      ],
      boughtTogether: [
        for (var k = 20; k < 26; k++) FakeHomeSamples.product(lang, i + k),
      ],
    );
  }

  static List<Map<String, dynamic>> _media(
    String id,
    Map<String, dynamic> summary,
    Random r,
  ) {
    final count = 4 + r.nextInt(5);
    final hasVideo = r.nextInt(3) == 0;
    return [
      {
        'kind': 'image',
        'image_url': summary['image_url'],
        'is_illustration': summary['is_illustration'] ?? false,
      },
      for (var k = 1; k < count; k++)
        if (hasVideo && k == 2)
          {
            'kind': 'video',
            'image_url': fakeImageUrl('$id-v', 800, 800),
            'video_url': 'https://example.com/video/$id.m3u8',
          }
        else
          {'kind': 'image', 'image_url': fakeImageUrl('$id-g$k', 800, 800)},
      // Not known to this app version: must be skipped.
      {'kind': 'hologram', 'image_url': 'x'},
    ];
  }

  static List<Map<String, dynamic>> _properties(
    String id,
    FakeProductBase base,
    String Function(String, String) t,
  ) => [
    if (base.colors.isNotEmpty)
      {
        'id': 'color',
        'title': t('Цвет', 'Reňk'),
        'values': [
          for (final (value, label) in base.colors)
            {
              'id': value,
              'label': label,
              'image_url': fakeImageUrl('$id-$value', 400, 400),
            },
        ],
      },
    if (base.sizes.isNotEmpty)
      {
        'id': 'size',
        'title': t('Размер', 'Ölçeg'),
        'is_size': true,
        'values': [
          for (final size in base.sizes) {'id': size, 'label': size},
        ],
      }
    else
      {
        'id': 'set',
        'title': t('Комплектация', 'Toplumy'),
        'values': [
          {'id': 'basic', 'label': t('Базовая', 'Esasy')},
          {'id': 'gift', 'label': t('В подарочной упаковке', 'Sowgat gabynda')},
        ],
      },
  ];

  static List<Map<String, dynamic>> _skus(
    String id,
    List<Map<String, dynamic>> properties,
    int price,
    int? oldPrice,
    Random r,
  ) {
    var combos = <Map<String, String>>[{}];
    for (final property in properties) {
      final propId = property['id'] as String;
      final values = property['values'] as List<Map<String, Object?>>;
      combos = [
        for (final combo in combos)
          for (final v in values) {...combo, propId: v['id']! as String},
      ];
    }
    return [
      for (final (k, combo) in combos.indexed)
        () {
          // Bigger sizes and gift boxes cost a little more.
          final extra =
              (combo['size'] != null && k.isOdd ? 15 : 0) +
              (combo['set'] == 'gift' ? 25 : 0);
          return {
            'id': '$id-sku$k',
            'values': combo,
            'price': price + extra,
            if (oldPrice != null) 'old_price': oldPrice + extra,
            // About one combination in four is sold out.
            'stock': r.nextInt(4) == 0 ? 0 : 1 + r.nextInt(40),
          };
        }(),
    ];
  }

  static Map<String, dynamic> _sizeChart(String Function(String, String) t) => {
    'headers': [
      t('Размер (Китай)', 'Ölçeg (Hytaý)'),
      t('Размер (RU)', 'Ölçeg (RU)'),
      t('Грудь, см', 'Döş, sm'),
      t('Талия, см', 'Bil, sm'),
      t('Длина, см', 'Uzynlyk, sm'),
    ],
    'rows': [
      ['S', '42–44', '88', '70', '64'],
      ['M', '44–46', '92', '74', '66'],
      ['L', '46–48', '98', '80', '68'],
      ['XL', '48–50', '104', '86', '70'],
      ['XXL', '50–52', '110', '92', '72'],
    ],
  };

  static String _description(
    FakeProductBase base,
    String Function(String, String) t,
  ) =>
      '<h3>${t('О товаре', 'Haryt barada')}</h3>'
      '<p>${t('Товар бренда ${base.brand} с площадки ${base.source}. Мы выкупаем его под ваш заказ, проверяем на складе в Китае и доставляем выбранным способом.', '${base.brand} brendiniň harydy, ${base.source} meýdançasyndan. Biz ony siziň sargydyňyz boýunça satyn alýarys, Hytaýdaky ammarda barlaýarys we saýlan usulyňyz bilen eltip berýäris.')}</p>'
      '<ul>'
      '<li>${t('Прочные материалы', 'Berk materiallar')}</li>'
      '<li>${t('Подходит для ежедневного использования', 'Gündelik ulanmak üçin amatly')}</li>'
      '<li>${t('Гарантия качества от продавца', 'Satyjydan hil kepilligi')}</li>'
      '</ul>'
      '<img src="${fakeImageUrl('${base.brand}-desc', 800, 500)}">'
      '<p>${t('Цвет на фото может немного отличаться из-за настроек экрана.', 'Suratdaky reňk ekranyň sazlamalary sebäpli birneme tapawutlanyp biler.')}</p>'
      // Must not run or render: the app whitelists tags.
      '<script>alert("x")</script>'
      '<iframe src="https://example.com"></iframe>'
      '<p>${t('Размеры указаны производителем; смотрите размерную сетку.', 'Ölçegler öndüriji tarapyndan görkezildi; ölçeg tablisasyna serediň.')}</p>';

  static T _keep<T>(Object? _, T value) => value;
}
