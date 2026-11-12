import 'fake_cart_backend.dart';
import 'fake_orders_backend.dart';

/// Dev stand-in for checkout preview, order creation and payment status
/// (TZ §5.12–5.13). Keeps orders and payments in memory for the session.
class FakeCheckoutBackend {
  FakeCheckoutBackend({DateTime Function()? now, this.orders})
    : _now = now ?? DateTime.now;

  final DateTime Function() _now;

  /// Receives placed and paid orders, so «Мои заказы» shows them.
  final FakeOrdersBackend? orders;
  final _cart = FakeCartBackend();

  /// Idempotency key → order JSON, so a repeated request gets the same
  /// order back (TZ §5.12).
  final _ordersByKey = <String, Map<String, dynamic>>{};
  final _payments = <String, _FakePayment>{};
  final _orderPhones = <String, String>{};
  int _nextOrder = 10234;
  int _paymentAttempt = 0;

  /// Dev trick: a recipient phone ending like this makes payments fail, so
  /// the failure screen can be tried.
  static const failingPhoneSuffix = '0000';
  static const _paymentDelay = Duration(milliseconds: 1500);

  static const _perPiece = {'express': 30, 'air': 18, 'truck': 9};
  static const _truckMinimum = 500;
  static const _courierCapital = 25;
  static const _courierElsewhere = 40;
  static const _courierFreeFrom = 1500;

  // ── Preview ───────────────────────────────────────────────────────────

  Map<String, dynamic> preview(String lang, Map<String, dynamic> body) {
    final tk = lang == 'tk';
    String t(String ru, String tm) => tk ? tm : ru;
    final region = body['region'] as String? ?? 'ashgabat';
    final lines = (body['lines'] as List<dynamic>).cast<Map<String, dynamic>>();
    final quote = _cart.quote(lang, {
      'region': region,
      'promo_code': body['promo_code'],
      'lines': [
        for (final l in lines) {...l, 'selected': true},
      ],
    });
    final s = quote['summary'] as Map<String, dynamic>;
    final items = s['items'] as int;
    final pieces = lines.fold<int>(0, (n, l) => n + (l['quantity'] as int));
    final hasBattery = lines.any((l) {
      final id = l['product_id'] as String;
      return id.startsWith('el-phone-powerbanks') || id.startsWith('el-smart');
    });
    final factor = region == 'ashgabat' ? 1.0 : 1.3;
    final extraDays = region == 'ashgabat' ? 0 : 2;

    Map<String, dynamic> option(
      String type,
      String ru,
      String tm,
      (int, int) days, {
      String? refusal,
    }) => {
      'type': type,
      'name': t(ru, tm),
      'term': t(
        '${days.$1 + extraDays}–${days.$2 + extraDays} дней',
        '${days.$1 + extraDays}–${days.$2 + extraDays} gün',
      ),
      'price': (pieces * _perPiece[type]! * factor).ceil(),
      'unavailable_reason': ?refusal,
    };

    final options = [
      option('express', 'Экспресс', 'Ekspress', (7, 10)),
      option(
        'air',
        'Авиа',
        'Howa ýoly',
        (14, 21),
        refusal: hasBattery
            ? t('В заказе есть аккумуляторы', 'Sargytda akkumulýatorlar bar')
            : null,
      ),
      option(
        'truck',
        'Авто',
        'Awtoulag',
        (28, 42),
        refusal: items < _truckMinimum
            ? t(
                'Для заказов от $_truckMinimum TMT',
                '$_truckMinimum TMT-dan sargytlar üçin',
              )
            : null,
      ),
    ];
    final available = {
      for (final o in options)
        if (o['unavailable_reason'] == null) o['type'] as String,
    };
    final asked = body['delivery_type'] as String?;
    final type = available.contains(asked)
        ? asked
        : available.contains('air')
        ? 'air'
        : available.firstOrNull;
    final international = type == null
        ? 0
        : options.firstWhere((o) => o['type'] == type)['price'] as int;

    final isCourier = body['method'] != 'pickup';
    final courierPrice = region == 'ashgabat'
        ? _courierCapital
        : _courierElsewhere;
    final courier = !isCourier || items >= _courierFreeFrom ? 0 : courierPrice;

    final services = _services(t);
    final picked = (body['service_ids'] as List<dynamic>? ?? const []).toSet();
    final servicesSum = services
        .where((sv) => picked.contains(sv['id']))
        .fold<int>(0, (n, sv) => n + (sv['price'] as int));

    final china = s['china_delivery'] as int;
    final discount = s['discount'] as int;
    final payNow = items + china + servicesSum - discount;
    final payLater = international + courier;
    return {
      'delivery_options': options,
      'delivery_type': type,
      'pickup_points': _pickupPoints(region, t),
      'services': services,
      'courier_price': courierPrice,
      'courier_free_from': _courierFreeFrom,
      'summary': {
        'items': items,
        'china_delivery': china,
        'international_estimate': international,
        'courier': courier,
        'services': servicesSum,
        'discount': discount,
        'total': payNow + payLater,
        'pay_now': payNow,
        'pay_later': payLater,
      },
    };
  }

