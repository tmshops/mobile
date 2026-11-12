import 'package:injectable/injectable.dart';

import '../../error/exceptions.dart';
import 'fake_orders_backend.dart';

/// Dev stand-in for the balance, surcharges and refunds (TZ §5.16).
///
/// One account per phone, created when [FakeAuthBackend] first serves its
/// profile; the wallet calls work on the account of the last profile
/// served (the dev server has no real session).
///
/// Dev rules:
/// - every account owes the weight surcharge of parcel P-5518 (52 TMT);
/// - a phone ending in [debtSuffix] also owes a price increase (34 TMT);
/// - the named account starts with 120 TMT, a history and refunds.
@LazySingleton(env: [Environment.dev])
class FakeWalletBackend {
  FakeWalletBackend(this._orders, {@ignoreParam DateTime Function()? now})
    : _now = now ?? DateTime.now;

  final FakeOrdersBackend _orders;
  final DateTime Function() _now;

  static const debtSuffix = '7777';
  static const knownPhone = '65123456';
  static const minTopUp = 10;
  static const maxTopUp = 10000;
  static const _paymentDelay = Duration(milliseconds: 1500);

  /// Top-ups of this many manat fail at the bank, to try that state.
  static const failingTopUp = 13;

  final _accounts = <String, _Account>{};
  final _payments = <String, _Payment>{};
  int _nextId = 1;
  String _current = knownPhone;

  // ── Account ───────────────────────────────────────────────────────────

  /// Balance and debt for [FakeAuthBackend]'s profile; makes [phone] the
  /// account the wallet calls work on.
  ({int balance, int debt}) open(String phone) {
    _current = phone;
    final a = _account(phone);
    return (balance: a.balance, debt: a.debt);
  }

  Map<String, dynamic> summary() {
    final a = _account(_current);
    return {'balance': a.balance, 'debt': a.debt};
  }

  /// Newest first, [pageSize] per page.
  Map<String, dynamic> operations(String lang, String? cursor) {
    final all = _account(_current).operations.reversed.toList();
    final offset = int.tryParse(cursor ?? '') ?? 0;
    final page = all.skip(offset).take(pageSize).toList();
    final next = offset + pageSize;
    return {
      'items': [for (final o in page) o.toJson(lang)],
      'next_cursor': next < all.length ? '$next' : null,
    };
  }

  static const pageSize = 20;

  List<Map<String, dynamic>> surcharges(String lang) => [
    for (final s in _account(_current).surcharges) s.toJson(lang),
  ];

  List<Map<String, dynamic>> refunds(String lang) => [
    for (final r in _account(_current).refunds.reversed) r.toJson(lang),
  ];

  // ── Paying ────────────────────────────────────────────────────────────

  /// `method`: `balance` pays at once and returns `{status: paid}`;
  /// `card` returns `{payment_id}` to check later.
  Map<String, dynamic> paySurcharge(String lang, String id, String method) {
    final a = _account(_current);
    final s = a.surcharges.where((s) => s.id == id).firstOrNull;
    if (s == null) {
      throw ServerException(
        code: 'not_found',
        message: _t(
          lang,
          'Доплата уже оплачена',
          'Goşmaça töleg eýýäm tölendi',
        ),
      );
    }
    if (method == 'card') return {'payment_id': _start(_Payment.surcharge(id))};
    if (a.balance < s.amount) {
      throw ServerException(
        code: 'insufficient_balance',
        message: _t(
          lang,
          'На балансе недостаточно средств',
          'Balansda serişde ýeterlik däl',
        ),
      );
    }
    a.balance -= s.amount;
    _settle(a, s, fromBalance: true);
    return {'status': 'paid'};
  }

  Map<String, dynamic> topUp(String lang, int amount) {
    if (amount < minTopUp || amount > maxTopUp) {
      throw ServerException(
        code: 'invalid_amount',
        message: _t(
          lang,
          'Сумма пополнения — от $minTopUp до $maxTopUp TMT',
          'Doldurmagyň möçberi $minTopUp-den $maxTopUp TMT-a çenli',
        ),
      );
    }
    return {'payment_id': _start(_Payment.topUp(amount))};
  }

