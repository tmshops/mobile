import 'package:freezed_annotation/freezed_annotation.dart';

part 'wholesale.freezed.dart';

/// What the customer fills in to become a wholesaler (TZ §5.19).
@freezed
abstract class WholesaleForm with _$WholesaleForm {
  const factory WholesaleForm({
    @Default('') String name,

    /// 8 national digits, without +993.
    @Default('') String phone,

    /// Company or ИП.
    @Default('') String company,
    @Default('') String city,
  }) = _WholesaleForm;

  const WholesaleForm._();

  static const phoneDigits = 8;

  bool get isComplete =>
      name.trim().isNotEmpty &&
      phone.length == phoneDigits &&
      company.trim().isNotEmpty &&
      city.trim().isNotEmpty;
}

/// The application and where it stands.
@freezed
sealed class WholesaleApplication with _$WholesaleApplication {
  /// Never applied.
  const factory WholesaleApplication.none() = WholesaleNone;

  const factory WholesaleApplication.pending({
    required WholesaleForm form,
    required DateTime sentAt,
  }) = WholesalePending;

  /// [group] is the price group, e.g. «Опт 1».
  const factory WholesaleApplication.approved({
    required WholesaleForm form,
    required String group,
  }) = WholesaleApproved;

  const factory WholesaleApplication.rejected({
    required WholesaleForm form,
    required String reason,
  }) = WholesaleRejected;
}

enum WholesaleDocumentKind { invoice, waybill }

/// «Счёт» or «Накладная» PDF of an order.
@freezed
abstract class WholesaleDocument with _$WholesaleDocument {
  const factory WholesaleDocument({
    required WholesaleDocumentKind kind,
    required String number,
    required DateTime date,
    required String url,
  }) = _WholesaleDocument;
}

@freezed
abstract class OrderDocuments with _$OrderDocuments {
  const factory OrderDocuments({
    required String orderNumber,
    required DateTime createdAt,
    required List<WholesaleDocument> documents,
  }) = _OrderDocuments;
}
