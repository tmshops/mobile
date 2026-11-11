import 'package:injectable/injectable.dart';

import '../../../../core/dev/fake_backend/fake_cart_backend.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/network/network_info.dart';
import '../models/cart_models.dart';

/// Cart API. Throws `NetworkException` / `ServerException`.
abstract interface class CartRemoteDataSource {
  Future<CartQuoteModel> quote(String languageCode, Map<String, dynamic> body);

  /// `null` when the server answers 404.
  Future<VariantsModel?> getVariants(String languageCode, String productId);
}

/// Dev stand-in for the cart API until the backend exists.
@LazySingleton(as: CartRemoteDataSource, env: [Environment.dev])
class FakeCartRemoteDataSource implements CartRemoteDataSource {
  FakeCartRemoteDataSource(this._networkInfo);

  final NetworkInfo _networkInfo;
  final _backend = FakeCartBackend();

  static const _latency = Duration(milliseconds: 450);

  Future<void> _request() async {
    if (!await _networkInfo.isOnline) throw const NetworkException();
    await Future<void>.delayed(_latency);
  }

  @override
  Future<CartQuoteModel> quote(
    String languageCode,
    Map<String, dynamic> body,
  ) async {
    await _request();
    return _parse(
      () => CartQuoteModel.fromJson(_backend.quote(languageCode, body)),
    );
  }

  @override
  Future<VariantsModel?> getVariants(
    String languageCode,
    String productId,
  ) async {
    await _request();
    final json = _backend.variants(languageCode, productId);
    if (json == null) return null;
    return _parse(() => VariantsModel.fromJson(json));
  }

  static T _parse<T>(T Function() parse) {
    try {
      return parse();
    } on Object catch (e) {
      throw ServerException(cause: e);
    }
  }
}
