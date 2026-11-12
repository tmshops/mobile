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
  String cartSelectedCount(int selected, int total) {
    return '$total-den $selected saýlandy';
  }

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
  String get homeLanguageSwitch => 'Dili çalyş';

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
}
