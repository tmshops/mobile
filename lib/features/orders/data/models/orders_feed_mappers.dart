import '../../domain/entities/orders_feed.dart';
import 'orders_feed_models.dart';
import 'orders_mappers.dart';

/// Value of [filter] in `GET /orders/feed?filter=` and in the overview.
String ordersFilterParam(OrdersFilter filter) => switch (filter) {
  OrdersFilter.awaitingPayment => 'awaiting_payment',
  OrdersFilter.buying => 'buying',
  OrdersFilter.inTransit => 'in_transit',
  OrdersFilter.toReview => 'to_review',
  OrdersFilter.problems => 'problems',
};

/// [OrdersFilter] of a server value, or `null` when unknown.
OrdersFilter? ordersFilterOf(String id) {
  for (final filter in OrdersFilter.values) {
    if (ordersFilterParam(filter) == id) return filter;
  }
  return null;
}

const _actions = {
  'pay': FeedActionType.pay,
  'pay_surcharge': FeedActionType.paySurcharge,
  'track': FeedActionType.track,
  'review': FeedActionType.review,
  'resolve': FeedActionType.resolve,
  'details': FeedActionType.details,
};

FeedKind _kind(String kind) =>
    kind == 'parcel' ? FeedKind.parcel : FeedKind.order;

extension OrdersOverviewModelX on OrdersOverviewModel {
  OrdersOverview toEntity() => OrdersOverview(
    counts: {
      for (final MapEntry(:key, :value) in counts.entries)
        ?ordersFilterOf(key): value,
    },
    tracking: [for (final t in tracking) t.toEntity()],
  );
}

extension TrackingUpdateModelX on TrackingUpdateModel {
  TrackingUpdate toEntity() => TrackingUpdate(
    kind: _kind(kind),
    number: number,
    imageUrl: imageUrl,
    status: status.toEntity(),
    at: DateTime.parse(at),
    text: text,
  );
}

extension OrdersFeedModelX on OrdersFeedModel {
  List<FeedCard> toEntity() => [for (final c in cards) c.toEntity()];
}

extension FeedCardModelX on FeedCardModel {
  FeedCard toEntity() => FeedCard(
    kind: _kind(kind),
    number: number,
    createdAt: DateTime.parse(createdAt),
    status: status.toEntity(),
    items: [
      for (final i in items)
        FeedItem(
          id: i.id,
          productId: i.productId,
          title: i.title,
          imageUrl: i.imageUrl,
          price: i.price,
          quantity: i.quantity,
          options: i.options,
        ),
    ],
    actions: [
      for (final a in actions)
        if (_actions[a.id] case final type?)
          FeedAction(type: type, isPrimary: a.isPrimary, itemId: a.itemId),
    ],
    amountDue: amountDue,
    track: switch (track) {
      final t? => FeedTrack(title: t.title, text: t.text),
      null => null,
    },
  );
}
