import 'package:injectable/injectable.dart';

import '../../../../core/dev/fake_backend/fake_wholesale_backend.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/network/network_info.dart';

/// Wholesale API (TZ §5.19). Throws `NetworkException` / `ServerException`.
abstract interface class WholesaleRemoteDataSource {
  /// `{status: none|pending|approved|rejected, name, phone, company, city,
  /// sent_at, group?, reason?}`.
  Future<Map<String, dynamic>> application(String languageCode);

  /// [body]: `{name, phone, company, city}`; the application back.
  Future<Map<String, dynamic>> apply(
    String languageCode,
    Map<String, dynamic> body,
  );

  /// `{orders: [{number, created_at, documents: [{kind, number, date,
  /// url}]}]}`.
  Future<Map<String, dynamic>> documents(String languageCode);
}

@LazySingleton(as: WholesaleRemoteDataSource, env: [Environment.dev])
class FakeWholesaleRemoteDataSource implements WholesaleRemoteDataSource {
  const FakeWholesaleRemoteDataSource(this._backend, this._networkInfo);

  final FakeWholesaleBackend _backend;
  final NetworkInfo _networkInfo;

  static const _latency = Duration(milliseconds: 400);

  @override
  Future<Map<String, dynamic>> application(String languageCode) =>
      _call(() => _backend.application(languageCode));

  @override
  Future<Map<String, dynamic>> apply(
    String languageCode,
    Map<String, dynamic> body,
  ) => _call(() => _backend.apply(languageCode, body));

  @override
  Future<Map<String, dynamic>> documents(String languageCode) =>
      _call(() => _backend.documents(languageCode));

  Future<Map<String, dynamic>> _call(
    Map<String, dynamic> Function() run,
  ) async {
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
