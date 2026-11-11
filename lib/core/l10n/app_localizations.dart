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
