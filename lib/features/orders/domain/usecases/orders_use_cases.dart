import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../entities/order.dart';
import '../entities/order_status.dart';
import '../entities/orders_feed.dart';
import '../entities/parcel.dart';
import '../repositories/orders_repository.dart';

@lazySingleton
class GetOrdersUseCase {
  const GetOrdersUseCase(this._repository);

  final OrdersRepository _repository;

  Future<Either<Failure, Fetched<List<OrderSummary>>>> call({
    required String languageCode,
    required OrderTab tab,
  }) => _repository.orders(languageCode: languageCode, tab: tab);
}

@lazySingleton
class GetOrderUseCase {
  const GetOrderUseCase(this._repository);

  final OrdersRepository _repository;

  Future<Either<Failure, Fetched<OrderDetails>>> call({
    required String languageCode,
    required String number,
  }) => _repository.order(languageCode: languageCode, number: number);
}

@lazySingleton
class GetParcelsUseCase {
  const GetParcelsUseCase(this._repository);

  final OrdersRepository _repository;

  Future<Either<Failure, Fetched<List<ParcelSummary>>>> call({
    required String languageCode,
  }) => _repository.parcels(languageCode: languageCode);
}

@lazySingleton
class GetParcelUseCase {
  const GetParcelUseCase(this._repository);

  final OrdersRepository _repository;

  Future<Either<Failure, Fetched<ParcelDetails>>> call({
    required String languageCode,
    required String number,
  }) => _repository.parcel(languageCode: languageCode, number: number);
}

@lazySingleton
class CancelOrderUseCase {
  const CancelOrderUseCase(this._repository);

  final OrdersRepository _repository;

  Future<Either<Failure, OrderDetails>> call({
    required String languageCode,
    required String number,
    required String reasonId,
  }) => _repository.cancel(
    languageCode: languageCode,
    number: number,
    reasonId: reasonId,
  );
}

@lazySingleton
class ResolveProblemUseCase {
  const ResolveProblemUseCase(this._repository);

  final OrdersRepository _repository;

  Future<Either<Failure, OrderDetails>> call({
    required String languageCode,
    required String number,
    required String itemId,
    required String actionId,
  }) => _repository.resolveProblem(
    languageCode: languageCode,
    number: number,
    itemId: itemId,
    actionId: actionId,
  );
}

@lazySingleton
class RepeatOrderUseCase {
  const RepeatOrderUseCase(this._repository);

  final OrdersRepository _repository;

  Future<Either<Failure, RepeatedOrder>> call({
    required String languageCode,
    required String number,
  }) => _repository.repeat(languageCode: languageCode, number: number);
}

@lazySingleton
class SendParcelNowUseCase {
  const SendParcelNowUseCase(this._repository);

  final OrdersRepository _repository;

  Future<Either<Failure, ParcelDetails>> call({
    required String languageCode,
    required String number,
  }) => _repository.sendNow(languageCode: languageCode, number: number);
}

@lazySingleton
class GetOrdersOverviewUseCase {
  const GetOrdersOverviewUseCase(this._repository);

  final OrdersRepository _repository;

  Future<Either<Failure, Fetched<OrdersOverview>>> call({
    required String languageCode,
  }) => _repository.overview(languageCode: languageCode);
}

@lazySingleton
class GetOrdersFeedUseCase {
  const GetOrdersFeedUseCase(this._repository);

  final OrdersRepository _repository;

  Future<Either<Failure, Fetched<List<FeedCard>>>> call({
    required String languageCode,
    required OrdersFilter filter,
  }) => _repository.feed(languageCode: languageCode, filter: filter);
}
