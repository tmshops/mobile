import 'package:injectable/injectable.dart';

import '../../error/exceptions.dart';
import 'fake_product_backend.dart';

/// Dev stand-in for «Мои заказы» and «Мои посылки» (TZ §5.15).
///
/// Seeded with orders and parcels that cover every status of TZ §6.2, and
/// fed by [FakeCheckoutBackend] with the orders placed in the app, so
/// «К заказу» after payment opens a real order. Records keep codes and
/// product ids only; texts are built per request in the asked language.
@LazySingleton(env: [Environment.dev])
class FakeOrdersBackend {
  FakeOrdersBackend({@ignoreParam DateTime Function()? now})
    : _now = now ?? DateTime.now {
    _seed();
  }

  final DateTime Function() _now;
  final _products = FakeProductBackend();
  final _orders = <String, _Order>{};
  final _parcels = <String, _Parcel>{};

  static const _payWindow = Duration(hours: 24);
  static const _claimDays = 14;

  // ── Reads ─────────────────────────────────────────────────────────────

  Map<String, dynamic> orders(String lang, String tab) {
    final list = _orders.values.where((o) => o.tab == tab).toList()
      ..sort((a, b) => b.createdAt.compareTo(a.createdAt));
    return {
      'orders': [for (final o in list) _summary(lang, o)],
    };
  }

  Map<String, dynamic> order(String lang, String number) =>
      _details(lang, _order(number));

  Map<String, dynamic> parcels(String lang) {
    final list = _parcels.values.toList()
      ..sort((a, b) => b.createdAt.compareTo(a.createdAt));
    return {
      'parcels': [for (final p in list) _parcelSummary(lang, p)],
    };
  }

  Map<String, dynamic> parcel(String lang, String number) =>
      _parcelDetails(lang, _parcel(number));

  // ── Changes ───────────────────────────────────────────────────────────

  Map<String, dynamic> cancel(String lang, String number, String reasonId) {
    final o = _order(number);
    if (!o.canCancel) {
      throw ServerException(
        code: 'cannot_cancel',
        message: _t(
          lang,
          'Заказ уже выкуплен, отменить его нельзя',
          'Sargyt eýýäm satyn alyndy, ony ýatyryp bolmaýar',
        ),
      );
    }
    for (final item in o.items) {
      item.status = 'cancelled';
    }
    o
      ..cancelReason = reasonId
      ..payDeadline = null
      ..history.add(('cancelled', _now()));
    return _details(lang, o);
  }

  Map<String, dynamic> resolveProblem(
    String lang,
    String number,
    String itemId,
    String actionId,
  ) {
    final o = _order(number);
    final item = o.items.firstWhere(
      (i) => i.id == itemId && i.problem != null,
      orElse: () => throw const ServerException(code: 'not_found'),
    );
    switch (actionId) {
      case 'accept_price':
        item.price += item.problem!.priceIncrease;
        o.paid += item.problem!.priceIncrease;
        item.status = 'purchased';
      case 'refund':
        item.status = 'cancelled';
      default:
        throw const ServerException(code: 'unknown_action');
    }
    item.problem = null;
    o.history.add((item.status, _now()));
    return _details(lang, o);
  }

  Map<String, dynamic> repeat(String lang, String number) {
    final o = _order(number);
    final lines = <Map<String, dynamic>>[];
    var unavailable = 0;
    for (final item in o.items) {
      // Dev rule: products ending in -0 have left the store.
      if (item.productId.endsWith('-0')) {
        unavailable++;
        continue;
      }
      final p = _product(lang, item.productId);
      lines.add({
        'product_id': item.productId,
        'sku_id': p.skuId,
        'sku_label': p.options,
        'title': p.title,
        'image_url': p.imageUrl,
        'price': p.price,
        'quantity': item.quantity,
        'seller_name': p.seller,
      });
    }
    return {'lines': lines, 'unavailable': unavailable};
  }

  Map<String, dynamic> sendNow(String lang, String number) {
    final p = _parcel(number);
    if (p.status != 'forming') {
      throw ServerException(
        code: 'cannot_send',
        message: _t(lang, 'Посылка уже отправлена', 'Posylka eýýäm iberildi'),
      );
    }
    final now = _now();
    p
      ..status = 'awaiting_surcharge'
      ..weightGrams = 1180
      ..surcharge = const _Surcharge(weightGrams: 1180, ratePerKg: 45, paid: 18)
      ..history.add(('awaiting_surcharge', now));
    _syncItems(p);
    return _parcelDetails(lang, p);
  }

