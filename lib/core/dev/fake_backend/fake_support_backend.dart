import 'package:injectable/injectable.dart';

import '../../error/exceptions.dart';
import 'fake_api_params.dart';
import 'fake_catalog_backend.dart';
import 'fake_orders_backend.dart';

/// Dev stand-in for the support chat and «Найдите мне товар» (TZ §5.17).
///
/// Seeded with a few days of talk (texts, a product card, an order chip)
/// so paging upwards has something to load. The operator «answers» a few
/// seconds after each message, and a request is «found» a little later,
/// with a product card; both appear when the app next asks for news, as
/// a websocket would push them. Texts are stored in both languages and
/// picked per request.
@LazySingleton(env: [Environment.dev])
class FakeSupportBackend {
  FakeSupportBackend(this._orders, {@ignoreParam DateTime Function()? now})
    : _now = now ?? DateTime.now {
    _seed();
  }

  final FakeOrdersBackend _orders;
  final DateTime Function() _now;
  final _catalog = FakeCatalogBackend();
  final _messages = <_Message>[];
  final _requests = <String, _Request>{};
  var _nextId = 1;

  static const pageSize = 15;
  static const _replyDelay = Duration(seconds: 2);
  static const _foundDelay = Duration(seconds: 6);

  // ── Reads ─────────────────────────────────────────────────────────────

  /// Older messages than [before] (a message id), newest first.
  Map<String, dynamic> history(String lang, {String? before}) {
    final visible = _visible();
    final end = before == null
        ? visible.length
        : visible.indexWhere((m) => m.id == before);
    final start = (end - pageSize).clamp(0, visible.length);
    final page = visible.sublist(start, end < 0 ? 0 : end).reversed;
    return {
      'items': [for (final m in page) _json(lang, m)],
      'next_cursor': start > 0 ? visible[start].id : null,
    };
  }

  /// Messages sent after [after], newest first, and every request card
  /// (their status changes in place).
  Map<String, dynamic> news(String lang, {DateTime? after}) {
    final visible = _visible();
    return {
      'items': [
        for (final m in visible.reversed)
          if (after == null || m.at.isAfter(after)) _json(lang, m),
      ],
      // Request cards change in place (Ищем → Найдено).
      'requests': [
        for (final m in visible)
          if (m.requestId != null) _json(lang, m),
      ],
    };
  }

  /// `{orders: [{number, title}]}` for the «Заказ» attachment.
  Map<String, dynamic> recentOrders(String lang) {
    final list = _orders.orders(lang, 'active')['orders'] as List<dynamic>;
    return {
      'orders': [
        for (final o in list.cast<Map<String, dynamic>>().take(10))
          {
            'number': o['number'],
            'status': (o['status'] as Map<String, dynamic>)['title'],
          },
      ],
    };
  }

  // ── Writes ────────────────────────────────────────────────────────────

  /// A message from the customer: `text`, `images` or `order` in [body].
  Map<String, dynamic> send(String lang, Map<String, dynamic> body) {
    final text = body['text'] as String?;
    final images = (body['images'] as List<dynamic>?)?.cast<String>();
    final order = body['order_number'] as String?;
    if ((text == null || text.trim().isEmpty) &&
        (images == null || images.isEmpty) &&
        order == null) {
      throw const ServerException(code: 'empty_message');
    }
    final now = _now();
    final message = _add(
      _Message(
        id: '',
        isMine: true,
        at: now,
        text: text == null ? null : (text, text),
        images: images ?? const [],
        orderNumber: order,
      ),
    );
    _add(_reply(text ?? '', order, now.add(_replyDelay)));
    return _json(lang, message);
  }

  /// «Найдите мне товар»: the request goes into the chat as a card.
  Map<String, dynamic> request(String lang, Map<String, dynamic> body) {
    final description = (body['description'] as String? ?? '').trim();
    final photos = (body['photos'] as List<dynamic>? ?? const []).cast<String>();
    final link = body['link'] as String?;
    if (description.isEmpty && photos.isEmpty && link == null) {
      throw const ServerException(code: 'empty_request');
    }
    final now = _now();
    final id = 'R-${1000 + _requests.length + 1}';
    final found = _catalog.products(lang, {
      FakeApiParams.text: description.split(' ').first,
    })['items'] as List<dynamic>;
    _requests[id] = _Request(
      description: description,
      photos: photos,
      link: link,
      foundAt: now.add(_foundDelay),
      product: found.isEmpty
          ? _anyProduct(lang, id)
          : found.first as Map<String, dynamic>,
    );
    final message = _add(
      _Message(id: '', isMine: true, at: now, requestId: id),
    );
    _add(
      _Message(
        id: '',
        isMine: false,
        at: now.add(_replyDelay),
        text: (
          'Приняли заявку $id. Ищем товар — обычно это занимает до часа.',
          '$id arzany kabul etdik. Harydy gözleýäris — adatça bir sagada çenli.',
        ),
      ),
    );
    return _json(lang, message);
  }

  // ── Inside ────────────────────────────────────────────────────────────

  /// Messages already "sent", oldest first. Replies are stored ahead of
  /// time, so the list is sorted by time, not by when they were stored.
  List<_Message> _visible() {
    final now = _now();
    return [
      for (final m in _messages)
        if (!m.at.isAfter(now)) m,
    ]..sort((a, b) => a.at.compareTo(b.at));
  }

