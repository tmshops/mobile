import 'package:fpdart/fpdart.dart';

import '../../../../core/error/failures.dart';
import '../entities/delivery_address.dart';

/// Delivery addresses and what is at a point on the map (TZ §5.16).
abstract interface class AddressRepository {
  /// The default address first.
  Future<Either<Failure, List<DeliveryAddress>>> addresses(String languageCode);

  Future<Either<Failure, PlaceInfo>> placeAt(
    String languageCode,
    GeoPoint point,
  );

  Future<Either<Failure, DeliveryAddress>> save(
    String languageCode,
    AddressDraft draft,
  );

  Future<Either<Failure, Unit>> setDefault(String id);

  Future<Either<Failure, Unit>> delete(String id);

  /// Where the phone is, for «Моё местоположение».
  Future<Either<Failure, GeoPoint>> deviceLocation();
}
