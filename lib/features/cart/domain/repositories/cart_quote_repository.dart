import 'package:fpdart/fpdart.dart';

import '../../../../core/cart/cart_item.dart';
import '../../../../core/error/failures.dart';
import '../entities/cart_quote.dart';

abstract interface class CartQuoteRepository {
  /// Server calculation of [lines] for [regionId], with an optional promo.
  Future<Either<Failure, CartQuote>> quote({
    required String languageCode,
    required List<CartItem> lines,
    required String regionId,
    String? promoCode,
  });

  /// Right(null) when the product no longer exists.
  Future<Either<Failure, ProductVariants?>> getVariants({
    required String languageCode,
    required String productId,
  });
}
