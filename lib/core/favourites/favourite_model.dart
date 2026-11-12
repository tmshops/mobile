import 'package:freezed_annotation/freezed_annotation.dart';

import '../product/data/product_summary_model.dart';
import 'favourite.dart';

part 'favourite_model.freezed.dart';
part 'favourite_model.g.dart';

/// A favourite as the server returns it and as the device stores it.
@freezed
abstract class FavouriteModel with _$FavouriteModel {
  const factory FavouriteModel({
    required ProductSummaryModel product,
    required int savedPrice,
    required DateTime addedAt,
  }) = _FavouriteModel;

  factory FavouriteModel.fromJson(Map<String, dynamic> json) =>
      _$FavouriteModelFromJson(json);

  factory FavouriteModel.fromEntity(Favourite f) => FavouriteModel(
    product: f.product.toModel(),
    savedPrice: f.savedPrice,
    addedAt: f.addedAt.toUtc(),
  );
}

extension FavouriteModelX on FavouriteModel {
  Favourite toEntity() => Favourite(
    product: product.toEntity(),
    savedPrice: savedPrice,
    addedAt: addedAt.toLocal(),
  );

  /// What the server needs to merge: the rest it knows itself.
  Map<String, dynamic> toRequest() => {
    'product_id': product.id,
    'saved_price': savedPrice,
    'added_at': addedAt.toUtc().toIso8601String(),
  };
}
