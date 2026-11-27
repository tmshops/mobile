import 'package:injectable/injectable.dart';

import '../../../../core/dev/fake_backend/fake_address_backend.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/network/network_info.dart';

/// Addresses API (TZ §5.16, §7.5). Throws `NetworkException` /
/// `ServerException`.
abstract interface class AddressRemoteDataSource {
  /// `{addresses: [{id, lat, lng, address, region, details, is_default}]}`.
  Future<Map<String, dynamic>> list(String languageCode);

  /// `{address, region}`.
  Future<Map<String, dynamic>> reverse(
    String languageCode,
    double lat,
    double lng,
  );

  /// [body]: `{id?, lat, lng, details, is_default}`; the address back.
  Future<Map<String, dynamic>> save(
    String languageCode,
    Map<String, dynamic> body,
  );

  Future<void> setDefault(String id);

  Future<void> delete(String id);
}

@LazySingleton(as: AddressRemoteDataSource, env: [Environment.dev])
class FakeAddressRemoteDataSource implements AddressRemoteDataSource {
  const FakeAddressRemoteDataSource(this._backend, this._networkInfo);

  final FakeAddressBackend _backend;
  final NetworkInfo _networkInfo;

  static const _latency = Duration(milliseconds: 350);

  @override
  Future<Map<String, dynamic>> list(String languageCode) =>
      _call(() => _backend.list(languageCode));

  @override
  Future<Map<String, dynamic>> reverse(
    String languageCode,
    double lat,
    double lng,
  ) => _call(() => _backend.reverse(languageCode, lat, lng));

  @override
  Future<Map<String, dynamic>> save(
    String languageCode,
    Map<String, dynamic> body,
  ) => _call(() => _backend.save(languageCode, body));

  @override
  Future<void> setDefault(String id) => _call(() => _backend.setDefault(id));

  @override
  Future<void> delete(String id) => _call(() => _backend.delete(id));

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
}

/// The phone's location. Until `geolocator` is approved (TZ §2), the dev
/// build «is» in the centre of Ashgabat.
abstract interface class DeviceLocationSource {
  Future<(double, double)> current();
}

@LazySingleton(as: DeviceLocationSource, env: [Environment.dev])
class FakeDeviceLocationSource implements DeviceLocationSource {
  const FakeDeviceLocationSource();

  @override
  Future<(double, double)> current() async =>
      (FakeAddressBackend.deviceLat, FakeAddressBackend.deviceLng);
}
