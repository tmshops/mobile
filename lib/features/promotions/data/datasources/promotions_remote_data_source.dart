import 'package:injectable/injectable.dart';

import '../../../../core/dev/fake_backend/fake_promotions_backend.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/network/network_info.dart';
import '../models/promotion_models.dart';

/// Promotions API. Throws `NetworkException` / `ServerException`.
abstract interface class PromotionsRemoteDataSource {
  Future<List<PromotionModel>> list(String languageCode);

  /// `null` when the server answers 404.
  Future<PromotionDetailsModel?> details(String languageCode, String slug);
}

@LazySingleton(as: PromotionsRemoteDataSource, env: [Environment.dev])
class FakePromotionsRemoteDataSource implements PromotionsRemoteDataSource {
  FakePromotionsRemoteDataSource(this._networkInfo, this._backend);

  final NetworkInfo _networkInfo;
  final FakePromotionsBackend _backend;

  static const _latency = Duration(milliseconds: 400);

  Future<T> _call<T>(T Function() run) async {
    if (!await _networkInfo.isOnline) throw const NetworkException();
    await Future<void>.delayed(_latency);
    try {
      return run();
    } on Object catch (e) {
      throw ServerException(cause: e);
    }
  }

  @override
  Future<List<PromotionModel>> list(String languageCode) => _call(
    () => [
      for (final json in _backend.list(languageCode))
        PromotionModel.fromJson(json),
    ],
  );

  @override
  Future<PromotionDetailsModel?> details(String languageCode, String slug) =>
      _call(() {
        final json = _backend.details(languageCode, slug);
        return json == null ? null : PromotionDetailsModel.fromJson(json);
      });
}
