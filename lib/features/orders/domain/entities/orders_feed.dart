import 'package:freezed_annotation/freezed_annotation.dart';

import 'order_status.dart';

part 'orders_feed.freezed.dart';

/// Filters of «Мои заказы» in the profile, in display order
/// (UI_DESIGN §7.11).
enum OrdersFilter {
  /// Order awaiting payment, or parcel awaiting the weight surcharge.
  awaitingPayment,

  /// Paid items we are buying and bringing to the China warehouse.
  buying,

  /// Parcels from leaving China until handover.
  inTransit,

  /// Received items without a review.
  toReview,

  /// Items in «Проблема» that need the customer's decision.
  problems,
}

/// Counters for the filters and the rotating tracking line.
@freezed
abstract class OrdersOverview with _$OrdersOverview {
  const factory OrdersOverview({
    required Map<OrdersFilter, int> counts,

    /// Newest first.
    required List<TrackingUpdate> tracking,
  }) = _OrdersOverview;

  const OrdersOverview._();

  int countOf(OrdersFilter filter) => counts[filter] ?? 0;
}

enum FeedKind { order, parcel }

/// Latest move of an order item or a parcel on its way.
@freezed
abstract class TrackingUpdate with _$TrackingUpdate {
  const factory TrackingUpdate({
    required FeedKind kind,
    required String number,
    required String imageUrl,
    required Status status,
    required DateTime at,
    required String text,
  }) = _TrackingUpdate;
}

/// One order or parcel in a filter, with only the items that match it.
@freezed
abstract class FeedCard with _$FeedCard {
  const factory FeedCard({
    required FeedKind kind,
    required String number,
    required DateTime createdAt,
    required Status status,
    required List<FeedItem> items,
    required List<FeedAction> actions,

    /// What to pay now: the order advance or the parcel surcharge.
    int? amountDue,

    /// Grey tracking row («В пути · ожидается 24.11–28.11»).
    FeedTrack? track,
  }) = _FeedCard;
}

@freezed
abstract class FeedItem with _$FeedItem {
  const factory FeedItem({
    required String id,
    required String productId,
    required String title,
    required String imageUrl,
    required int price,
    required int quantity,
    String? options,
  }) = _FeedItem;
}

@freezed
abstract class FeedTrack with _$FeedTrack {
  const factory FeedTrack({required String title, required String text}) =
      _FeedTrack;
}

/// Buttons the server allows on a card; the app names them and knows where
/// they lead. Unknown ids from the server are skipped.
enum FeedActionType {
  /// Card payment of an order awaiting payment.
  pay,

  /// Weight surcharge of a parcel (opens the parcel).
  paySurcharge,

  /// Parcel tracking (opens the parcel).
  track,

  /// Review of [FeedAction.itemId].
  review,

  /// Problem decision (opens the order).
  resolve,

  /// Order details.
  details,
}

@freezed
abstract class FeedAction with _$FeedAction {
  const factory FeedAction({
    required FeedActionType type,
    @Default(false) bool isPrimary,
    String? itemId,
  }) = _FeedAction;
}
