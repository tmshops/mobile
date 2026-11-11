// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appName => 'TM Shop';

  @override
  String get comingSoon => 'Этот раздел скоро появится';

  @override
  String get offlineTitle => 'Нет соединения';

  @override
  String get offlineMessage =>
      'Проверьте интернет — мы обновим страницу, как только связь появится';

  @override
  String get catalogAllProducts => 'Все товары';

  @override
  String get catalogFilters => 'Фильтры';

  @override
  String catalogFiltersActive(int count) {
    return 'Фильтры, выбрано: $count';
  }

  @override
  String get catalogSortTitle => 'Сортировка';

  @override
  String get catalogViewGrid => 'Показать плиткой';

  @override
  String get catalogViewList => 'Показать списком';

  @override
  String catalogProductCount(int count, String formatted) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$formatted товаров',
      few: '$formatted товара',
      one: '$formatted товар',
    );
    return '$_temp0';
  }

  @override
  String get catalogClearFilters => 'Сбросить все';

  @override
  String get catalogEmptyFilteredTitle => 'Ничего не нашлось';

  @override
  String get catalogEmptyFilteredText => 'Попробуйте убрать часть фильтров';

  @override
  String get catalogEmptyTitle => 'Здесь пока пусто';

  @override
  String get catalogEmptyText => 'В этой категории скоро появятся товары';

  @override
  String get catalogNotFoundTitle => 'Категория не найдена';

  @override
  String get catalogNotFoundText =>
      'Возможно, она переехала. Загляните в каталог';

  @override
  String get listLoadMoreError => 'Не удалось загрузить ещё';

  @override
  String get sortPopular => 'Популярные';

  @override
  String get sortPriceAsc => 'Сначала дешёвые';

  @override
  String get sortPriceDesc => 'Сначала дорогие';

  @override
  String get sortNewest => 'Новинки';

  @override
  String get sortRating => 'С высоким рейтингом';

  @override
  String get sortSales => 'Хиты продаж';

  @override
  String filtersShow(int count, String formatted) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Показать $formatted товаров',
      few: 'Показать $formatted товара',
      one: 'Показать $formatted товар',
    );
    return '$_temp0';
  }

  @override
  String get filtersApply => 'Показать товары';

  @override
  String get filtersNothing => 'Ничего не найдено';

  @override
  String get filtersReset => 'Сбросить';

  @override
  String get filtersPriceFrom => 'От';

  @override
  String get filtersPriceTo => 'До';

  @override
  String filtersShowAll(int count) {
    return 'Показать все ($count)';
  }

  @override
  String get filtersShowLess => 'Свернуть';

  @override
  String get filtersSearch => 'Найти';

  @override
  String filtersSelected(int count) {
    return 'Выбрано: $count';
  }

  @override
  String filtersOption(String label, int count) {
    return '$label · $count';
  }

  @override
  String priceRangeChip(String min, String max) {
    return '$min–$max TMT';
  }

  @override
  String priceFromChip(String min) {
    return 'от $min TMT';
  }

  @override
  String priceToChip(String max) {
    return 'до $max TMT';
  }

  @override
  String get actionBack => 'Назад';

  @override
  String get actionGoTo => 'Перейти';

  @override
  String get actionShowMore => 'Ещё';

  @override
  String get actionShowLess => 'Свернуть';

  @override
  String get regionTitle => 'Регион доставки';

  @override
  String get regionChange => 'Сменить регион доставки';

  @override
  String galleryCounter(int current, int total) {
    return '$current/$total';
  }

  @override
  String ratingSpoken(String rating) {
    return 'Рейтинг $rating из 5';
  }

  @override
  String reviewCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count отзывов',
      few: '$count отзыва',
      one: '$count отзыв',
    );
    return '$_temp0';
  }

  @override
  String get productPriceDepends => 'Цена зависит от варианта';

  @override
  String productTier(int quantity, String price) {
    return 'от $quantity шт — $price';
  }

  @override
  String productInStock(int count) {
    return 'В наличии: $count шт';
  }

  @override
  String productFewLeft(int count) {
    return 'Осталось $count шт';
  }

  @override
  String get productOutOfStock => 'Нет в наличии';

  @override
  String get productUnavailableText =>
      'Этот товар больше не продаётся. Посмотрите похожие ниже';

  @override
  String get productNotFoundTitle => 'Товар не найден';

  @override
  String get productNotFoundText => 'Возможно, ссылка устарела';

  @override
  String productSelectOption(String option) {
    return 'Выберите: $option';
  }

  @override
  String get productQuantity => 'Количество';

  @override
  String get productComment => 'Комментарий для оператора';

  @override
  String get productCommentHint => 'Например: проверьте цвет перед выкупом';

  @override
  String get productDelivery => 'Доставка';

  @override
  String get productDeliveryError => 'Не удалось рассчитать доставку';

  @override
  String get productHowTitle => 'Как это работает';

  @override
  String get productHowBuy =>
      'Товар выкупается под ваш заказ — обычно за 1–2 дня';

  @override
  String get productHowCancel => 'Отменить заказ можно только до выкупа';

  @override
  String get productHowWeight =>
      'Точный вес и цена доставки станут известны на складе в Китае';

  @override
  String get productDescription => 'Описание';

  @override
  String get productShowAll => 'Показать полностью';

  @override
  String get productSpecs => 'Характеристики';

  @override
  String get productSeller => 'Продавец';

  @override
  String productSellerStats(String rating, String sales) {
    return '★ $rating · $sales продаж';
  }

  @override
  String get productSellerAll => 'Все товары продавца';

  @override
  String get productReviews => 'Отзывы';

  @override
  String get productAllReviews => 'Все отзывы';

  @override
  String get productTranslated => 'Переведено с китайского';

  @override
  String get productSimilar => 'Похожие товары';

  @override
  String get productBoughtTogether => 'С этим покупают';

  @override
  String get productQuickOrder => 'Быстрый заказ';

  @override
  String get productFindSimilar => 'Найти похожие';

  @override
  String get productPriceAlert => 'Сообщить о снижении цены';

  @override
  String get productAdded => 'Добавлено в корзину';

  @override
  String get productVideo => 'Видео';

  @override
  String get cartSelectAll => 'Выбрать все';

  @override
  String cartSelectedCount(int selected, int total) {
    return 'Выбрано: $selected из $total';
  }

  @override
  String get cartOtherSeller => 'Другие товары';

  @override
  String cartChinaDelivery(String amount) {
    return 'Доставка по Китаю: $amount';
  }

  @override
  String get cartChinaDeliveryPending => 'Доставка по Китаю рассчитывается';

  @override
  String cartPriceChanged(String oldPrice, String newPrice) {
    return 'Цена изменилась: $oldPrice → $newPrice';
  }

  @override
  String get cartUnavailable => 'Нет в наличии — не попадёт в заказ';

  @override
  String get cartRemoved => 'Товар удалён из корзины';

  @override
  String cartSelectLine(String title) {
    return 'Выбрать для заказа: $title';
  }

  @override
  String get cartChangeVariant => 'Изменить вариант';

  @override
  String get cartSaveVariant => 'Сохранить';

  @override
  String get cartVariantGone => 'Этот товар больше не продаётся';

  @override
  String get cartPromo => 'Промокод';

  @override
  String get cartPromoHint => 'Введите промокод';

  @override
  String get cartPromoApply => 'Применить';

  @override
  String cartPromoApplied(String code) {
    return 'Промокод $code применён';
  }

  @override
  String get cartCheckout => 'Оформить';

  @override
  String get cartNothingSelected => 'Отметьте товары для заказа';

  @override
  String get cartEmptyTitle => 'В корзине пока пусто';

  @override
  String get cartEmptyText => 'Добавьте товары с главной или из каталога';

  @override
  String get cartQuoteError => 'Не удалось пересчитать итог';

  @override
  String get cartBreakdownTitle => 'Сумма заказа';

  @override
  String get homeNotifications => 'Уведомления';

  @override
  String get homeLanguageSwitch => 'Сменить язык';

  @override
  String homeStoryNew(String title) {
    return 'Новое видео: $title';
  }

  @override
  String get homePasteLinkTitle => 'Вставьте ссылку на товар';

  @override
  String homePasteLinkHint(String sources) {
    return '$sources — найдём товар и посчитаем цену';
  }

  @override
  String get homeAllCategories => 'Все категории';

  @override
  String get homeDeliveryTerms => 'Сроки доставки';

  @override
  String get homeForYou => 'Для вас';

  @override
  String get homeForYouError => 'Не удалось загрузить товары';

  @override
  String get homeEmptyTitle => 'Витрина скоро наполнится';

  @override
  String get homeEmptyText => 'Загляните в каталог — там уже есть товары';

  @override
  String get homeRefreshFailed => 'Не удалось обновить главную';

  @override
  String get tabHome => 'Главная';

  @override
  String get tabCatalog => 'Каталог';

  @override
  String get tabCart => 'Корзина';

  @override
  String get tabFavourites => 'Избранное';

  @override
  String get tabProfile => 'Профиль';

  @override
  String navCartCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count товаров',
      few: '$count товара',
      one: '$count товар',
    );
    return '$_temp0';
  }

  @override
  String get navUnread => 'есть непрочитанные уведомления';

  @override
  String navTabSemantics(String tab, String state) {
    return '$tab, $state';
  }

  @override
  String get actionAddToCart => 'В корзину';

  @override
  String get actionBuyNow => 'Купить сейчас';

  @override
  String get actionNext => 'Далее';

  @override
  String get actionCancel => 'Отмена';

  @override
  String get actionRetry => 'Повторить';

  @override
  String get actionUndo => 'Отменить';

  @override
  String get actionSeeAll => 'Все';

  @override
  String get actionGoToCatalog => 'В каталог';

  @override
  String get actionClose => 'Закрыть';

  @override
  String get actionShare => 'Поделиться';

  @override
  String get actionRemove => 'Удалить';

  @override
  String get loading => 'Загрузка';

  @override
  String priceTmt(String amount) {
    return '$amount TMT';
  }

  @override
  String priceMinusTmt(String amount) {
    return '−$amount TMT';
  }

  @override
  String priceSpoken(int amount) {
    String _temp0 = intl.Intl.pluralLogic(
      amount,
      locale: localeName,
      other: '$amount манатов',
      few: '$amount маната',
      one: '$amount манат',
    );
    return '$_temp0';
  }

  @override
  String priceWithOldSpoken(String price, String oldPrice) {
    return '$price, было $oldPrice';
  }

  @override
  String discountPercent(int percent) {
    return '−$percent%';
  }

  @override
  String get badgeHit => 'Хит';

  @override
  String get badgeNew => 'Новинка';

  @override
  String get badgeIllustration => 'иллюстрация';

  @override
  String productSold(String count) {
    return 'продано $count';
  }

  @override
  String compactThousands(String value) {
    return '$value тыс.';
  }

  @override
  String compactMillions(String value) {
    return '$value млн';
  }

  @override
  String get favouriteAdd => 'Добавить в избранное';

  @override
  String get favouriteRemove => 'Убрать из избранного';

  @override
  String get quantityDecrease => 'Уменьшить количество';

  @override
  String get quantityIncrease => 'Увеличить количество';

  @override
  String get skuSizeChart => 'Размерная сетка';

  @override
  String skuUnavailable(String option) {
    return '$option — нет в наличии';
  }

  @override
  String get searchHint => 'Искать товары';

  @override
  String get searchByPhoto => 'Поиск по фото';

  @override
  String get phoneLabel => 'Номер телефона';

  @override
  String get otpLabel => 'Код из СМС';

  @override
  String get deliveryAfterWeighing => 'уточнится после взвешивания';

  @override
  String get deliveryAfterWeighingInfo =>
      'Точный вес станет известен, когда товар приедет на наш склад в Китае. Мы пересчитаем доставку и сообщим вам.';

  @override
  String get moneyItems => 'Товары';

  @override
  String get moneyChinaDelivery => 'Доставка по Китаю';

  @override
  String get moneyInternationalDelivery => 'Международная доставка';

  @override
  String get moneyDiscount => 'Скидка';

  @override
  String get moneyTotal => 'Итого';

  @override
  String totalSpoken(String amount) {
    return 'Итого: $amount';
  }

  @override
  String progressToMinimum(String amount) {
    return 'Добавьте товаров ещё на $amount';
  }

  @override
  String get progressMinimumReached => 'Минимальная сумма заказа набрана';

  @override
  String countdownWithDays(int days, String time) {
    return '$days д $time';
  }

  @override
  String get offlineBanner => 'Нет соединения с интернетом';

  @override
  String get errorGenericTitle => 'Что-то пошло не так';

  @override
  String get errorGenericMessage => 'Проверьте интернет и попробуйте ещё раз';
}
