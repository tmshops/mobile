import 'package:tmshop/core/dev/fake_backend/fake_favourites_backend.dart';
import 'package:tmshop/core/favourites/favourite.dart';
import 'package:tmshop/core/favourites/favourite_model.dart';
import 'package:tmshop/core/price_alerts/price_alert.dart';
import 'package:tmshop/core/price_alerts/price_alerts_repository.dart';
import 'package:tmshop/features/favourites/data/models/favourite_offer_model.dart';
import 'package:tmshop/features/favourites/domain/entities/favourite_offer.dart';

final favouritesNow = DateTime(2026, 11, 12, 14, 30);

FakeFavouritesBackend fakeFavouritesBackend() =>
    FakeFavouritesBackend(now: () => favouritesNow);

/// The account's seeded list: two dropped in price, one unchanged, one
/// sold out (oldest), newest first.
List<Favourite> seededFavourites(String lang) => [
  for (final json in fakeFavouritesBackend().favourites(lang))
    FavouriteModel.fromJson(json).toEntity(),
];

Map<String, FavouriteOffer> offersFor(String lang, List<Favourite> items) {
  final json = fakeFavouritesBackend().offers(lang, [
    for (final f in items) f.id,
  ]);
  return {
    for (final o in json.map(FavouriteOfferModel.fromJson))
      o.product.id: o.toEntity(),
  };
}

List<PriceAlert> seededAlerts(String lang) => [
  for (final json in fakeFavouritesBackend().alerts(lang))
    PriceAlertModel.fromJson(json).toEntity(),
];
