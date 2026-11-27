import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/error/guard.dart';
import '../../domain/entities/delivery_address.dart';
import '../../domain/repositories/address_repository.dart';
import '../datasources/address_remote_data_source.dart';

@LazySingleton(as: AddressRepository)
class AddressRepositoryImpl implements AddressRepository {
  const AddressRepositoryImpl(this._remote, this._location);

  final AddressRemoteDataSource _remote;
  final DeviceLocationSource _location;

  @override
  Future<Either<Failure, List<DeliveryAddress>>> addresses(
    String languageCode,
  ) => guardCall(() async {
    final json = await _remote.list(languageCode);
    return _parse(
      () => [
        for (final a
            in (json['addresses'] as List<dynamic>)
                .cast<Map<String, dynamic>>())
          _address(a),
      ],
    );
  });

  @override
  Future<Either<Failure, PlaceInfo>> placeAt(
    String languageCode,
    GeoPoint point,
  ) => guardCall(() async {
    final json = await _remote.reverse(languageCode, point.lat, point.lng);
    return _parse(
      () => PlaceInfo(
        address: json['address'] as String,
        region: json['region'] as String,
      ),
    );
  });

  @override
  Future<Either<Failure, DeliveryAddress>> save(
    String languageCode,
    AddressDraft draft,
  ) => guardCall(() async {
    final json = await _remote.save(languageCode, {
      'id': ?draft.id,
      'lat': draft.point.lat,
      'lng': draft.point.lng,
      'details': draft.details.trim(),
      'is_default': draft.isDefault,
    });
    return _parse(() => _address(json));
  });

  @override
  Future<Either<Failure, Unit>> setDefault(String id) => guardCall(() async {
    await _remote.setDefault(id);
    return unit;
  });

  @override
  Future<Either<Failure, Unit>> delete(String id) => guardCall(() async {
    await _remote.delete(id);
    return unit;
  });

  @override
  Future<Either<Failure, GeoPoint>> deviceLocation() => guardCall(() async {
    final (lat, lng) = await _location.current();
    return GeoPoint(lat: lat, lng: lng);
  });

  static DeliveryAddress _address(Map<String, dynamic> json) => DeliveryAddress(
    id: json['id'] as String,
    point: GeoPoint(
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
    ),
    address: json['address'] as String,
    region: json['region'] as String,
    details: json['details'] as String? ?? '',
    isDefault: json['is_default'] as bool? ?? false,
  );

  static T _parse<T>(T Function() parse) {
    try {
      return parse();
    } on Object catch (e) {
      throw ServerException(cause: e);
    }
  }
}
