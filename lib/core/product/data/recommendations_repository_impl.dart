import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../dev/fake_backend/fake_home_samples.dart';
import '../../error/exceptions.dart';
import '../../error/failures.dart';
import '../../error/guard.dart';
import '../../network/network_info.dart';
import '../domain/product_page.dart';
import '../domain/recommendations_repository.dart';
import 'product_page_model.dart';

/// Recommendations API. Throws `NetworkException` / `ServerException`.
abstract interface class RecommendationsRemoteDataSource {
  Future<ProductPageModel> getRecommendations({
    required String languageCode,
    String? cursor,
  });
}

/// Dev stand-in: pages of sample products, offline-aware like the API.
@LazySingleton(as: RecommendationsRemoteDataSource, env: [Environment.dev])
class FakeRecommendationsRemoteDataSource
    implements RecommendationsRemoteDataSource {
  const FakeRecommendationsRemoteDataSource(this._networkInfo);

  final NetworkInfo _networkInfo;

  static const _latency = Duration(milliseconds: 700);
  static const _pageSize = 10;
  static const _pageCount = 5;

  @override
  Future<ProductPageModel> getRecommendations({
    required String languageCode,
    String? cursor,
  }) async {
    if (!await _networkInfo.isOnline) throw const NetworkException();
    await Future<void>.delayed(_latency);
    final page = cursor == null ? 0 : int.tryParse(cursor) ?? 0;
    final json = {
      'items': [
        for (var i = 0; i < _pageSize; i++)
          FakeHomeSamples.product(
            languageCode,
            page * _pageSize + i + FakeHomeSamples.feedSeedOffset,
          ),
      ],
      'next_cursor': page + 1 < _pageCount ? '${page + 1}' : null,
    };
    try {
      return ProductPageModel.fromJson(json);
    } on Object catch (e) {
      throw ServerException(cause: e);
    }
  }
}

@LazySingleton(as: RecommendationsRepository)
class RecommendationsRepositoryImpl implements RecommendationsRepository {
  const RecommendationsRepositoryImpl(this._remote);

  final RecommendationsRemoteDataSource _remote;

  @override
  Future<Either<Failure, ProductPage>> getRecommendations({
    required String languageCode,
    String? cursor,
  }) => guardCall(() async {
    final page = await _remote.getRecommendations(
      languageCode: languageCode,
      cursor: cursor,
    );
    return page.toEntity();
  });
}
