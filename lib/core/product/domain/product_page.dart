import 'package:freezed_annotation/freezed_annotation.dart';

import 'product_summary.dart';

part 'product_page.freezed.dart';

/// One page of an endless product feed («Для вас», «Вам может понравиться»).
@freezed
abstract class ProductPage with _$ProductPage {
  const factory ProductPage({
    required List<ProductSummary> items,

    /// `null` when there are no more pages.
    String? nextCursor,
  }) = _ProductPage;
}
