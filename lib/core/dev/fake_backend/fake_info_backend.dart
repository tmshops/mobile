import 'package:injectable/injectable.dart';

/// Dev stand-in for GET /info/{slug} (TZ §5.19): server-written pages in
/// RU and TK. Tariffs and pickup points match the checkout fake.
@LazySingleton(env: [Environment.dev])
class FakeInfoBackend {
  /// `null` for an unknown page (the server's 404).
  Map<String, dynamic>? page(String lang, String slug) {
    final tk = lang == 'tk';
    String t(String ru, String tm) => tk ? tm : ru;
    return switch (slug) {
      'about' => _article(t('О нас', 'Biz barada'), t(_aboutRu, _aboutTk)),
      'returns' => _article(
        t('Возврат и обмен', 'Yzyna gaýtarmak we çalyşmak'),
        t(_returnsRu, _returnsTk),
      ),
      'offer' => _article(
        t('Публичная оферта', 'Köpçülikleýin teklip'),
        t(_offerRu, _offerTk),
      ),
      'privacy' => _article(
        t('Политика конфиденциальности', 'Gizlinlik syýasaty'),
        t(_privacyRu, _privacyTk),
      ),
      'delivery' => _delivery(t),
      'faq' => _faq(t),
      'pickup-points' => _pickupPoints(t),
      'contacts' => {
        'phones': ['+993 12 00 00 00', '+993 65 00 00 00'],
        'address': t(
          'Ашхабад, ул. Битарап Туркменистан, 18',
          'Aşgabat, Bitarap Türkmenistan köç., 18',
        ),
        'hours': t(
          'Пн–Сб 9:00–19:00, Вс — выходной',
          'Db–Şb 9:00–19:00, Ýb — dynç güni',
        ),
        'telegram': 'https://t.me/tmshop_support',
        'whatsapp': 'https://wa.me/99312000000',
        'email': 'support@tmshop.tm',
      },
      _ => null,
    };
  }

  static Map<String, dynamic> _article(String title, String html) => {
    'title': title,
    'html': html,
  };

  static const _perKg = {'express': 30, 'air': 18, 'truck': 9};
  static const _regions = [
    ('Ашхабад', 'Aşgabat', 1.0),
    ('Ахалский велаят', 'Ahal welaýaty', 1.3),
    ('Балканский велаят', 'Balkan welaýaty', 1.3),
    ('Дашогузский велаят', 'Daşoguz welaýaty', 1.3),
    ('Лебапский велаят', 'Lebap welaýaty', 1.3),
    ('Марыйский велаят', 'Mary welaýaty', 1.3),
  ];

  static Map<String, dynamic> _delivery(String Function(String, String) t) => {
    'types': [
      {
        'type': 'express',
        'name': t('Экспресс', 'Ekspress'),
        'term': t('7–10 дней', '7–10 gün'),
        'min_weight': t('от 0,5 кг', '0,5 kg-dan'),
      },
      {
        'type': 'air',
        'name': t('Авиа', 'Awia'),
        'term': t('12–18 дней', '12–18 gün'),
        'min_weight': t('от 1 кг', '1 kg-dan'),
      },
      {
        'type': 'truck',
        'name': t('Авто', 'Awtoulag'),
        'term': t('25–35 дней', '25–35 gün'),
        'min_weight': t('от 5 кг', '5 kg-dan'),
      },
    ],
    'tariffs': [
      for (final (ru, tm, factor) in _regions)
        {
          'region': t(ru, tm),
          'per_kg': {
            for (final e in _perKg.entries)
              // No trucks to Balkan: the table shows a dash.
              if (!(e.key == 'truck' && ru.startsWith('Балкан')))
                e.key: (e.value * factor).ceil(),
          },
        },
    ],
    'html': t(_paymentRu, _paymentTk),
  };