  // ── Hooks for the fake checkout ───────────────────────────────────────

  /// Records an order placed in the app (body of `POST /orders`).
  void recordPlaced({
    required String number,
    required Map<String, dynamic> body,
    required Map<String, dynamic> summary,
  }) {
    final now = _now();
    final isCard = body['payment'] == 'card';
    final lines = (body['lines'] as List<dynamic>).cast<Map<String, dynamic>>();
    final address = body['address'] as Map<String, dynamic>?;
    _orders[number] = _Order(
      number: number,
      createdAt: now,
      payment: body['payment'] as String? ?? 'card',
      street: address?['street'] as String?,
      pointId: body['pickup_point_id'] as String?,
      deliveryType: body['delivery_type'] as String? ?? 'air',
      items: [
        for (final (i, l) in lines.indexed)
          _Item(
            id: '$number-${i + 1}',
            productId: l['product_id'] as String,
            quantity: l['quantity'] as int,
            price: _product('ru', l['product_id'] as String).price,
            status: 'awaiting_payment',
          ),
      ],
      chinaDelivery: summary['china_delivery'] as int,
      international: summary['international_estimate'] as int,
      courier: summary['courier'] as int,
      services: summary['services'] as int,
      discount: summary['discount'] as int,
      payDeadline: now.add(_payWindow),
      history: [('awaiting_payment', now)],
    )..itemsSumOverride = summary['items'] as int;
    // Cash is paid at the office: the order waits for the operator.
    if (!isCard) _orders[number]!.payDeadline = null;
  }

  bool isAwaitingPayment(String number) =>
      _orders[number]?.status == 'awaiting_payment';

  /// The bank confirmed the advance.
  void markPaid(String number) {
    final o = _orders[number];
    if (o == null || o.status != 'awaiting_payment') return;
    for (final item in o.items) {
      item.status = 'paid';
    }
    o
      ..paid = o.payNow
      ..payDeadline = null
      ..history.add(('paid', _now()));
  }

  /// For [FakeReviewsBackend]: a received, not yet reviewed item as a card,
  /// or `null`.
  Map<String, dynamic>? reviewableItem(
    String lang,
    String orderNumber,
    String itemId,
  ) {
    final item = _orders[orderNumber]?.items
        .where((i) => i.id == itemId && i.canReview)
        .firstOrNull;
    if (item == null) return null;
    final p = _product(lang, item.productId);
    return {
      'product_id': item.productId,
      'title': p.title,
      'image_url': p.imageUrl,
      'sku_label': ?p.options,
    };
  }

  void markReviewed(String itemId) {
    for (final o in _orders.values) {
      for (final i in o.items) {
        if (i.id == itemId) i.isReviewed = true;
      }
    }
  }

  /// Called by [FakeWalletBackend] when a weight surcharge is paid: the
  /// parcel flies on, and so do its items.
  void markSurchargePaid(String parcelNumber) {
    final p = _parcels[parcelNumber];
    if (p == null || p.status != 'awaiting_surcharge') return;
    final now = _now();
    p
      ..status = 'in_transit'
      ..surcharge = null
      ..history.add(('in_transit', now));
    for (final ref in p.items) {
      final order = _orders[ref.orderNumber];
      if (order == null) continue;
      for (final item in order.items) {
        if (item.id == ref.itemId) item.status = 'in_transit';
      }
      order.history.add(('in_transit', now));
    }
  }

  // ── Rendering ─────────────────────────────────────────────────────────

  Map<String, dynamic> _summary(String lang, _Order o) => {
    'number': o.number,
    'created_at': o.createdAt.toIso8601String(),
    'status': _status(lang, o.status),
    'total': o.total,
    'item_count': o.items.fold<int>(0, (n, i) => n + i.quantity),
    'previews': [
      for (final item in o.items) _product(lang, item.productId).imageUrl,
    ],
    'can_repeat': o.tab != 'active',
  };

