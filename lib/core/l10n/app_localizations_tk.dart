// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkmen (`tk`).
class AppLocalizationsTk extends AppLocalizations {
  AppLocalizationsTk([String locale = 'tk']) : super(locale);

  @override
  String get appName => 'TM Shop';

  @override
  String get comingSoon => 'Bu bölüm ýakyn wagtda goşular';

  @override
  String get offlineTitle => 'Birikme ýok';

  @override
  String get offlineMessage =>
      'Interneti barlaň — birikme dikelen badyna sahypany täzeläris';

  @override
  String get catalogAllProducts => 'Ähli harytlar';

  @override
  String get catalogFilters => 'Süzgüçler';

  @override
  String catalogFiltersActive(int count) {
    return 'Süzgüçler, saýlandy: $count';
  }

  @override
  String get catalogSortTitle => 'Tertipleşdirmek';

  @override
  String get catalogViewGrid => 'Tor görnüşinde görkez';

  @override
  String get catalogViewList => 'Sanaw görnüşinde görkez';

  @override
  String catalogProductCount(int count, String formatted) {
    return '$formatted haryt';
  }

  @override
  String get catalogClearFilters => 'Hemmesini arassala';

  @override
  String get catalogEmptyFilteredTitle => 'Hiç zat tapylmady';

  @override
  String get catalogEmptyFilteredText => 'Süzgüçleriň käbirini aýyryp görüň';

  @override
  String get catalogEmptyTitle => 'Bu ýer häzirlikçe boş';

  @override
  String get catalogEmptyText => 'Bu kategoriýa ýakyn wagtda harytlar goşular';

  @override
  String get catalogNotFoundTitle => 'Kategoriýa tapylmady';

  @override
  String get catalogNotFoundText =>
      'Ol başga ýere geçen bolmagy mümkin. Kataloga göz aýlaň';

  @override
  String get listLoadMoreError => 'Ýene ýükläp bolmady';

  @override
  String get sortPopular => 'Meşhurlar';

  @override
  String get sortPriceAsc => 'Ilki arzanlar';

  @override
  String get sortPriceDesc => 'Ilki gymmatlar';

  @override
  String get sortNewest => 'Täzeler';

  @override
  String get sortRating => 'Ýokary reýtingliler';

  @override
  String get sortSales => 'Köp satylanlar';

  @override
  String filtersShow(int count, String formatted) {
    return '$formatted harydy görkez';
  }

  @override
  String get filtersApply => 'Harytlary görkez';

  @override
  String get filtersNothing => 'Hiç zat tapylmady';

  @override
  String get filtersReset => 'Arassala';

  @override
  String get filtersPriceFrom => 'Başlap';

  @override
  String get filtersPriceTo => 'Çenli';

  @override
  String filtersShowAll(int count) {
    return 'Hemmesini görkez ($count)';
  }

  @override
  String get filtersShowLess => 'Gysgalt';

  @override
  String get filtersSearch => 'Gözle';

  @override
  String filtersSelected(int count) {
    return 'Saýlandy: $count';
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
    return '$min TMT-dan';
  }

  @override
  String priceToChip(String max) {
    return '$max TMT çenli';
  }

  @override
  String get actionBack => 'Yza';

  @override
  String get actionGoTo => 'Geç';

  @override
  String get actionShowMore => 'Ýene';

  @override
  String get actionShowLess => 'Gysgalt';

  @override
  String get regionTitle => 'Eltip bermek sebiti';

  @override
  String get regionChange => 'Eltip bermek sebitini çalyş';

  @override
  String galleryCounter(int current, int total) {
    return '$current/$total';
  }

  @override
  String ratingSpoken(String rating) {
    return 'Reýting 5-den $rating';
  }

  @override
  String reviewCount(int count) {
    return '$count syn';
  }

  @override
  String get productPriceDepends => 'Bahasy görnüşine bagly';

  @override
  String productTier(int quantity, String price) {
    return '$quantity sanydan — $price';
  }

  @override
  String productInStock(int count) {
    return 'Bar: $count sany';
  }

  @override
  String productFewLeft(int count) {
    return '$count sany galdy';
  }

  @override
  String get productOutOfStock => 'Ýok';

  @override
  String get productUnavailableText =>
      'Bu haryt indi satylmaýar. Aşakdaky meňzeş harytlara serediň';

  @override
  String get productNotFoundTitle => 'Haryt tapylmady';

  @override
  String get productNotFoundText => 'Salgysy köne bolmagy mümkin';

  @override
  String productSelectOption(String option) {
    return '$option saýlaň';
  }

  @override
  String get productQuantity => 'Mukdary';

  @override
  String get productComment => 'Operator üçin teswir';

  @override
  String get productCommentHint => 'Meselem: satyn almazdan öň reňkini barlaň';

  @override
  String get productDelivery => 'Eltip bermek';

  @override
  String get productDeliveryError => 'Eltip bermegi hasaplap bolmady';

  @override
  String get productHowTitle => 'Bu nähili işleýär';

  @override
  String get productHowBuy =>
      'Haryt siziň sargydyňyz boýunça satyn alynýar — adatça 1–2 günde';

  @override
  String get productHowCancel =>
      'Sargydy diňe satyn alynmazdan öň ýatyryp bolýar';

  @override
  String get productHowWeight =>
      'Takyk agramy we eltip bermegiň bahasy Hytaýdaky ammarda belli bolar';

  @override
  String get productDescription => 'Düşündiriş';

  @override
  String get productShowAll => 'Doly görkez';

  @override
  String get productSpecs => 'Häsiýetnamasy';

  @override
  String get productSeller => 'Satyjy';

  @override
  String productSellerStats(String rating, String sales) {
    return '★ $rating · $sales satuw';
  }

  @override
  String get productSellerAll => 'Satyjynyň ähli harytlary';

  @override
  String get productReviews => 'Synlar';

  @override
  String get productAllReviews => 'Ähli synlar';

  @override
  String get productTranslated => 'Hytaý dilinden terjime edildi';

  @override
  String get productSimilar => 'Meňzeş harytlar';

  @override
  String get productBoughtTogether => 'Munuň bilen satyn alýarlar';

  @override
  String get productQuickOrder => 'Çalt sargyt';

  @override
  String get productFindSimilar => 'Meňzeşlerini tap';

  @override
  String get productPriceAlert => 'Baha arzanlasa habar ber';

  @override
  String get productAdded => 'Sebede goşuldy';

  @override
  String get productVideo => 'Wideo';

  @override
  String get cartSelectAll => 'Hemmesini saýla';

  @override
  String get cartOtherSeller => 'Beýleki harytlar';

  @override
  String cartChinaDelivery(String amount) {
    return 'Hytaýyň içinde eltip bermek: $amount';
  }

  @override
  String get cartChinaDeliveryPending =>
      'Hytaýyň içinde eltip bermek hasaplanýar';

  @override
  String cartPriceChanged(String oldPrice, String newPrice) {
    return 'Bahasy üýtgedi: $oldPrice → $newPrice';
  }

  @override
  String get cartUnavailable => 'Ýok — sargyda goşulmaz';

  @override
  String get cartRemoved => 'Haryt sebetden aýryldy';

  @override
  String cartSelectLine(String title) {
    return 'Sargyt üçin saýla: $title';
  }

  @override
  String get cartChangeVariant => 'Görnüşini üýtget';

  @override
  String get cartSaveVariant => 'Ýatda sakla';

