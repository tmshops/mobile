import 'package:flutter_test/flutter_test.dart';
import 'package:tmshop/core/dev/fake_backend/fake_catalog_backend.dart';
import 'package:tmshop/features/catalog/domain/entities/facet.dart';
import 'package:tmshop/features/catalog/domain/entities/product_query.dart';

import '../../../helpers/catalog_fixtures.dart';

/// The fake backend stands in for the API in dev builds; if its counts
/// were off, «Показать N товаров» would lie on screen.
void main() {
  const slug = 'clothes';
  const query = ProductQuery(categorySlug: slug);

  test('facet total matches the product total', () {
    final facets = sampleFacets('ru', slug);
    final page = samplePageFor('ru', query);
    expect(facets.total, page.total);
    expect(page.total, greaterThan(FakeCatalogBackend.pageSize));
  });

  test('an option count equals the products shown after picking it', () {
    final source = sampleFacets(
      'ru',
      slug,
    ).facets.whereType<OptionsFacet>().firstWhere((f) => f.id == 'source');
    final option = source.options.first;
    final filters = const AppliedFilters().toggleChoice(
      'source',
      FilterChoice(value: option.value, label: option.label),
    );
    final page = samplePageFor('ru', query.copyWith(filters: filters));
    expect(page.total, option.count);
  });

  test('pages through every product exactly once', () {
    final ids = <String>{};
    String? cursor;
    var total = 0;
    do {
      final page = samplePageFor('tk', query, cursor: cursor);
      total = page.total;
      ids.addAll(page.items.map((p) => p.id));
      cursor = page.nextCursor;
    } while (cursor != null);
    expect(ids, hasLength(total));
  });

  test('sorts by price and filters by range', () {
    final page = samplePageFor(
      'ru',
      query.copyWith(
        sort: ProductSort.priceAsc,
        filters: const AppliedFilters(price: PriceRange(min: 500, max: 1500)),
      ),
    );
    final prices = page.items.map((p) => p.price).toList();
    expect(prices, orderedEquals([...prices]..sort()));
    expect(prices.every((p) => p >= 500 && p <= 1500), isTrue);
  });

  test('sizes are offered only where they make sense', () {
    bool hasSize(String slug) =>
        sampleFacets('ru', slug).facets.any((f) => f.id == 'size');
    expect(hasSize('clothes-men-tshirts'), isTrue);
    expect(hasSize('shoes'), isTrue);
    expect(hasSize('electronics'), isFalse);
  });

  test('a banner comes with the first page of upper levels only', () {
    expect(samplePageFor('ru', query).banner, isNotNull);
    expect(
      samplePageFor(
        'ru',
        const ProductQuery(categorySlug: 'clothes-women-dresses'),
      ).banner,
      isNull,
    );
  });
}
