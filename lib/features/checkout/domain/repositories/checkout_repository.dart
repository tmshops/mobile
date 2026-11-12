import 'package:fpdart/fpdart.dart';

import '../../../../core/cart/cart_item.dart';
import '../../../../core/error/failures.dart';
import '../entities/checkout.dart';

abstract interface class CheckoutRepository {
  /// Recipient and address typed last time, for a quick repeat order.
  Future<(Recipient, CourierAddress)> loadSaved();

  Future<void> save(Recipient recipient, CourierAddress address);

  Future<Either<Failure, CheckoutPreview>> preview({
    required String languageCode,
    required String regionId,
    required List<CartItem> lines,
    required CheckoutDraft draft,
    String? promoCode,
  });

  /// [idempotencyKey] makes a repeated request return the same order
  /// instead of a second one. [expectedTotal] is the total the customer
  /// saw; a different server total gives [OrderPriceChanged].
  Future<Either<Failure, PlaceOrderResult>> placeOrder({
    required String languageCode,
    required String regionId,
    required List<CartItem> lines,
    required CheckoutDraft draft,
    required int expectedTotal,
    required String idempotencyKey,
    String? promoCode,
  });

  /// Starts the card payment of [orderNumber] again (after a failure).
  Future<Either<Failure, String>> restartPayment(String orderNumber);

  Future<Either<Failure, PaymentCheck>> paymentStatus({
    required String languageCode,
    required String paymentId,
  });
}
