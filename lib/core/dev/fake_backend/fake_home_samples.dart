import '../fake_image_url.dart';

/// Sample Home JSON for the dev fake Home data source, in RU and TK.
///
/// Dev only. Mirrors what the admin panel will send, so the screen can be
/// judged with realistic text lengths in both languages.
abstract final class FakeHomeSamples {
  /// Keeps «Для вас» photos different from the carousels above it.
  static const feedSeedOffset = 100;

  static const _titlesRu = [
    'Кроссовки беговые лёгкие, сетка, унисекс',
    'Рюкзак городской водоотталкивающий 25 л',
    'Беспроводные наушники с шумоподавлением',
    'Платье летнее льняное миди',
    'Термокружка из нержавеющей стали 450 мл',
    'Детский конструктор, 520 деталей',
    'Куртка демисезонная с капюшоном',
    'Смарт-часы с пульсометром',
    'Набор кухонных ножей, 6 предметов',
    'Пауэрбанк 20 000 мАч, быстрая зарядка',
    'Пижама хлопковая женская',
    'Органайзер для косметики, прозрачный',
  ];

  static const _titlesTk = [
    'Ýeňil ylgamak krossowkalary, tor, uniseks',
    'Suw geçirmeýän şäher arka torbasy 25 l',
    'Ses basyjyly simsiz gulaklyklar',
    'Zygyr matadan tomusky orta uzynlykdaky köýnek',
    'Poslamaýan polatdan termokürüjka 450 ml',
    'Çagalar üçin konstruktor, 520 bölek',
    'Kapýuşonly güýz-ýaz kurtkasy',
    'Ýürek urgusyny ölçeýän akylly sagat',
    'Aşhana pyçaklarynyň toplumy, 6 sany',
    'Pauerbank 20 000 mA·sag, çalt zarýad',
    'Aýallar üçin pagta pižama',
    'Kosmetika üçin aýna ýaly guraply',
  ];

  static const _prices = [216, 1216, 489, 340, 159, 2450, 870, 1390, 620, 455];
  static const _oldPrices = [260, null, 650, null, 199, null, 990, null, 780];
  static const _sold = [1250, 87, 15400, 3, 999950, 640, 12, 3300, 470];

  static bool _isTk(String languageCode) => languageCode == 'tk';

  static Map<String, dynamic> product(String languageCode, int i) {
    final titles = _isTk(languageCode) ? _titlesTk : _titlesRu;
    final oldPrice = _oldPrices[i % _oldPrices.length];
    return {
      'id': 'p$i',
      'title': titles[i % titles.length],
      'image_url': fakeImageUrl('tmshop$i', 600, 600),
      'price': _prices[i % _prices.length],
      'old_price': ?oldPrice,
      'sold_count': _sold[i % _sold.length],
      'marks': [if (i % 7 == 0) 'hit', if (i % 5 == 3) 'new'],
      'is_illustration': i % 11 == 4,
    };
  }

  static List<Map<String, dynamic>> _products(String lang, int from) => [
    for (var i = from; i < from + 8; i++) product(lang, i),
  ];

