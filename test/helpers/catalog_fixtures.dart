import 'package:tmshop/core/dev/fake_backend/fake_catalog_backend.dart';
import 'package:tmshop/features/catalog/data/models/catalog_mappers.dart';
import 'package:tmshop/features/catalog/data/models/catalog_models.dart';
import 'package:tmshop/features/catalog/domain/entities/category.dart';
import 'package:tmshop/features/catalog/domain/entities/facet.dart';
import 'package:tmshop/features/catalog/domain/entities/product_list_page.dart';
import 'package:tmshop/features/catalog/domain/entities/product_query.dart';

import 'home_fixtures.dart';

final _backend = FakeCatalogBackend();

/// Realistic catalog data: the dev fake backend run through the real parser.
CategoryTree sampleTree(String lang, {bool isFromCache = false}) =>
    CategoryTreeModel.fromJson(
      _backend.tree(lang),
    ).toEntity(fetchedAt: fixtureNow, isFromCache: isFromCache);

ProductListPage samplePageFor(
  String lang,
  ProductQuery query, {
  String? cursor,
}) => ProductListPageModel.fromJson(
  _backend.products(lang, CatalogQueryParams.products(query, cursor: cursor)),
).toEntity();

FacetsResult sampleFacets(
  String lang,
  String slug, [
  AppliedFilters filters = const AppliedFilters(),
]) => FacetsResultModel.fromJson(
  _backend.facets(
    lang,
    CatalogQueryParams.filters(
      ProductQuery(categorySlug: slug, filters: filters),
    ),
  ),
).toEntity();