  Map<String, dynamic> _details(String lang, _Order o) {
    final point = o.pointId == null ? null : _point(lang, o.pointId!);
    final parcels = {
      for (final item in o.items)
        if (item.parcel != null) item.parcel!,
    };
    return {
      ..._summary(lang, o),
      'status_text': _statusText(lang, o),
      'items': [for (final item in o.items) _item(lang, item)],
      'history': [
        for (final (code, at) in o.history)
          {'title': _statusTitle(lang, code), 'at': at.toIso8601String()},
      ],
      'money': {
        'items': o.itemsSum,
        'china_delivery': o.chinaDelivery,
        'international_delivery': o.international,
        'is_estimate': !o.isWeighed,
        'courier': o.courier,
        'services': o.services,
        'discount': o.discount,
        'total': o.total,
        'paid': o.paid,
        'due': o.status == 'cancelled' ? 0 : o.total - o.paid,
      },
      'receiving': o.street != null
          ? _t(lang, 'Курьер: ${o.street}', 'Kurýer: ${o.street}')
          : _t(
              lang,
              'Самовывоз: ${point?['name']}',
              'Özüň almak: ${point?['name']}',
            ),
      'delivery_type_name': _deliveryName(lang, o.deliveryType),
      'can_pay': o.status == 'awaiting_payment' && o.payment == 'card',
      'pay_deadline': ?o.payDeadline?.toIso8601String(),
      'can_cancel': o.canCancel,
      if (!o.canCancel && o.status != 'cancelled')
        'cancel_note': _t(
          lang,
          'Отменить заказ нельзя: товар уже выкуплен под вас. '
              'Если что-то не так с товаром, оформите претензию после получения',
          'Sargydy ýatyryp bolmaýar: haryt siziň üçin satyn alyndy. '
              'Haryt bilen mesele bolsa, alanyňyzdan soň arz beriň',
        ),
      if (o.paid > 0 && (o.canCancel || o.status == 'cancelled'))
        'refund_to': _t(lang, 'на баланс', 'balansa'),
      'cancel_reasons': [
        {
          'id': 'changed_mind',
          'title': _t(lang, 'Передумал(а)', 'Pikirimi üýtgetdim'),
        },
        {
          'id': 'found_cheaper',
          'title': _t(lang, 'Нашёл(ла) дешевле', 'Arzanyny tapdym'),
        },
        {
          'id': 'long_delivery',
          'title': _t(lang, 'Долгая доставка', 'Eltip bermek uzak'),
        },
        {'id': 'other', 'title': _t(lang, 'Другое', 'Başga')},
      ],
      'parcels': [
        for (final number in parcels)
          {'number': number, 'status': _status(lang, _parcels[number]!.status)},
      ],
    };
  }

  Map<String, dynamic> _item(String lang, _Item item) {
    final p = _product(lang, item.productId);
    final problem = item.problem;
    return {
      'id': item.id,
      'product_id': item.productId,
      'title': p.title,
      'image_url': p.imageUrl,
      'quantity': item.quantity,
      'price': item.price,
      'status': _status(lang, item.status),
      'options': ?p.options,
      'warehouse_photos': [
        for (var i = 1; i <= item.warehousePhotos; i++)
          'https://picsum.photos/seed/wh-${item.id}-$i/600/600',
      ],
      'china_track': ?item.chinaTrack,
      'can_review': item.canReview,
      if (problem != null)
        'problem': {
          'title': _t(
            lang,
            'Цена у продавца выросла',
            'Satyjyda baha ýokarlandy',
          ),
          'description': _t(
            lang,
            'Продавец поднял цену на ${problem.priceIncrease} TMT. '
                'Доплатите разницу с баланса или откажитесь от товара — '
                'деньги вернутся на баланс',
            'Satyjy bahany ${problem.priceIncrease} TMT ýokarlandyrdy. '
                'Tapawudy balansdan töläň ýa-da harytdan ýüz öwrüň — '
                'pul balansa gaýtarylar',
          ),
          'photos': ['https://picsum.photos/seed/problem-${item.id}/600/600'],
          'deadline': ?problem.deadline?.toIso8601String(),
          'actions': [
            {
              'id': 'accept_price',
              'title': _t(
                lang,
                'Доплатить ${problem.priceIncrease} TMT',
                '${problem.priceIncrease} TMT goşmaça tölemek',
              ),
              'is_primary': true,
            },
            {
              'id': 'refund',
              'title': _t(lang, 'Отказаться от товара', 'Harytdan ýüz öwürmek'),
            },
          ],
        },
    };
  }

  Map<String, dynamic> _parcelSummary(String lang, _Parcel p) => {
    'number': p.number,
    'status': _status(lang, p.status),
    'stage': p.stage,
    'item_count': p.items.fold<int>(0, (n, i) => n + i.quantity),
    'previews': [
      for (final item in p.items) _product(lang, item.productId).imageUrl,
    ],
    'eta_from': ?p.etaFrom?.toIso8601String(),
    'eta_to': ?p.etaTo?.toIso8601String(),
  };

