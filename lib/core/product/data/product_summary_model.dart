import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/product_summary.dart';

part 'product_summary_model.freezed.dart';
part 'product_summary_model.g.dart';

/// Product tile JSON, shared by every list endpoint (Home, catalog, search).
@freezed
abstract class ProductSummaryModel with _$ProductSummaryModel {
  const factory ProductSummaryModel({
    required String id,
    required String title,
    required String imageUrl,
    required int price,
    int? oldPrice,
    int? soldCount,

    /// `hit`, `new`; unknown values are ignored.
    @Default(<String>[]) List<String> marks,
    @Default(false) bool isIllustration,
  }) = _ProductSummaryModel;

  factory ProductSummaryModel.fromJson(Map<String, dynamic> json) =>
      _$ProductSummaryModelFromJson(json);
}

extension ProductSummaryModelX on ProductSummaryModel {
  ProductSummary toEntity() => ProductSummary(
    id: id,
    title: title,
    imageUrl: imageUrl,
    price: price,
    oldPrice: oldPrice,
    soldCount: soldCount,
    isIllustration: isIllustration,
    marks: {
      for (final mark in marks)
        ?switch (mark) {
          'hit' => ProductMark.hit,
          'new' => ProductMark.newArrival,
          _ => null,
        },
    },
  );
}
