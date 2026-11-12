import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/error/guard.dart';
import '../../domain/entities/wallet.dart';
import '../../domain/repositories/wallet_repository.dart';
import '../datasources/wallet_remote_data_source.dart';
import '../models/wallet_models.dart';

@LazySingleton(as: WalletRepository)
class WalletRepositoryImpl implements WalletRepository {
  const WalletRepositoryImpl(this._remote);

  final WalletRemoteDataSource _remote;

  @override
  Future<Either<Failure, WalletSummary>> summary() =>
      guardCall(() async => (await _remote.summary()).toEntity());

  @override
  Future<Either<Failure, OperationsPage>> operations(
    String languageCode, {
    String? cursor,
  }) => guardCall(
    () async => (await _remote.operations(languageCode, cursor)).toEntity(),
  );

  @override
  Future<Either<Failure, List<SurchargeBill>>> surcharges(
    String languageCode,
  ) => guardCall(
    () async => [
      for (final s in await _remote.surcharges(languageCode)) s.toEntity(),
    ],
  );

  @override
  Future<Either<Failure, List<Refund>>> refunds(String languageCode) =>
      guardCall(
        () async => [
          for (final r in await _remote.refunds(languageCode)) ?r.toEntity(),
        ],
      );

  @override
  Future<Either<Failure, PaymentStart>> paySurcharge(
    String languageCode,
    String id,
    PayMethod method,
  ) => guardCall(() async {
    final json = await _remote.paySurcharge(languageCode, id, method.name);
    if (json['payment_id'] case final String paymentId) {
      return PaymentStart.card(paymentId);
    }
    if (json['status'] == 'paid') return const PaymentStart.paid();
    throw const ServerException(code: 'unexpected_response');
  });

  @override
  Future<Either<Failure, String>> topUp(String languageCode, int amount) =>
      guardCall(() => _remote.topUp(languageCode, amount));

  @override
  Future<Either<Failure, WalletPaymentCheck?>> paymentStatus(
    String languageCode,
    String paymentId,
  ) => guardCall(() async {
    final json = await _remote.paymentStatus(languageCode, paymentId);
    if (json == null) return null;
    return WalletPaymentCheck(
      status: switch (json['status']) {
        'paid' => WalletPaymentStatus.paid,
        'failed' => WalletPaymentStatus.failed,
        _ => WalletPaymentStatus.pending,
      },
      reason: json['reason'] as String?,
    );
  });
}