  Map<String, dynamic> _parcelDetails(String lang, _Parcel p) {
    final surcharge = p.surcharge;
    final point = _point(lang, p.pointId);
    return {
      ..._parcelSummary(lang, p),
      'stage_dates': {
        for (final (code, at) in p.history)
          ?_stageOf(code): at.toIso8601String(),
      },
      'delivery_type_name': _deliveryName(lang, p.deliveryType),
      'items': [
        for (final item in p.items)
          {
            'order_number': item.orderNumber,
            'title': _product(lang, item.productId).title,
            'image_url': _product(lang, item.productId).imageUrl,
            'quantity': item.quantity,
          },
      ],
      'history': [
        for (final (code, at) in p.history)
          {'title': _statusTitle(lang, code), 'at': at.toIso8601String()},
      ],
      'weight_grams': ?p.weightGrams,
      'can_send_now': p.status == 'forming',
      if (p.status == 'forming')
        'free_storage_until': p.createdAt
            .add(const Duration(days: 14))
            .toIso8601String(),
      if (surcharge != null && p.status == 'awaiting_surcharge')
        'surcharge': {
          'weight_grams': surcharge.weightGrams,
          'rate_per_kg': surcharge.ratePerKg,
          'delivery_cost': surcharge.cost,
          'paid': surcharge.paid,
          'amount': surcharge.cost - surcharge.paid,
        },
      if (p.status == 'ready_for_pickup')
        'pickup': {
          'code': p.pickupCode,
          'point_name': point['name'],
          'address': point['address'],
          'hours': point['hours'],
          'phone': point['phone'],
          'amount_due': 0,
        },
      if (p.status == 'with_courier')
        'courier': {
          'name': _t(lang, 'Мерген', 'Mergen'),
          'phone': '+993 65 000011',
          'amount_due': 0,
        },
      if (p.status == 'delivered')
        'claim_until': p.history.last.$2
            .add(const Duration(days: _claimDays))
            .toIso8601String(),
    };
  }

  // ── Reference data ────────────────────────────────────────────────────

  static String _t(String lang, String ru, String tk) => lang == 'tk' ? tk : ru;

  static const _titles = {
    'quick_order': ('Быстрый заказ', 'Çalt sargyt'),
    'awaiting_payment': ('Ожидает оплаты', 'Töleg garaşylýar'),
    'paid': ('Оплачен', 'Tölendi'),
    'purchased': ('Выкуплен', 'Satyn alyndy'),
    'to_warehouse': ('Едет на склад', 'Ammara barýar'),
    'in_warehouse': ('На складе в Китае', 'Hytaýdaky ammarda'),
    'problem': ('Проблема', 'Mesele'),
    'cancelled': ('Отменён', 'Ýatyryldy'),
    'forming': ('Формируется', 'Taýýarlanýar'),
    'awaiting_surcharge': ('Ожидает доплаты', 'Goşmaça töleg garaşylýar'),
    'in_transit': ('В пути', 'Ýolda'),
    'customs': ('На таможне', 'Gümrükde'),
    'arrived_tm': ('Прибыла в Туркменистан', 'Türkmenistana geldi'),
    'ready_for_pickup': ('Готова к выдаче', 'Bermäge taýýar'),
    'with_courier': ('У курьера', 'Kurýerde'),
    'delivered': ('Выдан', 'Gowşuryldy'),
  };

  static String _statusTitle(String lang, String code) {
    final t = _titles[code];
    return t == null ? code : _t(lang, t.$1, t.$2);
  }

  static Map<String, dynamic> _status(String lang, String code) => {
    'code': code,
    'title': _statusTitle(lang, code),
  };

