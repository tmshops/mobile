import 'package:flutter/widgets.dart';

import '../../../../core/dev/fake_image_url.dart';

/// Demo content for the dev-only Kit screen, in both app languages so
/// Turkmen string lengths can be checked. Not used by real screens, so it
/// stays out of the ARB files.
@immutable
class KitSamples {
  const KitSamples._({
    required this.titles,
    required this.hits,
    required this.dailyDeals,
    required this.statuses,
    required this.timeline,
    required this.dates,
    required this.delivery,
    required this.terms,
    required this.deliveryDisabled,
    required this.colorTitle,
    required this.colorNames,
    required this.sizeTitle,
    required this.filters,
    required this.emptyTitle,
    required this.emptyText,
    required this.toast,
    required this.sheetTitle,
    required this.nameLabel,
    required this.nameHint,
    required this.requiredError,
    required this.commentLabel,
    required this.wrongCode,
    required this.banner,
    required this.quickOrder,
  });

  static const ru = KitSamples._(
    titles: [
      'Кроссовки беговые лёгкие, сетка, унисекс',
      'Рюкзак городской водоотталкивающий 25 л',
      'Беспроводные наушники с шумоподавлением',
      'Платье летнее льняное миди',
      'Термокружка из нержавеющей стали 450 мл',
      'Детский конструктор, 520 деталей',
    ],
    hits: 'Хиты',
    dailyDeals: 'Скидки дня',
    statuses: [
      'Оформлен',
      'Оплачен',
      'В пути',
      'Ожидает доплаты',
      'Проблема',
      'Доставлен',
    ],
    timeline: [
      'Заказ оформлен',
      'Оплачен',
      'Выкуплен в Китае',
      'На складе в Китае',
      'В пути',
      'Готов к выдаче',
    ],
    dates: ['2 ноября, 10:14', '2 ноября, 10:20', '4 ноября', '9 ноября'],
    delivery: ['Авиа', 'Экспресс', 'Авто'],
    terms: ['2–3 недели', '7–10 дней', '4–6 недель'],
    deliveryDisabled: 'Недоступно для жидкостей',
    colorTitle: 'Цвет: чёрный',
    colorNames: ['чёрный', 'белый', 'синий', 'красный'],
    sizeTitle: 'Размер',
    filters: ['До 500 TMT', 'С фото', 'Бесплатная доставка', 'Хлопок'],
    emptyTitle: 'В корзине пока пусто',
    emptyText: 'Загляните в каталог — там много интересного',
    toast: 'Товар удалён из корзины',
    sheetTitle: 'Выберите параметры',
    nameLabel: 'Имя',
    nameHint: 'Как к вам обращаться',
    requiredError: 'Заполните поле',
    commentLabel: 'Комментарий для оператора',
    wrongCode: 'Неверный код',
    banner: 'Акция',
    quickOrder: 'Быстрый заказ',
  );

  static const tk = KitSamples._(
    titles: [
      'Ýeňil ylgamak krossowkalary, tor, uniseks',
      'Suw geçirmeýän şäher arka torbasy 25 l',
      'Ses basyjyly simsiz gulaklyklar',
      'Zygyr matadan tomusky orta uzynlykdaky köýnek',
      'Poslamaýan polatdan termokürüjka 450 ml',
      'Çagalar üçin konstruktor, 520 bölek',
    ],
    hits: 'Iň köp satylanlar',
    dailyDeals: 'Günüň arzanladyşlary',
    statuses: [
      'Resmileşdirildi',
      'Tölendi',
      'Ýolda',
      'Goşmaça töleg garaşylýar',
      'Mesele',
      'Gowşuryldy',
    ],
    timeline: [
      'Sargyt resmileşdirildi',
      'Tölendi',
      'Hytaýda satyn alyndy',
      'Hytaýdaky ammarda',
      'Ýolda',
      'Almaga taýýar',
    ],
    dates: [
      '2-nji noýabr, 10:14',
      '2-nji noýabr, 10:20',
      '4-nji noýabr',
      '9-njy noýabr',
    ],
    delivery: ['Howa ýoly', 'Ekspress', 'Awtoulag'],
    terms: ['2–3 hepde', '7–10 gün', '4–6 hepde'],
    deliveryDisabled: 'Suwuklyklar üçin elýeterli däl',
    colorTitle: 'Reňki: gara',
    colorNames: ['gara', 'ak', 'gök', 'gyzyl'],
    sizeTitle: 'Ölçegi',
    filters: ['500 TMT çenli', 'Suratly', 'Mugt eltip bermek', 'Pagta'],
    emptyTitle: 'Sebediňiz häzirlikçe boş',
    emptyText: 'Kataloga göz aýlaň — ol ýerde gyzykly zatlar köp',
    toast: 'Haryt sebetden aýryldy',
    sheetTitle: 'Görnüşini saýlaň',
    nameLabel: 'Adyňyz',
    nameHint: 'Size nähili ýüzlenmeli',
    requiredError: 'Meýdançany dolduryň',
    commentLabel: 'Operator üçin teswir',
    wrongCode: 'Nädogry kod',
    banner: 'Aksiýa',
    quickOrder: 'Çalt sargyt',
  );

  static KitSamples of(BuildContext context) =>
      Localizations.localeOf(context).languageCode == 'tk' ? tk : ru;

  /// Stable placeholder photos for the demo tiles.
  static String image(int i, {int size = 600}) =>
      fakeImageUrl('tmshop$i', size);

  final List<String> titles;
  final String hits;
  final String dailyDeals;
  final List<String> statuses;
  final List<String> timeline;
  final List<String> dates;
  final List<String> delivery;
  final List<String> terms;
  final String deliveryDisabled;
  final String colorTitle;
  final List<String> colorNames;
  final String sizeTitle;
  final List<String> filters;
  final String emptyTitle;
  final String emptyText;
  final String toast;
  final String sheetTitle;
  final String nameLabel;
  final String nameHint;
  final String requiredError;
  final String commentLabel;
  final String wrongCode;
  final String banner;
  final String quickOrder;
}
