import 'package:injectable/injectable.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/network/network_info.dart';
import '../models/catalog_models.dart';
import 'catalog_remote_data_source.dart';
import '../../../../core/dev/fake_backend/fake_catalog_backend.dart';

/// Dev stand-in for the catalog API until the backend exists. Waits like a
/// real request and fails with [NetworkException] when the phone is offline.
@LazySingleton(as: CatalogRemoteDataSource, env: [Environment.dev])
class FakeCatalogRemoteDataSource implements CatalogRemoteDataSource {
  FakeCatalogRemoteDataSource(this._networkInfo);

  final NetworkInfo _networkInfo;
  final _backend = FakeCatalogBackend();

  static const _latency = Duration(milliseconds: 600);

  /// Counting is a lighter request on a real backend too.
  static const _facetsLatency = Duration(milliseconds: 250);

  Future<void> _request(Duration latency) async {
    if (!await _networkInfo.isOnline) throw const NetworkException();
    await Future<void>.delayed(latency);
  }

  @override
  Future<CategoryTreeModel> getTree(String languageCode) async {
    await _request(_latency);
    return _parse(
      () => CategoryTreeModel.fromJson(_backend.tree(languageCode)),
    );
  }

  @override
  Future<ProductListPageModel> getProducts(
    String languageCode,
    Map<String, String> params,
  ) async {
    await _request(_latency);
    return _parse(
      () => ProductListPageModel.fromJson(
        _backend.products(languageCode, params),
      ),
    );
  }

  @override
  Future<FacetsResultModel> getFacets(
    String languageCode,
    Map<String, String> params,
  ) async {
    await _request(_facetsLatency);
    return _parse(
      () => FacetsResultModel.fromJson(_backend.facets(languageCode, params)),
    );
  }

  static T _parse<T>(T Function() parse) {
    try {
      return parse();
    } on Object catch (e) {
      throw ServerException(cause: e);
    }
  }
}