  /// `pending` for a moment, then `paid` (or `failed` for
  /// [failingTopUp]); `null` for an unknown id.
  Map<String, dynamic>? paymentStatus(String lang, String paymentId) {
    final p = _payments[paymentId];
    if (p == null) return null;
    if (_now().difference(p.startedAt) < _paymentDelay) {
      return {'status': 'pending'};
    }
    if (p.amount == failingTopUp) {
      return {
        'status': 'failed',
        'reason': _t(
          lang,
          'Банк отклонил платёж. Попробуйте другую карту',
          'Bank tölegi kabul etmedi. Başga kart synap görüň',
        ),
      };
    }
    if (!p.isApplied) {
      p.isApplied = true;
      final a = _accounts[p.phone];
      if (a != null) _apply(a, p);
    }
    return {'status': 'paid'};
  }

  String _start(_Payment p) {
    final id = 'wpay-${_nextId++}';
    _payments[id] = p
      ..phone = _current
      ..startedAt = _now();
    return id;
  }

  void _apply(_Account a, _Payment p) {
    final surchargeId = p.surchargeId;
    if (surchargeId == null) {
      a.balance += p.amount;
      a.operations.add(_Operation('top_up', p.amount, _now()));
      return;
    }
    final s = a.surcharges.where((s) => s.id == surchargeId).firstOrNull;
    if (s != null) _settle(a, s, fromBalance: false);
  }

  void _settle(_Account a, _Surcharge s, {required bool fromBalance}) {
    a.surcharges.remove(s);
    if (fromBalance) {
      a.operations.add(
        _Operation('surcharge', -s.amount, _now(), order: s.order),
      );
    }
    final parcel = s.parcel;
    if (parcel != null) _orders.markSurchargePaid(parcel);
  }

  // ── Seed ──────────────────────────────────────────────────────────────

  _Account _account(String phone) =>
      _accounts.putIfAbsent(phone, () => _seed(phone));

  _Account _seed(String phone) {
    final now = _now();
    Duration d(int days) => Duration(days: days);
    final a = _Account()
      ..surcharges.add(
        _Surcharge(
          id: 's-weight-5518',
          reason: 'weight',
          amount: 52,
          order: '10225',
          parcel: 'P-5518',
          createdAt: now.subtract(d(1)),
          deadline: now.add(d(3)),
          lines: [
            (('Вес посылки', 'Posylkanyň agramy'), ('2,35 кг', '2,35 kg')),
            (('Тариф', 'Nyrh'), ('45 TMT/кг', '45 TMT/kg')),
            (
              ('Доставка по весу', 'Agram boýunça eltip bermek'),
              ('106 TMT', '106 TMT'),
            ),
            (
              ('Оплачено при заказе', 'Sargytda tölenen'),
              ('−54 TMT', '−54 TMT'),
            ),
          ],
        ),
      );
    if (phone.endsWith(debtSuffix)) {
      a.surcharges.add(
        _Surcharge(
          id: 's-price-10223',
          reason: 'price_increase',
          amount: 34,
          order: '10223',
          createdAt: now.subtract(d(2)),
          lines: [
            (
              ('Цена при заказе', 'Sargyt edilende bahasy'),
              ('420 TMT', '420 TMT'),
            ),
            (
              ('Цена у продавца сейчас', 'Satyjydaky häzirki baha'),
              ('454 TMT', '454 TMT'),
            ),
          ],
        ),
      );
    }
    if (phone == knownPhone) {
      a
        ..balance = 120
        ..operations.addAll([
          _Operation('top_up', 100, now.subtract(d(20))),
          _Operation('refund', 45, now.subtract(d(14)), order: '10212'),
          _Operation('payment', -25, now.subtract(d(6)), order: '10219'),
        ])
        ..refunds.addAll([
          _Refund(
            amount: 45,
            destination: 'balance',
            status: 'paid',
            order: '10212',
            at: now.subtract(d(14)),
          ),
          _Refund(
            amount: 210,
            destination: 'card',
            status: 'approved',
            order: '10219',
            at: now.subtract(d(3)),
          ),
          _Refund(
            amount: 30,
            destination: 'cash',
            status: 'created',
            order: '10223',
            at: now.subtract(const Duration(hours: 5)),
          ),
        ]);
    }
    return a;
  }

