import 'package:injectable/injectable.dart';

import '../../../../core/dev/fake_backend/fake_product_backend.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/network/network_info.dart';
import '../models/product_models.dart';
import 'product_remote_data_source.dart';

/// Dev stand-in for the product API until the backend exists.
@LazySingleton(as: ProductRemoteDataSource, env: [Environment.dev])
class FakeProductRemoteDataSource implements ProductRemoteDataSource {
  FakeProductRemoteDataSource(this._networkInfo);

  final NetworkInfo _networkInfo;
  final _backend = FakeProductBackend();

  static const _latency = Duration(milliseconds: 700);
  static const _deliveryLatency = Duration(milliseconds: 350);

  Future<void> _request(Duration latency) async {
    if (!await _networkInfo.isOnline) throw const NetworkException();
    await Future<void>.delayed(latency);
  }

  @override
  Future<ProductDetailsModel?> getProduct(
    String languageCode,
    String id,
  ) async {
    await _request(_latency);
    final json = _backend.details(languageCode, id);
    if (json == null) return null;
    return _parse(() => ProductDetailsModel.fromJson(json));
  }

  @override
  Future<List<DeliveryQuoteModel>> getDelivery(
    String languageCode,
    String id,
    String regionId,
  ) async {
    await _request(_deliveryLatency);
    return _parse(
      () => [
        for (final json in _backend.delivery(languageCode, id, regionId))
          DeliveryQuoteModel.fromJson(json),
      ],
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
