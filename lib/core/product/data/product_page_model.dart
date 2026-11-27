import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/product_page.dart';
import 'product_summary_model.dart';

part 'product_page_model.freezed.dart';
part 'product_page_model.g.dart';

/// `GET /recommendations?cursor=` response.
@freezed
abstract class ProductPageModel with _$ProductPageModel {
  const factory ProductPageModel({
    required List<ProductSummaryModel> items,
    String? nextCursor,
  }) = _ProductPageModel;

  factory ProductPageModel.fromJson(Map<String, dynamic> json) =>
      _$ProductPageModelFromJson(json);
}

extension ProductPageModelX on ProductPageModel {
  ProductPage toEntity() => ProductPage(
    items: [for (final p in items) p.toEntity()],
    nextCursor: nextCursor,
  );
}
