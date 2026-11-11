import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/cart/cart_item.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/cart_quote.dart';
import '../../domain/repositories/cart_quote_repository.dart';
import '../datasources/cart_remote_data_source.dart';
import '../models/cart_mappers.dart';

@LazySingleton(as: CartQuoteRepository)
class CartQuoteRepositoryImpl implements CartQuoteRepository {
  const CartQuoteRepositoryImpl(this._remote);

  final CartRemoteDataSource _remote;

  @override
  Future<Either<Failure, CartQuote>> quote({
    required String languageCode,
    required List<CartItem> lines,
    required String regionId,
    String? promoCode,
  }) => _guard(
    () async => (await _remote.quote(
      languageCode,
      CartQuoteRequest.body(
        lines: lines,
        regionId: regionId,
        promoCode: promoCode,
      ),
    )).toEntity(),
  );

  @override
  Future<Either<Failure, ProductVariants?>> getVariants({
    required String languageCode,
    required String productId,
  }) => _guard(
    () async =>
        (await _remote.getVariants(languageCode, productId))?.toEntity(),
  );

  static Future<Either<Failure, T>> _guard<T>(Future<T> Function() run) async {
    try {
      return right(await run());
    } on NetworkException {
      return left(const NetworkFailure());
    } on ServerException catch (e) {
      return left(ServerFailure(code: e.code, message: e.message));
    } on CacheException {
      return left(const CacheFailure());
    }
  }
}