  static String _t(String lang, String ru, String tk) => lang == 'tk' ? tk : ru;
}

class _Account {
  int balance = 0;
  final operations = <_Operation>[];
  final surcharges = <_Surcharge>[];
  final refunds = <_Refund>[];

  int get debt => surcharges.fold(0, (sum, s) => sum + s.amount);
}

class _Operation {
  _Operation(this.type, this.amount, this.at, {this.order});

  static int _next = 1;

  final String id = 'op-${_next++}';
  final String type;
  final int amount;
  final DateTime at;
  final String? order;

  Map<String, dynamic> toJson(String lang) {
    String t(String ru, String tk) => lang == 'tk' ? tk : ru;
    final n = order ?? '';
    return {
      'id': id,
      'type': type,
      'title': switch (type) {
        'top_up' => t('Пополнение картой', 'Kart bilen doldurmak'),
        'refund' => t('Возврат за заказ №$n', '№$n sargyt üçin gaýtarym'),
        'payment' => t('Оплата заказа №$n', '№$n sargydyň tölegi'),
        'surcharge' => t(
          'Доплата по заказу №$n',
          '№$n sargyt boýunça goşmaça töleg',
        ),
        _ => t('Корректировка', 'Düzediş'),
      },
      'amount': amount,
      'created_at': at.toUtc().toIso8601String(),
      'order_number': ?order,
    };
  }
}

typedef _Text = (String, String);

class _Surcharge {
  _Surcharge({
    required this.id,
    required this.reason,
    required this.amount,
    required this.order,
    required this.createdAt,
    required this.lines,
    this.parcel,
    this.deadline,
  });

  final String id;
  final String reason;
  final int amount;
  final String order;
  final String? parcel;
  final DateTime createdAt;
  final DateTime? deadline;
  final List<(_Text, _Text)> lines;

  Map<String, dynamic> toJson(String lang) {
    String pick(_Text text) => lang == 'tk' ? text.$2 : text.$1;
    final isWeight = reason == 'weight';
    return {
      'id': id,
      'reason': reason,
      'title': isWeight
          ? pick(('Доплата за вес', 'Agram üçin goşmaça töleg'))
          : pick(('Цена у продавца выросла', 'Satyjydaky baha ýokarlandy')),
      'amount': amount,
      'order_number': order,
      'parcel_number': ?parcel,
      'created_at': createdAt.toUtc().toIso8601String(),
      'deadline': ?deadline?.toUtc().toIso8601String(),
      'lines': [
        for (final (label, value) in lines)
          {'label': pick(label), 'value': pick(value)},
      ],
    };
  }
}

class _Refund {
  _Refund({
    required this.amount,
    required this.destination,
    required this.status,
    required this.order,
    required this.at,
  });

  static int _next = 1;

  final String id = 'r-${_next++}';
  final int amount;
  final String destination;
  final String status;
  final String order;
  final DateTime at;

  Map<String, dynamic> toJson(String lang) => {
    'id': id,
    'title': lang == 'tk'
        ? '№$order sargyt üçin gaýtarym'
        : 'Возврат за заказ №$order',
    'amount': amount,
    'destination': destination,
    'status': status,
    'order_number': order,
    'created_at': at.toUtc().toIso8601String(),
  };
}

class _Payment {
  _Payment.topUp(this.amount) : surchargeId = null;

  _Payment.surcharge(this.surchargeId) : amount = 0;

  final int amount;
  final String? surchargeId;
  String phone = '';
  DateTime startedAt = DateTime(0);
  bool isApplied = false;
}
