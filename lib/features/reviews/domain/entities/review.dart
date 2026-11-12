import 'package:freezed_annotation/freezed_annotation.dart';

part 'review.freezed.dart';

/// Chips over the list (UI_DESIGN §7.19): Все / С фото / 5★ … 1★ /
/// Переведённые.
enum ReviewFilter {
  all('all'),
  photos('photos'),
  five('5'),
  four('4'),
  three('3'),
  two('2'),
  one('1'),
  translated('translated');

  const ReviewFilter(this.apiValue);

  /// As the API takes it.
  final String apiValue;

  /// Stars for the star filters, else `null`.
  int? get stars => int.tryParse(apiValue);
}

/// A customer's review of a product.
@freezed
abstract class ProductReview with _$ProductReview {
  const factory ProductReview({
    required String id,
    required String author,
    required DateTime date,
    required int rating,
    required String text,

    /// «Цвет: чёрный, размер M».
    String? skuLabel,
    @Default(<String>[]) List<String> photoUrls,

    /// Imported from the marketplace and machine-translated.
    @Default(false) bool isTranslated,
    String? storeReply,
  }) = _ProductReview;
}

@freezed
abstract class ReviewsSummary with _$ReviewsSummary {
  const factory ReviewsSummary({
    required double average,
    required int count,

    /// Stars (1–5) → how many reviews gave them.
    required Map<int, int> distribution,
  }) = _ReviewsSummary;
}

@freezed
abstract class ReviewsPage with _$ReviewsPage {
  const factory ReviewsPage({
    required ReviewsSummary summary,
    required List<ProductReview> items,
    String? nextCursor,
  }) = _ReviewsPage;
}

/// A received item the customer may review (TZ §5.18).
@freezed
abstract class ReviewTarget with _$ReviewTarget {
  const factory ReviewTarget({
    required String orderNumber,
    required String itemId,
    required String productId,
    required String title,
    required String imageUrl,
    String? skuLabel,
  }) = _ReviewTarget;
}

enum MyReviewStatus { moderation, published, rejected }

/// One of the customer's own reviews («Мои отзывы»).
@freezed
abstract class MyReview with _$MyReview {
  const factory MyReview({
    required String id,
    required String productId,
    required String title,
    required String imageUrl,
    required int rating,
    required String text,
    required DateTime date,
    required MyReviewStatus status,

    /// Server text for a rejected review.
    String? rejectReason,
    String? storeReply,
  }) = _MyReview;
}
