import 'package:freezed_annotation/freezed_annotation.dart';

import 'order.dart';
import 'order_status.dart';

part 'parcel.freezed.dart';

/// A row of «Мои посылки» (TZ §5.15).
@freezed
abstract class ParcelSummary with _$ParcelSummary {
  const factory ParcelSummary({
    required String number,
    required Status status,
    required ParcelStage stage,
    required int itemCount,
    required List<String> previews,
    DateTime? etaFrom,
    DateTime? etaTo,
  }) = _ParcelSummary;
}

@freezed
abstract class ParcelDetails with _$ParcelDetails {
  const factory ParcelDetails({
    required String number,
    required Status status,
    required ParcelStage stage,

    /// When each passed stage was reached.
    required Map<ParcelStage, DateTime> stageDates,
    required String deliveryTypeName,
    required List<ParcelItem> items,
    required List<StatusEvent> history,
    DateTime? etaFrom,
    DateTime? etaTo,

    /// Known after the warehouse weighs it.
    int? weightGrams,

    /// «Отправить сейчас» while forming, without waiting for other items.
    @Default(false) bool canSendNow,
    DateTime? freeStorageUntil,
    Surcharge? surcharge,
    PickupInfo? pickup,
    CourierInfo? courier,

    /// Last day to file a claim after handover.
    DateTime? claimUntil,
  }) = _ParcelDetails;
}

@freezed
abstract class ParcelItem with _$ParcelItem {
  const factory ParcelItem({
    required String orderNumber,
    required String title,
    required String imageUrl,
    required int quantity,
  }) = _ParcelItem;
}

/// Weight × rate − already paid = surcharge (TZ §6.3); every number from
/// the server.
@freezed
abstract class Surcharge with _$Surcharge {
  const factory Surcharge({
    required int weightGrams,
    required int ratePerKg,
    required int deliveryCost,
    required int paid,

    /// Negative = the difference goes back to the balance.
    required int amount,
  }) = _Surcharge;
}

@freezed
abstract class PickupInfo with _$PickupInfo {
  const factory PickupInfo({
    required String code,
    required String pointName,
    required String address,
    required String hours,
    required String phone,

    /// Still to pay at handover.
    @Default(0) int amountDue,
  }) = _PickupInfo;
}

@freezed
abstract class CourierInfo with _$CourierInfo {
  const factory CourierInfo({
    required String name,
    required String phone,
    @Default(0) int amountDue,
  }) = _CourierInfo;
}
