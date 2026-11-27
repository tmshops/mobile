import 'package:hive_ce/hive_ce.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/database/hive_registry.dart';
import '../../../../core/database/json_cache.dart';
import '../../../../core/dev/fake_backend/fake_orders_backend.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/network/network_info.dart';
import '../models/orders_feed_models.dart';
import '../models/orders_models.dart';

/// Orders and parcels API. Throws `NetworkException` / `ServerException`.
abstract interface class OrdersRemoteDataSource {
  Future<OrdersResponseModel> orders(String languageCode, String tab);

  Future<OrderDetailsModel> order(String languageCode, String number);

  Future<ParcelsResponseModel> parcels(String languageCode);

  Future<ParcelDetailsModel> parcel(String languageCode, String number);

  Future<OrderDetailsModel> cancel(
    String languageCode,
    String number,
    String reasonId,
  );

  Future<OrderDetailsModel> resolveProblem(
    String languageCode,
    String number,
    String itemId,
    String actionId,
  );

  Future<RepeatResponseModel> repeat(String languageCode, String number);

  Future<ParcelDetailsModel> sendNow(String languageCode, String number);

  /// Counters and tracking line of «Мои заказы» in the profile.
  Future<OrdersOverviewModel> overview(String languageCode);

  Future<OrdersFeedModel> feed(String languageCode, String filter);
}

@LazySingleton(as: OrdersRemoteDataSource, env: [Environment.dev])
class FakeOrdersRemoteDataSource implements OrdersRemoteDataSource {
  const FakeOrdersRemoteDataSource(this._backend, this._networkInfo);

  final FakeOrdersBackend _backend;
  final NetworkInfo _networkInfo;

  static const _latency = Duration(milliseconds: 500);

  Future<T> _call<T>(T Function() run) async {
    if (!await _networkInfo.isOnline) throw const NetworkException();
    await Future<void>.delayed(_latency);
    try {
      return run();
    } on ServerException {
      rethrow;
    } on Object catch (e) {
      throw ServerException(cause: e);
    }
  }

  @override
  Future<OrdersResponseModel> orders(String languageCode, String tab) => _call(
    () => OrdersResponseModel.fromJson(_backend.orders(languageCode, tab)),
  );

  @override
  Future<OrderDetailsModel> order(String languageCode, String number) => _call(
    () => OrderDetailsModel.fromJson(_backend.order(languageCode, number)),
  );

  @override
  Future<ParcelsResponseModel> parcels(String languageCode) => _call(
    () => ParcelsResponseModel.fromJson(_backend.parcels(languageCode)),
  );

  @override
  Future<ParcelDetailsModel> parcel(String languageCode, String number) =>
      _call(
        () =>
            ParcelDetailsModel.fromJson(_backend.parcel(languageCode, number)),
      );

  @override
  Future<OrderDetailsModel> cancel(
    String languageCode,
    String number,
    String reasonId,
  ) => _call(
    () => OrderDetailsModel.fromJson(
      _backend.cancel(languageCode, number, reasonId),
    ),
  );

  @override
  Future<OrderDetailsModel> resolveProblem(
    String languageCode,
    String number,
    String itemId,
    String actionId,
  ) => _call(
    () => OrderDetailsModel.fromJson(
      _backend.resolveProblem(languageCode, number, itemId, actionId),
    ),
  );

  @override
  Future<RepeatResponseModel> repeat(String languageCode, String number) =>
      _call(
        () =>
            RepeatResponseModel.fromJson(_backend.repeat(languageCode, number)),
      );

  @override
  Future<ParcelDetailsModel> sendNow(String languageCode, String number) =>
      _call(
        () =>
            ParcelDetailsModel.fromJson(_backend.sendNow(languageCode, number)),
      );

  @override
  Future<OrdersOverviewModel> overview(String languageCode) => _call(
    () => OrdersOverviewModel.fromJson(_backend.overview(languageCode)),
  );

  @override
  Future<OrdersFeedModel> feed(String languageCode, String filter) => _call(
    () => OrdersFeedModel.fromJson(_backend.feed(languageCode, filter)),
  );
}

/// Last downloaded orders and parcels, for viewing offline (TZ §8). Kept in
/// the personal box, which sign-out clears.
@lazySingleton
class OrdersLocalDataSource {
  OrdersLocalDataSource(@Named(HiveBoxes.account) LazyBox<String> box)
    : _cache = JsonCache(box);

  final JsonCache _cache;

  static String ordersKey(String lang, String tab) => 'orders:$tab:$lang';
  static String orderKey(String lang, String number) => 'order:$number:$lang';
  static String parcelsKey(String lang) => 'parcels:$lang';
  static String parcelKey(String lang, String number) => 'parcel:$number:$lang';
  static String overviewKey(String lang) => 'orders-overview:$lang';
  static String feedKey(String lang, String filter) =>
      'orders-feed:$filter:$lang';

  Future<CachedJson?> read(String key) => _cache.read(key);

  Future<void> write(String key, Map<String, dynamic> json, DateTime at) =>
      _cache.write(key, CachedJson(json: json, fetchedAt: at));
}
