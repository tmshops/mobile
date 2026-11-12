import 'package:injectable/injectable.dart';

import '../../../../core/dev/fake_backend/fake_wallet_backend.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/network/network_info.dart';
import '../models/wallet_models.dart';

/// Wallet API. Throws `NetworkException` / `ServerException`.
abstract interface class WalletRemoteDataSource {
  Future<WalletSummaryModel> summary();

  Future<OperationsPageModel> operations(String languageCode, String? cursor);

  Future<List<SurchargeModel>> surcharges(String languageCode);

  Future<List<RefundModel>> refunds(String languageCode);

  /// `{status: paid}` or `{payment_id}`.
  Future<Map<String, dynamic>> paySurcharge(
    String languageCode,
    String id,
    String method,
  );

  /// Returns the payment id.
  Future<String> topUp(String languageCode, int amount);

  /// `{status, reason?}`, or `null` for an unknown payment.
  Future<Map<String, dynamic>?> paymentStatus(
    String languageCode,
    String paymentId,
  );
}

@LazySingleton(as: WalletRemoteDataSource, env: [Environment.dev])
class FakeWalletRemoteDataSource implements WalletRemoteDataSource {
  FakeWalletRemoteDataSource(this._networkInfo, this._backend);

  final NetworkInfo _networkInfo;
  final FakeWalletBackend _backend;

  static const _latency = Duration(milliseconds: 400);

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

  @override
  Future<WalletSummaryModel> summary() =>
      _call(() => WalletSummaryModel.fromJson(_backend.summary()));

  @override
  Future<OperationsPageModel> operations(String languageCode, String? cursor) =>
      _call(
        () => OperationsPageModel.fromJson(
          _backend.operations(languageCode, cursor),
        ),
      );

  @override
  Future<List<SurchargeModel>> surcharges(String languageCode) => _call(
    () => [
      for (final json in _backend.surcharges(languageCode))
        SurchargeModel.fromJson(json),
    ],
  );

  @override
  Future<List<RefundModel>> refunds(String languageCode) => _call(
    () => [
      for (final json in _backend.refunds(languageCode))
        RefundModel.fromJson(json),
    ],
  );

  @override
  Future<Map<String, dynamic>> paySurcharge(
    String languageCode,
    String id,
    String method,
  ) => _call(() => _backend.paySurcharge(languageCode, id, method));

  @override
  Future<String> topUp(String languageCode, int amount) =>
      _call(() => _backend.topUp(languageCode, amount)['payment_id'] as String);

  @override
  Future<Map<String, dynamic>?> paymentStatus(
    String languageCode,
    String paymentId,
  ) => _call(() => _backend.paymentStatus(languageCode, paymentId));
}
