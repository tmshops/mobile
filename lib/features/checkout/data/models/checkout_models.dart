import 'package:freezed_annotation/freezed_annotation.dart';

part 'checkout_models.freezed.dart';
part 'checkout_models.g.dart';

/// `POST /checkout/preview` response.
@freezed
abstract class CheckoutPreviewModel with _$CheckoutPreviewModel {
  const factory CheckoutPreviewModel({
    required List<DeliveryChoiceModel> deliveryOptions,
    String? deliveryType,
    required List<PickupPointModel> pickupPoints,
    required List<ExtraServiceModel> services,
    required int courierPrice,
    int? courierFreeFrom,
    required CheckoutSummaryModel summary,
  }) = _CheckoutPreviewModel;

  factory CheckoutPreviewModel.fromJson(Map<String, dynamic> json) =>
      _$CheckoutPreviewModelFromJson(json);
}

@freezed
abstract class DeliveryChoiceModel with _$DeliveryChoiceModel {
  const factory DeliveryChoiceModel({
    required String type,
    required String name,
    required String term,
    required int price,
    String? unavailableReason,
  }) = _DeliveryChoiceModel;

  factory DeliveryChoiceModel.fromJson(Map<String, dynamic> json) =>
      _$DeliveryChoiceModelFromJson(json);
}

@freezed
abstract class PickupPointModel with _$PickupPointModel {
  const factory PickupPointModel({
    required String id,
    required String name,
    required String address,
    required String hours,
    required String phone,
  }) = _PickupPointModel;

  factory PickupPointModel.fromJson(Map<String, dynamic> json) =>
      _$PickupPointModelFromJson(json);
}

@freezed
abstract class ExtraServiceModel with _$ExtraServiceModel {
  const factory ExtraServiceModel({
    required String id,
    required String title,
    required int price,
  }) = _ExtraServiceModel;

  factory ExtraServiceModel.fromJson(Map<String, dynamic> json) =>
      _$ExtraServiceModelFromJson(json);
}

@freezed
abstract class CheckoutSummaryModel with _$CheckoutSummaryModel {
  const factory CheckoutSummaryModel({
    required int items,
    required int chinaDelivery,
    required int internationalEstimate,
    required int courier,
    required int services,
    required int discount,
    required int total,
    required int payNow,
    required int payLater,
  }) = _CheckoutSummaryModel;

  factory CheckoutSummaryModel.fromJson(Map<String, dynamic> json) =>
      _$CheckoutSummaryModelFromJson(json);
}

/// `POST /orders` response (with `Idempotency-Key`).
@freezed
abstract class PlaceOrderResponseModel with _$PlaceOrderResponseModel {
  const factory PlaceOrderResponseModel({
    /// `created` or `price_changed`.
    required String status,
    PlacedOrderModel? order,
    CheckoutPreviewModel? preview,
  }) = _PlaceOrderResponseModel;

  factory PlaceOrderResponseModel.fromJson(Map<String, dynamic> json) =>
      _$PlaceOrderResponseModelFromJson(json);
}

@freezed
abstract class PlacedOrderModel with _$PlacedOrderModel {
  const factory PlacedOrderModel({
    required String number,
    required int payNow,
    required String payment,
    String? paymentId,
  }) = _PlacedOrderModel;

  factory PlacedOrderModel.fromJson(Map<String, dynamic> json) =>
      _$PlacedOrderModelFromJson(json);
}

/// `GET /payments/{id}`.
@freezed
abstract class PaymentStatusModel with _$PaymentStatusModel {
  const factory PaymentStatusModel({
    /// `pending`, `paid`, `failed`.
    required String status,
    String? reason,
  }) = _PaymentStatusModel;

  factory PaymentStatusModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentStatusModelFromJson(json);
}
