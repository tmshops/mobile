import 'package:injectable/injectable.dart';

import '../../../../core/dev/fake_backend/fake_favourites_backend.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/network/network_info.dart';
import '../models/favourite_offer_model.dart';

/// Favourites offers API. Throws `NetworkException` / `ServerException`.
abstract interface class FavouriteOffersRemoteDataSource {
  Future<List<FavouriteOfferModel>> get(
    String languageCode,
    List<String> productIds,
  );
}

@LazySingleton(as: FavouriteOffersRemoteDataSource, env: [Environment.dev])
class FakeFavouriteOffersRemoteDataSource
    implements FavouriteOffersRemoteDataSource {
  FakeFavouriteOffersRemoteDataSource(this._networkInfo, this._backend);

  final NetworkInfo _networkInfo;
  final FakeFavouritesBackend _backend;

  static const _latency = Duration(milliseconds: 400);

  @override
  Future<List<FavouriteOfferModel>> get(
    String languageCode,
    List<String> productIds,
  ) async {
    if (!await _networkInfo.isOnline) throw const NetworkException();
    await Future<void>.delayed(_latency);
    try {
      return [
        for (final json in _backend.offers(languageCode, productIds))
          FavouriteOfferModel.fromJson(json),
      ];
    } on Object catch (e) {
      throw ServerException(cause: e);
    }
  }
}
