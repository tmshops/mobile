import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_status.freezed.dart';

/// Fixed status codes (TZ §6.2). The name comes from the server's status
/// directory in the customer's language; an unknown code keeps its server
/// name and gets a neutral look.
enum StatusCode {
  quickOrder,
  awaitingPayment,
  paid,
  purchased,
  toWarehouse,
  inWarehouse,
  problem,
  cancelled,
  forming,
  awaitingSurcharge,
  inTransit,
  customs,
  arrivedTm,
  readyForPickup,
  withCourier,
  delivered,
  unknown,
}

@freezed
abstract class Status with _$Status {
  const factory Status({required StatusCode code, required String title}) =
      _Status;
}

/// The main path of a parcel, drawn as the mini progress (TZ §6.2).
enum ParcelStage {
  forming,
  surcharge,
  inTransit,
  customs,
  arrived,

  /// Ready at the pickup point, or with the courier.
  handover,
  delivered,
}

/// Lists: orders by their tab, and when the data was downloaded.
@freezed
abstract class Fetched<T> with _$Fetched<T> {
  const factory Fetched({
    required T data,
    required DateTime fetchedAt,

    /// Shown from the device copy because the network failed (TZ §8).
    @Default(false) bool isFromCache,
  }) = _Fetched<T>;
}