  static Map<String, dynamic> _faq(String Function(String, String) t) => {
    'sections': [
      {
        'title': t('Заказ', 'Sargyt'),
        'items': [
          {
            'id': 'how-order',
            'question': t('Как сделать заказ?', 'Sargydy nädip etmeli?'),
            'answer': t(
              '<p>Выберите товар, размер и цвет, добавьте в корзину и '
                  'оформите заказ. Мы выкупим его у продавца в Китае.</p>',
              '<p>Harydy, ölçegi we reňki saýlaň, sebede goşuň we '
                  'sargyt ediň. Biz ony Hytaýdaky satyjydan satyn alarys.</p>',
            ),
          },
          {
            'id': 'cancel',
            'question': t(
              'Можно ли отменить заказ?',
              'Sargydy ýatyryp bolýarmy?',
            ),
            'answer': t(
              '<p>Да, пока товар не выкуплен. После выкупа отмена '
                  'невозможна — продавец уже отправляет его на склад.</p>',
              '<p>Hawa, haryt satyn alynýança. Satyn alnandan soň '
                  'ýatyryp bolmaýar — satyjy ony eýýäm ammara iberýär.</p>',
            ),
          },
          {
            'id': 'link',
            'question': t(
              'Можно ли заказать по ссылке с Taobao?',
              'Taobao salgysy boýunça sargyt edip bolýarmy?',
            ),
            'answer': t(
              '<p>Да. Вставьте ссылку в поиск — приложение откроет '
                  'товар с ценой в манатах.</p>',
              '<p>Hawa. Salgyny gözlege goýuň — programma harydy '
                  'manatdaky bahasy bilen açar.</p>',
            ),
          },
        ],
      },
      {
        'title': t('Доставка', 'Eltip bermek'),
        'items': [
          {
            'id': 'weight',
            'question': t(
              'Почему доставка «уточнится после взвешивания»?',
              'Näme üçin eltip bermek «agramy çekilenden soň anyklanar»?',
            ),
            'answer': t(
              '<p>Точный вес становится известен на нашем складе в '
                  'Китае. Если он больше оценки, придёт доплата; если '
                  'меньше — разница вернётся на баланс.</p>',
              '<p>Takyk agramy Hytaýdaky ammarymyzda belli bolýar. '
                  'Çaklamadan köp bolsa, goşmaça töleg geler; az bolsa — '
                  'tapawudy balansa gaýdyp geler.</p>',
            ),
          },
          {
            'id': 'term',
            'question': t('Сколько ждать заказ?', 'Sargyda näçe garaşmaly?'),
            'answer': t(
              '<p>Экспресс — 7–10 дней, авиа — 12–18 дней, авто — '
                  '25–35 дней после прихода товара на склад.</p>',
              '<p>Ekspress — 7–10 gün, awia — 12–18 gün, awtoulag — '
                  'haryt ammara gelenden soň 25–35 gün.</p>',
            ),
          },
        ],
      },
      {
        'title': t('Оплата и возврат', 'Töleg we yzyna gaýtarmak'),
        'items': [
          {
            'id': 'pay',
            'question': t('Как оплатить?', 'Nädip tölemeli?'),
            'answer': t(
              '<p>Картой в приложении или наличными в офисе. Можно '
                  'списать часть суммы с баланса.</p>',
              '<p>Programmada kart bilen ýa-da ofisde nagt. Möçberiň '
                  'bir bölegini balansdan hem tölemek bolýar.</p>',
            ),
          },
          {
            'id': 'refund',
            'question': t(
              'Как вернуть бракованный товар?',
              'Kemçilikli harydy nädip yzyna gaýtarmaly?',
            ),
            'answer': t(
              '<p>Откройте заказ и нажмите «Претензия» в течение 3 дней '
                  'после получения. Приложите фото.</p>',
              '<p>Sargydy açyň we alnandan soň 3 günüň dowamynda '
                  '«Talap» düwmesine basyň. Surat goşuň.</p>',
            ),
          },
        ],
      },
    ],
  };

