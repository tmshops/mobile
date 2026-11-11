import '../models/home_models.dart';

/// Home API. Throws `NetworkException` / `ServerException`.
abstract interface class HomeRemoteDataSource {
  Future<HomeResponseModel> getHome(String languageCode);

  Future<ProductPageModel> getRecommendations({
    required String languageCode,
    String? cursor,
  });
}
