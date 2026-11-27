import 'package:injectable/injectable.dart';

import '../../error/exceptions.dart';
import 'fake_orders_backend.dart';

/// Dev stand-in for the wholesale API (TZ §5.19).
///
/// - No application at first. A sent one is «На рассмотрении»; it is
///   approved [_reviewTime] later, or rejected when the company field
///   says «отказ» / «ret», so both outcomes can be seen.
/// - Documents: an invoice and a waybill for every order not cancelled.
@LazySingleton(env: [Environment.dev])
class FakeWholesaleBackend {
  FakeWholesaleBackend(this._orders, {@ignoreParam DateTime Function()? now})
    : _now = now ?? DateTime.now;

  final FakeOrdersBackend _orders;
  final DateTime Function() _now;

  static const _reviewTime = Duration(seconds: 15);
  static const _rejectWords = ['отказ', 'ret'];
  static const _pdfBase = 'https://tmshop.tm/files/docs';

  Map<String, String>? _form;
  DateTime? _sentAt;

  Map<String, dynamic> application(String lang) {
    final form = _form;
    final sentAt = _sentAt;
    if (form == null || sentAt == null) return {'status': 'none'};
    final isReviewed = _now().difference(sentAt) >= _reviewTime;
    final company = (form['company'] ?? '').toLowerCase();
    final isRejected = _rejectWords.any(company.contains);
    return {
      'status': !isReviewed
          ? 'pending'
          : isRejected
          ? 'rejected'
          : 'approved',
      'sent_at': sentAt.toIso8601String(),
      ...form,
      if (isReviewed && !isRejected)
        'group': lang == 'tk' ? 'Lomaý 1' : 'Опт 1',
      if (isReviewed && isRejected)
        'reason': lang == 'tk'
            ? 'Kompaniýa barada maglumat tapylmady. Resminamalaryňyzy goşuň.'
            : 'Не удалось проверить компанию. Укажите полное название и ИНН.',
    };
  }

  Map<String, dynamic> apply(String lang, Map<String, dynamic> body) {
    final fields = ['name', 'phone', 'company', 'city'];
    for (final f in fields) {
      if ((body[f] as String? ?? '').trim().isEmpty) {
        throw const ServerException(code: 'validation');
      }
    }
    _form = {for (final f in fields) f: (body[f] as String).trim()};
    _sentAt = _now();
    return application(lang);
  }

  Map<String, dynamic> documents(String lang) {
    final orders = [
      for (final tab in ['active', 'completed'])
        ...(_orders.orders(lang, tab)['orders'] as List<dynamic>)
            .cast<Map<String, dynamic>>(),
    ];
    return {
      'orders': [
        for (final o in orders)
          {
            'number': o['number'],
            'created_at': o['created_at'],
            'documents': [
              for (final kind in ['invoice', 'waybill'])
                {
                  'kind': kind,
                  'number': '${kind == 'invoice' ? 'С' : 'Н'}-${o['number']}',
                  'date': o['created_at'],
                  'url': '$_pdfBase/$kind-${o['number']}.pdf',
                },
            ],
          },
      ],
    };
  }
}
