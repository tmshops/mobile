import 'package:injectable/injectable.dart';

import '../../../../core/auth/token_storage.dart';
import '../../../../core/dev/fake_backend/fake_auth_backend.dart';
import '../../../../core/dev/fake_backend/fake_orders_backend.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/network/network_info.dart';

/// Quick order API (TZ §5.11). [lines] are
/// `{product_id, sku_id?, quantity, comment?}`.
/// Throws `NetworkException` / `ServerException`.
abstract interface class QuickOrderRemoteDataSource {
  /// `{request_id, code_length, destination}`.
  Future<Map<String, dynamic>> requestCode(String languageCode, String phone);

  /// `{order_number, access_token, refresh_token, profile}`.
  Future<Map<String, dynamic>> placeAsGuest(
    String languageCode, {
    required String requestId,
    required String code,
    required List<Map<String, dynamic>> lines,
  });

  /// `{order_number}`.
  Future<Map<String, dynamic>> place(
    String languageCode,
    List<Map<String, dynamic>> lines,
  );
}

/// Dev stand-in: the code check is the sign-in one, the order goes to
/// «Мои заказы». The real one gets the token from the HTTP client.
@LazySingleton(as: QuickOrderRemoteDataSource, env: [Environment.dev])
class FakeQuickOrderRemoteDataSource implements QuickOrderRemoteDataSource {
  const FakeQuickOrderRemoteDataSource(
    this._auth,
    this._orders,
    this._tokens,
    this._networkInfo,
  );

  final FakeAuthBackend _auth;
  final FakeOrdersBackend _orders;
  final TokenStorage _tokens;
  final NetworkInfo _networkInfo;

  static const _latency = Duration(milliseconds: 600);

  @override
  Future<Map<String, dynamic>> requestCode(String languageCode, String phone) =>
      _call(() => _auth.requestCode(languageCode, phone));

  @override
  Future<Map<String, dynamic>> placeAsGuest(
    String languageCode, {
    required String requestId,
    required String code,
    required List<Map<String, dynamic>> lines,
  }) => _call(() {
    final session = _auth.verify(languageCode, requestId, code);
    return {...session, 'order_number': _orders.recordQuickOrder(lines)};
  });

  @override
  Future<Map<String, dynamic>> place(
    String languageCode,
    List<Map<String, dynamic>> lines,
  ) async {
    final tokens = await _tokens.read();
    if (tokens == null) throw const ServerException(code: 'unauthorized');
    return _call(() {
      // Rejects a token the server does not know.
      _auth.profile(tokens.access);
      return {'order_number': _orders.recordQuickOrder(lines)};
    });
  }

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
