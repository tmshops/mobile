import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/favourites/favourite.dart';
import '../../../../core/product/domain/product_summary.dart';
import '../../domain/entities/favourite_offer.dart';

part 'favourite_card.freezed.dart';

enum FavouritesSort { recent, price, discount }

/// What one tile of the Favourites grid shows: today's product if known,
/// else the saved copy.
@freezed
abstract class FavouriteCard with _$FavouriteCard {
  const factory FavouriteCard({
    required Favourite favourite,
    required ProductSummary product,
    required bool isAvailable,
    String? sellerName,
  }) = _FavouriteCard;

  const FavouriteCard._();

  String get id => favourite.id;

  /// «Цена снизилась −15%»: today's price is below the saved one.
  int? get dropPercent {
    final saved = favourite.savedPrice;
    final now = product.price;
    if (saved <= 0 || now >= saved) return null;
    final percent = ((saved - now) * 100 / saved).round();
    return percent < 1 ? null : percent;
  }

  /// For «по скидке»: the bigger of the drop and the listed discount.
  int get discountPercent {
    final old = product.oldPrice;
    final listed = old == null || old <= product.price
        ? 0
        : ((old - product.price) * 100 / old).round();
    final drop = dropPercent ?? 0;
    return listed > drop ? listed : drop;
  }

  /// Builds the cards in [sort] order. Sold-out products go last when
  /// sorting by price or discount: they cannot be bought at any price.
  static List<FavouriteCard> arrange(
    List<Favourite> items,
    Map<String, FavouriteOffer> offers,
    FavouritesSort sort,
  ) {
    final cards = [
      for (final f in items)
        FavouriteCard(
          favourite: f,
          product: offers[f.id]?.product ?? f.product,
          isAvailable: offers[f.id]?.isAvailable ?? true,
          sellerName: offers[f.id]?.sellerName,
        ),
    ];
    if (sort == FavouritesSort.recent) return cards;
    int order(FavouriteCard a, FavouriteCard b) {
      if (a.isAvailable != b.isAvailable) return a.isAvailable ? -1 : 1;
      return switch (sort) {
        FavouritesSort.price => a.product.price.compareTo(b.product.price),
        FavouritesSort.discount => b.discountPercent.compareTo(
          a.discountPercent,
        ),
        FavouritesSort.recent => 0,
      };
    }

    // List.sort is not stable: the index keeps date order between equals.
    final indexed = [...cards.indexed]
      ..sort((a, b) {
        final byOrder = order(a.$2, b.$2);
        return byOrder != 0 ? byOrder : a.$1.compareTo(b.$1);
      });
    return [for (final (_, card) in indexed) card];
  }
}