  @override
  String get cartVariantGone => 'Bu haryt indi satylmaýar';

  @override
  String get cartPromo => 'Promokod';

  @override
  String get cartPromoHint => 'Promokody giriziň';

  @override
  String get cartPromoApply => 'Ulan';

  @override
  String cartPromoApplied(String code) {
    return '$code promokody ulanyldy';
  }

  @override
  String get cartCheckout => 'Resmileşdir';

  @override
  String cartCheckoutCount(int count) {
    return 'Resmileşdir ($count)';
  }

  @override
  String cartQuantityBadge(int count) {
    return '×$count';
  }

  @override
  String cartQuantitySpoken(int count) {
    return 'Mukdary: $count. Üýtget';
  }

  @override
  String get cartQuantityTitle => 'Mukdary';

  @override
  String get cartMoveToFavourites => 'Halanlaryma';

  @override
  String get cartMovedToFavourites => 'Haryt halanlaryma geçirildi';

  @override
  String get cartNothingSelected => 'Sargyt üçin harytlary belläň';

  @override
  String get cartEmptyTitle => 'Sebediňiz häzirlikçe boş';

  @override
  String get cartEmptyText => 'Baş sahypadan ýa-da katalogdan haryt goşuň';

  @override
  String get cartQuoteError => 'Jemini täzeden hasaplap bolmady';

  @override
  String get cartBreakdownTitle => 'Sargydyň jemi';

  @override
  String get checkoutTitle => 'Sargyt resmileşdirmek';

  @override
  String get checkoutRecipient => 'Alyjy';

  @override
  String get checkoutFirstName => 'Ady';

  @override
  String get checkoutLastName => 'Familiýasy';

  @override
  String get checkoutEdit => 'Üýtget';

  @override
  String get checkoutRecipientError =>
      'Adyňyzy, familiýaňyzy we telefonyňyzy görkeziň';

  @override
  String get checkoutReceiving => 'Almak';

  @override
  String get checkoutCourier => 'Kurýer';

  @override
  String get checkoutPickup => 'Özüň almak';

  @override
  String checkoutCourierPrice(String price) {
    return 'Kurýer: $price';
  }

  @override
  String checkoutCourierFree(String amount) {
    return '$amount-dan mugt';
  }

  @override
  String get checkoutStreet => 'Köçe we jaý';

  @override
  String get checkoutAddressDetails => 'Öý / nyşan';

  @override
  String get checkoutAddressError => 'Köçäni we jaýy görkeziň';

  @override
  String get checkoutPickupError => 'Bermek nokadyny saýlaň';

  @override
  String get checkoutDeliveryType => 'Eltip bermegiň görnüşi';

  @override
  String get checkoutDeliveryError => 'Elýeterli eltip bermek usuly ýok';

  @override
  String get checkoutServices => 'Goşmaça hyzmatlar';

  @override
  String get checkoutComment => 'Sargyda teswir';

  @override
  String get checkoutPayment => 'Töleg';

  @override
  String get checkoutPayCard => 'Kart bilen onlaýn';

  @override
  String get checkoutPayCardText => 'Bankyň sahypasy arkaly';

  @override
  String get checkoutPayCash => 'Ofisde nagt';

  @override
  String get checkoutPayCashText => 'Haryt satyn alynmazdan öň töläň';

  @override
  String checkoutAdvance(String now, String later) {
    return 'Häzir $now, galany $later — ölçenenden soň, almazdan öň';
  }

  @override
  String get checkoutTotal => 'Jemi';

  @override
  String get moneyCourier => 'Kurýer';

  @override
  String get moneyServices => 'Goşmaça hyzmatlar';

  @override
  String get checkoutConsent =>
      'Teklip bilen razy we düşünýärin: haryt sargyt boýunça satyn alynýar, diňe satyn alynmazdan öň ýatyryp bolýar';

  @override
  String get checkoutReadOffer => 'Teklibi okamak';

  @override
  String get checkoutConsentError => 'Razylygyňyzy tassyklaň';

  @override
  String checkoutPay(String amount) {
    return '$amount töle';
  }

  @override
  String get checkoutPlace => 'Sargyt et';

  @override
  String checkoutConfirmNew(String amount) {
    return '$amount tassykla';
  }

  @override
  String get checkoutPriceChanged =>
      'Siz sargyt edýärkäňiz jemi üýtgedi. Täze jemi barlaň';

  @override
  String get checkoutPreviewError => 'Sargydy hasaplap bolmady';

  @override
  String get checkoutSubmitError => 'Sargyt edip bolmady. Gaýtadan synanyşyň';

  @override
  String get paymentChecking => 'Tölegi barlaýarys…';

  @override
  String get paymentCheckingText =>
      'Bu bir minuda çenli wagt alar. Ekrany ýapmaň';

  @override
  String get paymentSuccessTitle => 'Sargyt kabul edildi';

  @override
  String paymentOrderNumber(String number) {
    return '№$number sargyt';
  }

  @override
  String get paymentNextStep =>
      'Harydy 1–2 günüň dowamynda satyn alarys we her ädim barada habar bereris';

  @override
  String get paymentCashNext =>
      'Sargydy ofisde töläň — tölegden soň harydy satyn alarys';

  @override
  String paymentPaid(String amount) {
    return '$amount tölendi';
  }

  @override
  String paymentDue(String amount) {
    return 'Ofisde tölemeli: $amount';
  }

  @override
  String get paymentToOrder => 'Sargyda geç';

  @override
  String get paymentToHome => 'Baş sahypa';

  @override
  String get paymentFailedTitle => 'Töleg geçmedi';

  @override
  String get paymentFailedText => 'Sargyt saklandy we tölege garaşýar';

  @override
  String get paymentRetry => 'Tölegi gaýtala';

  @override
  String get paymentTimeout =>
      'Bank entek jogap bermedi. Pul alnan bolsa, sargyt özi täzelener';

  @override
  String get homeNotifications => 'Bildirişler';

  @override
  String homeStoryNew(String title) {
    return 'Täze wideo: $title';
  }

  @override
  String get homePasteLinkTitle => 'Harydyň salgysyny goýuň';

  @override
  String homePasteLinkHint(String sources) {
    return '$sources — harydy tapyp, bahasyny hasaplarys';
  }

  @override
  String get homeAllCategories => 'Ähli kategoriýalar';

  @override
  String get homeDeliveryTerms => 'Eltip bermegiň möhletleri';

  @override
  String get homeForYou => 'Siziň üçin';

  @override
  String get homeForYouError => 'Harytlary ýükläp bolmady';

  @override
  String get homeEmptyTitle => 'Witrina ýakyn wagtda dolar';

  @override
  String get homeEmptyText =>
      'Kataloga göz aýlaň — ol ýerde harytlar eýýäm bar';

  @override
  String get homeRefreshFailed => 'Baş sahypany täzeläp bolmady';

  @override
  String get tabHome => 'Baş sahypa';

  @override
  String get tabCatalog => 'Katalog';

  @override
  String get tabCart => 'Sebet';

  @override
  String get tabFavourites => 'Halanlarym';

  @override
  String get tabProfile => 'Profil';

  @override
  String navCartCount(int count) {
    return '$count haryt';
  }

  @override
  String get navUnread => 'okalmadyk habarlar bar';

  @override
  String navTabSemantics(String tab, String state) {
    return '$tab, $state';
  }

  @override
  String get actionAddToCart => 'Sebede goş';

