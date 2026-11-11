import 'dart:math';

import 'fake_api_params.dart';
import 'fake_catalog_tree.dart';

/// In-memory stand-in for the catalog backend (dev only).
///
/// Builds a deterministic product set per leaf category, then answers the
/// same query parameters the real API will get: filtering, sorting,
/// cursor pages and facet counts. Counts are real, so «Показать N товаров»
/// always matches what the list then shows.
class FakeCatalogBackend {
  FakeCatalogBackend();

  static const pageSize = 20;

  static const _sources = ['taobao', '1688', 'tmall'];
  static const _sourceLabels = {
    'taobao': 'Taobao',
    '1688': '1688',
    'tmall': 'Tmall',
  };
  static const _brands = [
    'Anker', 'Baseus', 'Xiaomi', 'Ugreen', 'Li-Ning', 'Anta', //
    'Nova', 'Semir', 'Miniso', 'Deli', 'Joyroom', 'Peak',
  ];

  /// value, RU, TK, #RRGGBB.
  static const _colors = [
    ('black', 'Чёрный', 'Gara', '#222222'),
    ('white', 'Белый', 'Ak', '#FFFFFF'),
    ('red', 'Красный', 'Gyzyl', '#E5484D'),
    ('blue', 'Синий', 'Gök', '#3B82F6'),
    ('green', 'Зелёный', 'Ýaşyl', '#22A06B'),
    ('beige', 'Бежевый', 'Bež', '#D8C3A5'),
  ];
  static const _clothingSizes = ['XS', 'S', 'M', 'L', 'XL', 'XXL'];
  static const _shoeSizes = ['36', '37', '38', '39', '40', '41', '42', '43'];

  /// value, RU, TK — fastest delivery type the product allows.
  static const _delivery = [
    ('express', 'Экспресс · 7–10 дней', 'Ekspress · 7–10 gün'),
    ('air', 'Авиа · 2–3 недели', 'Howa ýoly · 2–3 hepde'),
    ('truck', 'Авто · 4–6 недель', 'Awtoulag · 4–6 hepde'),
  ];

  /// Threshold facets: value, RU label, TK label, minimum.
  static const _ratings = [
    ('4.8', 'от 4,8 ★', '4,8 ★ we ýokary', 4.8),
    ('4.5', 'от 4,5 ★', '4,5 ★ we ýokary', 4.5),
    ('4.0', 'от 4,0 ★', '4,0 ★ we ýokary', 4.0),
  ];
  static const _sales = [
    ('1000', 'от 1 000 продаж', '1 000 satuwdan köp', 1000),
    ('100', 'от 100 продаж', '100 satuwdan köp', 100),
  ];

  final Map<String, List<_FakeProduct>> _bySlug = {};

  // ── Tree ──────────────────────────────────────────────────────────────

  Map<String, dynamic> tree(String lang) => {
    'categories': [for (final root in FakeCatalogTree.roots) _node(root, lang)],
  };

  Map<String, dynamic> _node(FakeNode node, String lang) {
    final FakeNode(:slug, :ru, :tk, :children) = node;
    return {
      'slug': slug,
      'name': lang == 'tk' ? tk : ru,
      'icon_url': 'https://picsum.photos/seed/cat-$slug/160/160',
      'children': [for (final c in children) _node(c, lang)],
    };
  }

  // ── Products ──────────────────────────────────────────────────────────

  Map<String, dynamic> products(String lang, Map<String, String> params) {
    final slug = params[FakeApiParams.category] ?? '';
    final all = _productsUnder(slug);
    final matching = _sorted(
      all.where((p) => _matches(p, params, except: null)).toList(),
      params[FakeApiParams.sort],
    );
    final offset = int.tryParse(params[FakeApiParams.cursor] ?? '') ?? 0;
    final page = matching.skip(offset).take(pageSize).toList();
    final next = offset + pageSize;
    final node = _findNode(slug);
    return {
      'items': [for (final p in page) p.toJson(lang)],
      'total': matching.length,
      'next_cursor': next < matching.length ? '$next' : null,
      // Banner for the top two levels, on the first page only.
      if (offset == 0 && node != null && node.children.isNotEmpty)
        'banner': {
          'image_url': 'https://picsum.photos/seed/cb-$slug/1200/400',
          'title': lang == 'tk' ? node.tk : node.ru,
        },
    };
  }

