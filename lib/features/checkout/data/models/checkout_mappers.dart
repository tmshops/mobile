import '../../../../core/cart/cart_item.dart';
import '../../../../core/error/exceptions.dart';
import '../../domain/entities/checkout.dart';
import 'checkout_models.dart';

CheckoutDeliveryType? _deliveryType(String? value) => switch (value) {
  'express' => CheckoutDeliveryType.express,
  'air' => CheckoutDeliveryType.air,
  'truck' => CheckoutDeliveryType.truck,
  _ => null,
};

extension CheckoutPreviewModelX on CheckoutPreviewModel {
  CheckoutPreview toEntity() => CheckoutPreview(
    deliveryOptions: [
      for (final o in deliveryOptions)
        if (_deliveryType(o.type) case final type?)
          DeliveryChoice(
            type: type,
            name: o.name,
            term: o.term,
            price: o.price,
            unavailableReason: o.unavailableReason,
          ),
    ],
    deliveryType: _deliveryType(deliveryType),
    pickupPoints: [
      for (final p in pickupPoints)
        PickupPoint(
          id: p.id,
          name: p.name,
          address: p.address,
          hours: p.hours,
          phone: p.phone,
        ),
    ],
    services: [
      for (final s in services)
        ExtraService(id: s.id, title: s.title, price: s.price),
    ],
    courierPrice: courierPrice,
    courierFreeFrom: courierFreeFrom,
    summary: CheckoutSummary(
      items: summary.items,
      chinaDelivery: summary.chinaDelivery,
      internationalEstimate: summary.internationalEstimate,
      courier: summary.courier,
      services: summary.services,
      discount: summary.discount,
      total: summary.total,
      payNow: summary.payNow,
      payLater: summary.payLater,
    ),
  );
}

extension PlaceOrderResponseModelX on PlaceOrderResponseModel {
  /// Throws [ServerException] for a response that fits neither case.
  PlaceOrderResult toEntity() {
    final created = order;
    final changed = preview;
    if (status == 'created' && created != null) {
      return PlaceOrderResult.placed(
        PlacedOrder(
          number: created.number,
          payNow: created.payNow,
          payment: created.payment == 'cash'
              ? PaymentMethod.cash
              : PaymentMethod.card,
          paymentId: created.paymentId,
        ),
      );
    }
    if (status == 'price_changed' && changed != null) {
      return PlaceOrderResult.priceChanged(changed.toEntity());
    }
    throw ServerException(code: status);
  }
}

extension PaymentStatusModelX on PaymentStatusModel {
  PaymentCheck toEntity() => PaymentCheck(
    status: switch (status) {
      'paid' => PaymentStatus.paid,
      'failed' => PaymentStatus.failed,
      // Unknown states are treated as «still checking».
      _ => PaymentStatus.pending,
    },
    reason: reason,
  );
}

/// Request bodies for checkout preview and order creation.
abstract final class CheckoutRequest {
  static Map<String, dynamic> body({
    required String regionId,
    required List<CartItem> lines,
    required CheckoutDraft draft,
    String? promoCode,
    int? expectedTotal,
  }) => {
    'region': regionId,
    'promo_code': ?promoCode,
    'lines': [
      for (final l in lines)
        {
          'product_id': l.productId,
          'sku_id': l.skuId,
          'quantity': l.quantity,
          'comment': ?l.comment,
        },
    ],
    'method': draft.method.name,
    if (draft.method == ReceivingMethod.pickup)
      'pickup_point_id': draft.pickupPointId,
    'delivery_type': draft.deliveryType?.name,
    'service_ids': draft.serviceIds.toList()..sort(),
    'payment': draft.payment.name,
    'comment': draft.comment.trim(),
    'recipient': {
      'first_name': draft.recipient.firstName.trim(),
      'last_name': draft.recipient.lastName.trim(),
      'phone': draft.recipient.phone,
    },
    if (draft.method == ReceivingMethod.courier)
      'address': {
        // The server uses the saved address (and its point) when given.
        'id': ?draft.address.savedId,
        'street': draft.address.street.trim(),
        'details': draft.address.details.trim(),
      },
    'expected_total': ?expectedTotal,
  };
}
