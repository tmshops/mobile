import 'package:fpdart/fpdart.dart';

import '../../../../core/error/failures.dart';
import '../entities/review.dart';

/// Reviews (TZ §5.18).
abstract interface class ReviewsRepository {
  /// Right(null) for an unknown product.
  Future<Either<Failure, ReviewsPage?>> page(
    String languageCode,
    String productId, {
    ReviewFilter filter = ReviewFilter.all,
    String? cursor,
  });

  /// Right(null) when the item cannot be reviewed (not received, or done).
  Future<Either<Failure, ReviewTarget?>> target(
    String languageCode,
    String orderNumber,
    String itemId,
  );

  /// Sends a review; it waits for moderation.
  Future<Either<Failure, MyReview>> submit(
    String languageCode,
    ReviewTarget target, {
    required int rating,
    required String text,
  });

  Future<Either<Failure, List<MyReview>>> mine(String languageCode);
}
