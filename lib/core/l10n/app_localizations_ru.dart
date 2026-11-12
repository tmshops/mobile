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
  String get checkoutTitle => 'Оформление заказа';

  @override
  String get checkoutRecipient => 'Получатель';

  @override
  String get checkoutFirstName => 'Имя';

  @override
  String get checkoutLastName => 'Фамилия';

  @override
  String get checkoutEdit => 'Изменить';

  @override
  String get checkoutRecipientError => 'Укажите имя, фамилию и телефон';

  @override
  String get checkoutReceiving => 'Получение';

  @override
  String get checkoutCourier => 'Курьер';

  @override
  String get checkoutPickup => 'Самовывоз';

  @override
  String checkoutCourierPrice(String price) {
    return 'Курьер: $price';
  }

  @override
  String checkoutCourierFree(String amount) {
    return 'бесплатно от $amount';
  }

  @override
  String get checkoutStreet => 'Улица и дом';

  @override
  String get checkoutAddressDetails => 'Квартира / ориентир';

  @override
  String get checkoutAddressError => 'Укажите улицу и дом';

  @override
  String get checkoutPickupError => 'Выберите пункт выдачи';

  @override
  String get checkoutDeliveryType => 'Тип доставки';

  @override
  String get checkoutDeliveryError => 'Нет доступного способа доставки';

  @override
  String get checkoutServices => 'Дополнительные услуги';

  @override
  String get checkoutComment => 'Комментарий к заказу';

  @override
  String get checkoutPayment => 'Оплата';

  @override
  String get checkoutPayCard => 'Картой онлайн';

  @override
  String get checkoutPayCardText => 'Через страницу банка';

  @override
  String get checkoutPayCash => 'Наличными в офисе';

  @override
  String get checkoutPayCashText => 'Оплатите до выкупа товара';

  @override
  String checkoutAdvance(String now, String later) {
    return 'Сейчас $now, остаток $later — до выдачи, после взвешивания';
  }

  @override
  String get checkoutTotal => 'Итог';

  @override
  String get moneyCourier => 'Курьер';

  @override
  String get moneyServices => 'Доп. услуги';

  @override
  String get checkoutConsent =>
      'Я согласен с офертой и понимаю: товар выкупается под заказ, отменить можно только до выкупа';

  @override
  String get checkoutReadOffer => 'Читать оферту';

  @override
  String get checkoutConsentError => 'Подтвердите согласие';

  @override
  String checkoutPay(String amount) {
    return 'Оплатить $amount';
  }

  @override
  String get checkoutPlace => 'Оформить заказ';

  @override
  String checkoutConfirmNew(String amount) {
    return 'Подтвердить $amount';
  }

  @override
  String get checkoutPriceChanged =>
      'Итог изменился, пока вы оформляли заказ. Проверьте новую сумму';

  @override
  String get checkoutPreviewError => 'Не удалось рассчитать заказ';

  @override
  String get checkoutSubmitError =>
      'Не удалось оформить заказ. Попробуйте ещё раз';

  @override
  String get paymentChecking => 'Проверяем оплату…';

  @override
  String get paymentCheckingText => 'Это займёт до минуты. Не закрывайте экран';

  @override
  String get paymentSuccessTitle => 'Заказ оформлен';

  @override
  String paymentOrderNumber(String number) {
    return 'Заказ №$number';
  }

  @override
  String get paymentNextStep =>
      'Мы выкупим товар в течение 1–2 дней и сообщим о каждом шаге';

  @override
  String get paymentCashNext =>
      'Оплатите заказ в офисе — после оплаты мы выкупим товар';

  @override
  String paymentPaid(String amount) {
    return 'Оплачено $amount';
  }

  @override
  String paymentDue(String amount) {
    return 'К оплате в офисе $amount';
  }

  @override
  String get paymentToOrder => 'К заказу';

  @override
  String get paymentToHome => 'На главную';

  @override
  String get paymentFailedTitle => 'Оплата не прошла';

  @override
  String get paymentFailedText => 'Заказ сохранён и ждёт оплаты';

  @override
  String get paymentRetry => 'Повторить оплату';

  @override
  String get paymentTimeout =>
      'Банк пока не ответил. Если деньги списались, заказ обновится сам';

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

  @override
  String dateDayMonth(String day, String ending, String month) {
    String _temp0 = intl.Intl.selectLogic(month, {
      'jan': 'января',
      'feb': 'февраля',
      'mar': 'марта',
      'apr': 'апреля',
      'may': 'мая',
      'jun': 'июня',
      'jul': 'июля',
      'aug': 'августа',
      'sep': 'сентября',
      'oct': 'октября',
      'nov': 'ноября',
      'dec': 'декабря',
      'other': '',
    });
    String _temp1 = intl.Intl.selectLogic(ending, {'other': ''});
    return '$day $_temp0$_temp1';
  }

  @override
  String dateDayMonthTime(String date, String time) {
    return '$date, $time';
  }

  @override
  String dateRangeSameMonth(String from, String to) {
    return '$from–$to';
  }

  @override
  String dateRange(String from, String to) {
    return '$from – $to';
  }

  @override
  String get loginTitle => 'Вход';

  @override
  String get loginSubtitle => 'Введите номер — пришлём код для входа';

  @override
  String get loginPhoneError => 'Введите номер полностью: 8 цифр';

  @override
  String get loginConsent =>
      'Я соглашаюсь с политикой конфиденциальности и обработкой персональных данных';

  @override
  String get loginConsentError => 'Подтвердите согласие';

  @override
  String get loginReadPolicy => 'Читать политику';

  @override
  String get loginGetCode => 'Получить код';

  @override
  String get loginOr => 'или';

  @override
  String get loginGoogle => 'Войти через Google';

  @override
  String get loginCodeTitle => 'Введите код';

  @override
  String loginCodeSent(String channel, String destination) {
    String _temp0 = intl.Intl.selectLogic(channel, {
      'telegram': 'Код отправлен в Telegram: $destination',
      'email': 'Код отправлен на почту $destination',
      'other': 'Код отправлен в SMS на $destination',
    });
    return '$_temp0';
  }

  @override
  String loginResendIn(String time) {
    return 'Отправить снова через $time';
  }

  @override
  String get loginResend => 'Отправить код снова';

  @override
  String get loginChangePhone => 'Изменить номер';

  @override
  String get loginBlockedTitle => 'Аккаунт заблокирован';

  @override
  String get ordersTitle => 'Мои заказы';

  @override
  String get ordersTabActive => 'Активные';

  @override
  String get ordersTabCompleted => 'Завершённые';

  @override
  String get ordersTabCancelled => 'Отменённые';

  @override
  String get ordersEmptyActive => 'Активных заказов нет';

  @override
  String get ordersEmptyActiveText =>
      'Найдите что-нибудь в каталоге — мы выкупим и доставим';

  @override
  String get ordersEmptyCompleted => 'Завершённых заказов пока нет';

  @override
  String get ordersEmptyCancelled => 'Отменённых заказов нет';

  @override
  String ordersItemCount(int count) {
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
  String ordersMoreItems(String count) {
    return '+$count';
  }

  @override
  String get ordersRepeat => 'Повторить';

  @override
  String ordersRepeatAdded(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Добавили $count товаров в корзину',
      few: 'Добавили $count товара в корзину',
      one: 'Добавили $count товар в корзину',
    );
    return '$_temp0';
  }

  @override
  String ordersRepeatPartly(int added, int missing) {
    return 'Добавили в корзину: $added. Больше не продаются: $missing';
  }

  @override
  String get ordersRepeatNone => 'Этих товаров больше нет в продаже';

  @override
  String get ordersOpenCart => 'В корзину';

  @override
  String ordersCachedAt(String time) {
    return 'Нет соединения. Данные на $time';
  }

  @override
  String get ordersCopied => 'Скопировано';

  @override
  String get ordersCopy => 'Скопировать';

  @override
  String orderNumber(String number) {
    return 'Заказ №$number';
  }

  @override
  String orderCreatedAt(String date) {
    return 'Оформлен $date';
  }

  @override
  String get orderPayWithin => 'Оплатите в течение';

  @override
  String get orderDecideWithin => 'Решите в течение';

  @override
  String get orderItems => 'Товары';

  @override
  String get orderChinaTrack => 'Трек по Китаю';

  @override
  String get orderWarehousePhotos => 'Фото со склада';

  @override
  String orderItemPrice(String quantity, String price) {
    return '$quantity × $price';
  }

  @override
  String orderPhoto(String index) {
    return 'Фото $index';
  }

  @override
  String get orderParcels => 'Посылки';

  @override
  String get orderDelivery => 'Доставка';

  @override
  String get orderDeliveryType => 'Способ';

  @override
  String get orderMoney => 'Оплата';

  @override
  String get orderPaid => 'Оплачено';

  @override
  String get orderDue => 'Осталось оплатить';

  @override
  String get orderHistory => 'История';

  @override
  String get orderCancel => 'Отменить заказ';

  @override
  String get orderCancelTitle => 'Отмена заказа';

  @override
  String get orderCancelKeep => 'Не отменять';

  @override
  String get orderCancelReason => 'Почему отменяете?';

  @override
  String orderCancelRefund(String amount, String destination) {
    return 'Вернём $amount $destination';
  }

  @override
  String get orderCancelled => 'Заказ отменён';

  @override
  String get orderDecisionSent => 'Решение отправлено';

  @override
  String get parcelsTitle => 'Мои посылки';

  @override
  String get parcelsEmpty => 'Посылок пока нет';

  @override
  String get parcelsEmptyText =>
      'Когда товары приедут на склад, мы соберём их в посылку';

  @override
  String parcelNumber(String number) {
    return 'Посылка $number';
  }

  @override
  String parcelEta(String range) {
    return 'Ожидается $range';
  }

  @override
  String get parcelExpected => 'Ожидается';

  @override
  String parcelWeight(String kg) {
    return '$kg кг';
  }

  @override
  String get parcelStageForming => 'Формируется';

  @override
  String get parcelStageSurcharge => 'Доплата';

  @override
  String get parcelStageInTransit => 'В пути';

  @override
  String get parcelStageCustoms => 'Таможня';

  @override
  String get parcelStageArrived => 'Прибыла';

  @override
  String get parcelStageHandover => 'Готова к выдаче';

  @override
  String get parcelStageDelivered => 'Выдана';

  @override
  String parcelProgressSpoken(String step, String total, String stage) {
    return 'Этап $step из $total: $stage';
  }

  @override
  String get parcelSurchargeTitle => 'Доплата за доставку';

  @override
  String get parcelSurchargeWeight => 'Фактический вес';

  @override
  String get parcelSurchargeRate => 'Тариф';

  @override
  String parcelRatePerKg(String price) {
    return '$price за кг';
  }

  @override
  String get parcelSurchargeCost => 'Стоимость доставки';

  @override
  String get parcelSurchargePaid => 'Уже оплачено';

  @override
  String get parcelSurchargeDue => 'К доплате';

  @override
  String get parcelSurchargeRefund => 'Вернём на баланс';

  @override
  String get parcelPickupCode => 'Код выдачи';

  @override
  String get parcelPickupCodeHint =>
      'Назовите код в пункте выдачи. Нажмите, чтобы скопировать';

  @override
  String parcelPickupCodeSpoken(String code) {
    return 'Код выдачи $code, скопировать';
  }

  @override
  String get parcelDueAtHandover => 'К оплате при получении';

  @override
  String get parcelCourier => 'Курьер';

  @override
  String get parcelFormingText =>
      'Собираем посылку из ваших товаров на складе в Китае';

  @override
  String parcelFreeStorage(String date) {
    return 'Бесплатное хранение до $date';
  }

  @override
  String get parcelSendNow => 'Отправить сейчас';

  @override
  String get parcelSendNowTitle => 'Отправить без остальных товаров?';

  @override
  String get parcelSendNowText =>
      'Посылка уйдёт сейчас, остальные товары приедут отдельно. Доставка может выйти дороже';

  @override
  String get parcelSendNowKeep => 'Подождать';

  @override
  String get parcelSent => 'Посылка отправлена';

  @override
  String get parcelContents => 'Состав';

  @override
  String parcelItemFrom(String quantity, String order) {
    return '$quantity шт. · заказ №$order';
  }

  @override
  String parcelClaimUntil(String date) {
    return 'Если с товаром что-то не так, оформите претензию до $date';
  }

  @override
  String get profileBalance => 'Баланс';

  @override
  String get profileDebt => 'Долг';

  @override
  String get profileBonuses => 'Бонусы';

  @override
  String get profileWholesaleBadge => 'Опт';

  @override
  String get profileOrders => 'Мои заказы';

  @override
  String get profileParcels => 'Мои посылки';

  @override
  String get profileSurcharges => 'Доплаты и возвраты';

  @override
  String get profileAddresses => 'Адреса';

  @override
  String get profileViewed => 'Просмотренные';

  @override
  String get profileReviews => 'Мои отзывы';

  @override
  String get profilePriceAlerts => 'Подписки на снижение цены';

  @override
  String get profileNotifications => 'Уведомления';

  @override
  String get profileSupport => 'Поддержка';

  @override
  String get profileBecomeWholesale => 'Стать оптовиком';

  @override
  String get profileWholesaleDocs => 'Опт: документы';

  @override
  String get profileInfo => 'Информация';

  @override
  String get profileSettings => 'Настройки';

  @override
  String get profileSignOut => 'Выйти';

  @override
  String get profileSignOutTitle => 'Выйти из аккаунта?';

  @override
  String get profileSignOutText =>
      'Корзина и избранное на этом телефоне останутся';

  @override
  String get profileSignOutKeep => 'Остаться';

  @override
  String get profileGuestTitle => 'Войдите, чтобы видеть заказы';

  @override
  String get profileGuestText => 'Заказы, посылки и баланс — в одном месте';

  @override
  String get profileSignIn => 'Войти';

  @override
  String get profileLanguage => 'Язык';
}
