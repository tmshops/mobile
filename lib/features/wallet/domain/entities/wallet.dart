import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet.freezed.dart';

/// Money on the account (TZ §5.16). Whole TMT, computed by the server.
@freezed
abstract class WalletSummary with _$WalletSummary {
  const factory WalletSummary({
    required int balance,

    /// Unpaid surcharges; a parcel with debt is not handed over (TZ §6.3).
    required int debt,
  }) = _WalletSummary;
}

enum OperationType { topUp, payment, refund, surcharge, correction }

/// One line of the balance history. [amount] is signed: + in, − out.
@freezed
abstract class WalletOperation with _$WalletOperation {
  const factory WalletOperation({
    required String id,
    required OperationType type,

    /// Server text in the request language, e.g. «Возврат за заказ №10212».
    required String title,
    required int amount,
    required DateTime at,
    String? orderNumber,
  }) = _WalletOperation;
}

@freezed
abstract class OperationsPage with _$OperationsPage {
  const factory OperationsPage({
    required List<WalletOperation> items,
    String? nextCursor,
  }) = _OperationsPage;
}

enum SurchargeReason { weight, priceIncrease, other }

/// A bill to pay after the order: weight after weighing or a price rise at
/// the seller (TZ §6.3).
@freezed
abstract class SurchargeBill with _$SurchargeBill {
  const factory SurchargeBill({
    required String id,
    required SurchargeReason reason,
    required String title,
    required int amount,
    required DateTime createdAt,

    /// Calculation, as the server words it: «Вес посылки — 2,35 кг».
    @Default(<BillLine>[]) List<BillLine> lines,
    String? orderNumber,
    String? parcelNumber,
    DateTime? deadline,
  }) = _SurchargeBill;
}

@freezed
abstract class BillLine with _$BillLine {
  const factory BillLine({required String label, required String value}) =
      _BillLine;
}

enum RefundDestination { balance, card, cash }

/// Оформлен → Одобрен → Выплачен.
enum RefundStatus { created, approved, paid }

@freezed
abstract class Refund with _$Refund {
  const factory Refund({
    required String id,
    required String title,
    required int amount,
    required RefundDestination destination,
    required RefundStatus status,
    required DateTime at,
    String? orderNumber,
  }) = _Refund;
}

enum PayMethod { balance, card }

/// What a payment request started: done at once (from the balance) or a
/// card payment to check.
@freezed
sealed class PaymentStart with _$PaymentStart {
  const factory PaymentStart.paid() = PaymentStartPaid;

  const factory PaymentStart.card(String paymentId) = PaymentStartCard;
}

enum WalletPaymentStatus { pending, paid, failed }

@freezed
abstract class WalletPaymentCheck with _$WalletPaymentCheck {
  const factory WalletPaymentCheck({
    required WalletPaymentStatus status,

    /// Server text for a failed payment.
    String? reason,
  }) = _WalletPaymentCheck;
}