  static String _statusText(String lang, _Order o) => switch (o.status) {
    'awaiting_payment' when o.payment == 'cash' => _t(
      lang,
      'Оплатите заказ в офисе — после оплаты мы выкупим товары',
      'Sargydy ofisde töläň — tölegden soň harytlary satyn alarys',
    ),
    'awaiting_payment' => _t(
      lang,
      'Оплатите заказ, иначе он отменится автоматически',
      'Sargydy töläň, bolmasa ol awtomatik ýatyrylar',
    ),
    'paid' => _t(
      lang,
      'Мы выкупим товары у продавцов в течение 1–2 дней',
      'Harytlary satyjylardan 1–2 günüň dowamynda satyn alarys',
    ),
    'problem' => _t(
      lang,
      'По одному из товаров нужно ваше решение',
      'Harytlaryň biri boýunça siziň kararyňyz gerek',
    ),
    'purchased' || 'to_warehouse' || 'in_warehouse' => _t(
      lang,
      'Товары выкуплены и едут на наш склад в Китае',
      'Harytlar satyn alyndy we Hytaýdaky ammarymyza barýar',
    ),
    'in_transit' || 'customs' || 'arrived_tm' || 'awaiting_surcharge' => _t(
      lang,
      'Посылки в пути — следите за ними в «Мои посылки»',
      'Posylkalar ýolda — olary «Meniň posylkalarym» bölüminde yzarlaň',
    ),
    'ready_for_pickup' || 'with_courier' => _t(
      lang,
      'Посылка ждёт вас — код выдачи в карточке посылки',
      'Posylka size garaşýar — bermek kody posylkanyň sahypasynda',
    ),
    'delivered' => _t(
      lang,
      'Заказ получен. Спасибо, что выбрали нас!',
      'Sargyt alyndy. Bizi saýlanyňyz üçin sag boluň!',
    ),
    'cancelled' => _t(lang, 'Заказ отменён', 'Sargyt ýatyryldy'),
    _ => '',
  };

  static String _deliveryName(String lang, String type) => switch (type) {
    'express' => _t(lang, 'Экспресс', 'Ekspress'),
    'truck' => _t(lang, 'Авто', 'Awtoulag'),
    _ => _t(lang, 'Авиа', 'Howa ýoly'),
  };

  static String? _stageOf(String code) => switch (code) {
    'forming' => 'forming',
    'awaiting_surcharge' => 'surcharge',
    'in_transit' => 'in_transit',
    'customs' => 'customs',
    'arrived_tm' => 'arrived',
    'ready_for_pickup' || 'with_courier' => 'handover',
    'delivered' => 'delivered',
    _ => null,
  };

  static Map<String, String> _point(String lang, String id) => {
    'name': _t(lang, 'Пункт выдачи №1', '1-nji bermek nokady'),
    'address': _t(
      lang,
      'ул. Битарап Туркменистан, 18',
      'Bitarap Türkmenistan köç., 18',
    ),
    'hours': _t(lang, 'Пн–Сб 9:00–19:00', 'Db–Şb 9:00–19:00'),
    'phone': '+993 12 00 00 01',
  };

  _Product _product(String lang, String id) {
    final d = _products.details(lang, id);
    if (d == null) {
      return _Product(title: id, imageUrl: '', price: 0);
    }
    final skus = (d['skus'] as List<dynamic>).cast<Map<String, dynamic>>();
    final sku = skus.firstWhere(
      (s) => (s['stock'] as int) > 0,
      orElse: () => skus.first,
    );
    final values = (sku['values'] as Map<String, dynamic>).values.join(', ');
    return _Product(
      title: d['title'] as String,
      imageUrl:
          (d['media'] as List<dynamic>).first['image_url'] as String? ?? '',
      price: sku['price'] as int,
      skuId: sku['id'] as String?,
      options: values.isEmpty ? null : values,
      seller: (d['seller'] as Map<String, dynamic>)['name'] as String?,
    );
  }

  _Order _order(String number) =>
      _orders[number] ?? (throw const ServerException(code: 'not_found'));

  _Parcel _parcel(String number) =>
      _parcels[number] ?? (throw const ServerException(code: 'not_found'));

  void _syncItems(_Parcel p) {
    for (final ref in p.items) {
      for (final item in _orders[ref.orderNumber]?.items ?? const <_Item>[]) {
        if (item.id == ref.itemId) item.status = p.status;
      }
    }
  }

  // ── Seed ──────────────────────────────────────────────────────────────

