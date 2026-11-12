import 'package:freezed_annotation/freezed_annotation.dart';

part 'orders_models.freezed.dart';
part 'orders_models.g.dart';

@freezed
abstract class StatusModel with _$StatusModel {
  const factory StatusModel({required String code, required String title}) =
      _StatusModel;

  factory StatusModel.fromJson(Map<String, dynamic> json) =>
      _$StatusModelFromJson(json);
}

/// `GET /orders?tab=` response.
@freezed
abstract class OrdersResponseModel with _$OrdersResponseModel {
  const factory OrdersResponseModel({required List<OrderSummaryModel> orders}) =
      _OrdersResponseModel;

  factory OrdersResponseModel.fromJson(Map<String, dynamic> json) =>
      _$OrdersResponseModelFromJson(json);
}

@freezed
abstract class OrderSummaryModel with _$OrderSummaryModel {
  const factory OrderSummaryModel({
    required String number,
    required String createdAt,
    required StatusModel status,
    required int total,
    required int itemCount,
    @Default(<String>[]) List<String> previews,
    @Default(false) bool canRepeat,
  }) = _OrderSummaryModel;

  factory OrderSummaryModel.fromJson(Map<String, dynamic> json) =>
      _$OrderSummaryModelFromJson(json);
}

/// `GET /orders/{number}`.
@freezed
abstract class OrderDetailsModel with _$OrderDetailsModel {
  const factory OrderDetailsModel({
    required String number,
    required String createdAt,
    required StatusModel status,
    @Default('') String statusText,
    required List<OrderItemModel> items,
    @Default(<StatusEventModel>[]) List<StatusEventModel> history,
    required OrderMoneyModel money,
    @Default('') String receiving,
    @Default('') String deliveryTypeName,
    @Default(false) bool canPay,
    String? payDeadline,
    @Default(false) bool canCancel,
    String? cancelNote,
    String? refundTo,
    @Default(<CancelReasonModel>[]) List<CancelReasonModel> cancelReasons,
    @Default(<ParcelLinkModel>[]) List<ParcelLinkModel> parcels,
    @Default(false) bool canRepeat,
  }) = _OrderDetailsModel;

  factory OrderDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailsModelFromJson(json);
}

@freezed
abstract class OrderItemModel with _$OrderItemModel {
  const factory OrderItemModel({
    required String id,
    required String productId,
    required String title,
    @Default('') String imageUrl,
    required int quantity,
    required int price,
    required StatusModel status,
    String? options,
    @Default(<String>[]) List<String> warehousePhotos,
    String? chinaTrack,

    /// Received and not reviewed yet (TZ §5.18).
    @Default(false) bool canReview,
    ItemProblemModel? problem,
  }) = _OrderItemModel;

  factory OrderItemModel.fromJson(Map<String, dynamic> json) =>
      _$OrderItemModelFromJson(json);
}

@freezed
abstract class ItemProblemModel with _$ItemProblemModel {
  const factory ItemProblemModel({
    required String title,
    required String description,
    @Default(<ProblemActionModel>[]) List<ProblemActionModel> actions,
    @Default(<String>[]) List<String> photos,
    String? deadline,
  }) = _ItemProblemModel;

  factory ItemProblemModel.fromJson(Map<String, dynamic> json) =>
      _$ItemProblemModelFromJson(json);
}

@freezed
abstract class ProblemActionModel with _$ProblemActionModel {
  const factory ProblemActionModel({
    required String id,
    required String title,
    @Default(false) bool isPrimary,
  }) = _ProblemActionModel;

  factory ProblemActionModel.fromJson(Map<String, dynamic> json) =>
      _$ProblemActionModelFromJson(json);
}

@freezed
abstract class StatusEventModel with _$StatusEventModel {
  const factory StatusEventModel({required String title, required String at}) =
      _StatusEventModel;

  factory StatusEventModel.fromJson(Map<String, dynamic> json) =>
      _$StatusEventModelFromJson(json);
}

@freezed
abstract class CancelReasonModel with _$CancelReasonModel {
  const factory CancelReasonModel({required String id, required String title}) =
      _CancelReasonModel;

  factory CancelReasonModel.fromJson(Map<String, dynamic> json) =>
      _$CancelReasonModelFromJson(json);
}

@freezed
abstract class ParcelLinkModel with _$ParcelLinkModel {
  const factory ParcelLinkModel({
    required String number,
    required StatusModel status,
  }) = _ParcelLinkModel;

  factory ParcelLinkModel.fromJson(Map<String, dynamic> json) =>
      _$ParcelLinkModelFromJson(json);
}

