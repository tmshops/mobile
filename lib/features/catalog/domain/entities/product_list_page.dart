import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/product/domain/product_summary.dart';

part 'product_list_page.freezed.dart';

/// One page of a category's product list.
@freezed
abstract class ProductListPage with _$ProductListPage {
  const factory ProductListPage({
    required List<ProductSummary> items,

    /// All products matching the query, across pages.
    required int total,

    /// `null` when there are no more pages.
    String? nextCursor,

    /// Top-of-category banner; sent with the first page only.
    CategoryBanner? banner,
  }) = _ProductListPage;
}

@freezed
abstract class CategoryBanner with _$CategoryBanner {
  const factory CategoryBanner({
    required String imageUrl,
    required String title,
  }) = _CategoryBanner;
}
