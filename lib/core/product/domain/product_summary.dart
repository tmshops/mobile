import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_summary.freezed.dart';

enum ProductMark { hit, newArrival }

/// What a product tile needs. Prices are whole TMT, computed by the server.
@freezed
abstract class ProductSummary with _$ProductSummary {
  const factory ProductSummary({
    required String id,
    required String title,
    required String imageUrl,
    required int price,
    int? oldPrice,
    int? soldCount,
    @Default(<ProductMark>{}) Set<ProductMark> marks,

    /// AI-generated replacement photo (shows «иллюстрация»).
    @Default(false) bool isIllustration,
  }) = _ProductSummary;
}
