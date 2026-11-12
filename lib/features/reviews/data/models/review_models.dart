import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/review.dart';

part 'review_models.freezed.dart';
part 'review_models.g.dart';

/// GET /products/{id}/reviews?filter=&cursor=.
@freezed
abstract class ReviewsPageModel with _$ReviewsPageModel {
  const factory ReviewsPageModel({
    required ReviewsSummaryModel summary,
    required List<ReviewModel> items,
    String? nextCursor,
  }) = _ReviewsPageModel;

  factory ReviewsPageModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewsPageModelFromJson(json);
}

@freezed
abstract class ReviewsSummaryModel with _$ReviewsSummaryModel {
  const factory ReviewsSummaryModel({
    required double average,
    required int count,

    /// `"5": 12, "4": 3, …`.
    @Default(<String, int>{}) Map<String, int> distribution,
  }) = _ReviewsSummaryModel;

  factory ReviewsSummaryModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewsSummaryModelFromJson(json);
}

@freezed
abstract class ReviewModel with _$ReviewModel {
  const factory ReviewModel({
    required String id,
    required String author,
    required DateTime date,
    required int rating,
    required String text,
    String? skuLabel,
    @Default(<String>[]) List<String> photoUrls,
    @Default(false) bool isTranslated,
    String? storeReply,
  }) = _ReviewModel;

  factory ReviewModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewModelFromJson(json);
}

/// GET /reviews/target?order=&item=.
@freezed
abstract class ReviewTargetModel with _$ReviewTargetModel {
  const factory ReviewTargetModel({
    required String orderNumber,
    required String itemId,
    required String productId,
    required String title,
    required String imageUrl,
    String? skuLabel,
  }) = _ReviewTargetModel;

  factory ReviewTargetModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewTargetModelFromJson(json);
}

/// One item of GET /reviews/mine.
@freezed
abstract class MyReviewModel with _$MyReviewModel {
  const factory MyReviewModel({
    required String id,
    required String productId,
    required String title,
    required String imageUrl,
    required int rating,
    required String text,
    required DateTime date,

    /// moderation, published, rejected.
    required String status,
    String? rejectReason,
    String? storeReply,
  }) = _MyReviewModel;

  factory MyReviewModel.fromJson(Map<String, dynamic> json) =>
      _$MyReviewModelFromJson(json);
}

extension ReviewsPageModelX on ReviewsPageModel {
  ReviewsPage toEntity() => ReviewsPage(
    summary: ReviewsSummary(
      average: summary.average,
      count: summary.count,
      distribution: {
        for (var s = 1; s <= 5; s++) s: summary.distribution['$s'] ?? 0,
      },
    ),
    items: [
      for (final r in items)
        ProductReview(
          id: r.id,
          author: r.author,
          date: r.date.toLocal(),
          rating: r.rating.clamp(1, 5),
          text: r.text,
          skuLabel: r.skuLabel,
          photoUrls: r.photoUrls,
          isTranslated: r.isTranslated,
          storeReply: r.storeReply,
        ),
    ],
    nextCursor: nextCursor,
  );
}

extension ReviewTargetModelX on ReviewTargetModel {
  ReviewTarget toEntity() => ReviewTarget(
    orderNumber: orderNumber,
    itemId: itemId,
    productId: productId,
    title: title,
    imageUrl: imageUrl,
    skuLabel: skuLabel,
  );
}

extension MyReviewModelX on MyReviewModel {
  MyReview toEntity() => MyReview(
    id: id,
    productId: productId,
    title: title,
    imageUrl: imageUrl,
    rating: rating.clamp(1, 5),
    text: text,
    date: date.toLocal(),
    status: switch (status) {
      'published' => MyReviewStatus.published,
      'rejected' => MyReviewStatus.rejected,
      _ => MyReviewStatus.moderation,
    },
    rejectReason: rejectReason,
    storeReply: storeReply,
  );
}