  void _seed() {
    final now = _now();
    Duration d(int days, [int hours = 0]) => Duration(days: days, hours: hours);

    // In progress: purchased, on the way to the warehouse, in the
    // warehouse, and one item with a price increase to decide on.
    _add(
      _Order(
        number: '10231',
        createdAt: now.subtract(d(3)),
        payment: 'card',
        street: 'ул. Магтымгулы, 10',
        deliveryType: 'air',
        items: [
          _Item(
            id: '10231-1',
            productId: 'clothes-women-dresses-3',
            status: 'purchased',
          ),
          _Item(
            id: '10231-2',
            productId: 'shoes-women-sneakers-1',
            status: 'to_warehouse',
            chinaTrack: 'YT2468013579CN',
          ),
          _Item(
            id: '10231-3',
            productId: 'el-audio-headphones-2',
            status: 'forming',
            warehousePhotos: 3,
            parcel: 'P-5525',
          ),
          _Item(
            id: '10231-4',
            productId: 'clothes-women-blouses-4',
            status: 'problem',
            problem: _Problem(
              priceIncrease: 45,
              deadline: now.add(const Duration(hours: 20)),
            ),
          ),
        ],
        chinaDelivery: 30,
        international: 72,
        courier: 25,
        services: 15,
        history: [
          ('awaiting_payment', now.subtract(d(3))),
          ('paid', now.subtract(d(3)).add(const Duration(minutes: 4))),
          ('purchased', now.subtract(d(2))),
          ('problem', now.subtract(const Duration(hours: 4))),
        ],
      ),
      paidAll: true,
    );

    // Awaiting payment, still cancellable.
    _add(
      _Order(
        number: '10228',
        createdAt: now.subtract(const Duration(hours: 2)),
        payment: 'card',
        pointId: 'ash-1',
        deliveryType: 'express',
        items: [
          _Item(
            id: '10228-1',
            productId: 'el-phone-cases-1',
            quantity: 2,
            status: 'awaiting_payment',
          ),
          _Item(
            id: '10228-2',
            productId: 'el-smart-watches-2',
            status: 'awaiting_payment',
          ),
        ],
        chinaDelivery: 15,
        international: 90,
        payDeadline: now.add(const Duration(hours: 22)),
        history: [('awaiting_payment', now.subtract(const Duration(hours: 2)))],
      ),
    );

    // In transit, with one parcel awaiting a surcharge.
    _add(
      _Order(
        number: '10225',
        createdAt: now.subtract(d(12)),
        payment: 'card',
        street: 'ул. Магтымгулы, 10',
        deliveryType: 'air',
        items: [
          _Item(
            id: '10225-1',
            productId: 'clothes-men-tshirts-2',
            quantity: 3,
            status: 'in_transit',
            parcel: 'P-5521',
          ),
          _Item(
            id: '10225-2',
            productId: 'shoes-men-sneakers-3',
            status: 'in_transit',
            parcel: 'P-5521',
          ),
          _Item(
            id: '10225-3',
            productId: 'clothes-women-outer-1',
            status: 'awaiting_surcharge',
            parcel: 'P-5518',
          ),
        ],
        chinaDelivery: 40,
        international: 110,
        courier: 25,
        history: [
          ('paid', now.subtract(d(12))),
          ('purchased', now.subtract(d(11))),
          ('in_warehouse', now.subtract(d(6))),
          ('in_transit', now.subtract(d(3))),
        ],
      ),
      paidAll: true,
    );

    // Ready at the pickup point.
    _add(
      _Order(
        number: '10223',
        createdAt: now.subtract(d(18)),
        payment: 'card',
        pointId: 'ash-1',
        deliveryType: 'air',
        isWeighed: true,
        items: [
          _Item(
            id: '10223-1',
            productId: 'el-phone-chargers-1',
            status: 'ready_for_pickup',
            parcel: 'P-5510',
          ),
          _Item(
            id: '10223-2',
            productId: 'el-audio-speakers-2',
            status: 'ready_for_pickup',
            parcel: 'P-5510',
          ),
        ],
        chinaDelivery: 20,
        international: 64,
        history: [
          ('paid', now.subtract(d(18))),
          ('purchased', now.subtract(d(17))),
          ('in_transit', now.subtract(d(8))),
          ('ready_for_pickup', now.subtract(d(1))),
        ],
      ),
      paidAll: true,
    );

    // Completed.
    _add(
      _Order(
        number: '10219',
        createdAt: now.subtract(d(34)),
        payment: 'card',
        street: 'ул. Магтымгулы, 10',
        deliveryType: 'truck',
        isWeighed: true,
        items: [
          _Item(
            id: '10219-1',
            productId: 'clothes-women-jeans-2',
            status: 'delivered',
            parcel: 'P-5502',
          ),
          _Item(
            id: '10219-2',
            productId: 'shoes-women-boots-0',
            status: 'delivered',
            parcel: 'P-5502',
          ),
        ],
        chinaDelivery: 25,
        international: 48,
        courier: 25,
        history: [
          ('paid', now.subtract(d(34))),
          ('purchased', now.subtract(d(33))),
          ('in_transit', now.subtract(d(20))),
          ('delivered', now.subtract(d(6))),
        ],
      ),
      paidAll: true,
    );

    // Cancelled before purchase; the advance went back to the balance.
    _add(
      _Order(
        number: '10212',
        createdAt: now.subtract(d(40)),
        payment: 'card',
        pointId: 'ash-1',
        deliveryType: 'air',
        items: [
          _Item(
            id: '10212-1',
            productId: 'el-smart-watches-1',
            status: 'cancelled',
          ),
        ],
        chinaDelivery: 10,
        international: 18,
        cancelReason: 'found_cheaper',
        history: [
          ('paid', now.subtract(d(40))),
          ('cancelled', now.subtract(d(39))),
        ],
      ),
      paidAll: true,
    );

    _parcels['P-5525'] = _Parcel(
      number: 'P-5525',
      createdAt: now.subtract(d(1)),
      status: 'forming',
      deliveryType: 'air',
      items: [_ParcelRef('10231', '10231-3', 'el-audio-headphones-2', 1)],
      history: [('forming', now.subtract(d(1)))],
    );
    _parcels['P-5521'] = _Parcel(
      number: 'P-5521',
      createdAt: now.subtract(d(6)),
      status: 'in_transit',
      deliveryType: 'air',
      weightGrams: 1640,
      etaFrom: now.add(d(5)),
      etaTo: now.add(d(9)),
      items: [
        _ParcelRef('10225', '10225-1', 'clothes-men-tshirts-2', 3),
        _ParcelRef('10225', '10225-2', 'shoes-men-sneakers-3', 1),
      ],
      history: [
        ('forming', now.subtract(d(6))),
        ('awaiting_surcharge', now.subtract(d(5))),
        ('in_transit', now.subtract(d(3))),
      ],
    );
    _parcels['P-5518'] = _Parcel(
      number: 'P-5518',
      createdAt: now.subtract(d(5)),
      status: 'awaiting_surcharge',
      deliveryType: 'air',
      weightGrams: 2350,
      surcharge: const _Surcharge(weightGrams: 2350, ratePerKg: 45, paid: 54),
      items: [_ParcelRef('10225', '10225-3', 'clothes-women-outer-1', 1)],
      history: [
        ('forming', now.subtract(d(5))),
        ('awaiting_surcharge', now.subtract(d(1))),
      ],
    );
    _parcels['P-5510'] = _Parcel(
      number: 'P-5510',
      createdAt: now.subtract(d(10)),
      status: 'ready_for_pickup',
      deliveryType: 'air',
      weightGrams: 980,
      pickupCode: '4821',
      items: [
        _ParcelRef('10223', '10223-1', 'el-phone-chargers-1', 1),
        _ParcelRef('10223', '10223-2', 'el-audio-speakers-2', 1),
      ],
      history: [
        ('forming', now.subtract(d(10))),
        ('awaiting_surcharge', now.subtract(d(9))),
        ('in_transit', now.subtract(d(8))),
        ('customs', now.subtract(d(4))),
        ('arrived_tm', now.subtract(d(2))),
        ('ready_for_pickup', now.subtract(d(1))),
      ],
    );
    _parcels['P-5502'] = _Parcel(
      number: 'P-5502',
      createdAt: now.subtract(d(24)),
      status: 'delivered',
      deliveryType: 'truck',
      weightGrams: 1420,
      items: [
        _ParcelRef('10219', '10219-1', 'clothes-women-jeans-2', 1),
        _ParcelRef('10219', '10219-2', 'shoes-women-boots-0', 1),
      ],
      history: [
        ('forming', now.subtract(d(24))),
        ('awaiting_surcharge', now.subtract(d(23))),
        ('in_transit', now.subtract(d(20))),
        ('customs', now.subtract(d(12))),
        ('arrived_tm', now.subtract(d(9))),
        ('ready_for_pickup', now.subtract(d(8))),
        ('delivered', now.subtract(d(6))),
      ],
    );
  }

