import 'package:fpdart/fpdart.dart';

import '../../../../core/error/failures.dart';
import '../entities/order.dart';
import '../entities/order_status.dart';
import '../entities/parcel.dart';

/// Orders and parcels of the signed-in customer (TZ §5.15).
///
/// Reads fall back to the device copy when offline (TZ §8: view only);
/// every change needs the network and returns the updated server state.
abstract interface class OrdersRepository {
  Future<Either<Failure, Fetched<List<OrderSummary>>>> orders({
    required String languageCode,
    required OrderTab tab,
  });

  Future<Either<Failure, Fetched<OrderDetails>>> order({
    required String languageCode,
    required String number,
  });

  Future<Either<Failure, Fetched<List<ParcelSummary>>>> parcels({
    required String languageCode,
  });

  Future<Either<Failure, Fetched<ParcelDetails>>> parcel({
    required String languageCode,
    required String number,
  });

  Future<Either<Failure, OrderDetails>> cancel({
    required String languageCode,
    required String number,
    required String reasonId,
  });

  Future<Either<Failure, OrderDetails>> resolveProblem({
    required String languageCode,
    required String number,
    required String itemId,
    required String actionId,
  });

  Future<Either<Failure, RepeatedOrder>> repeat({
    required String languageCode,
    required String number,
  });

  Future<Either<Failure, ParcelDetails>> sendNow({
    required String languageCode,
    required String number,
  });
}
