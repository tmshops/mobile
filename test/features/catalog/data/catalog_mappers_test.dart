import 'package:flutter_test/flutter_test.dart';
import 'package:tmshop/features/catalog/data/models/catalog_mappers.dart';
import 'package:tmshop/features/catalog/data/models/catalog_models.dart';
import 'package:tmshop/features/catalog/domain/entities/facet.dart';
import 'package:tmshop/features/catalog/domain/entities/product_query.dart';

import '../../../helpers/catalog_fixtures.dart';

void main() {
  group('CatalogQueryParams', () {
    test('serialises sort, price, choices, toggles and cursor', () {
      final filters = const AppliedFilters(price: PriceRange(min: 100))
          .toggleChoice(
            'brand',
            const FilterChoice(value: 'anker', label: 'Anker'),
          )
          .toggleChoice(
            'brand',
            const FilterChoice(value: 'baseus', label: 'Baseus'),
          )
          .setToggle('discount', 'Со скидкой', on: true);
      final params = CatalogQueryParams.products(
        ProductQuery(
          categorySlug: 'el-audio',
          sort: ProductSort.priceDesc,
          filters: filters,
        ),
        cursor: '40',
      );
      expect(params, {
        'category': 'el-audio',
        'price_min': '100',
        'f_brand': 'anker,baseus',
        'f_discount': '1',
        'sort': 'price_desc',
        'cursor': '40',
      });
    });
  });

  group('FacetsResultModel → FacetsResult', () {
    test('skips unknown types, empty groups and empty ranges', () {
      final result = FacetsResultModel.fromJson({
        'total': 3,
        'facets': [
          {'type': 'range', 'id': 'price', 'title': 'P', 'min': 5, 'max': 5},
          {'type': 'options', 'id': 'x', 'title': 'X', 'options': []},
          {'type': 'map_radius', 'id': 'pickup', 'title': '?'},
          {
            'type': 'options',
            'id': 'color',
            'title': 'Цвет',
            'display': 'swatches',
            'options': [
              {
                'value': 'red',
                'label': 'Красный',
                'count': 2,
                'color': '#E5484D',
              },
              {'value': 'odd', 'label': 'Odd', 'count': 1, 'color': 'nope'},
            ],
          },
          {
            'type': 'options',
            'id': 'brand',
            'title': 'Бренд',
            'display': 'carousel_3d',
            'options': [
              {'value': 'a', 'label': 'A', 'count': 1},
            ],
          },
        ],
      }).toEntity();

      expect(result.facets.map((f) => f.id), ['color', 'brand']);
      final color = result.facets.first as OptionsFacet;
      expect(color.display, FacetDisplay.swatches);
      expect(color.options.first.colorArgb, 0xFFE5484D);
      expect(color.options.last.colorArgb, isNull);
      // Unknown display styles fall back to chips.
      expect((result.facets.last as OptionsFacet).display, FacetDisplay.chips);
    });
  });

  test('tree lookup finds nodes at every level', () {
    final tree = sampleTree('tk');
    expect(tree.find('clothes')?.name, 'Eşikler');
    expect(tree.find('clothes-women')?.children, isNotEmpty);
    expect(tree.find('clothes-women-dresses')?.isLeaf, isTrue);
    expect(tree.find('missing'), isNull);
  });
}
