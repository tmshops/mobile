import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ru.dart';
import 'app_localizations_tk.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ru'),
    Locale('tk'),
  ];

  /// Store name next to the logo. TODO: replace with the real brand name
  ///
  /// In ru, this message translates to:
  /// **'TM Shop'**
  String get appName;

  /// Toast for destinations that are not built yet
  ///
  /// In ru, this message translates to:
  /// **'Этот раздел скоро появится'**
  String get comingSoon;

  /// Full-screen offline state title
  ///
  /// In ru, this message translates to:
  /// **'Нет соединения'**
  String get offlineTitle;

  /// Full-screen offline state text
  ///
  /// In ru, this message translates to:
  /// **'Проверьте интернет — мы обновим страницу, как только связь появится'**
  String get offlineMessage;

  /// Link next to a category name that opens all its products
  ///
  /// In ru, this message translates to:
  /// **'Все товары'**
  String get catalogAllProducts;

  /// Toolbar button and filters sheet title
  ///
  /// In ru, this message translates to:
  /// **'Фильтры'**
  String get catalogFilters;

  /// Screen-reader label of the Filters button with a badge
  ///
  /// In ru, this message translates to:
  /// **'Фильтры, выбрано: {count}'**
  String catalogFiltersActive(int count);

  /// Sort sheet title
  ///
  /// In ru, this message translates to:
  /// **'Сортировка'**
  String get catalogSortTitle;

  /// Accessibility label: switch product list to a 2-column grid
  ///
  /// In ru, this message translates to:
  /// **'Показать плиткой'**
  String get catalogViewGrid;

  /// Accessibility label: switch product list to rows
  ///
  /// In ru, this message translates to:
  /// **'Показать списком'**
  String get catalogViewList;

  /// Number of products found. formatted is count with spaces, e.g. «1 248»
  ///
  /// In ru, this message translates to:
  /// **'{count, plural, one{{formatted} товар} few{{formatted} товара} other{{formatted} товаров}}'**
  String catalogProductCount(int count, String formatted);

  /// Removes all active filters above the product list
  ///
  /// In ru, this message translates to:
  /// **'Сбросить все'**
  String get catalogClearFilters;

  /// No products for the chosen filters
  ///
  /// In ru, this message translates to:
  /// **'Ничего не нашлось'**
  String get catalogEmptyFilteredTitle;

  /// Hint under «Ничего не нашлось»
  ///
  /// In ru, this message translates to:
  /// **'Попробуйте убрать часть фильтров'**
  String get catalogEmptyFilteredText;

  /// Category has no products at all
  ///
  /// In ru, this message translates to:
  /// **'Здесь пока пусто'**
  String get catalogEmptyTitle;

  /// Text for an empty category
  ///
  /// In ru, this message translates to:
  /// **'В этой категории скоро появятся товары'**
  String get catalogEmptyText;

  /// Opened a link to a category that no longer exists
  ///
  /// In ru, this message translates to:
  /// **'Категория не найдена'**
  String get catalogNotFoundTitle;

  /// Text for a missing category
  ///
  /// In ru, this message translates to:
  /// **'Возможно, она переехала. Загляните в каталог'**
  String get catalogNotFoundText;

  /// Under a list when the next page fails
  ///
  /// In ru, this message translates to:
  /// **'Не удалось загрузить ещё'**
  String get listLoadMoreError;

  /// Sort option
  ///
  /// In ru, this message translates to:
  /// **'Популярные'**
  String get sortPopular;

  /// Sort option
  ///
  /// In ru, this message translates to:
  /// **'Сначала дешёвые'**
  String get sortPriceAsc;

  /// Sort option
  ///
  /// In ru, this message translates to:
  /// **'Сначала дорогие'**
  String get sortPriceDesc;

  /// Sort option
  ///
  /// In ru, this message translates to:
  /// **'Новинки'**
  String get sortNewest;

  /// Sort option
  ///
  /// In ru, this message translates to:
  /// **'С высоким рейтингом'**
  String get sortRating;

  /// Sort option
  ///
  /// In ru, this message translates to:
  /// **'Хиты продаж'**
  String get sortSales;

  /// Primary button of the filters sheet
  ///
  /// In ru, this message translates to:
  /// **'{count, plural, one{Показать {formatted} товар} few{Показать {formatted} товара} other{Показать {formatted} товаров}}'**
  String filtersShow(int count, String formatted);

  /// Primary button of the filters sheet when the count is unknown (offline)
  ///
  /// In ru, this message translates to:
  /// **'Показать товары'**
  String get filtersApply;

  /// Disabled primary button when the draft filters match nothing
  ///
  /// In ru, this message translates to:
  /// **'Ничего не найдено'**
  String get filtersNothing;

  /// Clears the draft in the filters sheet
  ///
  /// In ru, this message translates to:
  /// **'Сбросить'**
  String get filtersReset;

  /// Lower price input label
  ///
  /// In ru, this message translates to:
  /// **'От'**
  String get filtersPriceFrom;

  /// Upper price input label
  ///
  /// In ru, this message translates to:
  /// **'До'**
  String get filtersPriceTo;

  /// Expands a long filter list
  ///
  /// In ru, this message translates to:
  /// **'Показать все ({count})'**
  String filtersShowAll(int count);

  /// Collapses a long filter list
  ///
  /// In ru, this message translates to:
  /// **'Свернуть'**
  String get filtersShowLess;

  /// Search field inside a long filter list (brands)
  ///
  /// In ru, this message translates to:
  /// **'Найти'**
  String get filtersSearch;

  /// Summary under a collapsed filter group
  ///
  /// In ru, this message translates to:
  /// **'Выбрано: {count}'**
  String filtersSelected(int count);

  /// Filter chip: value and number of products
  ///
  /// In ru, this message translates to:
  /// **'{label} · {count}'**
  String filtersOption(String label, int count);

  /// Active price filter chip
  ///
  /// In ru, this message translates to:
  /// **'{min}–{max} TMT'**
  String priceRangeChip(String min, String max);

  /// Active price filter chip with a lower bound only
  ///
  /// In ru, this message translates to:
  /// **'от {min} TMT'**
  String priceFromChip(String min);

  /// Active price filter chip with an upper bound only
  ///
  /// In ru, this message translates to:
  /// **'до {max} TMT'**
  String priceToChip(String max);

  /// Accessibility label of a back button
  ///
  /// In ru, this message translates to:
  /// **'Назад'**
  String get actionBack;

  /// Toast action that opens the related screen, e.g. the cart
  ///
  /// In ru, this message translates to:
  /// **'Перейти'**
  String get actionGoTo;

  /// Expands a clipped text (title, review)
  ///
  /// In ru, this message translates to:
  /// **'Ещё'**
  String get actionShowMore;

  /// Collapses an expanded text
  ///
  /// In ru, this message translates to:
  /// **'Свернуть'**
  String get actionShowLess;

  /// Region picker sheet title
  ///
  /// In ru, this message translates to:
  /// **'Регион доставки'**
  String get regionTitle;

  /// Accessibility hint of the region chip
  ///
  /// In ru, this message translates to:
  /// **'Сменить регион доставки'**
  String get regionChange;

  /// Photo counter on the product gallery
  ///
  /// In ru, this message translates to:
  /// **'{current}/{total}'**
  String galleryCounter(int current, int total);

  /// Screen-reader text for star ratings
  ///
  /// In ru, this message translates to:
  /// **'Рейтинг {rating} из 5'**
  String ratingSpoken(String rating);

  /// Number of reviews
  ///
  /// In ru, this message translates to:
  /// **'{count, plural, one{{count} отзыв} few{{count} отзыва} other{{count} отзывов}}'**
  String reviewCount(int count);

  /// Under the price while variants with different prices are not chosen
  ///
  /// In ru, this message translates to:
  /// **'Цена зависит от варианта'**
  String get productPriceDepends;

  /// Quantity price step
  ///
  /// In ru, this message translates to:
  /// **'от {quantity} шт — {price}'**
  String productTier(int quantity, String price);

  /// Stock of the chosen variant
  ///
  /// In ru, this message translates to:
  /// **'В наличии: {count} шт'**
  String productInStock(int count);

  /// Low stock of the chosen variant
  ///
  /// In ru, this message translates to:
  /// **'Осталось {count} шт'**
  String productFewLeft(int count);

  /// Variant or product sold out
  ///
  /// In ru, this message translates to:
  /// **'Нет в наличии'**
  String get productOutOfStock;

  /// Banner on a product taken off sale
  ///
  /// In ru, this message translates to:
  /// **'Этот товар больше не продаётся. Посмотрите похожие ниже'**
  String get productUnavailableText;

  /// Opened a link to a product that does not exist
  ///
  /// In ru, this message translates to:
  /// **'Товар не найден'**
  String get productNotFoundTitle;

  /// Text for a missing product
  ///
  /// In ru, this message translates to:
  /// **'Возможно, ссылка устарела'**
  String get productNotFoundText;

  /// Disabled add-to-cart button until a variant property is chosen
  ///
  /// In ru, this message translates to:
  /// **'Выберите: {option}'**
  String productSelectOption(String option);

  /// Label next to the quantity stepper
  ///
  /// In ru, this message translates to:
  /// **'Количество'**
  String get productQuantity;

  /// Optional note saved with the cart line
  ///
  /// In ru, this message translates to:
  /// **'Комментарий для оператора'**
  String get productComment;

  /// Hint in the operator comment field
  ///
  /// In ru, this message translates to:
  /// **'Например: проверьте цвет перед выкупом'**
  String get productCommentHint;

  /// Delivery block title
  ///
  /// In ru, this message translates to:
  /// **'Доставка'**
  String get productDelivery;

  /// Delivery quotes failed to load
  ///
  /// In ru, this message translates to:
  /// **'Не удалось рассчитать доставку'**
  String get productDeliveryError;

  /// Collapsible explainer of the bought-to-order model
  ///
  /// In ru, this message translates to:
  /// **'Как это работает'**
  String get productHowTitle;

  /// Explainer line
  ///
  /// In ru, this message translates to:
  /// **'Товар выкупается под ваш заказ — обычно за 1–2 дня'**
  String get productHowBuy;

  /// Explainer line
  ///
  /// In ru, this message translates to:
  /// **'Отменить заказ можно только до выкупа'**
  String get productHowCancel;

  /// Explainer line
  ///
  /// In ru, this message translates to:
  /// **'Точный вес и цена доставки станут известны на складе в Китае'**
  String get productHowWeight;

  /// Section title
  ///
  /// In ru, this message translates to:
  /// **'Описание'**
  String get productDescription;

  /// Expands the folded description
  ///
  /// In ru, this message translates to:
  /// **'Показать полностью'**
  String get productShowAll;

  /// Section title
  ///
  /// In ru, this message translates to:
  /// **'Характеристики'**
  String get productSpecs;

  /// Section title
  ///
  /// In ru, this message translates to:
  /// **'Продавец'**
  String get productSeller;

  /// Seller rating and sales
  ///
  /// In ru, this message translates to:
  /// **'★ {rating} · {sales} продаж'**
  String productSellerStats(String rating, String sales);

  /// Opens the seller's products
  ///
  /// In ru, this message translates to:
  /// **'Все товары продавца'**
  String get productSellerAll;

  /// Section title
  ///
  /// In ru, this message translates to:
  /// **'Отзывы'**
  String get productReviews;

  /// Opens the full reviews screen
  ///
  /// In ru, this message translates to:
  /// **'Все отзывы'**
  String get productAllReviews;

  /// Label on reviews imported from the marketplace
  ///
  /// In ru, this message translates to:
  /// **'Переведено с китайского'**
  String get productTranslated;

  /// Carousel title
  ///
  /// In ru, this message translates to:
  /// **'Похожие товары'**
  String get productSimilar;

  /// Carousel title
  ///
  /// In ru, this message translates to:
  /// **'С этим покупают'**
  String get productBoughtTogether;

  /// Link above the sticky buttons
  ///
  /// In ru, this message translates to:
  /// **'Быстрый заказ'**
  String get productQuickOrder;

  /// Photo search by this product's image
  ///
  /// In ru, this message translates to:
  /// **'Найти похожие'**
  String get productFindSimilar;

  /// Accessibility label of the bell next to the rating
  ///
  /// In ru, this message translates to:
  /// **'Сообщить о снижении цены'**
  String get productPriceAlert;

  /// Toast after adding to the cart
  ///
  /// In ru, this message translates to:
  /// **'Добавлено в корзину'**
  String get productAdded;

  /// Accessibility label of a video slide in the gallery
  ///
  /// In ru, this message translates to:
  /// **'Видео'**
  String get productVideo;

  /// Tick that selects every cart line
  ///
  /// In ru, this message translates to:
  /// **'Выбрать все'**
  String get cartSelectAll;

  /// Next to «Выбрать все»
  ///
  /// In ru, this message translates to:
  /// **'Выбрано: {selected} из {total}'**
  String cartSelectedCount(int selected, int total);

  /// Group for lines whose seller is unknown
  ///
  /// In ru, this message translates to:
  /// **'Другие товары'**
  String get cartOtherSeller;

  /// Under a seller group
  ///
  /// In ru, this message translates to:
  /// **'Доставка по Китаю: {amount}'**
  String cartChinaDelivery(String amount);

  /// Under a seller group before the server answers
  ///
  /// In ru, this message translates to:
  /// **'Доставка по Китаю рассчитывается'**
  String get cartChinaDeliveryPending;

  /// Warning on a line whose price changed since adding
  ///
  /// In ru, this message translates to:
  /// **'Цена изменилась: {oldPrice} → {newPrice}'**
  String cartPriceChanged(String oldPrice, String newPrice);

  /// Warning on a sold-out line
  ///
  /// In ru, this message translates to:
  /// **'Нет в наличии — не попадёт в заказ'**
  String get cartUnavailable;

  /// Toast after swiping a line away
  ///
  /// In ru, this message translates to:
  /// **'Товар удалён из корзины'**
  String get cartRemoved;

  /// Accessibility label of a line's tick
  ///
  /// In ru, this message translates to:
  /// **'Выбрать для заказа: {title}'**
  String cartSelectLine(String title);

  /// Accessibility hint of the variant chip; also the sheet title
  ///
  /// In ru, this message translates to:
  /// **'Изменить вариант'**
  String get cartChangeVariant;

  /// Confirms the new variant in the sheet
  ///
  /// In ru, this message translates to:
  /// **'Сохранить'**
  String get cartSaveVariant;

  /// Variant sheet for a product taken off sale
  ///
  /// In ru, this message translates to:
  /// **'Этот товар больше не продаётся'**
  String get cartVariantGone;

  /// Collapsible promo code row
  ///
  /// In ru, this message translates to:
  /// **'Промокод'**
  String get cartPromo;

  /// Promo code field hint
  ///
  /// In ru, this message translates to:
  /// **'Введите промокод'**
  String get cartPromoHint;

  /// Applies the promo code
  ///
  /// In ru, this message translates to:
  /// **'Применить'**
  String get cartPromoApply;

  /// Chip once the server accepted the code
  ///
  /// In ru, this message translates to:
  /// **'Промокод {code} применён'**
  String cartPromoApplied(String code);

  /// Primary button of the cart
  ///
  /// In ru, this message translates to:
  /// **'Оформить'**
  String get cartCheckout;

  /// Shown when no line is ticked
  ///
  /// In ru, this message translates to:
  /// **'Отметьте товары для заказа'**
  String get cartNothingSelected;

  /// Empty cart title
  ///
  /// In ru, this message translates to:
  /// **'В корзине пока пусто'**
  String get cartEmptyTitle;

  /// Empty cart text
  ///
  /// In ru, this message translates to:
  /// **'Добавьте товары с главной или из каталога'**
  String get cartEmptyText;

  /// Inline note when the server total failed
  ///
  /// In ru, this message translates to:
  /// **'Не удалось пересчитать итог'**
  String get cartQuoteError;

  /// Money breakdown sheet title
  ///
  /// In ru, this message translates to:
  /// **'Сумма заказа'**
  String get cartBreakdownTitle;

  /// Checkout screen title
  ///
  /// In ru, this message translates to:
  /// **'Оформление заказа'**
  String get checkoutTitle;

  /// Section 1 title
  ///
  /// In ru, this message translates to:
  /// **'Получатель'**
  String get checkoutRecipient;

  /// Recipient first name field
  ///
  /// In ru, this message translates to:
  /// **'Имя'**
  String get checkoutFirstName;

  /// Recipient last name field
  ///
  /// In ru, this message translates to:
  /// **'Фамилия'**
  String get checkoutLastName;

  /// Opens the prefilled recipient for editing
  ///
  /// In ru, this message translates to:
  /// **'Изменить'**
  String get checkoutEdit;

  /// Recipient is incomplete
  ///
  /// In ru, this message translates to:
  /// **'Укажите имя, фамилию и телефон'**
  String get checkoutRecipientError;

  /// Section 2 title
  ///
  /// In ru, this message translates to:
  /// **'Получение'**
  String get checkoutReceiving;

  /// Receiving method
  ///
  /// In ru, this message translates to:
  /// **'Курьер'**
  String get checkoutCourier;

  /// Receiving method
  ///
  /// In ru, this message translates to:
  /// **'Самовывоз'**
  String get checkoutPickup;

  /// Courier price in the region
  ///
  /// In ru, this message translates to:
  /// **'Курьер: {price}'**
  String checkoutCourierPrice(String price);

  /// Free courier threshold, after the courier price
  ///
  /// In ru, this message translates to:
  /// **'бесплатно от {amount}'**
  String checkoutCourierFree(String amount);

  /// Courier address field
  ///
  /// In ru, this message translates to:
  /// **'Улица и дом'**
  String get checkoutStreet;

  /// Courier address details field
  ///
  /// In ru, this message translates to:
  /// **'Квартира / ориентир'**
  String get checkoutAddressDetails;

  /// Courier address is empty
  ///
  /// In ru, this message translates to:
  /// **'Укажите улицу и дом'**
  String get checkoutAddressError;

  /// No pickup point chosen
  ///
  /// In ru, this message translates to:
  /// **'Выберите пункт выдачи'**
  String get checkoutPickupError;

  /// Section 3 title
  ///
  /// In ru, this message translates to:
  /// **'Тип доставки'**
  String get checkoutDeliveryType;

  /// All delivery types are unavailable
  ///
  /// In ru, this message translates to:
  /// **'Нет доступного способа доставки'**
  String get checkoutDeliveryError;

  /// Section 4 title
  ///
  /// In ru, this message translates to:
  /// **'Дополнительные услуги'**
  String get checkoutServices;

  /// Order comment field
  ///
  /// In ru, this message translates to:
  /// **'Комментарий к заказу'**
  String get checkoutComment;

  /// Section 5 title
  ///
  /// In ru, this message translates to:
  /// **'Оплата'**
  String get checkoutPayment;

  /// Payment method
  ///
  /// In ru, this message translates to:
  /// **'Картой онлайн'**
  String get checkoutPayCard;

  /// Under «Картой онлайн»
  ///
  /// In ru, this message translates to:
  /// **'Через страницу банка'**
  String get checkoutPayCardText;

  /// Payment method
  ///
  /// In ru, this message translates to:
  /// **'Наличными в офисе'**
  String get checkoutPayCash;

  /// Under «Наличными в офисе»
  ///
  /// In ru, this message translates to:
  /// **'Оплатите до выкупа товара'**
  String get checkoutPayCashText;

  /// Advance payment note
  ///
  /// In ru, this message translates to:
  /// **'Сейчас {now}, остаток {later} — до выдачи, после взвешивания'**
  String checkoutAdvance(String now, String later);

  /// Section 6 title
  ///
  /// In ru, this message translates to:
  /// **'Итог'**
  String get checkoutTotal;

  /// Money breakdown row
  ///
  /// In ru, this message translates to:
  /// **'Курьер'**
  String get moneyCourier;

  /// Money breakdown row
  ///
  /// In ru, this message translates to:
  /// **'Доп. услуги'**
  String get moneyServices;

  /// Required consent checkbox (TZ §5.12.6)
  ///
  /// In ru, this message translates to:
  /// **'Я согласен с офертой и понимаю: товар выкупается под заказ, отменить можно только до выкупа'**
  String get checkoutConsent;

  /// Opens the public offer
  ///
  /// In ru, this message translates to:
  /// **'Читать оферту'**
  String get checkoutReadOffer;

  /// Consent not ticked
  ///
  /// In ru, this message translates to:
  /// **'Подтвердите согласие'**
  String get checkoutConsentError;

  /// Sticky button for card payment
  ///
  /// In ru, this message translates to:
  /// **'Оплатить {amount}'**
  String checkoutPay(String amount);

  /// Sticky button for cash payment
  ///
  /// In ru, this message translates to:
  /// **'Оформить заказ'**
  String get checkoutPlace;

  /// Sticky button after the total changed
  ///
  /// In ru, this message translates to:
  /// **'Подтвердить {amount}'**
  String checkoutConfirmNew(String amount);

  /// Server total differs from the shown one
  ///
  /// In ru, this message translates to:
  /// **'Итог изменился, пока вы оформляли заказ. Проверьте новую сумму'**
  String get checkoutPriceChanged;

  /// Preview request failed
  ///
  /// In ru, this message translates to:
  /// **'Не удалось рассчитать заказ'**
  String get checkoutPreviewError;

  /// Order creation failed
  ///
  /// In ru, this message translates to:
  /// **'Не удалось оформить заказ. Попробуйте ещё раз'**
  String get checkoutSubmitError;

  /// Waiting for the payment result
  ///
  /// In ru, this message translates to:
  /// **'Проверяем оплату…'**
  String get paymentChecking;

  /// Under «Проверяем оплату…»
  ///
  /// In ru, this message translates to:
  /// **'Это займёт до минуты. Не закрывайте экран'**
  String get paymentCheckingText;

  /// Success screen title
  ///
  /// In ru, this message translates to:
  /// **'Заказ оформлен'**
  String get paymentSuccessTitle;

  /// Order number on the result screens
  ///
  /// In ru, this message translates to:
  /// **'Заказ №{number}'**
  String paymentOrderNumber(String number);

  /// Next step after a paid order
  ///
  /// In ru, this message translates to:
  /// **'Мы выкупим товар в течение 1–2 дней и сообщим о каждом шаге'**
  String get paymentNextStep;

  /// Next step for cash payment
  ///
  /// In ru, this message translates to:
  /// **'Оплатите заказ в офисе — после оплаты мы выкупим товар'**
  String get paymentCashNext;

  /// Under the big amount
  ///
  /// In ru, this message translates to:
  /// **'Оплачено {amount}'**
  String paymentPaid(String amount);

  /// Cash order: amount to bring
  ///
  /// In ru, this message translates to:
  /// **'К оплате в офисе {amount}'**
  String paymentDue(String amount);

  /// Opens the order
  ///
  /// In ru, this message translates to:
  /// **'К заказу'**
  String get paymentToOrder;

  /// Back to Home
  ///
  /// In ru, this message translates to:
  /// **'На главную'**
  String get paymentToHome;

  /// Failure screen title
  ///
  /// In ru, this message translates to:
  /// **'Оплата не прошла'**
  String get paymentFailedTitle;

  /// Under the failure reason
  ///
  /// In ru, this message translates to:
  /// **'Заказ сохранён и ждёт оплаты'**
  String get paymentFailedText;

  /// Starts a new payment for the order
  ///
  /// In ru, this message translates to:
  /// **'Повторить оплату'**
  String get paymentRetry;

  /// No final status after a minute
  ///
  /// In ru, this message translates to:
  /// **'Банк пока не ответил. Если деньги списались, заказ обновится сам'**
  String get paymentTimeout;

  /// Accessibility label of the bell button in the Home header
  ///
  /// In ru, this message translates to:
  /// **'Уведомления'**
  String get homeNotifications;

  /// Accessibility hint of the RU/TK toggle in the Home header
  ///
  /// In ru, this message translates to:
  /// **'Сменить язык'**
  String get homeLanguageSwitch;

  /// Accessibility label of an unwatched video story
  ///
  /// In ru, this message translates to:
  /// **'Новое видео: {title}'**
  String homeStoryNew(String title);

  /// Title of the card that opens the add-by-link flow
  ///
  /// In ru, this message translates to:
  /// **'Вставьте ссылку на товар'**
  String get homePasteLinkTitle;

  /// Hint under the paste-link title. sources is a list of marketplace names
  ///
  /// In ru, this message translates to:
  /// **'{sources} — найдём товар и посчитаем цену'**
  String homePasteLinkHint(String sources);

  /// Last cell of the category shortcuts grid
  ///
  /// In ru, this message translates to:
  /// **'Все категории'**
  String get homeAllCategories;

  /// Heading above the delivery types in «Как мы работаем»
  ///
  /// In ru, this message translates to:
  /// **'Сроки доставки'**
  String get homeDeliveryTerms;

  /// Title of the endless product grid at the bottom of Home
  ///
  /// In ru, this message translates to:
  /// **'Для вас'**
  String get homeForYou;

  /// Shown at the bottom of the grid when the next page fails
  ///
  /// In ru, this message translates to:
  /// **'Не удалось загрузить товары'**
  String get homeForYouError;

  /// Empty Home title (server sent no sections)
  ///
  /// In ru, this message translates to:
  /// **'Витрина скоро наполнится'**
  String get homeEmptyTitle;

  /// Empty Home text
  ///
  /// In ru, this message translates to:
  /// **'Загляните в каталог — там уже есть товары'**
  String get homeEmptyText;

  /// Toast when refresh fails but older content is shown
  ///
  /// In ru, this message translates to:
  /// **'Не удалось обновить главную'**
  String get homeRefreshFailed;

  /// Bottom navigation tab and root screen title: home
  ///
  /// In ru, this message translates to:
  /// **'Главная'**
  String get tabHome;

  /// Bottom navigation tab and root screen title: catalog
  ///
  /// In ru, this message translates to:
  /// **'Каталог'**
  String get tabCatalog;

  /// Bottom navigation tab and root screen title: cart
  ///
  /// In ru, this message translates to:
  /// **'Корзина'**
  String get tabCart;

  /// Bottom navigation tab and root screen title: favourites
  ///
  /// In ru, this message translates to:
  /// **'Избранное'**
  String get tabFavourites;

  /// Bottom navigation tab and root screen title: profile
  ///
  /// In ru, this message translates to:
  /// **'Профиль'**
  String get tabProfile;

  /// Screen-reader text for the cart tab badge
  ///
  /// In ru, this message translates to:
  /// **'{count, plural, one{{count} товар} few{{count} товара} other{{count} товаров}}'**
  String navCartCount(int count);

  /// Screen-reader text for the unread dot on the profile tab
  ///
  /// In ru, this message translates to:
  /// **'есть непрочитанные уведомления'**
  String get navUnread;

  /// Screen-reader label of a tab that has a badge, e.g. «Корзина, 3 товара»
  ///
  /// In ru, this message translates to:
  /// **'{tab}, {state}'**
  String navTabSemantics(String tab, String state);

  /// Secondary button that adds the product to the cart
  ///
  /// In ru, this message translates to:
  /// **'В корзину'**
  String get actionAddToCart;

  /// Primary button that starts checkout for one product
  ///
  /// In ru, this message translates to:
  /// **'Купить сейчас'**
  String get actionBuyNow;

  /// Generic primary button that moves to the next step
  ///
  /// In ru, this message translates to:
  /// **'Далее'**
  String get actionNext;

  /// Generic cancel button
  ///
  /// In ru, this message translates to:
  /// **'Отмена'**
  String get actionCancel;

  /// Button that repeats a failed request
  ///
  /// In ru, this message translates to:
  /// **'Повторить'**
  String get actionRetry;

  /// Toast action that reverts the last action, e.g. a delete
  ///
  /// In ru, this message translates to:
  /// **'Отменить'**
  String get actionUndo;

  /// Link in a section header that opens the full list; an arrow icon follows it
  ///
  /// In ru, this message translates to:
  /// **'Все'**
  String get actionSeeAll;

  /// Empty-state button that opens the catalog
  ///
  /// In ru, this message translates to:
  /// **'В каталог'**
  String get actionGoToCatalog;

  /// Accessibility label of a close (×) icon button
  ///
  /// In ru, this message translates to:
  /// **'Закрыть'**
  String get actionClose;

  /// Accessibility label of a share icon button
  ///
  /// In ru, this message translates to:
  /// **'Поделиться'**
  String get actionShare;

  /// Accessibility label of the × on a removable chip
  ///
  /// In ru, this message translates to:
  /// **'Удалить'**
  String get actionRemove;

  /// Accessibility label for skeletons and spinners
  ///
  /// In ru, this message translates to:
  /// **'Загрузка'**
  String get loading;

  /// Price in manat. amount is already grouped, e.g. «1 216»
  ///
  /// In ru, this message translates to:
  /// **'{amount} TMT'**
  String priceTmt(String amount);

  /// Negative amount, e.g. a discount line
  ///
  /// In ru, this message translates to:
  /// **'−{amount} TMT'**
  String priceMinusTmt(String amount);

  /// Price read by the screen reader
  ///
  /// In ru, this message translates to:
  /// **'{amount, plural, one{{amount} манат} few{{amount} маната} other{{amount} манатов}}'**
  String priceSpoken(int amount);

  /// Screen-reader phrase for a discounted price. Both values come from priceSpoken
  ///
  /// In ru, this message translates to:
  /// **'{price}, было {oldPrice}'**
  String priceWithOldSpoken(String price, String oldPrice);

  /// Discount badge
  ///
  /// In ru, this message translates to:
  /// **'−{percent}%'**
  String discountPercent(int percent);

  /// Badge for a best-selling product
  ///
  /// In ru, this message translates to:
  /// **'Хит'**
  String get badgeHit;

  /// Badge for a new product
  ///
  /// In ru, this message translates to:
  /// **'Новинка'**
  String get badgeNew;

  /// Small chip on AI-generated product photos
  ///
  /// In ru, this message translates to:
  /// **'иллюстрация'**
  String get badgeIllustration;

  /// Sold counter caption on a product tile
  ///
  /// In ru, this message translates to:
  /// **'продано {count}'**
  String productSold(String count);

  /// Compact number in thousands
  ///
  /// In ru, this message translates to:
  /// **'{value} тыс.'**
  String compactThousands(String value);

  /// Compact number in millions
  ///
  /// In ru, this message translates to:
  /// **'{value} млн'**
  String compactMillions(String value);

  /// Accessibility label of the empty heart button
  ///
  /// In ru, this message translates to:
  /// **'Добавить в избранное'**
  String get favouriteAdd;

  /// Accessibility label of the filled heart button
  ///
  /// In ru, this message translates to:
  /// **'Убрать из избранного'**
  String get favouriteRemove;

  /// Accessibility label of the minus button
  ///
  /// In ru, this message translates to:
  /// **'Уменьшить количество'**
  String get quantityDecrease;

  /// Accessibility label of the plus button
  ///
  /// In ru, this message translates to:
  /// **'Увеличить количество'**
  String get quantityIncrease;

  /// Link that opens the size chart
  ///
  /// In ru, this message translates to:
  /// **'Размерная сетка'**
  String get skuSizeChart;

  /// Accessibility label of a greyed-out SKU option
  ///
  /// In ru, this message translates to:
  /// **'{option} — нет в наличии'**
  String skuUnavailable(String option);

  /// Search bar placeholder
  ///
  /// In ru, this message translates to:
  /// **'Искать товары'**
  String get searchHint;

  /// Accessibility label of the camera icon in the search bar
  ///
  /// In ru, this message translates to:
  /// **'Поиск по фото'**
  String get searchByPhoto;

  /// Phone field label
  ///
  /// In ru, this message translates to:
  /// **'Номер телефона'**
  String get phoneLabel;

  /// Accessibility label of the OTP boxes
  ///
  /// In ru, this message translates to:
  /// **'Код из СМС'**
  String get otpLabel;

  /// Shown instead of an exact international delivery price
  ///
  /// In ru, this message translates to:
  /// **'уточнится после взвешивания'**
  String get deliveryAfterWeighing;

  /// Tooltip that explains why delivery is an estimate
  ///
  /// In ru, this message translates to:
  /// **'Точный вес станет известен, когда товар приедет на наш склад в Китае. Мы пересчитаем доставку и сообщим вам.'**
  String get deliveryAfterWeighingInfo;

  /// Money breakdown row: goods total
  ///
  /// In ru, this message translates to:
  /// **'Товары'**
  String get moneyItems;

  /// Money breakdown row: delivery inside China
  ///
  /// In ru, this message translates to:
  /// **'Доставка по Китаю'**
  String get moneyChinaDelivery;

  /// Money breakdown row: delivery to Turkmenistan
  ///
  /// In ru, this message translates to:
  /// **'Международная доставка'**
  String get moneyInternationalDelivery;

  /// Money breakdown row: discount
  ///
  /// In ru, this message translates to:
  /// **'Скидка'**
  String get moneyDiscount;

  /// Money breakdown total row
  ///
  /// In ru, this message translates to:
  /// **'Итого'**
  String get moneyTotal;

  /// Screen-reader phrase for the total in the sticky bar. amount comes from priceSpoken
  ///
  /// In ru, this message translates to:
  /// **'Итого: {amount}'**
  String totalSpoken(String amount);

  /// Shown under the cart progress bar when the order is below the minimum
  ///
  /// In ru, this message translates to:
  /// **'Добавьте товаров ещё на {amount}'**
  String progressToMinimum(String amount);

  /// Shown when the cart reaches the minimum order sum
  ///
  /// In ru, this message translates to:
  /// **'Минимальная сумма заказа набрана'**
  String get progressMinimumReached;

  /// Countdown longer than a day, e.g. «2 д 04:15:09»
  ///
  /// In ru, this message translates to:
  /// **'{days} д {time}'**
  String countdownWithDays(int days, String time);

  /// Thin bar at the top when the device is offline
  ///
  /// In ru, this message translates to:
  /// **'Нет соединения с интернетом'**
  String get offlineBanner;

  /// Default error state title
  ///
  /// In ru, this message translates to:
  /// **'Что-то пошло не так'**
  String get errorGenericTitle;

  /// Default error state text
  ///
  /// In ru, this message translates to:
  /// **'Проверьте интернет и попробуйте ещё раз'**
  String get errorGenericMessage;

  /// Day and month, «24 ноября». ending is the Turkmen ordinal ending (back/front), unused in Russian
  ///
  /// In ru, this message translates to:
  /// **'{day} {month, select, jan{января} feb{февраля} mar{марта} apr{апреля} may{мая} jun{июня} jul{июля} aug{августа} sep{сентября} oct{октября} nov{ноября} dec{декабря} other{}}{ending, select, other{}}'**
  String dateDayMonth(String day, String ending, String month);

  /// Date with time, «24 ноября, 14:30»
  ///
  /// In ru, this message translates to:
  /// **'{date}, {time}'**
  String dateDayMonthTime(String date, String time);

  /// Date range within a month, «24–28 ноября». from is the day only
  ///
  /// In ru, this message translates to:
  /// **'{from}–{to}'**
  String dateRangeSameMonth(String from, String to);

  /// Date range across months, «30 ноября – 3 декабря»
  ///
  /// In ru, this message translates to:
  /// **'{from} – {to}'**
  String dateRange(String from, String to);

  /// Login screen title
  ///
  /// In ru, this message translates to:
  /// **'Вход'**
  String get loginTitle;

  /// Login screen text under the title
  ///
  /// In ru, this message translates to:
  /// **'Введите номер — пришлём код для входа'**
  String get loginSubtitle;

  /// Phone field error on the login screen
  ///
  /// In ru, this message translates to:
  /// **'Введите номер полностью: 8 цифр'**
  String get loginPhoneError;

  /// Consent checkbox on the login screen (TZ 5.2)
  ///
  /// In ru, this message translates to:
  /// **'Я соглашаюсь с политикой конфиденциальности и обработкой персональных данных'**
  String get loginConsent;

  /// Error under the login consent checkbox
  ///
  /// In ru, this message translates to:
  /// **'Подтвердите согласие'**
  String get loginConsentError;

  /// Link to the privacy policy on the login screen
  ///
  /// In ru, this message translates to:
  /// **'Читать политику'**
  String get loginReadPolicy;

  /// Primary button of the phone step
  ///
  /// In ru, this message translates to:
  /// **'Получить код'**
  String get loginGetCode;

  /// Divider between phone login and Google
  ///
  /// In ru, this message translates to:
  /// **'или'**
  String get loginOr;

  /// Google sign-in button
  ///
  /// In ru, this message translates to:
  /// **'Войти через Google'**
  String get loginGoogle;

  /// Code step title
  ///
  /// In ru, this message translates to:
  /// **'Введите код'**
  String get loginCodeTitle;

  /// Where the code was sent. destination is masked by the server
  ///
  /// In ru, this message translates to:
  /// **'{channel, select, telegram{Код отправлен в Telegram: {destination}} email{Код отправлен на почту {destination}} other{Код отправлен в SMS на {destination}}}'**
  String loginCodeSent(String channel, String destination);

  /// Resend timer on the code step
  ///
  /// In ru, this message translates to:
  /// **'Отправить снова через {time}'**
  String loginResendIn(String time);

  /// Resend button on the code step
  ///
  /// In ru, this message translates to:
  /// **'Отправить код снова'**
  String get loginResend;

  /// Back to the phone step
  ///
  /// In ru, this message translates to:
  /// **'Изменить номер'**
  String get loginChangePhone;

  /// Title when the server says the customer is blocked
  ///
  /// In ru, this message translates to:
  /// **'Аккаунт заблокирован'**
  String get loginBlockedTitle;

  /// Orders list title
  ///
  /// In ru, this message translates to:
  /// **'Мои заказы'**
  String get ordersTitle;

  /// Orders tab
  ///
  /// In ru, this message translates to:
  /// **'Активные'**
  String get ordersTabActive;

  /// Orders tab
  ///
  /// In ru, this message translates to:
  /// **'Завершённые'**
  String get ordersTabCompleted;

  /// Orders tab
  ///
  /// In ru, this message translates to:
  /// **'Отменённые'**
  String get ordersTabCancelled;

  /// Empty active orders tab
  ///
  /// In ru, this message translates to:
  /// **'Активных заказов нет'**
  String get ordersEmptyActive;

  /// Empty active orders tab text
  ///
  /// In ru, this message translates to:
  /// **'Найдите что-нибудь в каталоге — мы выкупим и доставим'**
  String get ordersEmptyActiveText;

  /// Empty completed orders tab
  ///
  /// In ru, this message translates to:
  /// **'Завершённых заказов пока нет'**
  String get ordersEmptyCompleted;

  /// Empty cancelled orders tab
  ///
  /// In ru, this message translates to:
  /// **'Отменённых заказов нет'**
  String get ordersEmptyCancelled;

  /// Number of items in an order or parcel
  ///
  /// In ru, this message translates to:
  /// **'{count, plural, one{{count} товар} few{{count} товара} other{{count} товаров}}'**
  String ordersItemCount(int count);

  /// Last thumbnail when an order has more items than shown
  ///
  /// In ru, this message translates to:
  /// **'+{count}'**
  String ordersMoreItems(String count);

  /// Repeat an order: put its items in the cart again
  ///
  /// In ru, this message translates to:
  /// **'Повторить'**
  String get ordersRepeat;

  /// Toast after repeating an order
  ///
  /// In ru, this message translates to:
  /// **'{count, plural, one{Добавили {count} товар в корзину} few{Добавили {count} товара в корзину} other{Добавили {count} товаров в корзину}}'**
  String ordersRepeatAdded(int count);

  /// Toast after repeating an order when some items are gone
  ///
  /// In ru, this message translates to:
  /// **'Добавили в корзину: {added}. Больше не продаются: {missing}'**
  String ordersRepeatPartly(int added, int missing);

  /// Toast when nothing from the order can be repeated
  ///
  /// In ru, this message translates to:
  /// **'Этих товаров больше нет в продаже'**
  String get ordersRepeatNone;

  /// Toast action that opens the cart
  ///
  /// In ru, this message translates to:
  /// **'В корзину'**
  String get ordersOpenCart;

  /// Notice above data shown from the device copy offline
  ///
  /// In ru, this message translates to:
  /// **'Нет соединения. Данные на {time}'**
  String ordersCachedAt(String time);

  /// Toast after copying a code or number
  ///
  /// In ru, this message translates to:
  /// **'Скопировано'**
  String get ordersCopied;

  /// Copy button tooltip
  ///
  /// In ru, this message translates to:
  /// **'Скопировать'**
  String get ordersCopy;

  /// Order title
  ///
  /// In ru, this message translates to:
  /// **'Заказ №{number}'**
  String orderNumber(String number);

  /// Order date under the status
  ///
  /// In ru, this message translates to:
  /// **'Оформлен {date}'**
  String orderCreatedAt(String date);

  /// Before the payment countdown
  ///
  /// In ru, this message translates to:
  /// **'Оплатите в течение'**
  String get orderPayWithin;

  /// Before the problem decision countdown
  ///
  /// In ru, this message translates to:
  /// **'Решите в течение'**
  String get orderDecideWithin;

  /// Order items card title
  ///
  /// In ru, this message translates to:
  /// **'Товары'**
  String get orderItems;

  /// Seller's track number inside China
  ///
  /// In ru, this message translates to:
  /// **'Трек по Китаю'**
  String get orderChinaTrack;

  /// Warehouse photos of an item
  ///
  /// In ru, this message translates to:
  /// **'Фото со склада'**
  String get orderWarehousePhotos;

  /// Quantity and unit price of an order item
  ///
  /// In ru, this message translates to:
  /// **'{quantity} × {price}'**
  String orderItemPrice(String quantity, String price);

  /// Screen-reader label of a photo
  ///
  /// In ru, this message translates to:
  /// **'Фото {index}'**
  String orderPhoto(String index);

  /// Parcels of an order
  ///
  /// In ru, this message translates to:
  /// **'Посылки'**
  String get orderParcels;

  /// Delivery card title
  ///
  /// In ru, this message translates to:
  /// **'Доставка'**
  String get orderDelivery;

  /// Delivery type row
  ///
  /// In ru, this message translates to:
  /// **'Способ'**
  String get orderDeliveryType;

  /// Money card title
  ///
  /// In ru, this message translates to:
  /// **'Оплата'**
  String get orderMoney;

  /// Already paid for an order
  ///
  /// In ru, this message translates to:
  /// **'Оплачено'**
  String get orderPaid;

  /// Still to pay for an order
  ///
  /// In ru, this message translates to:
  /// **'Осталось оплатить'**
  String get orderDue;

  /// Status history card title
  ///
  /// In ru, this message translates to:
  /// **'История'**
  String get orderHistory;

  /// Cancel order button
  ///
  /// In ru, this message translates to:
  /// **'Отменить заказ'**
  String get orderCancel;

  /// Cancel order sheet title
  ///
  /// In ru, this message translates to:
  /// **'Отмена заказа'**
  String get orderCancelTitle;

  /// Keep the order
  ///
  /// In ru, this message translates to:
  /// **'Не отменять'**
  String get orderCancelKeep;

  /// Cancel reason list header
  ///
  /// In ru, this message translates to:
  /// **'Почему отменяете?'**
  String get orderCancelReason;

  /// Refund on cancel. destination comes from the server, e.g. «на баланс»
  ///
  /// In ru, this message translates to:
  /// **'Вернём {amount} {destination}'**
  String orderCancelRefund(String amount, String destination);

  /// Toast after cancelling
  ///
  /// In ru, this message translates to:
  /// **'Заказ отменён'**
  String get orderCancelled;

  /// Toast after a problem decision
  ///
  /// In ru, this message translates to:
  /// **'Решение отправлено'**
  String get orderDecisionSent;

  /// Parcels list title
  ///
  /// In ru, this message translates to:
  /// **'Мои посылки'**
  String get parcelsTitle;

  /// Empty parcels list
  ///
  /// In ru, this message translates to:
  /// **'Посылок пока нет'**
  String get parcelsEmpty;

  /// Empty parcels list text
  ///
  /// In ru, this message translates to:
  /// **'Когда товары приедут на склад, мы соберём их в посылку'**
  String get parcelsEmptyText;

  /// Parcel title
  ///
  /// In ru, this message translates to:
  /// **'Посылка {number}'**
  String parcelNumber(String number);

  /// Expected arrival in a parcel card
  ///
  /// In ru, this message translates to:
  /// **'Ожидается {range}'**
  String parcelEta(String range);

  /// Above the big ETA on the tracking card
  ///
  /// In ru, this message translates to:
  /// **'Ожидается'**
  String get parcelExpected;

  /// Weight in kilograms
  ///
  /// In ru, this message translates to:
  /// **'{kg} кг'**
  String parcelWeight(String kg);

  /// Parcel stage
  ///
  /// In ru, this message translates to:
  /// **'Формируется'**
  String get parcelStageForming;

  /// Parcel stage
  ///
  /// In ru, this message translates to:
  /// **'Доплата'**
  String get parcelStageSurcharge;

  /// Parcel stage
  ///
  /// In ru, this message translates to:
  /// **'В пути'**
  String get parcelStageInTransit;

  /// Parcel stage
  ///
  /// In ru, this message translates to:
  /// **'Таможня'**
  String get parcelStageCustoms;

  /// Parcel stage
  ///
  /// In ru, this message translates to:
  /// **'Прибыла'**
  String get parcelStageArrived;

  /// Parcel stage: at the pickup point or with the courier
  ///
  /// In ru, this message translates to:
  /// **'Готова к выдаче'**
  String get parcelStageHandover;

  /// Parcel stage
  ///
  /// In ru, this message translates to:
  /// **'Выдана'**
  String get parcelStageDelivered;

  /// Screen-reader text of the parcel progress
  ///
  /// In ru, this message translates to:
  /// **'Этап {step} из {total}: {stage}'**
  String parcelProgressSpoken(String step, String total, String stage);

  /// Surcharge card title
  ///
  /// In ru, this message translates to:
  /// **'Доплата за доставку'**
  String get parcelSurchargeTitle;

  /// Surcharge calculation row
  ///
  /// In ru, this message translates to:
  /// **'Фактический вес'**
  String get parcelSurchargeWeight;

  /// Surcharge calculation row
  ///
  /// In ru, this message translates to:
  /// **'Тариф'**
  String get parcelSurchargeRate;

  /// Delivery rate
  ///
  /// In ru, this message translates to:
  /// **'{price} за кг'**
  String parcelRatePerKg(String price);

  /// Surcharge calculation row
  ///
  /// In ru, this message translates to:
  /// **'Стоимость доставки'**
  String get parcelSurchargeCost;

  /// Surcharge calculation row
  ///
  /// In ru, this message translates to:
  /// **'Уже оплачено'**
  String get parcelSurchargePaid;

  /// Surcharge result
  ///
  /// In ru, this message translates to:
  /// **'К доплате'**
  String get parcelSurchargeDue;

  /// Surcharge result when the estimate was higher
  ///
  /// In ru, this message translates to:
  /// **'Вернём на баланс'**
  String get parcelSurchargeRefund;

  /// Pickup code card title
  ///
  /// In ru, this message translates to:
  /// **'Код выдачи'**
  String get parcelPickupCode;

  /// Under the pickup code
  ///
  /// In ru, this message translates to:
  /// **'Назовите код в пункте выдачи. Нажмите, чтобы скопировать'**
  String get parcelPickupCodeHint;

  /// Screen-reader label of the pickup code
  ///
  /// In ru, this message translates to:
  /// **'Код выдачи {code}, скопировать'**
  String parcelPickupCodeSpoken(String code);

  /// Amount to pay at handover
  ///
  /// In ru, this message translates to:
  /// **'К оплате при получении'**
  String get parcelDueAtHandover;

  /// Courier card title
  ///
  /// In ru, this message translates to:
  /// **'Курьер'**
  String get parcelCourier;

  /// Forming parcel explanation
  ///
  /// In ru, this message translates to:
  /// **'Собираем посылку из ваших товаров на складе в Китае'**
  String get parcelFormingText;

  /// Free storage end date
  ///
  /// In ru, this message translates to:
  /// **'Бесплатное хранение до {date}'**
  String parcelFreeStorage(String date);

  /// Send a forming parcel without waiting
  ///
  /// In ru, this message translates to:
  /// **'Отправить сейчас'**
  String get parcelSendNow;

  /// Send now confirmation title
  ///
  /// In ru, this message translates to:
  /// **'Отправить без остальных товаров?'**
  String get parcelSendNowTitle;

  /// Send now confirmation text
  ///
  /// In ru, this message translates to:
  /// **'Посылка уйдёт сейчас, остальные товары приедут отдельно. Доставка может выйти дороже'**
  String get parcelSendNowText;

  /// Send now confirmation: wait
  ///
  /// In ru, this message translates to:
  /// **'Подождать'**
  String get parcelSendNowKeep;

  /// Toast after send now
  ///
  /// In ru, this message translates to:
  /// **'Посылка отправлена'**
  String get parcelSent;

  /// Parcel items card title
  ///
  /// In ru, this message translates to:
  /// **'Состав'**
  String get parcelContents;

  /// Parcel item caption
  ///
  /// In ru, this message translates to:
  /// **'{quantity} шт. · заказ №{order}'**
  String parcelItemFrom(String quantity, String order);

  /// Claim deadline after handover
  ///
  /// In ru, this message translates to:
  /// **'Если с товаром что-то не так, оформите претензию до {date}'**
  String parcelClaimUntil(String date);

  /// Profile stat pill and menu row
  ///
  /// In ru, this message translates to:
  /// **'Баланс'**
  String get profileBalance;

  /// Profile stat pill
  ///
  /// In ru, this message translates to:
  /// **'Долг'**
  String get profileDebt;

  /// Profile stat pill
  ///
  /// In ru, this message translates to:
  /// **'Бонусы'**
  String get profileBonuses;

  /// Wholesale customer badge
  ///
  /// In ru, this message translates to:
  /// **'Опт'**
  String get profileWholesaleBadge;

  /// Profile menu row
  ///
  /// In ru, this message translates to:
  /// **'Мои заказы'**
  String get profileOrders;

  /// Profile menu row
  ///
  /// In ru, this message translates to:
  /// **'Мои посылки'**
  String get profileParcels;

  /// Profile menu row
  ///
  /// In ru, this message translates to:
  /// **'Доплаты и возвраты'**
  String get profileSurcharges;

  /// Profile menu row
  ///
  /// In ru, this message translates to:
  /// **'Адреса'**
  String get profileAddresses;

  /// Profile menu row
  ///
  /// In ru, this message translates to:
  /// **'Просмотренные'**
  String get profileViewed;

  /// Profile menu row
  ///
  /// In ru, this message translates to:
  /// **'Мои отзывы'**
  String get profileReviews;

  /// Profile menu row
  ///
  /// In ru, this message translates to:
  /// **'Подписки на снижение цены'**
  String get profilePriceAlerts;

  /// Profile menu row
  ///
  /// In ru, this message translates to:
  /// **'Уведомления'**
  String get profileNotifications;

  /// Profile menu row
  ///
  /// In ru, this message translates to:
  /// **'Поддержка'**
  String get profileSupport;

  /// Profile menu row for retail customers
  ///
  /// In ru, this message translates to:
  /// **'Стать оптовиком'**
  String get profileBecomeWholesale;

  /// Profile menu row for wholesale customers
  ///
  /// In ru, this message translates to:
  /// **'Опт: документы'**
  String get profileWholesaleDocs;

  /// Profile menu row
  ///
  /// In ru, this message translates to:
  /// **'Информация'**
  String get profileInfo;

  /// Profile menu row
  ///
  /// In ru, this message translates to:
  /// **'Настройки'**
  String get profileSettings;

  /// Sign out row and confirm button
  ///
  /// In ru, this message translates to:
  /// **'Выйти'**
  String get profileSignOut;

  /// Sign out confirmation title
  ///
  /// In ru, this message translates to:
  /// **'Выйти из аккаунта?'**
  String get profileSignOutTitle;

  /// Sign out confirmation text
  ///
  /// In ru, this message translates to:
  /// **'Корзина и избранное на этом телефоне останутся'**
  String get profileSignOutText;

  /// Sign out confirmation: stay
  ///
  /// In ru, this message translates to:
  /// **'Остаться'**
  String get profileSignOutKeep;

  /// Guest sign-in card title
  ///
  /// In ru, this message translates to:
  /// **'Войдите, чтобы видеть заказы'**
  String get profileGuestTitle;

  /// Guest sign-in card text
  ///
  /// In ru, this message translates to:
  /// **'Заказы, посылки и баланс — в одном месте'**
  String get profileGuestText;

  /// Guest sign-in button
  ///
  /// In ru, this message translates to:
  /// **'Войти'**
  String get profileSignIn;

  /// Language row
  ///
  /// In ru, this message translates to:
  /// **'Язык'**
  String get profileLanguage;

  /// Tooltip of the filled price bell on the product page
  ///
  /// In ru, this message translates to:
  /// **'Не сообщать о снижении цены'**
  String get productPriceAlertOff;

  /// Toast after subscribing to a price drop
  ///
  /// In ru, this message translates to:
  /// **'Сообщим, когда цена снизится'**
  String get priceAlertOn;

  /// Toast after unsubscribing from a price drop
  ///
  /// In ru, this message translates to:
  /// **'Больше не следим за ценой'**
  String get priceAlertOff;

  /// Favourites sort: newest first
  ///
  /// In ru, this message translates to:
  /// **'Добавлены недавно'**
  String get favouritesSortRecent;

  /// Favourites sort: by price, cheapest first
  ///
  /// In ru, this message translates to:
  /// **'Сначала дешевле'**
  String get favouritesSortPrice;

  /// Favourites sort: biggest discount or price drop first
  ///
  /// In ru, this message translates to:
  /// **'По скидке'**
  String get favouritesSortDiscount;

  /// Starts bulk selection on Favourites
  ///
  /// In ru, this message translates to:
  /// **'Выбрать'**
  String get favouritesSelect;

  /// Ends bulk selection on Favourites
  ///
  /// In ru, this message translates to:
  /// **'Готово'**
  String get favouritesDone;

  /// Ticks every favourite
  ///
  /// In ru, this message translates to:
  /// **'Выбрать все'**
  String get favouritesSelectAll;

  /// Unticks every favourite
  ///
  /// In ru, this message translates to:
  /// **'Снять выбор'**
  String get favouritesUnselectAll;

  /// Number of ticked favourites above the action bar
  ///
  /// In ru, this message translates to:
  /// **'Выбрано: {count}'**
  String favouritesSelected(int count);

  /// Screen-reader label of a tile's tick
  ///
  /// In ru, this message translates to:
  /// **'Выбрать: {title}'**
  String favouritesSelectItem(String title);

  /// Green strip on a favourite whose price dropped since it was saved
  ///
  /// In ru, this message translates to:
  /// **'Цена снизилась −{percent}%'**
  String favouritesPriceDrop(int percent);

  /// Link under a sold-out favourite
  ///
  /// In ru, this message translates to:
  /// **'Похожие'**
  String get favouritesSimilar;

  /// Empty Favourites title
  ///
  /// In ru, this message translates to:
  /// **'Сохраняйте товары, чтобы не потерять'**
  String get favouritesEmptyTitle;

  /// Empty Favourites hint
  ///
  /// In ru, this message translates to:
  /// **'Нажмите ♡ на карточке товара — он появится здесь'**
  String get favouritesEmptyText;

  /// Soft banner for guests on Favourites
  ///
  /// In ru, this message translates to:
  /// **'Войдите, чтобы избранное было на всех устройствах'**
  String get favouritesGuestBanner;

  /// Toast after removing favourites, with Undo
  ///
  /// In ru, this message translates to:
  /// **'{count, plural, one{Удалён {count} товар} few{Удалено {count} товара} other{Удалено {count} товаров}}'**
  String favouritesRemoved(int count);

  /// Toast after adding ticked favourites to the cart
  ///
  /// In ru, this message translates to:
  /// **'{count, plural, one{В корзину добавлен {count} товар} few{В корзину добавлено {count} товара} other{В корзину добавлено {count} товаров}}'**
  String favouritesAddedToCart(int count);

  /// Today's prices of favourites could not be loaded; saved ones are shown
  ///
  /// In ru, this message translates to:
  /// **'Не удалось обновить цены'**
  String get favouritesRefreshFailed;

  /// Day heading for today
  ///
  /// In ru, this message translates to:
  /// **'Сегодня'**
  String get dateToday;

  /// Day heading for yesterday
  ///
  /// In ru, this message translates to:
  /// **'Вчера'**
  String get dateYesterday;

  /// Tooltip of the Viewed screen menu
  ///
  /// In ru, this message translates to:
  /// **'Ещё'**
  String get viewedMenu;

  /// Menu item that clears viewed products
  ///
  /// In ru, this message translates to:
  /// **'Очистить историю'**
  String get viewedClear;

  /// Confirm dialog title
  ///
  /// In ru, this message translates to:
  /// **'Очистить историю просмотров?'**
  String get viewedClearTitle;

  /// Confirm dialog text
  ///
  /// In ru, this message translates to:
  /// **'Список просмотренных товаров удалится с этого устройства.'**
  String get viewedClearText;

  /// Confirm button
  ///
  /// In ru, this message translates to:
  /// **'Очистить'**
  String get viewedClearConfirm;

  /// Empty Viewed title
  ///
  /// In ru, this message translates to:
  /// **'Вы ещё ничего не смотрели'**
  String get viewedEmptyTitle;

  /// Empty Viewed hint
  ///
  /// In ru, this message translates to:
  /// **'Здесь появятся товары, которые вы открывали'**
  String get viewedEmptyText;

  /// Empty price alerts title
  ///
  /// In ru, this message translates to:
  /// **'Подписок пока нет'**
  String get priceAlertsEmptyTitle;

  /// Empty price alerts hint
  ///
  /// In ru, this message translates to:
  /// **'Нажмите на колокольчик в карточке товара — сообщим, когда цена снизится'**
  String get priceAlertsEmptyText;

  /// Green pill: how much the price fell since subscribing
  ///
  /// In ru, this message translates to:
  /// **'−{percent}%'**
  String priceAlertsDrop(int percent);

  /// Price when the customer subscribed
  ///
  /// In ru, this message translates to:
  /// **'При подписке: {price}'**
  String priceAlertsSubscribedAt(String price);

  /// Screen-reader label of a price alert switch
  ///
  /// In ru, this message translates to:
  /// **'Сообщать о снижении цены: {title}'**
  String priceAlertsSwitch(String title);

  /// Caption under the balance on the hero card
  ///
  /// In ru, this message translates to:
  /// **'Доступно для оплаты заказов'**
  String get walletHeroCaption;

  /// Debt row on the balance card
  ///
  /// In ru, this message translates to:
  /// **'Долг {amount}'**
  String walletDebt(String amount);

  /// Opens the surcharges to pay the debt
  ///
  /// In ru, this message translates to:
  /// **'Погасить'**
  String get walletPayDebt;

  /// Top-up button on the balance card
  ///
  /// In ru, this message translates to:
  /// **'Пополнить'**
  String get walletTopUp;

  /// Heading of the balance operations
  ///
  /// In ru, this message translates to:
  /// **'История операций'**
  String get walletHistory;

  /// Empty balance history
  ///
  /// In ru, this message translates to:
  /// **'Операций пока нет'**
  String get walletNoOperations;

  /// Next page of operations failed
  ///
  /// In ru, this message translates to:
  /// **'Не удалось загрузить ещё'**
  String get walletLoadMoreFailed;

  /// Top-up sheet title
  ///
  /// In ru, this message translates to:
  /// **'Пополнение баланса'**
  String get walletTopUpTitle;

  /// Top-up amount field label
  ///
  /// In ru, this message translates to:
  /// **'Сумма, TMT'**
  String get walletTopUpAmount;

  /// Allowed top-up amounts
  ///
  /// In ru, this message translates to:
  /// **'От {min} до {max} TMT'**
  String walletTopUpRange(String min, String max);

  /// Starts a card top-up
  ///
  /// In ru, this message translates to:
  /// **'Пополнить картой'**
  String get walletTopUpByCard;

  /// Top-up success title
  ///
  /// In ru, this message translates to:
  /// **'Баланс пополнен'**
  String get walletTopUpDone;

  /// Surcharge paid: toast and success title
  ///
  /// In ru, this message translates to:
  /// **'Доплата оплачена'**
  String get walletSurchargePaid;

  /// Leaves the wallet payment result
  ///
  /// In ru, this message translates to:
  /// **'Готово'**
  String get walletDone;

  /// No final payment answer after a minute
  ///
  /// In ru, this message translates to:
  /// **'Банк пока не ответил. Если деньги списались, баланс обновится сам'**
  String get walletPaymentTimeout;

  /// Under a failed wallet payment
  ///
  /// In ru, this message translates to:
  /// **'Деньги не списаны. Попробуйте ещё раз'**
  String get walletPaymentFailedText;

  /// Surcharge payment method sheet title
  ///
  /// In ru, this message translates to:
  /// **'Чем оплатить'**
  String get walletPayTitle;

  /// Pay a surcharge from the balance
  ///
  /// In ru, this message translates to:
  /// **'С баланса'**
  String get walletPayFromBalance;

  /// Pay a surcharge by card
  ///
  /// In ru, this message translates to:
  /// **'Картой'**
  String get walletPayByCard;

  /// Balance available for paying
  ///
  /// In ru, this message translates to:
  /// **'Доступно {amount}'**
  String walletAvailable(String amount);

  /// Balance too small for this surcharge
  ///
  /// In ru, this message translates to:
  /// **'Недостаточно средств: {amount}'**
  String walletNotEnough(String amount);

  /// Surcharges tab
  ///
  /// In ru, this message translates to:
  /// **'К оплате'**
  String get walletTabDue;

  /// Refunds tab
  ///
  /// In ru, this message translates to:
  /// **'Возвраты'**
  String get walletTabRefunds;

  /// Surcharge deadline
  ///
  /// In ru, this message translates to:
  /// **'Оплатить до {date}'**
  String walletPayUntil(String date);

  /// No surcharges to pay
  ///
  /// In ru, this message translates to:
  /// **'Доплат нет'**
  String get walletNoSurchargesTitle;

  /// Explains when surcharges appear
  ///
  /// In ru, this message translates to:
  /// **'Если после взвешивания или у продавца изменится цена, счёт появится здесь'**
  String get walletNoSurchargesText;

  /// No refunds
  ///
  /// In ru, this message translates to:
  /// **'Возвратов нет'**
  String get walletNoRefundsTitle;

  /// Explains when refunds appear
  ///
  /// In ru, this message translates to:
  /// **'Здесь появятся деньги, которые мы вернём за отменённые товары'**
  String get walletNoRefundsText;

  /// Refund destination
  ///
  /// In ru, this message translates to:
  /// **'На баланс'**
  String get walletRefundToBalance;

  /// Refund destination
  ///
  /// In ru, this message translates to:
  /// **'На карту'**
  String get walletRefundToCard;

  /// Refund destination
  ///
  /// In ru, this message translates to:
  /// **'Наличными'**
  String get walletRefundInCash;

  /// Where a refund goes and when it was made
  ///
  /// In ru, this message translates to:
  /// **'{destination} · {date}'**
  String walletRefundLine(String destination, String date);

  /// Refund status
  ///
  /// In ru, this message translates to:
  /// **'Оформлен'**
  String get walletRefundCreated;

  /// Refund status
  ///
  /// In ru, this message translates to:
  /// **'Одобрен'**
  String get walletRefundApproved;

  /// Refund status
  ///
  /// In ru, this message translates to:
  /// **'Выплачен'**
  String get walletRefundPaid;

  /// Heading of the login-code channel choice
  ///
  /// In ru, this message translates to:
  /// **'Код входа приходит в'**
  String get settingsCodeChannel;

  /// Code channel
  ///
  /// In ru, this message translates to:
  /// **'SMS'**
  String get settingsChannelSms;

  /// Code channel
  ///
  /// In ru, this message translates to:
  /// **'Telegram'**
  String get settingsChannelTelegram;

  /// Code channel
  ///
  /// In ru, this message translates to:
  /// **'Email'**
  String get settingsChannelEmail;

  /// Links a channel or account not linked yet
  ///
  /// In ru, this message translates to:
  /// **'Привязать'**
  String get settingsLink;

  /// Under a service notification type that cannot be turned off
  ///
  /// In ru, this message translates to:
  /// **'Обязательные'**
  String get settingsRequired;

  /// Server settings failed to load
  ///
  /// In ru, this message translates to:
  /// **'Не удалось загрузить настройки аккаунта'**
  String get settingsLoadFailed;

  /// Google account row
  ///
  /// In ru, this message translates to:
  /// **'Google аккаунт'**
  String get settingsGoogle;

  /// About row
  ///
  /// In ru, this message translates to:
  /// **'О приложении'**
  String get settingsAbout;

  /// App version
  ///
  /// In ru, this message translates to:
  /// **'Версия {version}'**
  String settingsVersion(String version);

  /// Danger row and the deletion screen title
  ///
  /// In ru, this message translates to:
  /// **'Удалить аккаунт'**
  String get settingsDeleteAccount;

  /// Toast after linking a channel
  ///
  /// In ru, this message translates to:
  /// **'Код входа будет приходить в {channel}'**
  String settingsChannelLinked(String channel);

  /// Channel link sheet title
  ///
  /// In ru, this message translates to:
  /// **'Привязать {channel}'**
  String settingsLinkTitle(String channel);

  /// Email field label
  ///
  /// In ru, this message translates to:
  /// **'Email'**
  String get settingsEmailLabel;

  /// Sends a code to the email
  ///
  /// In ru, this message translates to:
  /// **'Получить код'**
  String get settingsGetCode;

  /// Above the email code field
  ///
  /// In ru, this message translates to:
  /// **'Мы отправили код на почту. Введите его:'**
  String get settingsEmailCodeSent;

  /// How to link Telegram
  ///
  /// In ru, this message translates to:
  /// **'Откройте Telegram, найдите {bot} и отправьте ему этот код. Потом нажмите «Проверить».'**
  String settingsTelegramSteps(String bot);

  /// Telegram check found no message yet
  ///
  /// In ru, this message translates to:
  /// **'Бот ещё не получил код. Отправьте его и проверьте снова'**
  String get settingsTelegramNotYet;

  /// Checks that the bot got the code
  ///
  /// In ru, this message translates to:
  /// **'Проверить'**
  String get settingsTelegramCheck;

  /// Toast after copying the Telegram code
  ///
  /// In ru, this message translates to:
  /// **'Код скопирован'**
  String get settingsCodeCopied;

  /// Toast after deleting the account
  ///
  /// In ru, this message translates to:
  /// **'Аккаунт удалён'**
  String get settingsDeleted;

  /// Deletion warning title
  ///
  /// In ru, this message translates to:
  /// **'Удалить аккаунт?'**
  String get settingsDeleteTitle;

  /// Deletion consequence
  ///
  /// In ru, this message translates to:
  /// **'Удалятся заказы, посылки и история операций'**
  String get settingsDeleteLoseOrders;

  /// Deletion consequence
  ///
  /// In ru, this message translates to:
  /// **'Удалятся избранное, адреса и подписки'**
  String get settingsDeleteLoseFavourites;

  /// Deletion consequence
  ///
  /// In ru, this message translates to:
  /// **'Восстановить аккаунт будет нельзя'**
  String get settingsDeleteForever;

  /// Warning about active orders
  ///
  /// In ru, this message translates to:
  /// **'{count, plural, one{{count} активный заказ} few{{count} активных заказа} other{{count} активных заказов}}. После удаления следить за ними в приложении не получится'**
  String settingsDeleteActiveOrders(int count);

  /// Warning about money left on the balance
  ///
  /// In ru, this message translates to:
  /// **'На балансе {amount} — после удаления они сгорят. Потратьте их или напишите в поддержку'**
  String settingsDeleteBalance(String amount);

  /// Deletion refused without a server reason
  ///
  /// In ru, this message translates to:
  /// **'Сейчас аккаунт удалить нельзя'**
  String get settingsDeleteBlocked;

  /// Opens surcharges from the deletion screen
  ///
  /// In ru, this message translates to:
  /// **'Погасить долг {amount}'**
  String settingsDeletePayDebt(String amount);

  /// Leaves the deletion flow
  ///
  /// In ru, this message translates to:
  /// **'Оставить аккаунт'**
  String get settingsDeleteKeep;

  /// Deletion code step title
  ///
  /// In ru, this message translates to:
  /// **'Подтвердите удаление'**
  String get settingsDeleteCodeTitle;

  /// Where the deletion code went
  ///
  /// In ru, this message translates to:
  /// **'Код отправлен в SMS на {phone}'**
  String settingsDeleteCodeSent(String phone);

  /// Final destructive button
  ///
  /// In ru, this message translates to:
  /// **'Удалить аккаунт навсегда'**
  String get settingsDeleteFinal;

  /// Profile edit screen title and the header edit button
  ///
  /// In ru, this message translates to:
  /// **'Личные данные'**
  String get profileEditTitle;

  /// First name field
  ///
  /// In ru, this message translates to:
  /// **'Имя'**
  String get profileEditFirstName;

  /// Last name field
  ///
  /// In ru, this message translates to:
  /// **'Фамилия'**
  String get profileEditLastName;

  /// Helper under the optional email field
  ///
  /// In ru, this message translates to:
  /// **'Необязательно'**
  String get profileEditOptional;

  /// Email does not look like one
  ///
  /// In ru, this message translates to:
  /// **'Неверный email'**
  String get profileEditBadEmail;

  /// Starts the phone change
  ///
  /// In ru, this message translates to:
  /// **'Изменить'**
  String get profileEditChange;

  /// Saves the profile
  ///
  /// In ru, this message translates to:
  /// **'Сохранить'**
  String get profileEditSave;

  /// Toast after saving the profile
  ///
  /// In ru, this message translates to:
  /// **'Данные сохранены'**
  String get profileEditSaved;

  /// Leaving the edit screen with unsaved changes
  ///
  /// In ru, this message translates to:
  /// **'Не сохранять изменения?'**
  String get profileEditDiscardTitle;

  /// Stays on the edit screen
  ///
  /// In ru, this message translates to:
  /// **'Продолжить'**
  String get profileEditKeepEditing;

  /// Leaves without saving
  ///
  /// In ru, this message translates to:
  /// **'Не сохранять'**
  String get profileEditDiscard;

  /// Phone change sheet title
  ///
  /// In ru, this message translates to:
  /// **'Новый номер телефона'**
  String get profileEditPhoneTitle;

  /// Explains the phone change
  ///
  /// In ru, this message translates to:
  /// **'Пришлём код на новый номер. Старый номер больше не будет входить в аккаунт.'**
  String get profileEditPhoneText;

  /// Where the phone change code went
  ///
  /// In ru, this message translates to:
  /// **'Код отправлен на {destination}'**
  String profileEditCodeSent(String destination);

  /// Back to entering the new number
  ///
  /// In ru, this message translates to:
  /// **'Другой номер'**
  String get profileEditOtherNumber;

  /// Toast after the phone changed
  ///
  /// In ru, this message translates to:
  /// **'Номер изменён'**
  String get profileEditPhoneChanged;

  /// Marks every notification read
  ///
  /// In ru, this message translates to:
  /// **'Прочитать все'**
  String get notificationsReadAll;

  /// Group of notifications before today
  ///
  /// In ru, this message translates to:
  /// **'Ранее'**
  String get notificationsEarlier;

  /// Empty notification centre
  ///
  /// In ru, this message translates to:
  /// **'Уведомлений пока нет'**
  String get notificationsEmptyTitle;

  /// Empty notification centre hint
  ///
  /// In ru, this message translates to:
  /// **'Здесь появятся новости о ваших заказах'**
  String get notificationsEmptyText;

  /// Behind a row swiped to mark it read
  ///
  /// In ru, this message translates to:
  /// **'Прочитано'**
  String get notificationsMarkRead;

  /// Less than a minute ago
  ///
  /// In ru, this message translates to:
  /// **'только что'**
  String get dateJustNow;

  /// Minutes ago
  ///
  /// In ru, this message translates to:
  /// **'{count} мин назад'**
  String dateMinutesAgo(int count);

  /// Hours ago
  ///
  /// In ru, this message translates to:
  /// **'{count} ч назад'**
  String dateHoursAgo(int count);

  /// Unread count above the list
  ///
  /// In ru, this message translates to:
  /// **'Непрочитанных: {count}'**
  String notificationsUnread(int count);
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ru', 'tk'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ru':
      return AppLocalizationsRu();
    case 'tk':
      return AppLocalizationsTk();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