  void _add(_Order order, {bool paidAll = false}) {
    for (final item in order.items) {
      item.price = _product('ru', item.productId).price;
    }
    if (paidAll) order.paid = order.payNow;
    _orders[order.number] = order;
  }
}

class _Product {
  const _Product({
    required this.title,
    required this.imageUrl,
    required this.price,
    this.skuId,
    this.options,
    this.seller,
  });

  final String title;
  final String imageUrl;
  final int price;
  final String? skuId;
  final String? options;
  final String? seller;
}

class _Problem {
  const _Problem({required this.priceIncrease, this.deadline});

  final int priceIncrease;
  final DateTime? deadline;
}

class _Item {
  _Item({
    required this.id,
    required this.productId,
    required this.status,
    this.quantity = 1,
    this.price = 0,
    this.chinaTrack,
    this.warehousePhotos = 0,
    this.problem,
    this.parcel,
  });

  final String id;
  final String productId;
  final int quantity;
  int price;
  String status;
  final String? chinaTrack;
  final int warehousePhotos;
  _Problem? problem;
  final String? parcel;

  /// A review was written for it (TZ §5.18: one per received item).
  bool isReviewed = false;

  bool get canReview => status == 'delivered' && !isReviewed;
}

class _Order {
  _Order({
    required this.number,
    required this.createdAt,
    required this.payment,
    required this.deliveryType,
    required this.items,
    required this.chinaDelivery,
    required this.international,
    required this.history,
    this.street,
    this.pointId,
    this.courier = 0,
    this.services = 0,
    this.discount = 0,
    this.isWeighed = false,
    this.payDeadline,
    this.cancelReason,
  });

