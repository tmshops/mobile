import 'package:freezed_annotation/freezed_annotation.dart';

import '../product/domain/product_summary.dart';

part 'favourite.freezed.dart';

/// A saved product. [product] is the last known tile; [savedPrice] is the
/// price when it was saved, so the list can say «Цена снизилась −15%».
@freezed
abstract class Favourite with _$Favourite {
  const factory Favourite({
    required ProductSummary product,
    required int savedPrice,
    required DateTime addedAt,
  }) = _Favourite;

  const Favourite._();

  String get id => product.id;
}
