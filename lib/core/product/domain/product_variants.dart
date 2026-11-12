import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../error/failures.dart';
import 'sku.dart';

part 'product_variants.freezed.dart';

/// A product's variant groups and SKUs with today's prices, for the
/// variant sheet (cart «изменить», favourites «В корзину»).
@freezed
abstract class ProductVariants with _$ProductVariants {
  const factory ProductVariants({
    required List<SkuProperty> properties,
    required List<Sku> skus,
  }) = _ProductVariants;
}

abstract interface class VariantsRepository {
  /// Right(null) when the product no longer exists.
  Future<Either<Failure, ProductVariants?>> get({
    required String languageCode,
    required String productId,
  });
}
