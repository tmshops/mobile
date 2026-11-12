import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/product/data/product_summary_model.dart';
import '../../domain/entities/favourite_offer.dart';

part 'favourite_offer_model.freezed.dart';
part 'favourite_offer_model.g.dart';

/// One item of `POST /favourites/offers`.
@freezed
abstract class FavouriteOfferModel with _$FavouriteOfferModel {
  const factory FavouriteOfferModel({
    required ProductSummaryModel product,
    required bool isAvailable,
    String? sellerName,
  }) = _FavouriteOfferModel;

  factory FavouriteOfferModel.fromJson(Map<String, dynamic> json) =>
      _$FavouriteOfferModelFromJson(json);
}

extension FavouriteOfferModelX on FavouriteOfferModel {
  FavouriteOffer toEntity() => FavouriteOffer(
    product: product.toEntity(),
    isAvailable: isAvailable,
    sellerName: sellerName,
  );
}
