import 'package:freezed_annotation/freezed_annotation.dart';

part 'checkout.freezed.dart';

enum ReceivingMethod { courier, pickup }

enum PaymentMethod {
  /// Online through the bank page (TZ §5.13).
  card,

  /// Paid at the office before the purchase.
  cash,
}

enum CheckoutDeliveryType { express, air, truck }

/// Who receives the order. Saved on the device until login exists; then it
/// comes from the profile (TZ §5.12.1).
@freezed
abstract class Recipient with _$Recipient {
  const factory Recipient({
    @Default('') String firstName,
    @Default('') String lastName,

    /// 8 national digits, without +993.
    @Default('') String phone,
  }) = _Recipient;

  const Recipient._();

  static const phoneLength = 8;

  bool get isValid =>
      firstName.trim().isNotEmpty &&
      lastName.trim().isNotEmpty &&
      phone.length == phoneLength;
}

/// Courier address: one of the saved ones (TZ §5.16), or typed in.
@freezed
abstract class CourierAddress with _$CourierAddress {
  const factory CourierAddress({
    /// Id of the saved address; `null` when typed in by hand.
    String? savedId,

    /// Street and house.
    @Default('') String street,

    /// «Квартира / ориентир».
    @Default('') String details,
  }) = _CourierAddress;

  const CourierAddress._();

  bool get isValid => street.trim().isNotEmpty;
}

/// A delivery address saved on the account («Адреса», TZ §5.16).
@freezed
abstract class SavedAddress with _$SavedAddress {
  const factory SavedAddress({
    required String id,

    /// Street and house.
    required String street,
    @Default('') String details,
    @Default('') String region,
    @Default(false) bool isDefault,
  }) = _SavedAddress;

  const SavedAddress._();

  CourierAddress get asCourier =>
      CourierAddress(savedId: id, street: street, details: details);
}

/// Everything the customer chose. Sent to the server for each preview and
/// for the order itself.
@freezed
abstract class CheckoutDraft with _$CheckoutDraft {
  const factory CheckoutDraft({
    @Default(Recipient()) Recipient recipient,
    @Default(ReceivingMethod.courier) ReceivingMethod method,
    @Default(CourierAddress()) CourierAddress address,
    String? pickupPointId,

    /// `null` = server default (air, TZ §5.10).
    CheckoutDeliveryType? deliveryType,
    @Default(<String>{}) Set<String> serviceIds,
    @Default('') String comment,
    @Default(PaymentMethod.card) PaymentMethod payment,

    /// Offer + «товар под заказ, отмена только до выкупа» (TZ §5.12.6).
    @Default(false) bool hasConsent,
  }) = _CheckoutDraft;
}

/// What is wrong with a draft, shown next to the fields on «Оплатить».
enum DraftProblem { recipient, address, pickupPoint, deliveryType, consent }

extension CheckoutDraftCheck on CheckoutDraft {
  /// Problems in screen order; empty when the order can be placed.
  List<DraftProblem> problems(CheckoutPreview? preview) => [
    if (!recipient.isValid) DraftProblem.recipient,
    if (method == ReceivingMethod.courier && !address.isValid)
      DraftProblem.address,
    if (method == ReceivingMethod.pickup && pickupPointId == null)
      DraftProblem.pickupPoint,
    if (preview != null && preview.selectedDelivery == null)
      DraftProblem.deliveryType,
    if (!hasConsent) DraftProblem.consent,
  ];
}

/// The server's recalculation of a draft (TZ §5.12: «checkout preview»).
@freezed
abstract class CheckoutPreview with _$CheckoutPreview {
  const factory CheckoutPreview({
    required List<DeliveryChoice> deliveryOptions,

    /// The type the totals were computed for.
    required CheckoutDeliveryType? deliveryType,
    required List<PickupPoint> pickupPoints,
    required List<ExtraService> services,
    required int courierPrice,

    /// Courier is free from this goods sum; `null` = never free.
    int? courierFreeFrom,
    required CheckoutSummary summary,
  }) = _CheckoutPreview;

  const CheckoutPreview._();

  DeliveryChoice? get selectedDelivery {
    for (final option in deliveryOptions) {
      if (option.type == deliveryType && option.unavailableReason == null) {
        return option;
      }
    }
    return null;
  }
}

@freezed
abstract class DeliveryChoice with _$DeliveryChoice {
  const factory DeliveryChoice({
    required CheckoutDeliveryType type,
    required String name,
    required String term,

    /// Estimate by weight; «уточнится после взвешивания».
    required int price,
    String? unavailableReason,
  }) = _DeliveryChoice;
}

@freezed
abstract class PickupPoint with _$PickupPoint {
  const factory PickupPoint({
    required String id,
    required String name,
    required String address,
    required String hours,
    required String phone,
  }) = _PickupPoint;
}

@freezed
abstract class ExtraService with _$ExtraService {
  const factory ExtraService({
    required String id,
    required String title,
    required int price,
  }) = _ExtraService;
}

@freezed
abstract class CheckoutSummary with _$CheckoutSummary {
  const factory CheckoutSummary({
    required int items,
    required int chinaDelivery,
    required int internationalEstimate,
    required int courier,
    required int services,
    required int discount,
    required int total,

    /// Due now (advance). Equal to [total] for full prepayment.
    required int payNow,

    /// Due before handover: international delivery after weighing, courier.
    required int payLater,
  }) = _CheckoutSummary;
}

/// A created order (TZ §5.12–5.13).
@freezed
abstract class PlacedOrder with _$PlacedOrder {
  const factory PlacedOrder({
    required String number,
    required int payNow,
    required PaymentMethod payment,

    /// Set for card payment: the payment to check after the bank page.
    String? paymentId,
  }) = _PlacedOrder;
}

enum PaymentStatus { pending, paid, failed }

@freezed
abstract class PaymentCheck with _$PaymentCheck {
  const factory PaymentCheck({
    required PaymentStatus status,

    /// Server text for a failed payment.
    String? reason,
  }) = _PaymentCheck;
}

/// Outcome of «Оплатить» that reached the server.
@freezed
sealed class PlaceOrderResult with _$PlaceOrderResult {
  const factory PlaceOrderResult.placed(PlacedOrder order) = OrderPlaced;

  /// The total changed since the preview (TZ §5.12): show the new one and
  /// ask the customer to confirm.
  const factory PlaceOrderResult.priceChanged(CheckoutPreview preview) =
      OrderPriceChanged;
}
