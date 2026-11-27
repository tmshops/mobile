import 'package:flutter_test/flutter_test.dart';
import 'package:tmshop/core/dev/fake_backend/fake_api_params.dart';
import 'package:tmshop/core/dev/fake_backend/fake_catalog_backend.dart';
import 'package:tmshop/features/catalog/data/models/catalog_mappers.dart';
import 'package:tmshop/features/catalog/domain/entities/product_query.dart';

void main() {
  test('a Home collection is a scope of its own', () {
    const query = ProductQuery(categorySlug: '', collectionId: 'hits');
    expect(query.isScoped, isTrue);
    expect(CatalogQueryParams.products(query)['collection'], 'hits');
  });

  test('«hits» are the best sellers first', () {
    final items =
        FakeCatalogBackend().products('ru', {
              FakeApiParams.collection: 'hits',
              FakeApiParams.sort: 'sales',
            })['items']
            as List<dynamic>;
    final sold = [
      for (final p in items.cast<Map<String, dynamic>>())
        p['sold_count'] as int,
    ];
    expect(sold, isNotEmpty);
    expect(sold, [...sold]..sort((a, b) => b.compareTo(a)));
  });
}
