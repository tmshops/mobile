import 'package:injectable/injectable.dart';

/// Dev stand-in for promotions (TZ §5.19): the list and one promotion's
/// page. Products of a promotion come from the catalog endpoint with
/// `promo=<slug>`; [FakeCatalogBackend] reads [scopes] for that.
@LazySingleton(env: [Environment.dev])
class FakePromotionsBackend {
  FakePromotionsBackend({@ignoreParam DateTime Function()? now})
    : _now = now ?? DateTime.now;

  final DateTime Function() _now;

  /// Promotion → catalog roots it covers, and whether only discounted
  /// products take part.
  static const scopes = <String, (List<String>, bool)>{
    'black-friday': (['clothes', 'shoes'], true),
    'day-deal': (['electronics'], true),
    'gadgets-2-plus-1': (['electronics'], false),
    'free-delivery': (['home'], false),
    'summer-sale': (['sport'], true),
  };

  /// Running promotions, soonest to end first. Ended ones are left out.
  List<Map<String, dynamic>> list(String lang) {
    final now = _now();
    final running = [
      for (final p in _all(now))
        if (p.endsAt.isAfter(now)) p,
    ]..sort((a, b) => a.endsAt.compareTo(b.endsAt));
    return [for (final p in running) p.summary(lang)];
  }

  /// `null` for an unknown slug; an ended one comes with `is_ended`.
  Map<String, dynamic>? details(String lang, String slug) {
    final now = _now();
    final p = _all(now).where((p) => p.slug == slug).firstOrNull;
    return p?.details(lang, now);
  }

  List<_Promotion> _all(DateTime now) {
    final today = DateTime(now.year, now.month, now.day);
    return [
      _Promotion(
        slug: 'black-friday',
        type: 'discount',
        endsAt: today.add(const Duration(days: 4, hours: 23, minutes: 59)),
        title: ('Чёрная пятница', 'Gara anna'),
        subtitle: (
          'Скидки до 50% на одежду и обувь',
          'Eşiklere we aýakgaplara 50% çenli arzanladyş',
        ),
        scope: (
          'Одежда и обувь со скидкой',
          'Arzanladyşly eşikler we aýakgaplar',
        ),
        amount: ('Скидки до 50%', '50% çenli arzanladyş'),
        code: 'BF2026',
        isCombinable: false,
      ),
      _Promotion(
        slug: 'day-deal',
        type: 'day_deal',
        endsAt: today.add(const Duration(hours: 23, minutes: 59)),
        title: ('Скидка дня на электронику', 'Elektronika günüň arzanladyşy'),
        subtitle: (
          'Только сегодня — самые низкие цены на гаджеты',
          'Diňe şu gün — gadžetlere iň arzan bahalar',
        ),
        scope: ('Электроника со скидкой', 'Arzanladyşly elektronika'),
        amount: ('Скидки до 35%', '35% çenli arzanladyş'),
        isCombinable: true,
      ),
      _Promotion(
        slug: 'gadgets-2-plus-1',
        type: 'bundle',
        endsAt: today.add(const Duration(days: 12)),
        title: ('Третий гаджет в подарок', 'Üçünji gadžet sowgat'),
        subtitle: (
          'Купите два товара — третий бесплатно',
          'Iki haryt alyň — üçünjisi mugt',
        ),
        scope: ('Вся электроника', 'Ähli elektronika'),
        amount: (
          'Самый дешёвый из трёх — бесплатно',
          'Üçüsiniň iň arzany — mugt',
        ),
        isCombinable: true,
      ),
      _Promotion(
        slug: 'free-delivery',
        type: 'free_delivery',
        endsAt: today.add(const Duration(days: 20)),
        title: ('Бесплатная доставка', 'Mugt eltip bermek'),
        subtitle: (
          'Товары для дома — без оплаты доставки по Китаю',
          'Öý üçin harytlar — Hytaýdaky eltip bermek mugt',
        ),
        scope: ('Товары для дома', 'Öý üçin harytlar'),
        amount: ('Доставка по Китаю — 0 TMT', 'Hytaýdaky eltip bermek — 0 TMT'),
        code: 'HOME0',
        isCombinable: false,
      ),
      _Promotion(
        slug: 'summer-sale',
        type: 'discount',
        endsAt: today.subtract(const Duration(days: 30)),
        title: ('Летняя распродажа', 'Tomus arzanladyşy'),
        subtitle: ('Спорт и отдых', 'Sport we dynç alyş'),
        scope: ('Спорт', 'Sport'),
        amount: ('Скидки до 40%', '40% çenli arzanladyş'),
        isCombinable: true,
      ),
    ];
  }
}

typedef _Text = (String, String);

class _Promotion {
  const _Promotion({
    required this.slug,
    required this.type,
    required this.endsAt,
    required this.title,
    required this.subtitle,
    required this.scope,
    required this.amount,
    required this.isCombinable,
    this.code,
  });

  final String slug;
  final String type;
  final DateTime endsAt;
  final _Text title;
  final _Text subtitle;
  final _Text scope;
  final _Text amount;
  final bool isCombinable;
  final String? code;

  Map<String, dynamic> summary(String lang) {
    String pick(_Text t) => lang == 'tk' ? t.$2 : t.$1;
    return {
      'slug': slug,
      'type': type,
      'title': pick(title),
      'subtitle': pick(subtitle),
      'image_url': 'https://picsum.photos/seed/promo-$slug/1200/600',
      'ends_at': endsAt.toUtc().toIso8601String(),
    };
  }

  Map<String, dynamic> details(String lang, DateTime now) {
    String pick(_Text t) => lang == 'tk' ? t.$2 : t.$1;
    final until = lang == 'tk'
        ? '${endsAt.day}.${endsAt.month.toString().padLeft(2, '0')} çenli'
        : 'До ${endsAt.day}.${endsAt.month.toString().padLeft(2, '0')} включительно';
    return {
      ...summary(lang),
      'is_ended': !endsAt.isAfter(now),
      'promo_code': ?code,
      'conditions': [
        {'kind': 'amount', 'text': pick(amount)},
        {'kind': 'until', 'text': until},
        {'kind': 'scope', 'text': pick(scope)},
        {
          'kind': 'combinable',
          'text': isCombinable
              ? pick((
                  'Можно вместе с промокодами',
                  'Promokodlar bilen bilelikde bolýar',
                ))
              : pick((
                  'Не суммируется с другими промокодами',
                  'Beýleki promokodlar bilen goşulmaýar',
                )),
        },
      ],
    };
  }
}
