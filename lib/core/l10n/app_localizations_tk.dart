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
}
