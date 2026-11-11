import 'package:freezed_annotation/freezed_annotation.dart';

import 'home_section.dart';
import '../../../../core/product/domain/product_summary.dart';

part 'home_content.freezed.dart';

@freezed
abstract class HomeContent with _$HomeContent {
  const factory HomeContent({
    required List<HomeSection> sections,

    /// When this content was downloaded (device clock).
    required DateTime fetchedAt,

    /// `true` when it came from the local cache.
    @Default(false) bool isFromCache,
  }) = _HomeContent;
}

/// One page of the endless «Для вас» feed.
@freezed
abstract class ProductPage with _$ProductPage {
  const factory ProductPage({
    required List<ProductSummary> items,

    /// `null` when there are no more pages.
    String? nextCursor,
  }) = _ProductPage;
}
