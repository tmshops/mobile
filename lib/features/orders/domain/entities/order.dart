import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/cart/cart_item.dart';
import 'order_status.dart';

part 'order.freezed.dart';

enum OrderTab { active, completed, cancelled }

/// A row of «Мои заказы» (TZ §5.15).
@freezed
abstract class OrderSummary with _$OrderSummary {
  const factory OrderSummary({
    required String number,
    required DateTime createdAt,
    required Status status,
    required int total,
    required int itemCount,

    /// Up to four product photos for the overlapping thumbnails.
    required List<String> previews,
    @Default(false) bool canRepeat,
  }) = _OrderSummary;
}

@freezed
abstract class OrderDetails with _$OrderDetails {
  const factory OrderDetails({
    required String number,
    required DateTime createdAt,
    required Status status,

    /// One or two sentences under the status title.
    required String statusText,
    required List<OrderItem> items,
    required List<StatusEvent> history,
    required OrderMoney money,

    /// «Курьер: ул. Магтымгулы, 10» or the pickup point.
    required String receiving,
    required String deliveryTypeName,

    /// «Оплатить» for an order awaiting payment, until [payDeadline].
    @Default(false) bool canPay,
    DateTime? payDeadline,

    /// From the server (TZ §6.3): the app never decides on its own.
    @Default(false) bool canCancel,

    /// Why it can no longer be cancelled («товар уже выкуплен под вас»).
    String? cancelNote,

    /// Where a cancelled order's money goes, e.g. «на баланс».
    String? refundTo,
    @Default(<CancelReason>[]) List<CancelReason> cancelReasons,
    @Default(<ParcelLink>[]) List<ParcelLink> parcels,
    @Default(false) bool canRepeat,
  }) = _OrderDetails;

  const OrderDetails._();

  List<OrderItem> get problems => [
    for (final item in items)
      if (item.problem != null) item,
  ];
}

@freezed
abstract class OrderItem with _$OrderItem {
  const factory OrderItem({
    required String id,
    required String productId,
    required String title,
    required String imageUrl,
    required int quantity,
    required int price,
    required Status status,

    /// «Чёрный, M».
    String? options,
    @Default(<String>[]) List<String> warehousePhotos,

    /// Seller's track number inside China (copyable).
    String? chinaTrack,

    /// Received and not reviewed yet (TZ §5.18).
    @Default(false) bool canReview,
    ItemProblem? problem,
  }) = _OrderItem;
}

/// «Проблема» on an item: what happened and what the customer may decide
/// (TZ §6.3: the list of actions comes from the server).
@freezed
abstract class ItemProblem with _$ItemProblem {
  const factory ItemProblem({
    required String title,
    required String description,
    required List<ProblemAction> actions,
    @Default(<String>[]) List<String> photos,
    DateTime? deadline,
  }) = _ItemProblem;
}

@freezed
abstract class ProblemAction with _$ProblemAction {
  const factory ProblemAction({
    required String id,
    required String title,

    /// The recommended choice is the orange button; the rest are outlined.
    @Default(false) bool isPrimary,
  }) = _ProblemAction;
}

@freezed
abstract class StatusEvent with _$StatusEvent {
  const factory StatusEvent({required String title, required DateTime at}) =
      _StatusEvent;
}

@freezed
abstract class CancelReason with _$CancelReason {
  const factory CancelReason({required String id, required String title}) =
      _CancelReason;
}

@freezed
abstract class ParcelLink with _$ParcelLink {
  const factory ParcelLink({required String number, required Status status}) =
      _ParcelLink;
}

/// Server-computed money of an order (TZ §6: the app never counts).
@freezed
abstract class OrderMoney with _$OrderMoney {
  const factory OrderMoney({
    required int items,
    required int chinaDelivery,
    required int internationalDelivery,

    /// Before weighing the international delivery is an estimate.
    required bool isEstimate,
    required int courier,
    required int services,
    required int discount,
    required int total,
    required int paid,

    /// Still to pay: advance, surcharges, courier.
    required int due,
  }) = _OrderMoney;
}

/// «Повторить заказ»: lines put back in the cart, and how many were not
/// available any more.
@freezed
abstract class RepeatedOrder with _$RepeatedOrder {
  const factory RepeatedOrder({
    required List<CartItem> lines,
    required int unavailable,
  }) = _RepeatedOrder;
}
