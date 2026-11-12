import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/wallet.dart';

part 'wallet_models.freezed.dart';
part 'wallet_models.g.dart';

/// GET /wallet.
@freezed
abstract class WalletSummaryModel with _$WalletSummaryModel {
  const factory WalletSummaryModel({required int balance, required int debt}) =
      _WalletSummaryModel;

  factory WalletSummaryModel.fromJson(Map<String, dynamic> json) =>
      _$WalletSummaryModelFromJson(json);
}

/// GET /wallet/operations?cursor=.
@freezed
abstract class OperationsPageModel with _$OperationsPageModel {
  const factory OperationsPageModel({
    required List<OperationModel> items,
    String? nextCursor,
  }) = _OperationsPageModel;

  factory OperationsPageModel.fromJson(Map<String, dynamic> json) =>
      _$OperationsPageModelFromJson(json);
}

@freezed
abstract class OperationModel with _$OperationModel {
  const factory OperationModel({
    required String id,

    /// top_up, payment, refund, surcharge; anything else is shown as a
    /// correction.
    required String type,
    required String title,
    required int amount,
    required DateTime createdAt,
    String? orderNumber,
  }) = _OperationModel;

  factory OperationModel.fromJson(Map<String, dynamic> json) =>
      _$OperationModelFromJson(json);
}

/// One item of GET /wallet/surcharges.
@freezed
abstract class SurchargeModel with _$SurchargeModel {
  const factory SurchargeModel({
    required String id,

    /// weight, price_increase; others get a generic icon.
    required String reason,
    required String title,
    required int amount,
    required DateTime createdAt,
    @Default(<BillLineModel>[]) List<BillLineModel> lines,
    String? orderNumber,
    String? parcelNumber,
    DateTime? deadline,
  }) = _SurchargeModel;

  factory SurchargeModel.fromJson(Map<String, dynamic> json) =>
      _$SurchargeModelFromJson(json);
}

@freezed
abstract class BillLineModel with _$BillLineModel {
  const factory BillLineModel({required String label, required String value}) =
      _BillLineModel;

  factory BillLineModel.fromJson(Map<String, dynamic> json) =>
      _$BillLineModelFromJson(json);
}

/// One item of GET /wallet/refunds.
@freezed
abstract class RefundModel with _$RefundModel {
  const factory RefundModel({
    required String id,
    required String title,
    required int amount,

    /// balance, card, cash.
    required String destination,

    /// created, approved, paid.
    required String status,
    required DateTime createdAt,
    String? orderNumber,
  }) = _RefundModel;

  factory RefundModel.fromJson(Map<String, dynamic> json) =>
      _$RefundModelFromJson(json);
}

extension WalletSummaryModelX on WalletSummaryModel {
  WalletSummary toEntity() => WalletSummary(balance: balance, debt: debt);
}

extension OperationsPageModelX on OperationsPageModel {
  OperationsPage toEntity() => OperationsPage(
    items: [
      for (final o in items)
        WalletOperation(
          id: o.id,
          type: switch (o.type) {
            'top_up' => OperationType.topUp,
            'payment' => OperationType.payment,
            'refund' => OperationType.refund,
            'surcharge' => OperationType.surcharge,
            _ => OperationType.correction,
          },
          title: o.title,
          amount: o.amount,
          at: o.createdAt.toLocal(),
          orderNumber: o.orderNumber,
        ),
    ],
    nextCursor: nextCursor,
  );
}

extension SurchargeModelX on SurchargeModel {
  SurchargeBill toEntity() => SurchargeBill(
    id: id,
    reason: switch (reason) {
      'weight' => SurchargeReason.weight,
      'price_increase' => SurchargeReason.priceIncrease,
      _ => SurchargeReason.other,
    },
    title: title,
    amount: amount,
    createdAt: createdAt.toLocal(),
    lines: [for (final l in lines) BillLine(label: l.label, value: l.value)],
    orderNumber: orderNumber,
    parcelNumber: parcelNumber,
    deadline: deadline?.toLocal(),
  );
}

extension RefundModelX on RefundModel {
  /// `null` for values this version does not know: such refunds are
  /// skipped rather than shown wrong.
  Refund? toEntity() {
    final to = switch (destination) {
      'balance' => RefundDestination.balance,
      'card' => RefundDestination.card,
      'cash' => RefundDestination.cash,
      _ => null,
    };
    final state = switch (status) {
      'created' => RefundStatus.created,
      'approved' => RefundStatus.approved,
      'paid' => RefundStatus.paid,
      _ => null,
    };
    if (to == null || state == null) return null;
    return Refund(
      id: id,
      title: title,
      amount: amount,
      destination: to,
      status: state,
      at: createdAt.toLocal(),
      orderNumber: orderNumber,
    );
  }
}
