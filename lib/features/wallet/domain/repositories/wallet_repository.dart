import 'package:fpdart/fpdart.dart';

import '../../../../core/error/failures.dart';
import '../entities/wallet.dart';

/// Balance, surcharges and refunds of the signed-in customer (TZ §5.16).
abstract interface class WalletRepository {
  Future<Either<Failure, WalletSummary>> summary();

  Future<Either<Failure, OperationsPage>> operations(
    String languageCode, {
    String? cursor,
  });

  Future<Either<Failure, List<SurchargeBill>>> surcharges(String languageCode);

  Future<Either<Failure, List<Refund>>> refunds(String languageCode);

  Future<Either<Failure, PaymentStart>> paySurcharge(
    String languageCode,
    String id,
    PayMethod method,
  );

  /// Always a card payment.
  Future<Either<Failure, String>> topUp(String languageCode, int amount);

  /// Right(null) for an unknown payment.
  Future<Either<Failure, WalletPaymentCheck?>> paymentStatus(
    String languageCode,
    String paymentId,
  );
}
