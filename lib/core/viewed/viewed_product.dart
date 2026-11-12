import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../error/failures.dart';
import '../product/domain/product_summary.dart';

part 'viewed_product.freezed.dart';

/// A product the customer opened, and when.
@freezed
abstract class ViewedProduct with _$ViewedProduct {
  const factory ViewedProduct({
    required ProductSummary product,
    required DateTime viewedAt,
  }) = _ViewedProduct;
}

/// «Просмотренные» on this device (TZ §8: local history). Written by the
/// product page, read by the Viewed screen.
abstract interface class ViewedRepository {
  /// Newest first.
  Future<Either<Failure, List<ViewedProduct>>> load();

  /// Moves [product] to the top with [at] as its time.
  Future<Either<Failure, Unit>> record(ProductSummary product, DateTime at);

  Future<Either<Failure, Unit>> remove(String productId);

  Future<Either<Failure, Unit>> clear();
}