  // ── Facets ────────────────────────────────────────────────────────────

  Map<String, dynamic> facets(String lang, Map<String, String> params) {
    final slug = params[FakeApiParams.category] ?? '';
    final all = _productsUnder(slug);
    final tk = lang == 'tk';
    String t(String ru, String tm) => tk ? tm : ru;

    // Each group counts against every *other* active filter, so a user can
    // always widen their pick within a group.
    List<_FakeProduct> others(String facet) =>
        all.where((p) => _matches(p, params, except: facet)).toList();
    int count(String facet, bool Function(_FakeProduct) test) =>
        others(facet).where(test).length;

    final priced = others('price');
    final root = _rootOf(slug);
    final sizes = FakeCatalogTree.clothingRoots.contains(root)
        ? _clothingSizes
        : FakeCatalogTree.shoeRoots.contains(root)
        ? _shoeSizes
        : const <String>[];

    return {
      'total': all.where((p) => _matches(p, params, except: null)).length,
      'facets': [
        if (priced.isNotEmpty)
          {
            'type': 'range',
            'id': 'price',
            'title': t('Цена, TMT', 'Bahasy, TMT'),
            'min': priced.map((p) => p.price).reduce(min),
            'max': priced.map((p) => p.price).reduce(max),
          },
        {
          'type': 'options',
          'id': 'source',
          'title': t('Площадка', 'Meýdança'),
          'options': [
            for (final s in _sources)
              {
                'value': s,
                'label': _sourceLabels[s],
                'count': count('source', (p) => p.source == s),
              },
          ],
        },
        {
          'type': 'options',
          'id': 'rating',
          'title': t('Рейтинг продавца', 'Satyjynyň reýtingi'),
          'options': [
            for (final (value, ru, tm, minimum) in _ratings)
              {
                'value': value,
                'label': t(ru, tm),
                'count': count('rating', (p) => p.rating >= minimum),
              },
          ],
        },
        {
          'type': 'options',
          'id': 'sales',
          'title': t('Продажи', 'Satuwlar'),
          'options': [
            for (final (value, ru, tm, minimum) in _sales)
              {
                'value': value,
                'label': t(ru, tm),
                'count': count('sales', (p) => p.sold >= minimum),
              },
          ],
        },
        {
          'type': 'options',
          'id': 'color',
          'title': t('Цвет', 'Reňk'),
          'display': 'swatches',
          'options': [
            for (final (value, ru, tm, hex) in _colors)
              {
                'value': value,
                'label': t(ru, tm),
                'count': count('color', (p) => p.colors.contains(value)),
                'color': hex,
              },
          ],
        },
        if (sizes.isNotEmpty)
          {
            'type': 'options',
            'id': 'size',
            'title': t('Размер', 'Ölçeg'),
            'options': [
              for (final size in sizes)
                {
                  'value': size,
                  'label': size,
                  'count': count('size', (p) => p.sizes.contains(size)),
                },
            ],
          },
        {
          'type': 'options',
          'id': 'brand',
          'title': t('Бренд', 'Brend'),
          'display': 'searchable_list',
          'options': [
            for (final brand in _brands)
              {
                'value': brand.toLowerCase(),
                'label': brand,
                'count': count('brand', (p) => p.brand == brand),
              },
          ],
        },
        {
          'type': 'options',
          'id': 'delivery',
          'title': t('Срок доставки', 'Eltip bermek möhleti'),
          'options': [
            for (final (value, ru, tm) in _delivery)
              {
                'value': value,
                'label': t(ru, tm),
                'count': count('delivery', (p) => p.delivery.contains(value)),
              },
          ],
        },
        {
          'type': 'toggle',
          'id': 'discount',
          'title': t('Со скидкой', 'Arzanladyşly'),
          'count': count('discount', (p) => p.oldPrice != null),
        },
        // Not known to this app version: must be skipped.
        {'type': 'map_radius', 'id': 'pickup', 'title': '?'},
      ],
    };
  }

  // ── One product (for the fake product page) ──────────────────────────