  static Map<String, dynamic> _pickupPoints(
    String Function(String, String) t,
  ) => {
    'points': [
      {
        'id': 'ash-1',
        'region': t('Ашхабад', 'Aşgabat'),
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
        'region': t('Ашхабад', 'Aşgabat'),
        'name': t('Пункт выдачи №2', '2-nji bermek nokady'),
        'address': t('мкр. Мир-2, д. 7', 'Parahat-2, 7-nji jaý'),
        'hours': t('Ежедневно 10:00–20:00', 'Her gün 10:00–20:00'),
        'phone': '+993 12 00 00 02',
      },
      for (final (id, ru, tm) in const [
        ('mary', 'Марыйский велаят', 'Mary welaýaty'),
        ('lebap', 'Лебапский велаят', 'Lebap welaýaty'),
        ('dashoguz', 'Дашогузский велаят', 'Daşoguz welaýaty'),
      ])
        {
          'id': '$id-1',
          'region': t(ru, tm),
          'name': t('Пункт выдачи', 'Bermek nokady'),
          'address': t(
            'Центральный рынок, павильон 3',
            'Merkezi bazar, 3-nji paviliýon',
          ),
          'hours': t('Пн–Сб 9:00–18:00', 'Db–Şb 9:00–18:00'),
          'phone': '+993 00 00 00 03',
        },
    ],
  };

  static const _aboutRu = '''
<p>TM Shop — товары с Taobao, 1688 и Tmall с доставкой по всему Туркменистану.</p>
<h2>Как мы работаем</h2>
<ol>
<li>Вы выбираете товар и оплачиваете заказ.</li>
<li>Мы выкупаем его у продавца в Китае.</li>
<li>Товар приезжает на наш склад, мы его взвешиваем и фотографируем.</li>
<li>Посылка летит или едет в ваш город.</li>
</ol>
<h2>Почему нам доверяют</h2>
<p>Мы показываем каждый шаг: фото со склада, вес и статус посылки. Цены — только в манатах, без скрытых комиссий.</p>
''';

  static const _aboutTk = '''
<p>TM Shop — Taobao, 1688 we Tmall harytlary bütin Türkmenistan boýunça eltip bermek bilen.</p>
<h2>Biz nähili işleýäris</h2>
<ol>
<li>Siz harydy saýlaýarsyňyz we sargydy töleýärsiňiz.</li>
<li>Biz ony Hytaýdaky satyjydan satyn alýarys.</li>
<li>Haryt ammarymyza gelýär, biz ony çekýäris we suratyny alýarys.</li>
<li>Bukja siziň şäheriňize uçýar ýa-da gelýär.</li>
</ol>
<h2>Näme üçin bize ynanýarlar</h2>
<p>Her ädimi görkezýäris: ammardan surat, agram we bukjanyň ýagdaýy. Bahalar diňe manatda, gizlin tölegsiz.</p>
''';

  static const _returnsRu = '''
<p>Товар куплен под заказ, поэтому вернуть его можно только в случаях ниже.</p>
<h2>Когда мы примем возврат</h2>
<table>
<tr><th>Причина</th><th>Срок</th></tr>
<tr><td>Брак</td><td>3 дня после получения</td></tr>
<tr><td>Не тот товар</td><td>3 дня после получения</td></tr>
<tr><td>Недокомплект</td><td>3 дня после получения</td></tr>
</table>
<h2>Как оформить</h2>
<p>Откройте заказ, выберите товар и нажмите «Претензия». Приложите фото или видео — так решение будет быстрее.</p>
<h2>Куда вернутся деньги</h2>
<p>На баланс в приложении, на карту или наличными в офисе — по вашему выбору.</p>
''';

  static const _returnsTk = '''
<p>Haryt sargyt boýunça satyn alynýar, şonuň üçin ony diňe aşakdaky ýagdaýlarda yzyna gaýtaryp bolýar.</p>
<h2>Haçan yzyna kabul edýäris</h2>
<table>
<tr><th>Sebäbi</th><th>Möhleti</th></tr>
<tr><td>Kemçilik</td><td>Alnandan soň 3 gün</td></tr>
<tr><td>Başga haryt</td><td>Alnandan soň 3 gün</td></tr>
<tr><td>Doly däl</td><td>Alnandan soň 3 gün</td></tr>
</table>
<h2>Nädip resmileşdirmeli</h2>
<p>Sargydy açyň, harydy saýlaň we «Talap» düwmesine basyň. Surat ýa-da wideo goşuň — şeýle çözgüt çaltrak bolar.</p>
<h2>Pul nirä gaýdyp geler</h2>
<p>Programmadaky balansa, karta ýa-da ofisde nagt — siziň saýlawyňyz boýunça.</p>
''';

