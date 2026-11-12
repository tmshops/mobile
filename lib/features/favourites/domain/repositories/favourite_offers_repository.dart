import 'package:fpdart/fpdart.dart';

import '../../../../core/error/failures.dart';
import '../entities/favourite_offer.dart';

abstract interface class FavouriteOffersRepository {
  /// Today's offers by product id. Products deleted from the catalogue are
  /// missing from the map.
  Future<Either<Failure, Map<String, FavouriteOffer>>> get(
    String languageCode,
    List<String> productIds,
  );
}
