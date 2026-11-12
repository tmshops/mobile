import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/product/domain/product_summary.dart';

part 'favourite_offer.freezed.dart';

/// Today's state of a saved product: current tile, whether it can still
/// be bought, and its seller (cart lines are grouped by seller).
@freezed
abstract class FavouriteOffer with _$FavouriteOffer {
  const factory FavouriteOffer({
    required ProductSummary product,
    required bool isAvailable,
    String? sellerName,
  }) = _FavouriteOffer;
}
