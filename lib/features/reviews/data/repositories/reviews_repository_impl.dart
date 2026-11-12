import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/error/guard.dart';
import '../../domain/entities/review.dart';
import '../../domain/repositories/reviews_repository.dart';
import '../datasources/reviews_remote_data_source.dart';
import '../models/review_models.dart';

@LazySingleton(as: ReviewsRepository)
class ReviewsRepositoryImpl implements ReviewsRepository {
  const ReviewsRepositoryImpl(this._remote);

  final ReviewsRemoteDataSource _remote;

  @override
  Future<Either<Failure, ReviewsPage?>> page(
    String languageCode,
    String productId, {
    ReviewFilter filter = ReviewFilter.all,
    String? cursor,
  }) => guardCall(
    () async => (await _remote.page(
      languageCode,
      productId,
      filter.apiValue,
      cursor,
    ))?.toEntity(),
  );

  @override
  Future<Either<Failure, ReviewTarget?>> target(
    String languageCode,
    String orderNumber,
    String itemId,
  ) => guardCall(
    () async =>
        (await _remote.target(languageCode, orderNumber, itemId))?.toEntity(),
  );

  @override
  Future<Either<Failure, MyReview>> submit(
    String languageCode,
    ReviewTarget target, {
    required int rating,
    required String text,
  }) => guardCall(
    () async => (await _remote.submit(
      languageCode,
      target.orderNumber,
      target.itemId,
      rating,
      text.trim(),
    )).toEntity(),
  );

  @override
  Future<Either<Failure, List<MyReview>>> mine(String languageCode) =>
      guardCall(
        () async => [
          for (final r in await _remote.mine(languageCode)) r.toEntity(),
        ],
      );
}
