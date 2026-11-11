import '../models/catalog_models.dart';

/// Catalog API. Throws `NetworkException` / `ServerException`.
///
/// Products and facets take ready query parameters (see
/// `CatalogQueryParams`), exactly as they go on the wire.
abstract interface class CatalogRemoteDataSource {
  Future<CategoryTreeModel> getTree(String languageCode);

  Future<ProductListPageModel> getProducts(
    String languageCode,
    Map<String, String> params,
  );

  Future<FacetsResultModel> getFacets(
    String languageCode,
    Map<String, String> params,
  );
}
