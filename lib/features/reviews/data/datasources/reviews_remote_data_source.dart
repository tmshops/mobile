import 'package:injectable/injectable.dart';

import '../../../../core/dev/fake_backend/fake_reviews_backend.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/network/network_info.dart';
import '../models/review_models.dart';

/// Reviews API. Throws `NetworkException` / `ServerException`.
abstract interface class ReviewsRemoteDataSource {
  /// `null` when the server answers 404.
  Future<ReviewsPageModel?> page(
    String languageCode,
    String productId,
    String filter,
    String? cursor,
  );

  /// `null` when the item cannot be reviewed.
  Future<ReviewTargetModel?> target(
    String languageCode,
    String orderNumber,
    String itemId,
  );

  Future<MyReviewModel> submit(
    String languageCode,
    String orderNumber,
    String itemId,
    int rating,
    String text,
  );

  Future<List<MyReviewModel>> mine(String languageCode);
}

@LazySingleton(as: ReviewsRemoteDataSource, env: [Environment.dev])
class FakeReviewsRemoteDataSource implements ReviewsRemoteDataSource {
  FakeReviewsRemoteDataSource(this._networkInfo, this._backend);

  final NetworkInfo _networkInfo;
  final FakeReviewsBackend _backend;

  static const _latency = Duration(milliseconds: 400);

  Future<T> _call<T>(T Function() run) async {
    if (!await _networkInfo.isOnline) throw const NetworkException();
    await Future<void>.delayed(_latency);
    try {
      return run();
    } on ServerException {
      rethrow;
    } on Object catch (e) {
      throw ServerException(cause: e);
    }
  }

  @override
  Future<ReviewsPageModel?> page(
    String languageCode,
    String productId,
    String filter,
    String? cursor,
  ) => _call(() {
    final json = _backend.page(languageCode, productId, filter, cursor);
    return json == null ? null : ReviewsPageModel.fromJson(json);
  });

  @override
  Future<ReviewTargetModel?> target(
    String languageCode,
    String orderNumber,
    String itemId,
  ) => _call(() {
    final json = _backend.target(languageCode, orderNumber, itemId);
    return json == null ? null : ReviewTargetModel.fromJson(json);
  });

  @override
  Future<MyReviewModel> submit(
    String languageCode,
    String orderNumber,
    String itemId,
    int rating,
    String text,
  ) => _call(
    () => MyReviewModel.fromJson(
      _backend.submit(languageCode, orderNumber, itemId, rating, text),
    ),
  );

  @override
  Future<List<MyReviewModel>> mine(String languageCode) => _call(
    () => [
      for (final json in _backend.mine(languageCode))
        MyReviewModel.fromJson(json),
    ],
  );
}
