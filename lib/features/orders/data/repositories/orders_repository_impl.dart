import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/order.dart';
import '../../domain/entities/order_status.dart';
import '../../domain/entities/orders_feed.dart';
import '../../domain/entities/parcel.dart';
import '../../domain/repositories/orders_repository.dart';
import '../datasources/orders_data_sources.dart';
import '../models/orders_feed_mappers.dart';
import '../models/orders_feed_models.dart';
import '../models/orders_mappers.dart';
import '../models/orders_models.dart';

@LazySingleton(as: OrdersRepository)
class OrdersRepositoryImpl implements OrdersRepository {
  OrdersRepositoryImpl(
    this._remote,
    this._local, {
    @ignoreParam DateTime Function()? now,
  }) : _now = now ?? DateTime.now;

  final OrdersRemoteDataSource _remote;
  final OrdersLocalDataSource _local;
  final DateTime Function() _now;

  @override
  Future<Either<Failure, Fetched<List<OrderSummary>>>> orders({
    required String languageCode,
    required OrderTab tab,
  }) {
    final param = orderTabParam(tab);
    return _fetch(
      key: OrdersLocalDataSource.ordersKey(languageCode, param),
      load: () => _remote.orders(languageCode, param),
      toJson: (m) => m.toJson(),
      fromJson: OrdersResponseModel.fromJson,
      toEntity: (m) => [for (final o in m.orders) o.toEntity()],
    );
  }

  @override
  Future<Either<Failure, Fetched<OrderDetails>>> order({
    required String languageCode,
    required String number,
  }) => _fetch(
    key: OrdersLocalDataSource.orderKey(languageCode, number),
    load: () => _remote.order(languageCode, number),
    toJson: (m) => m.toJson(),
    fromJson: OrderDetailsModel.fromJson,
    toEntity: (m) => m.toEntity(),
  );

  @override
  Future<Either<Failure, Fetched<List<ParcelSummary>>>> parcels({
    required String languageCode,
  }) => _fetch(
    key: OrdersLocalDataSource.parcelsKey(languageCode),
    load: () => _remote.parcels(languageCode),
    toJson: (m) => m.toJson(),
    fromJson: ParcelsResponseModel.fromJson,
    toEntity: (m) => [for (final p in m.parcels) p.toEntity()],
  );

  @override
  Future<Either<Failure, Fetched<ParcelDetails>>> parcel({
    required String languageCode,
    required String number,
  }) => _fetch(
    key: OrdersLocalDataSource.parcelKey(languageCode, number),
    load: () => _remote.parcel(languageCode, number),
    toJson: (m) => m.toJson(),
    fromJson: ParcelDetailsModel.fromJson,
    toEntity: (m) => m.toEntity(),
  );

  @override
  Future<Either<Failure, OrderDetails>> cancel({
    required String languageCode,
    required String number,
    required String reasonId,
  }) => _change(
    key: OrdersLocalDataSource.orderKey(languageCode, number),
    run: () => _remote.cancel(languageCode, number, reasonId),
    toJson: (m) => m.toJson(),
    toEntity: (m) => m.toEntity(),
  );

  @override
  Future<Either<Failure, OrderDetails>> resolveProblem({
    required String languageCode,
    required String number,
    required String itemId,
    required String actionId,
  }) => _change(
    key: OrdersLocalDataSource.orderKey(languageCode, number),
    run: () => _remote.resolveProblem(languageCode, number, itemId, actionId),
    toJson: (m) => m.toJson(),
    toEntity: (m) => m.toEntity(),
  );

  @override
  Future<Either<Failure, RepeatedOrder>> repeat({
    required String languageCode,
    required String number,
  }) async {
    try {
      return right((await _remote.repeat(languageCode, number)).toEntity());
    } on AppException catch (e) {
      return left(_failure(e));
    }
  }

  @override
  Future<Either<Failure, ParcelDetails>> sendNow({
    required String languageCode,
    required String number,
  }) => _change(
    key: OrdersLocalDataSource.parcelKey(languageCode, number),
    run: () => _remote.sendNow(languageCode, number),
    toJson: (m) => m.toJson(),
    toEntity: (m) => m.toEntity(),
  );

  @override
  Future<Either<Failure, Fetched<OrdersOverview>>> overview({
    required String languageCode,
  }) => _fetch(
    key: OrdersLocalDataSource.overviewKey(languageCode),
    load: () => _remote.overview(languageCode),
    toJson: (m) => m.toJson(),
    fromJson: OrdersOverviewModel.fromJson,
    toEntity: (m) => m.toEntity(),
  );

  @override
  Future<Either<Failure, Fetched<List<FeedCard>>>> feed({
    required String languageCode,
    required OrdersFilter filter,
  }) {
    final param = ordersFilterParam(filter);
    return _fetch(
      key: OrdersLocalDataSource.feedKey(languageCode, param),
      load: () => _remote.feed(languageCode, param),
      toJson: (m) => m.toJson(),
      fromJson: OrdersFeedModel.fromJson,
      toEntity: (m) => m.toEntity(),
    );
  }

  /// Network first; when offline, the device copy marked as such.
  Future<Either<Failure, Fetched<E>>> _fetch<M, E>({
    required String key,
    required Future<M> Function() load,
    required Map<String, dynamic> Function(M) toJson,
    required M Function(Map<String, dynamic>) fromJson,
    required E Function(M) toEntity,
  }) async {
    try {
      final model = await load();
      final at = _now();
      await _save(key, toJson(model), at);
      return right(Fetched(data: toEntity(model), fetchedAt: at));
    } on NetworkException {
      try {
        final cached = await _local.read(key);
        if (cached == null) return left(const NetworkFailure());
        return right(
          Fetched(
            data: toEntity(fromJson(cached.json)),
            fetchedAt: cached.fetchedAt,
            isFromCache: true,
          ),
        );
      } on Object {
        return left(const NetworkFailure());
      }
    } on AppException catch (e) {
      return left(_failure(e));
    }
  }

  /// A change returns the new server state; the device copy follows it.
  Future<Either<Failure, E>> _change<M, E>({
    required String key,
    required Future<M> Function() run,
    required Map<String, dynamic> Function(M) toJson,
    required E Function(M) toEntity,
  }) async {
    try {
      final model = await run();
      await _save(key, toJson(model), _now());
      return right(toEntity(model));
    } on AppException catch (e) {
      return left(_failure(e));
    }
  }

  Future<void> _save(String key, Map<String, dynamic> json, DateTime at) async {
    try {
      await _local.write(key, json, at);
    } on CacheException {
      // A failed copy must not hide fresh data.
    }
  }

  static Failure _failure(AppException e) => switch (e) {
    NetworkException() => const NetworkFailure(),
    ServerException(:final code, :final message) => ServerFailure(
      code: code,
      message: message,
    ),
    CacheException() => const CacheFailure(),
  };
}
