import '../../../../core/product/data/product_summary_model.dart';
import '../../domain/entities/category.dart';
import '../../domain/entities/facet.dart';
import '../../domain/entities/product_list_page.dart';
import '../../domain/entities/product_query.dart';
import 'catalog_models.dart';

extension CategoryTreeModelX on CategoryTreeModel {
  CategoryTree toEntity({
    required DateTime fetchedAt,
    bool isFromCache = false,
  }) => CategoryTree(
    roots: [for (final c in categories) c.toEntity()],
    fetchedAt: fetchedAt,
    isFromCache: isFromCache,
  );
}

extension on CategoryModel {
  Category toEntity() => Category(
    slug: slug,
    name: name,
    iconUrl: iconUrl,
    children: [for (final c in children) c.toEntity()],
  );
}

extension ProductListPageModelX on ProductListPageModel {
  ProductListPage toEntity() => ProductListPage(
    items: [for (final p in items) p.toEntity()],
    total: total,
    nextCursor: nextCursor,
    banner: switch (banner) {
      final b? => CategoryBanner(imageUrl: b.imageUrl, title: b.title),
      null => null,
    },
  );
}

extension FacetsResultModelX on FacetsResultModel {
  FacetsResult toEntity() => FacetsResult(
    total: total,
    facets: [for (final f in facets) ?f.toEntity()],
  );
}

extension on FacetModel {
  /// `null` for unknown types and for groups with nothing to pick.
  Facet? toEntity() => switch (this) {
    RangeFacetModel(:final id, :final title, :final min, :final max) =>
      min < max ? Facet.range(id: id, title: title, min: min, max: max) : null,
    OptionsFacetModel(
      :final id,
      :final title,
      :final display,
      :final options,
    ) =>
      options.isEmpty
          ? null
          : Facet.options(
              id: id,
              title: title,
              display: switch (display) {
                'swatches' => FacetDisplay.swatches,
                'searchable_list' => FacetDisplay.searchableList,
                _ => FacetDisplay.chips,
              },
              options: [for (final o in options) o.toEntity()],
            ),
    ToggleFacetModel(:final id, :final title, :final count) => Facet.toggle(
      id: id,
      title: title,
      count: count,
    ),
    UnknownFacetModel() => null,
  };
}

extension on FacetOptionModel {
  FacetOption toEntity() => FacetOption(
    value: value,
    label: label,
    count: count,
    colorArgb: _parseColor(color),
  );

  static const _opaque = 0xFF000000;
  static const _rgbLength = 6;

  static int? _parseColor(String? hex) {
    if (hex == null) return null;
    final digits = hex.startsWith('#') ? hex.substring(1) : hex;
    if (digits.length != _rgbLength) return null;
    final rgb = int.tryParse(digits, radix: 16);
    return rgb == null ? null : _opaque | rgb;
  }
}

/// Query string for the products and facets endpoints.
abstract final class CatalogQueryParams {
  static const category = 'category';
  static const sort = 'sort';
  static const cursor = 'cursor';
  static const priceMin = 'price_min';
  static const priceMax = 'price_max';

  /// Prefix of per-facet params: `f_brand=anker,baseus`.
  static const facetPrefix = 'f_';
  static const toggleOn = '1';
  static const listSeparator = ',';

  static String sortValue(ProductSort sort) => switch (sort) {
    ProductSort.popular => 'popular',
    ProductSort.priceAsc => 'price_asc',
    ProductSort.priceDesc => 'price_desc',
    ProductSort.newest => 'newest',
    ProductSort.rating => 'rating',
    ProductSort.sales => 'sales',
  };

  static Map<String, String> filters(String categorySlug, AppliedFilters f) => {
    category: categorySlug,
    if (f.price.min case final min?) priceMin: '$min',
    if (f.price.max case final max?) priceMax: '$max',
    for (final MapEntry(:key, :value) in f.choices.entries)
      '$facetPrefix$key': value.map((c) => c.value).join(listSeparator),
    for (final id in f.toggles.keys) '$facetPrefix$id': toggleOn,
  };

  static Map<String, String> products(ProductQuery query, {String? cursor}) => {
    ...filters(query.categorySlug, query.filters),
    sort: sortValue(query.sort),
    CatalogQueryParams.cursor: ?cursor,
  };
}
