import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/error/guard.dart';
import '../../domain/entities/favourite_offer.dart';
import '../../domain/repositories/favourite_offers_repository.dart';
import '../datasources/favourite_offers_remote_data_source.dart';
import '../models/favourite_offer_model.dart';

@LazySingleton(as: FavouriteOffersRepository)
class FavouriteOffersRepositoryImpl implements FavouriteOffersRepository {
  const FavouriteOffersRepositoryImpl(this._remote);

  final FavouriteOffersRemoteDataSource _remote;

  @override
  Future<Either<Failure, Map<String, FavouriteOffer>>> get(
    String languageCode,
    List<String> productIds,
  ) => guardCall(() async {
    if (productIds.isEmpty) return const {};
    final offers = await _remote.get(languageCode, productIds);
    return {for (final o in offers) o.product.id: o.toEntity()};
  });
}