  /// Raw attributes of a generated catalog product, or `null` if [id] is
  /// not one of them. Lets the fake product page match the list tile.
  FakeProductBase? productBase(String lang, String id) {
    final dash = id.lastIndexOf('-');
    if (dash <= 0) return null;
    final leaf = id.substring(0, dash);
    final siblings = _productsUnder(leaf);
    final index = siblings.indexWhere((p) => p.id == id);
    if (index < 0) return null;
    final p = siblings[index];
    final root = _rootOf(leaf);
    // «С этим покупают» comes from the neighbouring leaf.
    final otherLeaf = _leaves(
      FakeCatalogTree.roots.firstWhere((r) => r.slug == root),
    ).map((n) => n.slug).firstWhere((s) => s != leaf, orElse: () => leaf);
    return FakeProductBase(
      summary: p.toJson(lang),
      brand: p.brand,
      source: _sourceLabels[p.source] ?? p.source,
      rating: p.rating,
      colors: [
        for (final (value, ru, tk, _) in _colors)
          if (p.colors.contains(value)) (value, lang == 'tk' ? tk : ru),
      ],
      sizes: [
        for (final size in [..._clothingSizes, ..._shoeSizes])
          if (p.sizes.contains(size)) size,
      ],
      isClothing: FakeCatalogTree.clothingRoots.contains(root),
      hasBattery: leaf == 'el-phone-powerbanks' || leaf.startsWith('el-smart'),
      similar: [
        for (final s in siblings.where((s) => s.id != id).take(8))
          s.toJson(lang),
      ],
      boughtTogether: [
        for (final s in _productsUnder(otherLeaf).take(6)) s.toJson(lang),
      ],
    );
  }

  // ── Matching ──────────────────────────────────────────────────────────

  /// [except] skips one facet's own filter (for facet counts).
  bool _matches(
    _FakeProduct p,
    Map<String, String> params, {
    required String? except,
  }) {
    if (except != 'price') {
      final lo = int.tryParse(params[FakeApiParams.priceMin] ?? '');
      final hi = int.tryParse(params[FakeApiParams.priceMax] ?? '');
      if (lo != null && p.price < lo) return false;
      if (hi != null && p.price > hi) return false;
    }
    for (final MapEntry(:key, :value) in params.entries) {
      if (!key.startsWith(FakeApiParams.facetPrefix)) continue;
      final facet = key.substring(FakeApiParams.facetPrefix.length);
      if (facet == except) continue;
      final picked = value.split(FakeApiParams.listSeparator).toSet();
      final ok = switch (facet) {
        'source' => picked.contains(p.source),
        'brand' => picked.contains(p.brand.toLowerCase()),
        'color' => p.colors.any(picked.contains),
        'size' => p.sizes.any(picked.contains),
        'delivery' => p.delivery.any(picked.contains),
        // Thresholds: the loosest picked one decides.
        'rating' => p.rating >= picked.map(double.parse).reduce(min),
        'sales' => p.sold >= picked.map(int.parse).reduce(min),
        'discount' => p.oldPrice != null,
        _ => true,
      };
      if (!ok) return false;
    }
    return true;
  }

  static List<_FakeProduct> _sorted(List<_FakeProduct> items, String? sort) {
    int Function(_FakeProduct, _FakeProduct) by = switch (sort) {
      'price_asc' => (a, b) => a.price.compareTo(b.price),
      'price_desc' => (a, b) => b.price.compareTo(a.price),
      'newest' => (a, b) => b.addedOrder.compareTo(a.addedOrder),
      'rating' => (a, b) => b.rating.compareTo(a.rating),
      'sales' => (a, b) => b.sold.compareTo(a.sold),
      _ => (a, b) => b.popularity.compareTo(a.popularity),
    };
    return items..sort(by);
  }

  // ── Generation ────────────────────────────────────────────────────────

  List<_FakeProduct> _productsUnder(String slug) =>
      _bySlug.putIfAbsent(slug, () {
        final node = _findNode(slug);
        if (node == null) return const [];
        return [for (final leaf in _leaves(node)) ..._generate(leaf)];
      });

  static Iterable<FakeNode> _leaves(FakeNode node) sync* {
    if (node.children.isEmpty) {
      yield node;
      return;
    }
    for (final child in node.children) {
      yield* _leaves(child);
    }
  }

  /// Root slug of the subtree holding [slug] (slugs do not always share
  /// the root's prefix: «el-audio» sits under «electronics»).
  static String _rootOf(String slug) {
    bool contains(FakeNode node) =>
        node.slug == slug || node.children.any(contains);
    for (final root in FakeCatalogTree.roots) {
      if (contains(root)) return root.slug;
    }
    return slug;
  }

