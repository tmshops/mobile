import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_address.freezed.dart';

/// A point on the map.
@freezed
abstract class GeoPoint with _$GeoPoint {
  const factory GeoPoint({required double lat, required double lng}) =
      _GeoPoint;
}

/// What the backend says is at a point (TZ §7.5).
@freezed
abstract class PlaceInfo with _$PlaceInfo {
  const factory PlaceInfo({required String address, required String region}) =
      _PlaceInfo;
}

/// A saved delivery address (TZ §5.16).
@freezed
abstract class DeliveryAddress with _$DeliveryAddress {
  const factory DeliveryAddress({
    required String id,
    required GeoPoint point,

    /// Street and house, from the point.
    required String address,
    required String region,

    /// «Квартира / ориентир».
    @Default('') String details,
    @Default(false) bool isDefault,
  }) = _DeliveryAddress;
}

/// What the editor saves; [id] is `null` for a new address.
@freezed
abstract class AddressDraft with _$AddressDraft {
  const factory AddressDraft({
    required GeoPoint point,
    String? id,
    @Default('') String details,
    @Default(false) bool isDefault,
  }) = _AddressDraft;
}
