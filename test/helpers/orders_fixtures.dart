import 'package:tmshop/core/dev/fake_backend/fake_orders_backend.dart';
import 'package:tmshop/features/orders/data/models/orders_feed_mappers.dart';
import 'package:tmshop/features/orders/data/models/orders_feed_models.dart';
import 'package:tmshop/features/orders/data/models/orders_mappers.dart';
import 'package:tmshop/features/orders/data/models/orders_models.dart';
import 'package:tmshop/features/orders/domain/entities/order.dart';
import 'package:tmshop/features/orders/domain/entities/orders_feed.dart';
import 'package:tmshop/features/orders/domain/entities/parcel.dart';

/// Real data from the fake server, run through the real parsers.
List<OrderSummary> sampleOrders(
  String lang,
  OrderTab tab, {
  FakeOrdersBackend? backend,
}) => [
  for (final o in OrdersResponseModel.fromJson(
    (backend ?? FakeOrdersBackend()).orders(lang, orderTabParam(tab)),
  ).orders)
    o.toEntity(),
];

OrderDetails sampleOrder(
  String lang,
  String number, {
  FakeOrdersBackend? backend,
}) => OrderDetailsModel.fromJson(
  (backend ?? FakeOrdersBackend()).order(lang, number),
).toEntity();

List<ParcelSummary> sampleParcels(String lang) => [
  for (final p in ParcelsResponseModel.fromJson(
    FakeOrdersBackend().parcels(lang),
  ).parcels)
    p.toEntity(),
];

ParcelDetails sampleParcel(String lang, String number) =>
    ParcelDetailsModel.fromJson(
      FakeOrdersBackend().parcel(lang, number),
    ).toEntity();

OrdersOverview sampleOverview(String lang, {FakeOrdersBackend? backend}) =>
    OrdersOverviewModel.fromJson(
      (backend ?? FakeOrdersBackend()).overview(lang),
    ).toEntity();

List<FeedCard> sampleFeed(
  String lang,
  OrdersFilter filter, {
  FakeOrdersBackend? backend,
}) => OrdersFeedModel.fromJson(
  (backend ?? FakeOrdersBackend()).feed(lang, ordersFilterParam(filter)),
).toEntity();
