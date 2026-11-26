import 'package:injectable/injectable.dart';

import '../../../../core/dev/fake_backend/fake_support_backend.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/network/network_info.dart';

/// Support chat API (TZ §5.17). Throws `NetworkException` /
/// `ServerException`.
abstract interface class SupportRemoteDataSource {
  /// `{items: [message], next_cursor}`, newest first.
  Future<Map<String, dynamic>> history(String languageCode, {String? before});

  /// `{items: [message], requests: [message]}`.
  Future<Map<String, dynamic>> news(String languageCode, {DateTime? after});

  /// [body]: `{client_id, text | images | order_number}`; the message back.
  Future<Map<String, dynamic>> send(
    String languageCode,
    Map<String, dynamic> body,
  );

  /// [body]: `{description, photos, link?}`; the request card back.
  Future<Map<String, dynamic>> request(
    String languageCode,
    Map<String, dynamic> body,
  );

  /// `{orders: [{number, status}]}`.
  Future<Map<String, dynamic>> recentOrders(String languageCode);
}

@LazySingleton(as: SupportRemoteDataSource, env: [Environment.dev])
class FakeSupportRemoteDataSource implements SupportRemoteDataSource {
  const FakeSupportRemoteDataSource(this._backend, this._networkInfo);

  final FakeSupportBackend _backend;
  final NetworkInfo _networkInfo;

  static const _latency = Duration(milliseconds: 500);

  @override
  Future<Map<String, dynamic>> history(String languageCode, {String? before}) =>
      _call(() => _backend.history(languageCode, before: before));

  @override
  Future<Map<String, dynamic>> news(String languageCode, {DateTime? after}) =>
      _call(() => _backend.news(languageCode, after: after));

  @override
  Future<Map<String, dynamic>> send(
    String languageCode,
    Map<String, dynamic> body,
  ) => _call(() => _backend.send(languageCode, body));

  @override
  Future<Map<String, dynamic>> request(
    String languageCode,
    Map<String, dynamic> body,
  ) => _call(() => _backend.request(languageCode, body));

  @override
  Future<Map<String, dynamic>> recentOrders(String languageCode) =>
      _call(() => _backend.recentOrders(languageCode));

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