  final String number;
  final DateTime createdAt;
  final String payment;
  final String? street;
  final String? pointId;
  final String deliveryType;
  final List<_Item> items;
  final int chinaDelivery;
  final int international;
  final int courier;
  final int services;
  final int discount;
  final bool isWeighed;
  final List<(String, DateTime)> history;
  DateTime? payDeadline;
  String? cancelReason;
  int paid = 0;

  /// Items sum from the checkout summary (it may include promo pricing).
  int? itemsSumOverride;

  int get itemsSum =>
      itemsSumOverride ??
      items
          .where((i) => i.status != 'cancelled')
          .fold<int>(0, (n, i) => n + i.price * i.quantity);

  int get total =>
      itemsSum + chinaDelivery + international + courier + services - discount;

  /// The advance: everything except international delivery and courier.
  int get payNow => itemsSum + chinaDelivery + services - discount;

  static const _order = [
    'awaiting_payment',
    'paid',
    'purchased',
    'to_warehouse',
    'in_warehouse',
    'forming',
    'awaiting_surcharge',
    'in_transit',
    'customs',
    'arrived_tm',
    'ready_for_pickup',
    'with_courier',
    'delivered',
  ];

  /// The earliest item status, as the server computes it (TZ §6.2).
  String get status {
    final live = items.where((i) => i.status != 'cancelled').toList();
    if (live.isEmpty) return 'cancelled';
    if (live.any((i) => i.status == 'problem')) return 'problem';
    return live
        .map((i) => i.status)
        .reduce((a, b) => _order.indexOf(a) <= _order.indexOf(b) ? a : b);
  }

  String get tab => switch (status) {
    'cancelled' => 'cancelled',
    'delivered' => 'completed',
    _ => 'active',
  };

  /// Until anything is bought (TZ §6.3: the boundary is «Выкуплен»).
  bool get canCancel => const {'awaiting_payment', 'paid'}.contains(status);
}

class _ParcelRef {
  const _ParcelRef(
    this.orderNumber,
    this.itemId,
    this.productId,
    this.quantity,
  );

  final String orderNumber;
  final String itemId;
  final String productId;
  final int quantity;
}

class _Surcharge {
  const _Surcharge({
    required this.weightGrams,
    required this.ratePerKg,
    required this.paid,
  });

  static const _gramsPerKg = 1000;

  final int weightGrams;
  final int ratePerKg;
  final int paid;

  /// Rounded up to a whole manat, like every price (TZ §6.1).
  int get cost => (weightGrams * ratePerKg / _gramsPerKg).ceil();
}

class _Parcel {
  _Parcel({
    required this.number,
    required this.createdAt,
    required this.status,
    required this.deliveryType,
    required this.items,
    required this.history,
    this.weightGrams,
    this.etaFrom,
    this.etaTo,
    this.surcharge,
    this.pickupCode,
  });

  final String number;
  final DateTime createdAt;
  String status;
  final String deliveryType;
  final List<_ParcelRef> items;
  final List<(String, DateTime)> history;
  int? weightGrams;
  final DateTime? etaFrom;
  final DateTime? etaTo;
  _Surcharge? surcharge;
  final String? pickupCode;
  final String pointId = 'ash-1';

  String get stage => switch (status) {
    'forming' => 'forming',
    'awaiting_surcharge' => 'surcharge',
    'in_transit' => 'in_transit',
    'customs' => 'customs',
    'arrived_tm' => 'arrived',
    'ready_for_pickup' || 'with_courier' => 'handover',
    _ => 'delivered',
  };
}