  static FakeNode? _findNode(String slug) {
    FakeNode? search(List<FakeNode> nodes) {
      for (final node in nodes) {
        if (node.slug == slug) return node;
        final found = search(node.children);
        if (found != null) return found;
      }
      return null;
    }

    return search(FakeCatalogTree.roots);
  }

  static List<_FakeProduct> _generate(FakeNode leaf) {
    final FakeNode(:slug, :ru, :tk) = leaf;
    final random = Random(slug.codeUnits.fold<int>(7, (h, c) => h * 31 + c));
    final root = _rootOf(slug);
    final sizes = FakeCatalogTree.clothingRoots.contains(root)
        ? _clothingSizes
        : FakeCatalogTree.shoeRoots.contains(root)
        ? _shoeSizes
        : const <String>[];
    final count = 18 + random.nextInt(40);
    return [
      for (var i = 0; i < count; i++)
        () {
          final price = 40 + random.nextInt(2960);
          final hasDiscount = random.nextInt(10) < 3;
          final colorCount = 1 + random.nextInt(3);
          final colorStart = random.nextInt(_colors.length);
          final fastest = random.nextInt(_delivery.length);
          return _FakeProduct(
            id: '$slug-$i',
            ru: ru,
            tk: tk,
            brand: _brands[random.nextInt(_brands.length)],
            code: '${String.fromCharCode(65 + random.nextInt(26))}${10 + i}',
            price: price,
            oldPrice: hasDiscount
                ? (price * (1.15 + random.nextDouble() * 0.5)).round()
                : null,
            source: _sources[random.nextInt(_sources.length)],
            rating: 3.5 + random.nextInt(16) / 10,
            sold:
                [3, 40, 250, 1200, 15400][random.nextInt(5)] +
                random.nextInt(90),
            colors: {
              for (var c = 0; c < colorCount; c++)
                _colors[(colorStart + c) % _colors.length].$1,
            },
            sizes: {
              for (final size in sizes)
                if (random.nextInt(3) > 0) size,
            },
            // Slower types are always possible once a faster one is.
            delivery: {
              for (var d = fastest; d < _delivery.length; d++) _delivery[d].$1,
            },
            addedOrder: random.nextInt(1000),
            isIllustration: random.nextInt(15) == 0,
          );
        }(),
    ];
  }
}

class _FakeProduct {
  const _FakeProduct({
    required this.id,
    required this.ru,
    required this.tk,
    required this.brand,
    required this.code,
    required this.price,
    required this.oldPrice,
    required this.source,
    required this.rating,
    required this.sold,
    required this.colors,
    required this.sizes,
    required this.delivery,
    required this.addedOrder,
    required this.isIllustration,
  });

  final String id;
  final String ru;
  final String tk;
  final String brand;
  final String code;
  final int price;
  final int? oldPrice;
  final String source;
  final double rating;
  final int sold;
  final Set<String> colors;
  final Set<String> sizes;
  final Set<String> delivery;
  final int addedOrder;
  final bool isIllustration;

  double get popularity => sold * rating;

  Map<String, dynamic> toJson(String lang) => {
    'id': id,
    'title': lang == 'tk'
        ? '${tk.substring(0, 1)}${tk.substring(1)} $brand, model $code'
        : '$ru $brand, модель $code',
    'image_url': 'https://picsum.photos/seed/$id/600/600',
    'price': price,
    'old_price': ?oldPrice,
    'sold_count': sold,
    'marks': [if (sold > 15000) 'hit', if (addedOrder > 950) 'new'],
    'is_illustration': isIllustration,
  };
}

/// What the fake product page needs to know about a generated product.
class FakeProductBase {
  const FakeProductBase({
    required this.summary,
    required this.brand,
    required this.source,
    required this.rating,
    required this.colors,
    required this.sizes,
    required this.isClothing,
    required this.hasBattery,
    required this.similar,
    required this.boughtTogether,
  });

  /// Tile JSON, as the list returned it.
  final Map<String, dynamic> summary;
  final String brand;
  final String source;
  final double rating;

  /// value, localised label.
  final List<(String, String)> colors;
  final List<String> sizes;
  final bool isClothing;

  /// Batteries cannot fly: air delivery is refused.
  final bool hasBattery;
  final List<Map<String, dynamic>> similar;
  final List<Map<String, dynamic>> boughtTogether;
}
