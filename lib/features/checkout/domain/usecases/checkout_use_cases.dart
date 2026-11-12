import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/cart/cart_item.dart';
import '../../../../core/error/failures.dart';
import '../entities/checkout.dart';
import '../repositories/checkout_repository.dart';

@lazySingleton
class LoadSavedRecipientUseCase {
  const LoadSavedRecipientUseCase(this._repository);

  final CheckoutRepository _repository;

  Future<(Recipient, CourierAddress)> call() => _repository.loadSaved();
}

@lazySingleton
class GetCheckoutPreviewUseCase {
  const GetCheckoutPreviewUseCase(this._repository);

  final CheckoutRepository _repository;

  Future<Either<Failure, CheckoutPreview>> call({
    required String languageCode,
    required String regionId,
    required List<CartItem> lines,
    required CheckoutDraft draft,
    String? promoCode,
  }) => _repository.preview(
    languageCode: languageCode,
    regionId: regionId,
    lines: lines,
    draft: draft,
    promoCode: promoCode,
  );
}

/// Saves the recipient and address for next time, then places the order.
@lazySingleton
class PlaceOrderUseCase {
  const PlaceOrderUseCase(this._repository);

  final CheckoutRepository _repository;

  Future<Either<Failure, PlaceOrderResult>> call({
    required String languageCode,
    required String regionId,
    required List<CartItem> lines,
    required CheckoutDraft draft,
    required int expectedTotal,
    required String idempotencyKey,
    String? promoCode,
  }) async {
    await _repository.save(draft.recipient, draft.address);
    return _repository.placeOrder(
      languageCode: languageCode,
      regionId: regionId,
      lines: lines,
      draft: draft,
      expectedTotal: expectedTotal,
      idempotencyKey: idempotencyKey,
      promoCode: promoCode,
    );
  }
}

@lazySingleton
class RestartPaymentUseCase {
  const RestartPaymentUseCase(this._repository);

  final CheckoutRepository _repository;

  Future<Either<Failure, String>> call(String orderNumber) =>
      _repository.restartPayment(orderNumber);
}

@lazySingleton
class GetPaymentStatusUseCase {
  const GetPaymentStatusUseCase(this._repository);

  final CheckoutRepository _repository;

  Future<Either<Failure, PaymentCheck>> call({
    required String languageCode,
    required String paymentId,
  }) => _repository.paymentStatus(
    languageCode: languageCode,
    paymentId: paymentId,
  );
}