  static Map<String, dynamic> home(String lang, {required DateTime now}) {
    final tk = _isTk(lang);
    final midnight = DateTime(now.year, now.month, now.day + 1);
    String t(String ru, String tm) => tk ? tm : ru;

    return {
      'server_time': now.toUtc().toIso8601String(),
      'sections': [
        {
          'type': 'video_stories',
          'stories': [
            for (var i = 0; i < 8; i++)
              {
                'id': 'v$i',
                'title': [
                  t('Новинки', 'Täzeler'),
                  t('Обзор', 'Syn'),
                  t('Распаковка', 'Açyş'),
                  t('Хиты недели', 'Hepdäniň hitleri'),
                  t('Для дома', 'Öý üçin'),
                  t('Детям', 'Çagalara'),
                  t('Мода', 'Moda'),
                  t('Гаджеты', 'Gadžetler'),
                ][i],
                'poster_url': fakeImageUrl('story$i', 300, 300),
                'is_viewed': i > 4,
              },
          ],
        },
        {
          'type': 'banners',
          'banners': [
            for (var i = 0; i < 3; i++)
              {
                'id': 'b$i',
                'image_url': fakeImageUrl('banner$i', 1200, 600),
                'title': t('Акция недели', 'Hepdäniň aksiýasy'),
                'link': {
                  'type': 'promo',
                  'value': const [
                    'black-friday',
                    'day-deal',
                    'gadgets-2-plus-1',
                  ][i],
                },
              },
            // An empty promotion id opens the list of all of them.
            {
              'id': 'b-all',
              'image_url': fakeImageUrl('banner-all', 1200, 600),
              'title': t('Все акции', 'Ähli aksiýalar'),
              'link': {'type': 'promo', 'value': ''},
            },
          ],
        },
        {
          'type': 'paste_link',
          'sources': ['Taobao', '1688', 'Tmall'],
        },
        {
          'type': 'daily_deals',
          'title': t('Скидки дня', 'Günüň arzanladyşlary'),
          'ends_at': midnight.toUtc().toIso8601String(),
          'products': _products(lang, 0),
          // The day's deal is a promotion with its own page.
          'see_all': {'type': 'promo', 'value': 'day-deal'},
        },
        {
          'type': 'categories',
          'title': t('Категории', 'Kategoriýalar'),
          'categories': [
            for (final (i, (ru, tm)) in const [
              ('Одежда', 'Eşikler'),
              ('Обувь', 'Aýakgap'),
              ('Электроника', 'Elektronika'),
              ('Дом и кухня', 'Öý we aşhana'),
              ('Детям', 'Çagalar üçin'),
              ('Красота', 'Gözellik'),
              ('Спорт', 'Sport'),
              ('Авто', 'Awtoulag'),
              ('Сумки', 'Sumkalar'),
            ].indexed)
              {
                'slug': 'cat$i',
                'name': t(ru, tm),
                'icon_url': fakeImageUrl('cat$i', 160, 160),
              },
          ],
        },
        // A type this app version does not know: must be skipped silently.
        {'type': 'live_auction', 'title': 'Auction'},
        {
          'type': 'products',
          'id': 'hits',
          'title': t('Хиты', 'Iň köp satylanlar'),
          'products': _products(lang, 8),
          'see_all': {'type': 'collection', 'value': 'hits'},
        },
        {
          'type': 'banners',
          'banners': [
            {
              'id': 'b-inline',
              'image_url': fakeImageUrl('inline', 1200, 600),
              'title': t('Бесплатная доставка', 'Mugt eltip bermek'),
              'link': {'type': 'promo', 'value': 'free-delivery'},
            },
          ],
        },
        {
          'type': 'products',
          'id': 'new',
          'title': t('Новинки', 'Täzeler'),
          'products': _products(lang, 16),
          'see_all': {'type': 'collection', 'value': 'new'},
        },
        {
          'type': 'products',
          'id': 'recommended',
          'title': t('Рекомендуем', 'Maslahat berýäris'),
          'products': _products(lang, 24),
        },
        {
          'type': 'how_we_work',
          'title': t('Как мы работаем', 'Biz nähili işleýäris'),
          'steps': [
            t('Вы заказываете', 'Siz sargyt edýärsiňiz'),
            t('Мы выкупаем в Китае', 'Biz Hytaýda satyn alýarys'),
            t('Взвешиваем на складе', 'Ammarda agramyny ölçeýäris'),
            t('Доставляем вам', 'Size eltip berýäris'),
          ],
          'delivery': [
            {
              'kind': 'air',
              'name': t('Авиа', 'Howa ýoly'),
              'term': t('2–3 недели', '2–3 hepde'),
            },
            {
              'kind': 'express',
              'name': t('Экспресс', 'Ekspress'),
              'term': t('7–10 дней', '7–10 gün'),
            },
            {
              'kind': 'truck',
              'name': t('Авто', 'Awtoulag'),
              'term': t('4–6 недель', '4–6 hepde'),
            },
          ],
        },
      ],
    };
  }
}