  @override
  String get actionBuyNow => 'Häzir satyn al';

  @override
  String get actionNext => 'Dowam et';

  @override
  String get actionCancel => 'Ýatyr';

  @override
  String get actionRetry => 'Gaýtadan synanyş';

  @override
  String get actionUndo => 'Yzyna gaýtar';

  @override
  String get actionSeeAll => 'Hemmesi';

  @override
  String get actionGoToCatalog => 'Kataloga geç';

  @override
  String get actionClose => 'Ýap';

  @override
  String get actionShare => 'Paýlaş';

  @override
  String get actionRemove => 'Aýyr';

  @override
  String get loading => 'Ýüklenýär';

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
    return '$amount manat';
  }

  @override
  String priceWithOldSpoken(String price, String oldPrice) {
    return '$price, öň $oldPrice';
  }

  @override
  String discountPercent(int percent) {
    return '−$percent%';
  }

  @override
  String get badgeHit => 'Hit';

  @override
  String get badgeNew => 'Täze';

  @override
  String get badgeIllustration => 'illýustrasiýa';

  @override
  String productSold(String count) {
    return '$count satyldy';
  }

  @override
  String compactThousands(String value) {
    return '$value müň';
  }

  @override
  String compactMillions(String value) {
    return '$value mln';
  }

  @override
  String get favouriteAdd => 'Halanlaryma goş';

  @override
  String get favouriteRemove => 'Halanlarymdan aýyr';

  @override
  String get quantityDecrease => 'Mukdaryny azalt';

  @override
  String get quantityIncrease => 'Mukdaryny artdyr';

  @override
  String get skuSizeChart => 'Ölçeg tablisasy';

  @override
  String skuUnavailable(String option) {
    return '$option — ýok';
  }

  @override
  String get searchHint => 'Haryt gözle';

  @override
  String get searchByPhoto => 'Surat boýunça gözleg';

  @override
  String get phoneLabel => 'Telefon belgisi';

  @override
  String get otpLabel => 'SMS kody';

  @override
  String get deliveryAfterWeighing => 'agramy ölçenenden soň takyklanar';

  @override
  String get deliveryAfterWeighingInfo =>
      'Harydyň takyk agramy Hytaýdaky ammarymyza gelende belli bolar. Eltip bermegiň bahasyny täzeden hasaplap, size habar bereris.';

  @override
  String get moneyItems => 'Harytlar';

  @override
  String get moneyChinaDelivery => 'Hytaýyň içinde eltip bermek';

  @override
  String get moneyInternationalDelivery => 'Halkara eltip bermek';

  @override
  String get moneyDiscount => 'Arzanladyş';

  @override
  String get moneyTotal => 'Jemi';

  @override
  String totalSpoken(String amount) {
    return 'Jemi: $amount';
  }

  @override
  String progressToMinimum(String amount) {
    return 'Ýene $amount möçberinde haryt goşuň';
  }

  @override
  String get progressMinimumReached => 'Sargydyň iň az möçberi ýygnaldy';

  @override
  String countdownWithDays(int days, String time) {
    return '$days g $time';
  }

  @override
  String get offlineBanner => 'Internet birikmesi ýok';

  @override
  String get errorGenericTitle => 'Bir zat ýalňyş gitdi';

  @override
  String get errorGenericMessage => 'Interneti barlaň we täzeden synanyşyň';

  @override
  String dateDayMonth(String day, String ending, String month) {
    String _temp0 = intl.Intl.selectLogic(ending, {
      'back': 'njy',
      'other': 'nji',
    });
    String _temp1 = intl.Intl.selectLogic(month, {
      'jan': 'ýanwar',
      'feb': 'fewral',
      'mar': 'mart',
      'apr': 'aprel',
      'may': 'maý',
      'jun': 'iýun',
      'jul': 'iýul',
      'aug': 'awgust',
      'sep': 'sentýabr',
      'oct': 'oktýabr',
      'nov': 'noýabr',
      'dec': 'dekabr',
      'other': '',
    });
    return '$day-$_temp0 $_temp1';
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
  String get loginTitle => 'Giriş';

  @override
  String get loginSubtitle => 'Belgiňizi giriziň — giriş üçin kod ibereris';

  @override
  String get loginPhoneError => 'Belgini doly giriziň: 8 san';

  @override
  String get loginConsent =>
      'Gizlinlik syýasaty we şahsy maglumatlaryň işlenilmegi bilen ylalaşýaryn';

  @override
  String get loginConsentError => 'Razylygyňyzy tassyklaň';

  @override
  String get loginReadPolicy => 'Syýasaty okamak';

  @override
  String get loginGetCode => 'Kod almak';

  @override
  String get loginOr => 'ýa-da';

  @override
  String get loginGoogle => 'Google arkaly girmek';

  @override
  String get loginCodeTitle => 'Kody giriziň';

  @override
  String loginCodeSent(String channel, String destination) {
    String _temp0 = intl.Intl.selectLogic(channel, {
      'telegram': 'Kod Telegram-a iberildi: $destination',
      'email': 'Kod poçta iberildi: $destination',
      'other': 'Kod SMS bilen iberildi: $destination',
    });
    return '$_temp0';
  }

  @override
  String loginResendIn(String time) {
    return '$time soň täzeden ibermek';
  }

  @override
  String get loginResend => 'Kody täzeden ibermek';

  @override
  String get loginChangePhone => 'Belgini üýtgetmek';

  @override
  String get loginBlockedTitle => 'Hasap petiklendi';

  @override
  String get ordersTitle => 'Meniň sargytlarym';

  @override
  String get ordersTabActive => 'Işjeň';

  @override
  String get ordersTabCompleted => 'Tamamlanan';

  @override
  String get ordersTabCancelled => 'Ýatyrylan';

  @override
  String get ordersEmptyActive => 'Işjeň sargyt ýok';

  @override
  String get ordersEmptyActiveText =>
      'Katalogdan bir zat saýlaň — satyn alyp, eltip bereris';

  @override
  String get ordersEmptyCompleted => 'Tamamlanan sargyt entek ýok';

  @override
  String get ordersEmptyCancelled => 'Ýatyrylan sargyt ýok';

  @override
  String ordersItemCount(int count) {
    return '$count haryt';
  }

  @override
  String ordersMoreItems(String count) {
    return '+$count';
  }

  @override
  String get ordersRepeat => 'Gaýtalamak';

  @override
  String ordersRepeatAdded(int count) {
    return '$count haryt sebede goşuldy';
  }

  @override
  String ordersRepeatPartly(int added, int missing) {
    return 'Sebede goşuldy: $added. Indi satylmaýar: $missing';
  }

  @override
  String get ordersRepeatNone => 'Bu harytlar indi satylmaýar';

  @override
  String get ordersOpenCart => 'Sebede geç';

  @override
  String ordersCachedAt(String time) {
    return 'Baglanyşyk ýok. Maglumatlar $time ýagdaýyna görä';
  }

  @override
  String get ordersCopied => 'Göçürildi';

  @override
  String get ordersCopy => 'Göçürmek';

  @override
  String get ordersFilterAwaitingPayment => 'Töleg garaşylýar';

  @override
  String get ordersFilterBuying => 'Satyn alýarys';

  @override
  String get ordersFilterInTransit => 'Ýolda';

  @override
  String get ordersFilterToReview => 'Syn garaşylýar';

  @override
  String get ordersFilterProblems => 'Meseleler';

  @override
  String ordersFilterSpoken(String label, int count) {
    return '$label: $count';
  }

  @override
  String get ordersTrackingOpen => 'Görmek';

  @override
  String get ordersFeedPay => 'Tölemek';

  @override
  String get ordersFeedPaySurcharge => 'Goşmaça tölemek';

  @override
  String get ordersFeedTrack => 'Yzarlamak';

  @override
  String get ordersFeedReview => 'Syn ýazmak';

  @override
  String get ordersFeedResolve => 'Çözmek';

  @override
  String get ordersFeedDetails => 'Jikme-jik';

  @override
  String ordersFeedDue(String amount) {
    return 'Tölemeli $amount';
  }

  @override
  String ordersFeedQuantity(int count) {
    return '×$count';
  }

  @override
  String get ordersFeedEmpty => 'Bu ýerde häzirlikçe boş';

  @override
  String get ordersFeedEmptyText =>
      'Şeýle sargytlar peýda bolanda, şu ýerde görersiňiz';

  @override
  String get profileRecommendations => 'Size ýarap biler';

  @override
  String orderNumber(String number) {
    return '№$number sargyt';
  }

  @override
  String orderCreatedAt(String date) {
    return 'Resmileşdirildi: $date';
  }

  @override
  String get orderPayWithin => 'Tölemek üçin galan wagt';

  @override
  String get orderDecideWithin => 'Karar bermek üçin galan wagt';

  @override
  String get orderItems => 'Harytlar';

  @override
  String get orderChinaTrack => 'Hytaý boýunça trek';

  @override
  String get orderWarehousePhotos => 'Ammardan suratlar';

  @override
  String orderItemPrice(String quantity, String price) {
    return '$quantity × $price';
  }

  @override
  String orderPhoto(String index) {
    return 'Surat $index';
  }

  @override
  String get orderParcels => 'Posylkalar';

  @override
  String get orderDelivery => 'Eltip bermek';

  @override
  String get orderDeliveryType => 'Görnüşi';

  @override
  String get orderMoney => 'Töleg';

  @override
  String get orderPaid => 'Tölendi';

  @override
  String get orderDue => 'Tölenmeli galan';

  @override
  String get orderHistory => 'Taryh';

  @override
  String get orderCancel => 'Sargydy ýatyrmak';

  @override
  String get orderCancelTitle => 'Sargydy ýatyrmak';

  @override
  String get orderCancelKeep => 'Ýatyrmazlyk';

  @override
  String get orderCancelReason => 'Näme üçin ýatyrýarsyňyz?';

  @override
  String orderCancelRefund(String amount, String destination) {
    return '$amount $destination gaýtararys';
  }

  @override
  String get orderCancelled => 'Sargyt ýatyryldy';

  @override
  String get orderDecisionSent => 'Karar iberildi';

  @override
  String get parcelsTitle => 'Meniň posylkalarym';

  @override
  String get parcelsEmpty => 'Entek posylka ýok';

  @override
  String get parcelsEmptyText =>
      'Harytlar ammara gelende, olary posylka ýygnarys';

  @override
  String parcelNumber(String number) {
    return '$number posylka';
  }

  @override
  String parcelEta(String range) {
    return 'Garaşylýar: $range';
  }

  @override
  String get parcelExpected => 'Garaşylýan wagty';

  @override
  String parcelWeight(String kg) {
    return '$kg kg';
  }

  @override
  String get parcelStageForming => 'Taýýarlanýar';

  @override
  String get parcelStageSurcharge => 'Goşmaça töleg';

  @override
  String get parcelStageInTransit => 'Ýolda';

  @override
  String get parcelStageCustoms => 'Gümrük';

  @override
  String get parcelStageArrived => 'Geldi';

  @override
  String get parcelStageHandover => 'Bermäge taýýar';

  @override
  String get parcelStageDelivered => 'Gowşuryldy';

  @override
  String parcelProgressSpoken(String step, String total, String stage) {
    return 'Tapgyr $step/$total: $stage';
  }

  @override
  String get parcelSurchargeTitle => 'Eltip bermek üçin goşmaça töleg';

  @override
  String get parcelSurchargeWeight => 'Hakyky agramy';

  @override
  String get parcelSurchargeRate => 'Nyrh';

  @override
  String parcelRatePerKg(String price) {
    return '1 kg üçin $price';
  }

  @override
  String get parcelSurchargeCost => 'Eltip bermegiň bahasy';

  @override
  String get parcelSurchargePaid => 'Eýýäm tölenen';

  @override
  String get parcelSurchargeDue => 'Goşmaça tölemeli';

  @override
  String get parcelSurchargeRefund => 'Balansa gaýtararys';

  @override
  String get parcelPickupCode => 'Bermek kody';

  @override
  String get parcelPickupCodeHint =>
      'Kody bermek nokadynda aýdyň. Göçürmek üçin basyň';

  @override
  String parcelPickupCodeSpoken(String code) {
    return 'Bermek kody $code, göçürmek';
  }

  @override
  String get parcelDueAtHandover => 'Alanyňyzda tölemeli';

  @override
  String get parcelCourier => 'Kurýer';

  @override
  String get parcelFormingText =>
      'Hytaýdaky ammarda harytlaryňyzdan posylka ýygnaýarys';

  @override
  String parcelFreeStorage(String date) {
    return '$date çenli mugt saklamak';
  }

  @override
  String get parcelSendNow => 'Häzir ibermek';

  @override
  String get parcelSendNowTitle => 'Galan harytlarsyz ibermelimi?';

  @override
  String get parcelSendNowText =>
      'Posylka häzir iberiler, galan harytlar aýratyn geler. Eltip bermek gymmat bolup biler';

  @override
  String get parcelSendNowKeep => 'Garaşmak';

  @override
  String get parcelSent => 'Posylka iberildi';

  @override
  String get parcelContents => 'Düzümi';

  @override
  String parcelItemFrom(String quantity, String order) {
    return '$quantity sany · №$order sargyt';
  }

  @override
  String parcelClaimUntil(String date) {
    return 'Haryt bilen mesele bolsa, $date çenli arz beriň';
  }

  @override
  String get profileBalance => 'Balans';

  @override
  String get profileDebt => 'Bergi';

  @override
  String get profileBonuses => 'Bonuslar';

  @override
  String get profileWholesaleBadge => 'Lomaý';

  @override
  String get profileOrders => 'Meniň sargytlarym';

  @override
  String get profileParcels => 'Meniň posylkalarym';

  @override
  String get profileSurcharges => 'Goşmaça tölegler we gaýtarmalar';

  @override
  String get profileAddresses => 'Salgylar';

  @override
  String get profileViewed => 'Görülenler';

  @override
  String get profileReviews => 'Meniň synlarym';

  @override
  String get profilePriceAlerts => 'Arzanlama ýazylmalary';

  @override
  String get profileNotifications => 'Habarnamalar';

  @override
  String get profileSupport => 'Goldaw';

  @override
  String get profileBecomeWholesale => 'Lomaý alyjy bolmak';

  @override
  String get profileWholesaleDocs => 'Lomaý: resminamalar';

  @override
  String get profileInfo => 'Maglumat';

  @override
  String get profileSettings => 'Sazlamalar';

  @override
  String get profileSignOut => 'Çykmak';

  @override
  String get profileSignOutTitle => 'Hasapdan çykmalymy?';

  @override
  String get profileSignOutText =>
      'Bu telefondaky sebet we halanlarym saklanar';

  @override
  String get profileSignOutKeep => 'Galmak';

  @override
  String get profileGuestTitle => 'Sargytlary görmek üçin giriň';

  @override
  String get profileGuestText => 'Sargytlar, posylkalar we balans — bir ýerde';

  @override
  String get profileSignIn => 'Girmek';

  @override
  String get profileLanguage => 'Dil';

  @override
  String get productPriceAlertOff => 'Arzanlama barada habar bermesin';

  @override
  String get priceAlertOn => 'Bahasy arzanlanda habar bereris';

  @override
  String get priceAlertOff => 'Indi bahasyny yzarlamarys';

  @override
  String get favouritesSortRecent => 'Soňky goşulanlar';

  @override
  String get favouritesSortPrice => 'Ilki arzanlary';

  @override
  String get favouritesSortDiscount => 'Arzanladyş boýunça';

  @override
  String get favouritesSelect => 'Saýla';

  @override
  String get favouritesDone => 'Taýýar';

  @override
  String get favouritesSelectAll => 'Hemmesini saýla';

  @override
  String get favouritesUnselectAll => 'Saýlawy aýyr';

  @override
  String favouritesSelected(int count) {
    return 'Saýlandy: $count';
  }

  @override
  String favouritesSelectItem(String title) {
    return 'Saýla: $title';
  }

  @override
  String favouritesPriceDrop(int percent) {
    return 'Bahasy −$percent% arzanlady';
  }

  @override
  String get favouritesSimilar => 'Meňzeşler';

  @override
  String get favouritesEmptyTitle => 'Ýitirmez ýaly harytlary saklaň';

  @override
  String get favouritesEmptyText =>
      'Harydyň kartoçkasynda ♡ basyň — ol şu ýerde peýda bolar';

  @override
  String get favouritesGuestBanner =>
      'Halanlaryňyz ähli enjamlarda bolar ýaly giriň';

  @override
  String favouritesRemoved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count haryt aýryldy',
      one: 'Halanlardan aýryldy',
    );
    return '$_temp0';
  }

  @override
  String favouritesAddedToCart(int count) {
    return '$count haryt sebede goşuldy';
  }

  @override
  String get favouritesRefreshFailed => 'Bahalary täzeläp bolmady';

  @override
  String get dateToday => 'Şu gün';

  @override
  String get dateYesterday => 'Düýn';

  @override
  String get viewedMenu => 'Goşmaça';

  @override
  String get viewedClear => 'Taryhy arassala';

  @override
  String get viewedClearTitle => 'Görlenleriň taryhy arassalansynmy?';

  @override
  String get viewedClearText => 'Görlen harytlaryň sanawy bu enjamdan pozular.';

  @override
  String get viewedClearConfirm => 'Arassala';

  @override
  String get viewedEmptyTitle => 'Siz entek hiç zat görmediňiz';

  @override
  String get viewedEmptyText => 'Açan harytlaryňyz şu ýerde peýda bolar';

  @override
  String get priceAlertsEmptyTitle => 'Entek ýazylma ýok';

  @override
  String get priceAlertsEmptyText =>
      'Harydyň kartoçkasyndaky jaňjygy basyň — bahasy arzanlanda habar bereris';

  @override
  String priceAlertsDrop(int percent) {
    return '−$percent%';
  }

  @override
  String priceAlertsSubscribedAt(String price) {
    return 'Ýazylanda: $price';
  }

  @override
  String priceAlertsSwitch(String title) {
    return 'Arzanlama barada habar ber: $title';
  }

  @override
  String get walletHeroCaption => 'Sargytlary tölemek üçin elýeterli';

  @override
  String walletDebt(String amount) {
    return 'Bergi $amount';
  }

  @override
  String get walletPayDebt => 'Üzmek';

  @override
  String get walletTopUp => 'Doldurmak';

  @override
  String get walletHistory => 'Amallaryň taryhy';

  @override
  String get walletNoOperations => 'Entek amal ýok';

  @override
  String get walletLoadMoreFailed => 'Ýene ýükläp bolmady';

  @override
  String get walletTopUpTitle => 'Balansy doldurmak';

  @override
  String get walletTopUpAmount => 'Möçberi, TMT';

  @override
  String walletTopUpRange(String min, String max) {
    return '$min-den $max TMT-a çenli';
  }

  @override
  String get walletTopUpByCard => 'Kart bilen doldurmak';

  @override
  String get walletTopUpDone => 'Balans dolduryldy';

  @override
  String get walletSurchargePaid => 'Goşmaça töleg tölendi';

  @override
  String get walletDone => 'Taýýar';

  @override
  String get walletPaymentTimeout =>
      'Bank entek jogap bermedi. Pul alnan bolsa, balans özi täzelener';

  @override
  String get walletPaymentFailedText => 'Pul alynmady. Täzeden synanyşyň';

  @override
  String get walletPayTitle => 'Nähili tölemeli';

  @override
  String get walletPayFromBalance => 'Balansdan';

  @override
  String get walletPayByCard => 'Kart bilen';

  @override
  String walletAvailable(String amount) {
    return 'Elýeterli $amount';
  }

  @override
  String walletNotEnough(String amount) {
    return 'Serişde ýeterlik däl: $amount';
  }

  @override
  String get walletTabDue => 'Tölemeli';

  @override
  String get walletTabRefunds => 'Gaýtarymlar';

  @override
  String walletPayUntil(String date) {
    return '$date çenli tölemeli';
  }

  @override
  String get walletNoSurchargesTitle => 'Goşmaça töleg ýok';

  @override
  String get walletNoSurchargesText =>
      'Agramy ölçenenden soň ýa-da satyjyda baha üýtgese, hasap şu ýerde peýda bolar';

  @override
  String get walletNoRefundsTitle => 'Gaýtarym ýok';

  @override
  String get walletNoRefundsText =>
      'Ýatyrylan harytlar üçin gaýtarjak pulumyz şu ýerde peýda bolar';

  @override
  String get walletRefundToBalance => 'Balansa';

  @override
  String get walletRefundToCard => 'Karta';

  @override
  String get walletRefundInCash => 'Nagt';

  @override
  String walletRefundLine(String destination, String date) {
    return '$destination · $date';
  }

  @override
  String get walletRefundCreated => 'Resmileşdirildi';

  @override
  String get walletRefundApproved => 'Tassyklandy';

  @override
  String get walletRefundPaid => 'Tölendi';

  @override
  String get settingsCodeChannel => 'Giriş kody şu ýere gelýär';

  @override
  String get settingsChannelSms => 'SMS';

  @override
  String get settingsChannelTelegram => 'Telegram';

  @override
  String get settingsChannelEmail => 'E-poçta';

  @override
  String get settingsLink => 'Baglamak';

  @override
  String get settingsRequired => 'Hökmany';

  @override
  String get settingsLoadFailed => 'Hasabyň sazlamalaryny ýükläp bolmady';

  @override
  String get settingsGoogle => 'Google hasaby';

  @override
  String get settingsAbout => 'Programma barada';

  @override
  String settingsVersion(String version) {
    return 'Wersiýa $version';
  }

  @override
  String get settingsDeleteAccount => 'Hasaby pozmak';

  @override
  String settingsChannelLinked(String channel) {
    return 'Giriş kody $channel arkaly geler';
  }

  @override
  String settingsLinkTitle(String channel) {
    return '$channel baglamak';
  }

  @override
  String get settingsEmailLabel => 'E-poçta';

  @override
  String get settingsGetCode => 'Kod almak';

  @override
  String get settingsEmailCodeSent =>
      'Kody e-poçtaňyza iberdik. Şu ýere giriziň:';

  @override
  String settingsTelegramSteps(String bot) {
    return 'Telegram-y açyň, $bot tapyň we oňa şu kody iberiň. Soňra «Barlamak» basyň.';
  }

  @override
  String get settingsTelegramNotYet =>
      'Bot entek kody almady. Iberiň we täzeden barlaň';

  @override
  String get settingsTelegramCheck => 'Barlamak';

  @override
  String get settingsCodeCopied => 'Kod göçürildi';

  @override
  String get settingsDeleted => 'Hasap pozuldy';

  @override
  String get settingsDeleteTitle => 'Hasaby pozmalymy?';

  @override
  String get settingsDeleteLoseOrders =>
      'Sargytlar, posylkalar we amallaryň taryhy pozular';

  @override
  String get settingsDeleteLoseFavourites =>
      'Halanlar, salgylar we ýazylmalar pozular';

  @override
  String get settingsDeleteForever => 'Hasaby dikeltmek mümkin bolmaz';

  @override
  String settingsDeleteActiveOrders(int count) {
    return 'Işjeň sargytlar: $count. Pozulandan soň olary programmada yzarlap bolmaz';
  }

  @override
  String settingsDeleteBalance(String amount) {
    return 'Balansda $amount bar — pozulandan soň ýanar. Olary harçlaň ýa-da goldawa ýazyň';
  }

  @override
  String get settingsDeleteBlocked => 'Häzir hasaby pozup bolmaýar';

  @override
  String settingsDeletePayDebt(String amount) {
    return '$amount bergini üzmek';
  }

  @override
  String get settingsDeleteKeep => 'Hasaby galdyrmak';

  @override
  String get settingsDeleteCodeTitle => 'Pozmagy tassyklaň';

  @override
  String settingsDeleteCodeSent(String phone) {
    return 'Kod SMS bilen $phone belgä iberildi';
  }

  @override
  String get settingsDeleteFinal => 'Hasaby hemişelik pozmak';

  @override
  String get profileEditTitle => 'Şahsy maglumatlar';

  @override
  String get profileEditFirstName => 'At';

  @override
  String get profileEditLastName => 'Familiýa';

  @override
  String get profileEditOptional => 'Hökman däl';

  @override
  String get profileEditBadEmail => 'E-poçta nädogry';

  @override
  String get profileEditChange => 'Üýtgetmek';

  @override
  String get profileEditSave => 'Ýatda saklamak';

  @override
  String get profileEditSaved => 'Maglumatlar ýatda saklandy';

  @override
  String get profileEditDiscardTitle => 'Üýtgeşmeler ýatda saklanmasynmy?';

  @override
  String get profileEditKeepEditing => 'Dowam etmek';

  @override
  String get profileEditDiscard => 'Saklamazlyk';

  @override
  String get profileEditPhoneTitle => 'Täze telefon belgisi';

  @override
  String get profileEditPhoneText =>
      'Täze belgä kod ibereris. Köne belgi bilen hasaba girip bolmaz.';

  @override
  String profileEditCodeSent(String destination) {
    return 'Kod $destination belgä iberildi';
  }

  @override
  String get profileEditOtherNumber => 'Başga belgi';

  @override
  String get profileEditPhoneChanged => 'Belgi üýtgedildi';

  @override
  String get notificationsReadAll => 'Hemmesini okalan et';

  @override
  String get notificationsEarlier => 'Öňräk';

  @override
  String get notificationsEmptyTitle => 'Entek habarnama ýok';

  @override
  String get notificationsEmptyText =>
      'Sargytlaryňyz barada täzelikler şu ýerde peýda bolar';

  @override
  String get notificationsMarkRead => 'Okaldy';

  @override
  String get dateJustNow => 'ýaňy';

  @override
  String dateMinutesAgo(int count) {
    return '$count min öň';
  }

  @override
  String dateHoursAgo(int count) {
    return '$count sag öň';
  }

  @override
  String notificationsUnread(int count) {
    return 'Okalmadyk: $count';
  }

  @override
  String get promoListTitle => 'Aksiýalar';

  @override
  String get promoTypeDiscount => 'Arzanladyş';

  @override
  String get promoTypeDayDeal => 'Günüň arzanladyşy';

  @override
  String get promoTypeBundle => '2+1';

  @override
  String get promoTypeFreeDelivery => 'Mugt eltip bermek';

  @override
  String get promoTypeOther => 'Aksiýa';

  @override
  String get promoEndsSoon => 'Ýakynda gutarýar';

  @override
  String promoUntil(String date) {
    return '$date çenli';
  }

  @override
  String get promoNotFoundTitle => 'Aksiýa tapylmady';

  @override
  String get promoNotFoundText => 'Belki, ol eýýäm gutarandyr';

  @override
  String get promoEnded =>
      'Aksiýa gutardy. Harytlaryň bahalary üýtgän bolmagy mümkin';

  @override
  String promoCopyCode(String code) {
    return '$code promokody göçürmek';
  }

  @override
  String get promoCodeCopied => 'Promokod göçürildi';

  @override
  String get promoEmptyTitle => 'Häzir aksiýa ýok';

  @override
  String get promoEmptyText =>
      'Soňrak giriň — täze arzanladyşlar her hepde peýda bolýar';

  @override
  String reviewsBarSpoken(int stars, int count) {
    return '$stars ýyldyz: $count';
  }

  @override
  String get reviewsFilterAll => 'Hemmesi';

  @override
  String get reviewsFilterPhotos => 'Suratly';

  @override
  String get reviewsFilterTranslated => 'Terjime edilen';

  @override
  String reviewsFilterStars(int stars) {
    return '$stars★';
  }

  @override
  String reviewsVariant(String variant) {
    return 'Görnüşi: $variant';
  }

  @override
  String reviewsPhoto(int index, int count) {
    return '$count suratdan $index-njysy';
  }

  @override
  String get reviewsTranslated => 'Hytaý dilinden terjime edildi';

  @override
  String get reviewsStoreReply => 'Dükanyň jogaby';

  @override
  String get reviewsNoneForFilter => 'Şeýle süzgüç bilen teswir ýok';

  @override
  String get reviewsRating1 => 'Erbet';

  @override
  String get reviewsRating2 => 'Gowy däl';

  @override
  String get reviewsRating3 => 'Kadaly';

  @override
  String get reviewsRating4 => 'Gowy';

  @override
  String get reviewsRating5 => 'Ajaýyp';

  @override
  String get reviewsRatingPick => 'Baha beriň';

  @override
  String get reviewsRatingSpoken => 'Baha';

  @override
  String get reviewsWriteTitle => 'Haryt barada teswir';

  @override
  String get reviewsLeave => 'Teswir ýazmak';

  @override
  String get reviewsNotReviewableTitle => 'Teswir ýazyp bolmaýar';

  @override
  String get reviewsNotReviewableText =>
      'Teswiri bir gezek, haryt alnandan soň ýazyp bolýar';

  @override
  String get reviewsTextLabel => 'Siziň teswiriňiz';

  @override
  String get reviewsTextHint =>
      'Näme halandyňyz, näme halamadyňyz, ölçegi gabat geldimi';

  @override
  String get reviewsSend => 'Ugratmak';

  @override
  String get reviewsSentTitle => 'Sag boluň!';

  @override
  String get reviewsSentText => 'Teswir barlanandan soň peýda bolar';

  @override
  String get reviewsMineEmptyTitle => 'Siz entek teswir ýazmadyňyz';

  @override
  String get reviewsMineEmptyText =>
      'Harydy alanyňyzdan soň sargytda baha berip bilersiňiz';

  @override
  String get reviewsStatusModeration => 'Barlagda';

  @override
  String get reviewsStatusPublished => 'Çap edildi';

  @override
  String get reviewsStatusRejected => 'Ret edildi';

  @override
  String reviewsRejectReason(String reason) {
    return 'Sebäbi: $reason';
  }

  @override
  String externalCopied(String value) {
    return 'Göçürildi: $value';
  }

  @override
  String get serviceUpdateTitle => 'Programmany täzeläň';

  @override
  String get serviceUpdateText =>
      'Bu wersiýa indi işlemeýär. Täzesi programma dükanynda size garaşýar';

  @override
  String get serviceUpdateAction => 'Täzelemek';

  @override
  String get serviceMaintenanceTitle => 'Biz basym gaýdyp geleris';

  @override
  String get serviceMaintenanceText =>
      'Tehniki işler geçirilýär. Birazdan giriň';

  @override
  String get serviceMaintenanceAction => 'Täzeden barlamak';

  @override
  String get serviceBlockedTitle => 'Hasabyňyz petiklendi';

  @override
  String get serviceBlockedText =>
      'Goldawa jaň ediň — näme bolandygyny we petigi nädip aýyrmalydygyny aýdarys';

  @override
  String get serviceBlockedAction => 'Goldawa jaň etmek';

  @override
  String get serviceNotFoundTitle => 'Sahypa tapylmady';

  @override
  String get serviceNotFoundText => 'Belki, salgy köne ýa-da ýalňyş ýazylan';

  @override
  String get serviceHomeAction => 'Baş sahypa';

  @override
  String get infoAbout => 'Biz barada';

  @override
  String get infoDelivery => 'Eltip bermek we töleg';

  @override
  String get infoPickupPoints => 'Bermek nokatlary';

  @override
  String get infoReturns => 'Yzyna gaýtarmak';

  @override
  String get infoFaq => 'Sorag-jogaplar';

  @override
  String get infoContacts => 'Habarlaşmak';

  @override
  String get infoOffer => 'Köpçülikleýin teklip';

  @override
  String get infoPrivacy => 'Gizlinlik syýasaty';

  @override
  String get infoDocuments => 'Resminamalar';

  @override
  String get infoDeliveryTypes => 'Eltip bermegiň usullary';

  @override
  String infoDeliveryTerm(String term, String minWeight) {
    return '$term · $minWeight';
  }

  @override
  String infoPerKgFrom(String price) {
    return '$price/kg-dan';
  }

  @override
  String get infoTariffs => 'Welaýatlar boýunça nyrhlar';

  @override
  String get infoTariffsCaption => 'Halkara eltip bermek, 1 kg üçin TMT';

  @override
  String get infoTariffRegion => 'Sebit';

  @override
  String get infoTariffDash => '—';

  @override
  String get infoTariffNone => 'Eltilmeýär';

  @override
  String get infoPointsEmpty => 'Bermek nokatlary entek ýok';

  @override
  String get infoCall => 'Jaň etmek';

  @override
  String get infoWrite => 'Ýazmak';

  @override
  String get infoRoute => 'Ugur';

  @override
  String get infoTelegram => 'Telegram';

  @override
  String get infoWhatsapp => 'WhatsApp';

  @override
  String get infoOffice => 'Ofis';

  @override
  String get infoFaqSearchHint => 'Soraglardan gözlemek';

  @override
  String get infoFaqNothingTitle => 'Hiç zat tapylmady';

  @override
  String get infoFaqNothingText => 'Bizden soraň — iş wagtynda jogap bereris';

  @override
  String get quickOrderTitle => 'Çalt sargyt';

  @override
  String get quickOrderText =>
      'Belgiňizi galdyryň — operator jaň edip, sargydy resmileşdirer';

  @override
  String quickOrderLines(int count, String total) {
    return '$count haryt · $total';
  }

  @override
  String get quickOrderPhoneLabel => 'Habarlaşmak üçin belgi';

  @override
  String get quickOrderGetCode => 'Kod almak';

  @override
  String quickOrderCodeSent(String destination) {
    return 'Kod SMS bilen $destination belgä iberildi';
  }

  @override
  String get quickOrderOtherNumber => 'Başga belgi';

  @override
  String get quickOrderConfirm => 'Tassyklamak';

  @override
  String quickOrderDoneTitle(String number) {
    return '№$number sargyt kabul edildi';
  }

  @override
  String get quickOrderDoneText => 'Operator iş wagtynda siz bilen habarlaşar';

  @override
  String get quickOrderToOrder => 'Sargyda geç';

  @override
  String get quickOrderContinue => 'Söwda etmegi dowam et';

  @override
  String get photoCameraTip => 'Harydy ýakyndan suratyny alyň';

  @override
  String get photoCameraShutter => 'Surata al';

  @override
  String get photoCameraGallery => 'Galereýa';

  @override
  String get photoCameraSwitch => 'Kamerany çalyş';

  @override
  String get photoGalleryTitle => 'Surat saýlaň';

  @override
  String get photoCropTitle => 'Harydy belläň';

  @override
  String get photoCropHint =>
      'Çarçuwany haryda süýşüriň ýa-da burçlaryndan çekiň';

  @override
  String photoUploading(int percent) {
    return 'Surat ýüklenýär · $percent %';
  }

  @override
  String get photoSearching => 'Meňzeş harytlar gözlenýär…';

  @override
  String get photoResultsTitle => 'Meňzeş harytlar';

  @override
  String photoResultsCount(int count) {
    return '$count haryt · meňzeşligi boýunça';
  }

  @override
  String photoSimilarity(int percent) {
    return 'Meňzeşligi $percent %';
  }

  @override
  String get photoAnotherPhoto => 'Başga surat';

  @override
  String get photoEmptyTitle => 'Meňzeş zat tapylmady';

  @override
  String get photoEmptyText =>
      'Başga surat synap görüň ýa-da harydy has takyk belläň. Ýa-da arza goýuň — operator ony siziň üçin tapar';

  @override
  String get photoFindForMe => 'Maňa haryt tapyň';

  @override
  String get searchRecent => 'Siz gözlediňiz';

  @override
  String get searchClearHistory => 'Arassala';

  @override
  String searchRemoveQuery(String query) {
    return '«$query» taryhdan aýyr';
  }

  @override
  String get searchPopular => 'Meşhur gözlegler';

  @override
  String searchDidYouMean(String query) {
    return 'Belki, siz şuny gözlediňiz: $query';
  }

  @override
  String searchFor(String query) {
    return '«$query» gözle';
  }

  @override
  String get searchOpenLink => 'Harydy salgy boýunça aç';

  @override
  String get searchClearText => 'Meýdany arassala';

  @override
  String searchEmptyTitle(String query) {
    return '«$query» boýunça hiç zat ýok';
  }

  @override
  String get searchEmptyText =>
      'Ýazylyşyny barlaň ýa-da surat boýunça gözläň. Ýa-da arza goýuň — operator harydy siziň üçin tapar';

  @override
  String get linkImportTitle => 'Salgy boýunça haryt';

  @override
  String get linkImportWaitTitle => 'Haryt ýüklenýär';

  @override
  String get linkImportWaitText =>
      'Adatça bir minuda çenli wagt alýar. Programmany ýygnap bilersiňiz — ýükleme dowam eder';

  @override
  String get linkImportStepOpening => 'Sahypany açýarys';

  @override
  String get linkImportStepTranslating => 'Terjime edýäris';

  @override
  String get linkImportStepPricing => 'Bahany hasaplaýarys';

  @override
  String get linkImportFailedTitle => 'Ýükläp bolmady';

  @override
  String get linkImportFailedText =>
      'Salgyny operatora berdik — ol harydy tapar we size goldaw çatynda ýazar';

  @override
  String get linkImportToSupport => 'Çaty aç';

  @override
  String get supportTitle => 'Goldaw';

  @override
  String get supportHours => 'Her gün 9:00-dan 21:00-a çenli jogap berýäris';

  @override
  String get supportOtherWays => 'Habarlaşmagyň beýleki ýollary';

  @override
  String get supportCall => 'Jaň et';

  @override
  String get chatInputHint => 'Hat';

  @override
  String get chatSend => 'Iber';

  @override
  String get chatAttach => 'Goş';

  @override
  String get chatAttachCamera => 'Kamera';

  @override
  String get chatAttachGallery => 'Galereýa';

  @override
  String get chatAttachOrder => 'Sargyt';

  @override
  String get chatPickOrder => 'Sargyt saýlaň';

  @override
  String get chatNoOrders => 'Işjeň sargyt ýok';

  @override
  String get chatPickPhotos => 'Surat saýlaň';

  @override
  String get chatNotSent => 'Iberilmedi';

  @override
  String get chatSending => 'Iberilýär';

  @override
  String get chatSent => 'Iberildi';

  @override
  String get chatOpenProduct => 'Aç';

  @override
  String get chatQuickWhereOrder => 'Sargydym nirede?';

  @override
  String get chatQuickSurcharge => 'Goşmaça tölegi nädip tölemeli?';

  @override
  String get chatEmptyTitle => 'Bize ýazyň';

  @override
  String get requestSearching => 'Gözleýäris';

  @override
  String get requestFound => 'Tapyldy';

  @override
  String get findHeader =>
      'Gerekli zady tapmadyňyzmy? Harydy beýan ediň — operator ony Taobao, 1688 ýa-da Tmall-da tapar';

  @override
  String get findDescription => 'Harydy beýan ediň';

  @override
  String get findDescriptionHint =>
      'Meselem: galyň dabanly ak krossowka, 38 ölçeg';

  @override
  String get findLink => 'Salgy (hökmany däl)';

  @override
  String get findSend => 'Arza iber';

  @override
  String get findNeedSomething => 'Beýan, surat ýa-da salgy goşuň';

  @override
  String chatOrder(String number) {
    return 'Sargyt $number';
  }

  @override
  String requestTitle(String id) {
    return 'Arza $id';
  }

  @override
  String findPhotos(int count, int max) {
    return 'Surat · $count / $max';
  }

  @override
  String chatSendPhotos(int count) {
    return 'Iber · $count';
  }

  @override
  String get wholesaleBenefitPrices => 'Lomaý bahalar';

  @override
  String get wholesaleBenefitPricesText =>
      'Iň az partiýadan sargyt edeniňizde bir sanynyň bahasy arzan';

  @override
  String get wholesaleBenefitDocs => 'Hasaplar we ýük haty';

  @override
  String get wholesaleBenefitDocsText => 'Her sargyt boýunça PDF resminamalar';

  @override
  String get wholesaleBenefitTerms => 'Şahsy şertler';

  @override
  String get wholesaleBenefitTermsText =>
      'Aýratyn menejer, möhlet we hemişelik müşderiler üçin arzanladyşlar';

  @override
  String get wholesaleFormTitle => 'Arza';

  @override
  String get wholesaleName => 'Adyňyz';

  @override
  String get wholesaleCompany => 'Kompaniýa ýa-da telekeçi';

  @override
  String get wholesaleCity => 'Şäher';

  @override
  String get wholesaleSend => 'Arza iber';

  @override
  String get wholesaleFillAll => 'Ähli meýdanlary dolduryň';

  @override
  String get wholesalePendingTitle => 'Arza seredilýär';

  @override
  String get wholesalePendingText =>
      'Adatça bir iş gününde jogap berýäris. Karar taýýar bolanda habar ibereris';

  @override
  String get wholesaleApprovedTitle => 'Arza kabul edildi';

  @override
  String wholesaleApprovedText(String group) {
    return 'Siziň toparyňyz: $group. Lomaý bahalar katalogda eýýäm işleýär';
  }

  @override
  String get wholesaleRejectedTitle => 'Arza ret edildi';

  @override
  String get wholesaleReapply => 'Täzeden iber';

  @override
  String get wholesaleRefresh => 'Ýagdaýy täzele';

  @override
  String get wholesaleToCatalog => 'Söwda başla';

  @override
  String wholesaleInvoice(String number) {
    return 'Hasap № $number';
  }

  @override
  String wholesaleWaybill(String number) {
    return 'Ýük haty № $number';
  }

  @override
  String get wholesaleDownload => 'Ýükle';

  @override
  String get wholesaleDocsEmpty => 'Entek resminama ýok';

  @override
  String get wholesaleDocsEmptyText =>
      'Hasaplar we ýük haty ilkinji sargytdan soň peýda bolar';

  @override
  String get addressesEmpty => 'Entek salgy ýok';

  @override
  String get addressesEmptyText =>
      'Salgy goşuň — kurýer sargydy gapyňyza getirer';

  @override
  String get addressesAdd => 'Salgy goş';

  @override
  String get addressesDefault => 'Esasy';

  @override
  String get addressesMenu => 'Salgy bilen hereketler';

  @override
  String get addressesEdit => 'Üýtget';

  @override
  String get addressesMakeDefault => 'Esasy et';

  @override
  String get addressesDeleteTitle => 'Salgy pozulsynmy?';

  @override
  String get addressesDeleted => 'Salgy pozuldy';

  @override
  String get addressNewTitle => 'Täze salgy';

  @override
  String get addressEditTitle => 'Salgyny üýtget';

  @override
  String get addressMyLocation => 'Meniň ýerim';

  @override
  String get addressMoveHint =>
      'Bellik öýüňiziň üstünde durar ýaly kartany süýşüriň';

  @override
  String get addressLocating => 'Salgy kesgitlenýär…';

  @override
  String get addressLookupFailed => 'Salgyny kesgitläp bolmady';

  @override
  String get addressSave => 'Salgyny ýatda sakla';

  @override
  String addressRegion(String region) {
    return 'Sebit: $region';
  }

  @override
  String get videoMore => 'Giňişleýin';

  @override
  String get videoLike => 'Halaýaryn';

  @override
  String get videoFavourite => 'Halanlaryma';

  @override
  String get videoSoundOn => 'Sesi aç';

  @override
  String get videoSoundOff => 'Sesi öçür';

  @override
  String get videoPaused => 'Arakesme';

  @override
  String get videoEmpty => 'Entek wideo ýok';

  @override
  String get checkoutOtherAddress => 'Başga salgy';

  @override
  String get checkoutAddressOnMap => 'Kartada görkez';
}