@freezed
abstract class OrderMoneyModel with _$OrderMoneyModel {
  const factory OrderMoneyModel({
    required int items,
    @Default(0) int chinaDelivery,
    @Default(0) int internationalDelivery,
    @Default(true) bool isEstimate,
    @Default(0) int courier,
    @Default(0) int services,
    @Default(0) int discount,
    required int total,
    @Default(0) int paid,
    @Default(0) int due,
  }) = _OrderMoneyModel;

  factory OrderMoneyModel.fromJson(Map<String, dynamic> json) =>
      _$OrderMoneyModelFromJson(json);
}

/// `POST /orders/{number}/repeat`.
@freezed
abstract class RepeatResponseModel with _$RepeatResponseModel {
  const factory RepeatResponseModel({
    required List<RepeatLineModel> lines,
    @Default(0) int unavailable,
  }) = _RepeatResponseModel;

  factory RepeatResponseModel.fromJson(Map<String, dynamic> json) =>
      _$RepeatResponseModelFromJson(json);
}

@freezed
abstract class RepeatLineModel with _$RepeatLineModel {
  const factory RepeatLineModel({
    required String productId,
    required String title,
    @Default('') String imageUrl,
    required int price,
    required int quantity,
    String? skuId,
    String? skuLabel,
    String? sellerName,
  }) = _RepeatLineModel;

  factory RepeatLineModel.fromJson(Map<String, dynamic> json) =>
      _$RepeatLineModelFromJson(json);
}

/// `GET /parcels`.
@freezed
abstract class ParcelsResponseModel with _$ParcelsResponseModel {
  const factory ParcelsResponseModel({
    required List<ParcelSummaryModel> parcels,
  }) = _ParcelsResponseModel;

  factory ParcelsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ParcelsResponseModelFromJson(json);
}

@freezed
abstract class ParcelSummaryModel with _$ParcelSummaryModel {
  const factory ParcelSummaryModel({
    required String number,
    required StatusModel status,
    required String stage,
    required int itemCount,
    @Default(<String>[]) List<String> previews,
    String? etaFrom,
    String? etaTo,
  }) = _ParcelSummaryModel;

  factory ParcelSummaryModel.fromJson(Map<String, dynamic> json) =>
      _$ParcelSummaryModelFromJson(json);
}

/// `GET /parcels/{number}`.
@freezed
abstract class ParcelDetailsModel with _$ParcelDetailsModel {
  const factory ParcelDetailsModel({
    required String number,
    required StatusModel status,
    required String stage,
    @Default(<String, String>{}) Map<String, String> stageDates,
    @Default('') String deliveryTypeName,
    required List<ParcelItemModel> items,
    @Default(<StatusEventModel>[]) List<StatusEventModel> history,
    String? etaFrom,
    String? etaTo,
    int? weightGrams,
    @Default(false) bool canSendNow,
    String? freeStorageUntil,
    SurchargeModel? surcharge,
    PickupInfoModel? pickup,
    CourierInfoModel? courier,
    String? claimUntil,
  }) = _ParcelDetailsModel;

  factory ParcelDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$ParcelDetailsModelFromJson(json);
}

@freezed
abstract class ParcelItemModel with _$ParcelItemModel {
  const factory ParcelItemModel({
    required String orderNumber,
    required String title,
    @Default('') String imageUrl,
    required int quantity,
  }) = _ParcelItemModel;

  factory ParcelItemModel.fromJson(Map<String, dynamic> json) =>
      _$ParcelItemModelFromJson(json);
}

@freezed
abstract class SurchargeModel with _$SurchargeModel {
  const factory SurchargeModel({
    required int weightGrams,
    required int ratePerKg,
    required int deliveryCost,
    required int paid,
    required int amount,
  }) = _SurchargeModel;

  factory SurchargeModel.fromJson(Map<String, dynamic> json) =>
      _$SurchargeModelFromJson(json);
}

@freezed
abstract class PickupInfoModel with _$PickupInfoModel {
  const factory PickupInfoModel({
    required String code,
    required String pointName,
    required String address,
    required String hours,
    required String phone,
    @Default(0) int amountDue,
  }) = _PickupInfoModel;

  factory PickupInfoModel.fromJson(Map<String, dynamic> json) =>
      _$PickupInfoModelFromJson(json);
}

@freezed
abstract class CourierInfoModel with _$CourierInfoModel {
  const factory CourierInfoModel({
    required String name,
    required String phone,
    @Default(0) int amountDue,
  }) = _CourierInfoModel;

  factory CourierInfoModel.fromJson(Map<String, dynamic> json) =>
      _$CourierInfoModelFromJson(json);
}
