import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/cart/cart_item.dart';
import '../../../../core/error/failures.dart';
import '../entities/cart_quote.dart';
import '../repositories/cart_quote_repository.dart';

@lazySingleton
class GetCartQuoteUseCase {
  const GetCartQuoteUseCase(this._repository);

  final CartQuoteRepository _repository;

  Future<Either<Failure, CartQuote>> call({
    required String languageCode,
    required List<CartItem> lines,
    required String regionId,
    String? promoCode,
  }) => _repository.quote(
    languageCode: languageCode,
    lines: lines,
    regionId: regionId,
    promoCode: promoCode,
  );
}