  static const _offerRu = '''
<p>Настоящая оферта — предложение TM Shop заключить договор поручения на выкуп и доставку товаров из Китая.</p>
<h2>1. Предмет договора</h2>
<p>Магазин по поручению покупателя выкупает товар у продавца в Китае и доставляет его покупателю.</p>
<h2>2. Цена и оплата</h2>
<p>Цена товара указывается в манатах. Международная доставка рассчитывается по весу после взвешивания на складе.</p>
<h2>3. Отмена</h2>
<p>Покупатель может отменить заказ до выкупа товара. После выкупа отмена невозможна.</p>
''';

  static const _offerTk = '''
<p>Bu teklip — TM Shop-yň Hytaýdan harytlary satyn almak we eltip bermek boýunça tabşyryk şertnamasyny baglaşmak teklibi.</p>
<h2>1. Şertnamanyň mazmuny</h2>
<p>Dükan alyjynyň tabşyrygy boýunça harydy Hytaýdaky satyjydan satyn alýar we alyja eltip berýär.</p>
<h2>2. Baha we töleg</h2>
<p>Harydyň bahasy manatda görkezilýär. Halkara eltip bermek ammarda çekilenden soň agramy boýunça hasaplanýar.</p>
<h2>3. Ýatyrmak</h2>
<p>Alyjy sargydy haryt satyn alynýança ýatyryp biler. Satyn alnandan soň ýatyryp bolmaýar.</p>
''';

  static const _privacyRu = '''
<p>Мы бережно относимся к вашим данным и используем их только для выполнения заказов.</p>
<h2>Какие данные мы храним</h2>
<ul>
<li>Имя и номер телефона — для связи и выдачи заказа.</li>
<li>Адрес доставки — для курьера.</li>
<li>История заказов — чтобы вы видели их в приложении.</li>
</ul>
<h2>Кому мы их передаём</h2>
<p>Никому, кроме курьерской службы и банка-эквайера, — и только то, что нужно для доставки и оплаты.</p>
<h2>Удаление</h2>
<p>Удалить аккаунт и данные можно в «Настройках» приложения.</p>
''';

  static const _privacyTk = '''
<p>Biz siziň maglumatlaryňyza aýawly çemeleşýäris we olary diňe sargytlary ýerine ýetirmek üçin ulanýarys.</p>
<h2>Haýsy maglumatlary saklaýarys</h2>
<ul>
<li>Ady we telefon belgisi — habarlaşmak we sargydy bermek üçin.</li>
<li>Eltip bermek salgysy — kurýer üçin.</li>
<li>Sargytlaryň taryhy — olary programmada görmegiňiz üçin.</li>
</ul>
<h2>Kime berýäris</h2>
<p>Kurýer gullugyndan we ekwaýring bankyndan başga hiç kime — we diňe eltip bermek we töleg üçin gerek bolanyny.</p>
<h2>Pozmak</h2>
<p>Hasaby we maglumatlary programmanyň «Sazlamalar» bölüminde pozup bolýar.</p>
''';

  static const _paymentRu = '''
<h2>Оплата</h2>
<ul>
<li><b>Картой</b> в приложении — сразу после оформления.</li>
<li><b>Наличными</b> в офисе — заказ выкупим после оплаты.</li>
<li><b>С баланса</b> — целиком или частично.</li>
</ul>
<p>Товары и доставку по Китаю вы оплачиваете при оформлении. Международную доставку — при получении, когда известен точный вес.</p>
<h2>Минимальный вес</h2>
<p>Если посылка легче минимального веса способа доставки, доставка считается по минимальному весу.</p>
''';

  static const _paymentTk = '''
<h2>Töleg</h2>
<ul>
<li><b>Kart bilen</b> programmada — resmileşdirilenden soň.</li>
<li><b>Nagt</b> ofisde — tölegden soň harydy satyn alarys.</li>
<li><b>Balansdan</b> — doly ýa-da bölekleýin.</li>
</ul>
<p>Harytlary we Hytaý boýunça eltip bermegi resmileşdireniňizde töleýärsiňiz. Halkara eltip bermegi — takyk agramy belli bolanda, alanyňyzda.</p>
<h2>Iň az agram</h2>
<p>Bukja eltip bermek usulynyň iň az agramyndan ýeňil bolsa, eltip bermek iň az agram boýunça hasaplanýar.</p>
''';
}