  _Message _add(_Message m) {
    final message = m.copyWithId('m${_nextId++}');
    _messages.add(message);
    return message;
  }

  _Message _reply(String text, String? order, DateTime at) {
    final lower = text.toLowerCase();
    final (String, String) answer;
    if (order != null) {
      answer = (
        'Вижу заказ $order. Сейчас проверю, где он, и напишу.',
        '$order sargydy görýärin. Häzir nirededigini barlap ýazaryn.',
      );
    } else if (lower.contains('доплат') || lower.contains('goşmaça')) {
      answer = (
        'Доплату можно оплатить в разделе «Доплаты и возвраты» — с баланса '
            'или картой.',
        'Goşmaça tölegi «Goşmaça tölegler we yzyna gaýtarmalar» bölüminde '
            'balansdan ýa-da kart bilen tölemek bolýar.',
      );
    } else if (lower.contains('заказ') || lower.contains('sargyt')) {
      answer = (
        'Подскажите номер заказа — можно прикрепить его через «+».',
        'Sargydyň belgisini aýdyň — «+» arkaly goşup bilersiňiz.',
      );
    } else {
      answer = (
        'Спасибо! Оператор ответит в течение нескольких минут.',
        'Sag boluň! Operator birnäçe minudyň dowamynda jogap berer.',
      );
    }
    return _Message(id: '', isMine: false, at: at, text: answer);
  }

  Map<String, dynamic> _anyProduct(String lang, String seed) {
    final items =
        _catalog.products(lang, {
              FakeApiParams.category: 'el-audio-headphones',
            })['items']
            as List<dynamic>;
    return items[seed.hashCode.abs() % items.length] as Map<String, dynamic>;
  }

  Map<String, dynamic> _json(String lang, _Message m) {
    final request = m.requestId == null ? null : _requests[m.requestId];
    final isFound = request != null && !_now().isBefore(request.foundAt);
    return {
      'id': m.id,
      'author': m.isMine ? 'me' : 'operator',
      'sent_at': m.at.toIso8601String(),
      if (m.text case (final ru, final tk)) 'text': lang == 'tk' ? tk : ru,
      if (m.images.isNotEmpty) 'images': m.images,
      if (m.productId case final id?) 'product': _productJson(lang, id),
      if (m.orderNumber case final number?) 'order': {'number': number},
      if (request != null)
        'request': {
          'id': m.requestId,
          'description': request.description,
          'photos': request.photos,
          'link': ?request.link,
          'status': isFound ? 'found' : 'searching',
          if (isFound) 'product': request.product,
        },
    };
  }

  Map<String, dynamic> _productJson(String lang, String id) {
    final dash = id.lastIndexOf('-');
    final items =
        _catalog.products(lang, {
              FakeApiParams.category: id.substring(0, dash),
            })['items']
            as List<dynamic>;
    return items.cast<Map<String, dynamic>>().firstWhere(
      (p) => p['id'] == id,
      orElse: () => items.first as Map<String, dynamic>,
    );
  }

  void _seed() {
    final now = _now();
    DateTime ago(int days, int hours) =>
        now.subtract(Duration(days: days, hours: hours));
    const talk = [
      (
        false,
        'Здравствуйте! Это поддержка. Чем можем помочь?',
        'Salam! Bu goldaw gullugy. Size nähili kömek edip bileris?',
      ),
      (
        true,
        'Здравствуйте, хочу заказать наушники, но не знаю какие выбрать',
        'Salam, gulaklyk sargyt etjek, ýöne haýsyny saýlajagymy bilemok',
      ),
      (
        false,
        'Посмотрите эти — хорошие отзывы и быстрая доставка авиа.',
        'Şulara serediň — teswirleri gowy we howa ýoly bilen çalt gelýär.',
      ),
    ];
    var hour = 0;
    for (var day = 6; day >= 1; day--) {
      for (final (isMine, ru, tk) in talk) {
        _add(
          _Message(
            id: '',
            isMine: isMine,
            at: ago(day, 10 - hour++ % 5),
            text: (ru, tk),
          ),
        );
      }
    }
    final products =
        _catalog.products('ru', {
              FakeApiParams.category: 'el-audio-headphones',
            })['items']
            as List<dynamic>;
    _add(
      _Message(
        id: '',
        isMine: false,
        at: ago(1, 1),
        productId: (products.first as Map<String, dynamic>)['id'] as String,
      ),
    );
    _add(
      _Message(
        id: '',
        isMine: true,
        at: ago(0, 3),
        text: ('Спасибо, посмотрю!', 'Sag boluň, seredip görerin!'),
      ),
    );
  }
}

class _Message {
  const _Message({
    required this.id,
    required this.isMine,
    required this.at,
    this.text,
    this.images = const [],
    this.productId,
    this.orderNumber,
    this.requestId,
  });

  final String id;
  final bool isMine;
  final DateTime at;

  /// RU, TK.
  final (String, String)? text;
  final List<String> images;
  final String? productId;
  final String? orderNumber;
  final String? requestId;

  _Message copyWithId(String id) => _Message(
    id: id,
    isMine: isMine,
    at: at,
    text: text,
    images: images,
    productId: productId,
    orderNumber: orderNumber,
    requestId: requestId,
  );
}

class _Request {
  const _Request({
    required this.description,
    required this.photos,
    required this.link,
    required this.foundAt,
    required this.product,
  });

  final String description;
  final List<String> photos;
  final String? link;
  final DateTime foundAt;
  final Map<String, dynamic> product;
}
