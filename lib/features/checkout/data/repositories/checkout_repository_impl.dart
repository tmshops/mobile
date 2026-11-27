import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/cart/cart_item.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/checkout.dart';
import '../../domain/repositories/checkout_repository.dart';
import '../datasources/checkout_data_sources.dart';
import '../models/checkout_mappers.dart';

@LazySingleton(as: CheckoutRepository)
class CheckoutRepositoryImpl implements CheckoutRepository {
  const CheckoutRepositoryImpl(this._remote, this._local);

  final CheckoutRemoteDataSource _remote;
  final CheckoutLocalDataSource _local;

  @override
  Future<(Recipient, CourierAddress)> loadSaved() async => _local.read();

  @override
  Future<void> save(Recipient recipient, CourierAddress address) async {
    try {
      await _local.write(recipient, address);
    } on CacheException {
      // Not worth failing an order over: the fields are just not prefilled.
    }
  }

  @override
  Future<Either<Failure, List<SavedAddress>>> savedAddresses(
    String languageCode,
  ) => _guard(() async {
    final json = await _remote.savedAddresses(languageCode);
    try {
      return [
        for (final a
            in (json['addresses'] as List<dynamic>)
                .cast<Map<String, dynamic>>())
          SavedAddress(
            id: a['id'] as String,
            street: a['address'] as String,
            details: a['details'] as String? ?? '',
            region: a['region'] as String? ?? '',
            isDefault: a['is_default'] as bool? ?? false,
          ),
      ];
    } on Object catch (e) {
      throw ServerException(cause: e);
    }
  });

  @override
  Future<Either<Failure, CheckoutPreview>> preview({
    required String languageCode,
    required String regionId,
    required List<CartItem> lines,
    required CheckoutDraft draft,
    String? promoCode,
  }) => _guard(
    () async => (await _remote.preview(
      languageCode,
      CheckoutRequest.body(
        regionId: regionId,
        lines: lines,
        draft: draft,
        promoCode: promoCode,
      ),
    )).toEntity(),
  );

  @override
  Future<Either<Failure, PlaceOrderResult>> placeOrder({
    required String languageCode,
    required String regionId,
    required List<CartItem> lines,
    required CheckoutDraft draft,
    required int expectedTotal,
    required String idempotencyKey,
    String? promoCode,
  }) => _guard(
    () async => (await _remote.placeOrder(
      languageCode,
      CheckoutRequest.body(
        regionId: regionId,
        lines: lines,
        draft: draft,
        promoCode: promoCode,
        expectedTotal: expectedTotal,
      ),
      idempotencyKey,
    )).toEntity(),
  );

  @override
  Future<Either<Failure, String>> restartPayment(String orderNumber) =>
      _guard(() => _remote.restartPayment(orderNumber));

  @override
  Future<Either<Failure, PaymentCheck>> paymentStatus({
    required String languageCode,
    required String paymentId,
  }) => _guard(
    () async =>
        (await _remote.paymentStatus(languageCode, paymentId)).toEntity(),
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
