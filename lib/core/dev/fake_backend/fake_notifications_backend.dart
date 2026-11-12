import 'package:injectable/injectable.dart';

/// Dev stand-in for the notification centre (TZ §5.17).
///
/// Seeded with one notification of each type, linked to the dev orders,
/// parcels and products, plus a tail of older ones so paging shows.
/// Texts are built per request in the asked language.
@LazySingleton(env: [Environment.dev])
class FakeNotificationsBackend {
  FakeNotificationsBackend({@ignoreParam DateTime Function()? now})
    : _now = now ?? DateTime.now {
    _seed();
  }

  final DateTime Function() _now;
  final _items = <_Notification>[];

  static const pageSize = 20;
  static const _olderCount = 18;

  Map<String, dynamic> page(String lang, String? cursor) {
    final sorted = [..._items]..sort((a, b) => b.at.compareTo(a.at));
    final offset = int.tryParse(cursor ?? '') ?? 0;
    final next = offset + pageSize;
    return {
      'items': [
        for (final n in sorted.skip(offset).take(pageSize)) n.toJson(lang),
      ],
      'next_cursor': next < sorted.length ? '$next' : null,
      'unread_count': unreadCount(),
    };
  }

  int unreadCount() => _items.where((n) => !n.isRead).length;

  void markRead(List<String> ids) {
    for (final n in _items) {
      if (ids.contains(n.id)) n.isRead = true;
    }
  }

  void markAllRead() {
    for (final n in _items) {
      n.isRead = true;
    }
  }

  void _seed() {
    final now = _now();
    Duration m(int minutes) => Duration(minutes: minutes);
    _items.addAll([
      _Notification(
        id: 'n1',
        type: 'payment',
        at: now.subtract(m(12)),
        route: '/account/orders/10228',
        title: ('Ожидает оплаты', 'Tölegi garaşylýar'),
        body: (
          'Заказ №10228 ждёт оплаты. Оплатите в течение суток, иначе он отменится',
          '№10228 sargyt tölegi garaşýar. Bir günüň dowamynda töläň, ýogsam ol ýatyrylar',
        ),
      ),
      _Notification(
        id: 'n2',
        type: 'parcel',
        at: now.subtract(m(95)),
        route: '/account/parcels/P-5518',
        title: ('Посылка взвешена', 'Posylka ölçenildi'),
        body: (
          'Посылка P-5518 весит 2,35 кг. Доплата за вес — 52 TMT',
          'P-5518 posylkanyň agramy 2,35 kg. Agram üçin goşmaça töleg — 52 TMT',
        ),
      ),
      _Notification(
        id: 'n3',
        type: 'promo',
        at: now.subtract(m(240)),
        route: '/promo/black-friday',
        imageUrl: 'https://picsum.photos/seed/promo-bf/320/320',
        title: ('Чёрная пятница', 'Gara anna'),
        body: (
          'Скидки до 50% на одежду и обувь — только до воскресенья',
          'Eşiklere we aýakgaplara 50% çenli arzanladyş — diňe ýekşenbä çenli',
        ),
      ),
      _Notification(
        id: 'n4',
        type: 'order',
        at: now.subtract(const Duration(days: 1, hours: 2)),
        isRead: true,
        route: '/account/orders/10225',
        title: ('Заказ в пути', 'Sargyt ýolda'),
        body: (
          'Товары из заказа №10225 летят в Ашхабад',
          '№10225 sargydyň harytlary Aşgabada uçýar',
        ),
      ),
      _Notification(
        id: 'n5',
        type: 'support',
        at: now.subtract(const Duration(days: 2)),
        route: '/support',
        title: ('Поддержка ответила', 'Goldaw jogap berdi'),
        body: (
          'Мы нашли товар по вашей заявке. Откройте чат, чтобы посмотреть',
          'Arzaňyz boýunça harydy tapdyk. Görmek üçin çaty açyň',
        ),
      ),
      _Notification(
        id: 'n6',
        type: 'promo',
        at: now.subtract(const Duration(days: 3)),
        isRead: true,
        route: '/product/clothes-women-dresses-0',
        title: ('Цена снизилась', 'Baha arzanlady'),
        body: (
          'Товар из избранного подешевел на 15%',
          'Halanlaryňyzdaky haryt 15% arzanlady',
        ),
      ),
      for (var i = 0; i < _olderCount; i++)
        _Notification(
          id: 'old$i',
          type: 'order',
          at: now.subtract(Duration(days: 5 + i)),
          isRead: true,
          route: '/account/orders/10219',
          title: ('Статус заказа изменился', 'Sargydyň ýagdaýy üýtgedi'),
          body: (
            'Заказ №10219: посылка передана в службу доставки',
            '№10219 sargyt: posylka eltip beriş gullugyna berildi',
          ),
        ),
    ]);
  }
}

typedef _Text = (String, String);

class _Notification {
  _Notification({
    required this.id,
    required this.type,
    required this.at,
    required this.title,
    required this.body,
    this.route,
    this.imageUrl,
    this.isRead = false,
  });

  final String id;
  final String type;
  final DateTime at;
  final _Text title;
  final _Text body;
  final String? route;
  final String? imageUrl;
  bool isRead;

  Map<String, dynamic> toJson(String lang) {
    String pick(_Text t) => lang == 'tk' ? t.$2 : t.$1;
    return {
      'id': id,
      'type': type,
      'title': pick(title),
      'body': pick(body),
      'created_at': at.toUtc().toIso8601String(),
      'is_read': isRead,
      'route': ?route,
      'image_url': ?imageUrl,
    };
  }
}