  // ── Orders ────────────────────────────────────────────────────────────

  /// `{status: created, order}` or `{status: price_changed, preview}`.
  Map<String, dynamic> placeOrder(
    String lang,
    Map<String, dynamic> body,
    String idempotencyKey,
  ) {
    final repeat = _ordersByKey[idempotencyKey];
    if (repeat != null) return {'status': 'created', 'order': repeat};

    final preview = this.preview(lang, body);
    final summary = preview['summary'] as Map<String, dynamic>;
    if (summary['total'] != body['expected_total']) {
      return {'status': 'price_changed', 'preview': preview};
    }
    final number = '${_nextOrder++}';
    final isCard = body['payment'] == 'card';
    final recipient = body['recipient'] as Map<String, dynamic>? ?? const {};
    _orderPhones[number] = recipient['phone'] as String? ?? '';
    final order = {
      'number': number,
      'pay_now': summary['pay_now'],
      'payment': body['payment'],
      if (isCard) 'payment_id': _startPayment(number),
    };
    _ordersByKey[idempotencyKey] = order;
    orders?.recordPlaced(number: number, body: body, summary: summary);
    return {'status': 'created', 'order': order};
  }

  /// New payment attempt for an existing order; `null` if unknown.
  String? restartPayment(String orderNumber) {
    final isKnown =
        _orderPhones.containsKey(orderNumber) ||
        (orders?.isAwaitingPayment(orderNumber) ?? false);
    return isKnown ? _startPayment(orderNumber) : null;
  }

  // ── Payments ──────────────────────────────────────────────────────────

  Map<String, dynamic>? paymentStatus(String lang, String paymentId) {
    final payment = _payments[paymentId];
    if (payment == null) return null;
    if (_now().difference(payment.startedAt) < _paymentDelay) {
      return {'status': 'pending'};
    }
    final phone = _orderPhones[payment.orderNumber] ?? '';
    if (phone.endsWith(failingPhoneSuffix)) {
      return {
        'status': 'failed',
        'reason': lang == 'tk'
            ? 'Bank tölegi kabul etmedi'
            : 'Банк отклонил платёж',
      };
    }
    orders?.markPaid(payment.orderNumber);
    return {'status': 'paid'};
  }

  String _startPayment(String orderNumber) {
    final id = 'pay-$orderNumber-${++_paymentAttempt}';
    _payments[id] = _FakePayment(orderNumber, _now());
    return id;
  }

  // ── Reference data ────────────────────────────────────────────────────

  static List<Map<String, dynamic>> _services(
    String Function(String, String) t,
  ) => [
    {
      'id': 'photo',
      'title': t('Фотоотчёт со склада', 'Ammardan surat hasabaty'),
      'price': 15,
    },
    {
      'id': 'check',
      'title': t('Проверка на брак', 'Kemçilige barlag'),
      'price': 20,
    },
    {
      'id': 'packing',
      'title': t('Усиленная упаковка', 'Berkidilen gaplama'),
      'price': 25,
    },
  ];

  static List<Map<String, dynamic>> _pickupPoints(
    String region,
    String Function(String, String) t,
  ) => [
    if (region == 'ashgabat') ...[
      {
        'id': 'ash-1',
        'name': t('Пункт выдачи №1', '1-nji bermek nokady'),
        'address': t(
          'ул. Битарап Туркменистан, 18',
          'Bitarap Türkmenistan köç., 18',
        ),
        'hours': t('Пн–Сб 9:00–19:00', 'Db–Şb 9:00–19:00'),
        'phone': '+993 12 00 00 01',
      },
      {
        'id': 'ash-2',
        'name': t('Пункт выдачи №2', '2-nji bermek nokady'),
        'address': t('мкр. Мир-2, д. 7', 'Parahat-2, 7-nji jaý'),
        'hours': t('Ежедневно 10:00–20:00', 'Her gün 10:00–20:00'),
        'phone': '+993 12 00 00 02',
      },
    ] else
      {
        'id': '$region-1',
        'name': t('Пункт выдачи', 'Bermek nokady'),
        'address': t(
          'Центральный рынок, павильон 3',
          'Merkezi bazar, 3-nji paviliýon',
        ),
        'hours': t('Пн–Сб 9:00–18:00', 'Db–Şb 9:00–18:00'),
        'phone': '+993 00 00 00 03',
      },
  ];
}

class _FakePayment {
  _FakePayment(this.orderNumber, this.startedAt);

  final String orderNumber;
  final DateTime startedAt;
}
