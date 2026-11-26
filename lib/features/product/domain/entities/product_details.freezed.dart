// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductDetails {

 String get id; String get title; List<GalleryMedia> get media; int get price; int? get oldPrice;/// Promo end, already on the device clock.
 DateTime? get promoEndsAt; List<PriceTier> get priceTiers; double? get rating; int get reviewCount; int? get soldCount;/// Variant groups (colour, size, set) and the SKUs that combine them.
 List<SkuProperty> get properties; List<Sku> get skus; SizeChart? get sizeChart;/// Raw HTML from the admin panel; rendered with a tag whitelist.
 String get descriptionHtml; List<SpecRow> get specs; Seller? get seller; ReviewsSummary? get reviews;/// `false` = taken off sale: page shows «Нет в наличии» + similar.
 bool get isAvailable; List<ProductSummary> get similar; List<ProductSummary> get boughtTogether; String? get shareUrl;
/// Create a copy of ProductDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductDetailsCopyWith<ProductDetails> get copyWith => _$ProductDetailsCopyWithImpl<ProductDetails>(this as ProductDetails, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductDetails&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other.media, media)&&(identical(other.price, price) || other.price == price)&&(identical(other.oldPrice, oldPrice) || other.oldPrice == oldPrice)&&(identical(other.promoEndsAt, promoEndsAt) || other.promoEndsAt == promoEndsAt)&&const DeepCollectionEquality().equals(other.priceTiers, priceTiers)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.reviewCount, reviewCount) || other.reviewCount == reviewCount)&&(identical(other.soldCount, soldCount) || other.soldCount == soldCount)&&const DeepCollectionEquality().equals(other.properties, properties)&&const DeepCollectionEquality().equals(other.skus, skus)&&(identical(other.sizeChart, sizeChart) || other.sizeChart == sizeChart)&&(identical(other.descriptionHtml, descriptionHtml) || other.descriptionHtml == descriptionHtml)&&const DeepCollectionEquality().equals(other.specs, specs)&&(identical(other.seller, seller) || other.seller == seller)&&(identical(other.reviews, reviews) || other.reviews == reviews)&&(identical(other.isAvailable, isAvailable) || other.isAvailable == isAvailable)&&const DeepCollectionEquality().equals(other.similar, similar)&&const DeepCollectionEquality().equals(other.boughtTogether, boughtTogether)&&(identical(other.shareUrl, shareUrl) || other.shareUrl == shareUrl));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,title,const DeepCollectionEquality().hash(media),price,oldPrice,promoEndsAt,const DeepCollectionEquality().hash(priceTiers),rating,reviewCount,soldCount,const DeepCollectionEquality().hash(properties),const DeepCollectionEquality().hash(skus),sizeChart,descriptionHtml,const DeepCollectionEquality().hash(specs),seller,reviews,isAvailable,const DeepCollectionEquality().hash(similar),const DeepCollectionEquality().hash(boughtTogether),shareUrl]);

@override
String toString() {
  return 'ProductDetails(id: $id, title: $title, media: $media, price: $price, oldPrice: $oldPrice, promoEndsAt: $promoEndsAt, priceTiers: $priceTiers, rating: $rating, reviewCount: $reviewCount, soldCount: $soldCount, properties: $properties, skus: $skus, sizeChart: $sizeChart, descriptionHtml: $descriptionHtml, specs: $specs, seller: $seller, reviews: $reviews, isAvailable: $isAvailable, similar: $similar, boughtTogether: $boughtTogether, shareUrl: $shareUrl)';
}


}

/// @nodoc
abstract mixin class $ProductDetailsCopyWith<$Res>  {
  factory $ProductDetailsCopyWith(ProductDetails value, $Res Function(ProductDetails) _then) = _$ProductDetailsCopyWithImpl;
@useResult
$Res call({
 String id, String title, List<GalleryMedia> media, int price, int? oldPrice, DateTime? promoEndsAt, List<PriceTier> priceTiers, double? rating, int reviewCount, int? soldCount, List<SkuProperty> properties, List<Sku> skus, SizeChart? sizeChart, String descriptionHtml, List<SpecRow> specs, Seller? seller, ReviewsSummary? reviews, bool isAvailable, List<ProductSummary> similar, List<ProductSummary> boughtTogether, String? shareUrl
});


$SizeChartCopyWith<$Res>? get sizeChart;$SellerCopyWith<$Res>? get seller;$ReviewsSummaryCopyWith<$Res>? get reviews;

}
/// @nodoc
class _$ProductDetailsCopyWithImpl<$Res>
    implements $ProductDetailsCopyWith<$Res> {
  _$ProductDetailsCopyWithImpl(this._self, this._then);

  final ProductDetails _self;
  final $Res Function(ProductDetails) _then;

/// Create a copy of ProductDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? media = null,Object? price = null,Object? oldPrice = freezed,Object? promoEndsAt = freezed,Object? priceTiers = null,Object? rating = freezed,Object? reviewCount = null,Object? soldCount = freezed,Object? properties = null,Object? skus = null,Object? sizeChart = freezed,Object? descriptionHtml = null,Object? specs = null,Object? seller = freezed,Object? reviews = freezed,Object? isAvailable = null,Object? similar = null,Object? boughtTogether = null,Object? shareUrl = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,media: null == media ? _self.media : media // ignore: cast_nullable_to_non_nullable
as List<GalleryMedia>,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,oldPrice: freezed == oldPrice ? _self.oldPrice : oldPrice // ignore: cast_nullable_to_non_nullable
as int?,promoEndsAt: freezed == promoEndsAt ? _self.promoEndsAt : promoEndsAt // ignore: cast_nullable_to_non_nullable
as DateTime?,priceTiers: null == priceTiers ? _self.priceTiers : priceTiers // ignore: cast_nullable_to_non_nullable
as List<PriceTier>,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double?,reviewCount: null == reviewCount ? _self.reviewCount : reviewCount // ignore: cast_nullable_to_non_nullable
as int,soldCount: freezed == soldCount ? _self.soldCount : soldCount // ignore: cast_nullable_to_non_nullable
as int?,properties: null == properties ? _self.properties : properties // ignore: cast_nullable_to_non_nullable
as List<SkuProperty>,skus: null == skus ? _self.skus : skus // ignore: cast_nullable_to_non_nullable
as List<Sku>,sizeChart: freezed == sizeChart ? _self.sizeChart : sizeChart // ignore: cast_nullable_to_non_nullable
as SizeChart?,descriptionHtml: null == descriptionHtml ? _self.descriptionHtml : descriptionHtml // ignore: cast_nullable_to_non_nullable
as String,specs: null == specs ? _self.specs : specs // ignore: cast_nullable_to_non_nullable
as List<SpecRow>,seller: freezed == seller ? _self.seller : seller // ignore: cast_nullable_to_non_nullable
as Seller?,reviews: freezed == reviews ? _self.reviews : reviews // ignore: cast_nullable_to_non_nullable
as ReviewsSummary?,isAvailable: null == isAvailable ? _self.isAvailable : isAvailable // ignore: cast_nullable_to_non_nullable
as bool,similar: null == similar ? _self.similar : similar // ignore: cast_nullable_to_non_nullable
as List<ProductSummary>,boughtTogether: null == boughtTogether ? _self.boughtTogether : boughtTogether // ignore: cast_nullable_to_non_nullable
as List<ProductSummary>,shareUrl: freezed == shareUrl ? _self.shareUrl : shareUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of ProductDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SizeChartCopyWith<$Res>? get sizeChart {
    if (_self.sizeChart == null) {
    return null;
  }

  return $SizeChartCopyWith<$Res>(_self.sizeChart!, (value) {
    return _then(_self.copyWith(sizeChart: value));
  });
}/// Create a copy of ProductDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SellerCopyWith<$Res>? get seller {
    if (_self.seller == null) {
    return null;
  }

  return $SellerCopyWith<$Res>(_self.seller!, (value) {
    return _then(_self.copyWith(seller: value));
  });
}/// Create a copy of ProductDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewsSummaryCopyWith<$Res>? get reviews {
    if (_self.reviews == null) {
    return null;
  }

  return $ReviewsSummaryCopyWith<$Res>(_self.reviews!, (value) {
    return _then(_self.copyWith(reviews: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProductDetails].
extension ProductDetailsPatterns on ProductDetails {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductDetails value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductDetails() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductDetails value)  $default,){
final _that = this;
switch (_that) {
case _ProductDetails():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductDetails value)?  $default,){
final _that = this;
switch (_that) {
case _ProductDetails() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  List<GalleryMedia> media,  int price,  int? oldPrice,  DateTime? promoEndsAt,  List<PriceTier> priceTiers,  double? rating,  int reviewCount,  int? soldCount,  List<SkuProperty> properties,  List<Sku> skus,  SizeChart? sizeChart,  String descriptionHtml,  List<SpecRow> specs,  Seller? seller,  ReviewsSummary? reviews,  bool isAvailable,  List<ProductSummary> similar,  List<ProductSummary> boughtTogether,  String? shareUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductDetails() when $default != null:
return $default(_that.id,_that.title,_that.media,_that.price,_that.oldPrice,_that.promoEndsAt,_that.priceTiers,_that.rating,_that.reviewCount,_that.soldCount,_that.properties,_that.skus,_that.sizeChart,_that.descriptionHtml,_that.specs,_that.seller,_that.reviews,_that.isAvailable,_that.similar,_that.boughtTogether,_that.shareUrl);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  List<GalleryMedia> media,  int price,  int? oldPrice,  DateTime? promoEndsAt,  List<PriceTier> priceTiers,  double? rating,  int reviewCount,  int? soldCount,  List<SkuProperty> properties,  List<Sku> skus,  SizeChart? sizeChart,  String descriptionHtml,  List<SpecRow> specs,  Seller? seller,  ReviewsSummary? reviews,  bool isAvailable,  List<ProductSummary> similar,  List<ProductSummary> boughtTogether,  String? shareUrl)  $default,) {final _that = this;
switch (_that) {
case _ProductDetails():
return $default(_that.id,_that.title,_that.media,_that.price,_that.oldPrice,_that.promoEndsAt,_that.priceTiers,_that.rating,_that.reviewCount,_that.soldCount,_that.properties,_that.skus,_that.sizeChart,_that.descriptionHtml,_that.specs,_that.seller,_that.reviews,_that.isAvailable,_that.similar,_that.boughtTogether,_that.shareUrl);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  List<GalleryMedia> media,  int price,  int? oldPrice,  DateTime? promoEndsAt,  List<PriceTier> priceTiers,  double? rating,  int reviewCount,  int? soldCount,  List<SkuProperty> properties,  List<Sku> skus,  SizeChart? sizeChart,  String descriptionHtml,  List<SpecRow> specs,  Seller? seller,  ReviewsSummary? reviews,  bool isAvailable,  List<ProductSummary> similar,  List<ProductSummary> boughtTogether,  String? shareUrl)?  $default,) {final _that = this;
switch (_that) {
case _ProductDetails() when $default != null:
return $default(_that.id,_that.title,_that.media,_that.price,_that.oldPrice,_that.promoEndsAt,_that.priceTiers,_that.rating,_that.reviewCount,_that.soldCount,_that.properties,_that.skus,_that.sizeChart,_that.descriptionHtml,_that.specs,_that.seller,_that.reviews,_that.isAvailable,_that.similar,_that.boughtTogether,_that.shareUrl);case _:
  return null;

}
}

}

/// @nodoc


class _ProductDetails extends ProductDetails {
  const _ProductDetails({required this.id, required this.title, required final  List<GalleryMedia> media, required this.price, this.oldPrice, this.promoEndsAt, final  List<PriceTier> priceTiers = const <PriceTier>[], this.rating, this.reviewCount = 0, this.soldCount, final  List<SkuProperty> properties = const <SkuProperty>[], final  List<Sku> skus = const <Sku>[], this.sizeChart, this.descriptionHtml = '', final  List<SpecRow> specs = const <SpecRow>[], this.seller, this.reviews, this.isAvailable = true, final  List<ProductSummary> similar = const <ProductSummary>[], final  List<ProductSummary> boughtTogether = const <ProductSummary>[], this.shareUrl}): _media = media,_priceTiers = priceTiers,_properties = properties,_skus = skus,_specs = specs,_similar = similar,_boughtTogether = boughtTogether,super._();
  

@override final  String id;
@override final  String title;
 final  List<GalleryMedia> _media;
@override List<GalleryMedia> get media {
  if (_media is EqualUnmodifiableListView) return _media;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_media);
}

@override final  int price;
@override final  int? oldPrice;
/// Promo end, already on the device clock.
@override final  DateTime? promoEndsAt;
 final  List<PriceTier> _priceTiers;
@override@JsonKey() List<PriceTier> get priceTiers {
  if (_priceTiers is EqualUnmodifiableListView) return _priceTiers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_priceTiers);
}

@override final  double? rating;
@override@JsonKey() final  int reviewCount;
@override final  int? soldCount;
/// Variant groups (colour, size, set) and the SKUs that combine them.
 final  List<SkuProperty> _properties;
/// Variant groups (colour, size, set) and the SKUs that combine them.
@override@JsonKey() List<SkuProperty> get properties {
  if (_properties is EqualUnmodifiableListView) return _properties;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_properties);
}

 final  List<Sku> _skus;
@override@JsonKey() List<Sku> get skus {
  if (_skus is EqualUnmodifiableListView) return _skus;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_skus);
}

@override final  SizeChart? sizeChart;
/// Raw HTML from the admin panel; rendered with a tag whitelist.
@override@JsonKey() final  String descriptionHtml;
 final  List<SpecRow> _specs;
@override@JsonKey() List<SpecRow> get specs {
  if (_specs is EqualUnmodifiableListView) return _specs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_specs);
}

@override final  Seller? seller;
@override final  ReviewsSummary? reviews;
/// `false` = taken off sale: page shows «Нет в наличии» + similar.
@override@JsonKey() final  bool isAvailable;
 final  List<ProductSummary> _similar;
@override@JsonKey() List<ProductSummary> get similar {
  if (_similar is EqualUnmodifiableListView) return _similar;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_similar);
}

 final  List<ProductSummary> _boughtTogether;
@override@JsonKey() List<ProductSummary> get boughtTogether {
  if (_boughtTogether is EqualUnmodifiableListView) return _boughtTogether;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_boughtTogether);
}

@override final  String? shareUrl;

/// Create a copy of ProductDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductDetailsCopyWith<_ProductDetails> get copyWith => __$ProductDetailsCopyWithImpl<_ProductDetails>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductDetails&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other._media, _media)&&(identical(other.price, price) || other.price == price)&&(identical(other.oldPrice, oldPrice) || other.oldPrice == oldPrice)&&(identical(other.promoEndsAt, promoEndsAt) || other.promoEndsAt == promoEndsAt)&&const DeepCollectionEquality().equals(other._priceTiers, _priceTiers)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.reviewCount, reviewCount) || other.reviewCount == reviewCount)&&(identical(other.soldCount, soldCount) || other.soldCount == soldCount)&&const DeepCollectionEquality().equals(other._properties, _properties)&&const DeepCollectionEquality().equals(other._skus, _skus)&&(identical(other.sizeChart, sizeChart) || other.sizeChart == sizeChart)&&(identical(other.descriptionHtml, descriptionHtml) || other.descriptionHtml == descriptionHtml)&&const DeepCollectionEquality().equals(other._specs, _specs)&&(identical(other.seller, seller) || other.seller == seller)&&(identical(other.reviews, reviews) || other.reviews == reviews)&&(identical(other.isAvailable, isAvailable) || other.isAvailable == isAvailable)&&const DeepCollectionEquality().equals(other._similar, _similar)&&const DeepCollectionEquality().equals(other._boughtTogether, _boughtTogether)&&(identical(other.shareUrl, shareUrl) || other.shareUrl == shareUrl));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,title,const DeepCollectionEquality().hash(_media),price,oldPrice,promoEndsAt,const DeepCollectionEquality().hash(_priceTiers),rating,reviewCount,soldCount,const DeepCollectionEquality().hash(_properties),const DeepCollectionEquality().hash(_skus),sizeChart,descriptionHtml,const DeepCollectionEquality().hash(_specs),seller,reviews,isAvailable,const DeepCollectionEquality().hash(_similar),const DeepCollectionEquality().hash(_boughtTogether),shareUrl]);

@override
String toString() {
  return 'ProductDetails(id: $id, title: $title, media: $media, price: $price, oldPrice: $oldPrice, promoEndsAt: $promoEndsAt, priceTiers: $priceTiers, rating: $rating, reviewCount: $reviewCount, soldCount: $soldCount, properties: $properties, skus: $skus, sizeChart: $sizeChart, descriptionHtml: $descriptionHtml, specs: $specs, seller: $seller, reviews: $reviews, isAvailable: $isAvailable, similar: $similar, boughtTogether: $boughtTogether, shareUrl: $shareUrl)';
}


}

/// @nodoc
abstract mixin class _$ProductDetailsCopyWith<$Res> implements $ProductDetailsCopyWith<$Res> {
  factory _$ProductDetailsCopyWith(_ProductDetails value, $Res Function(_ProductDetails) _then) = __$ProductDetailsCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, List<GalleryMedia> media, int price, int? oldPrice, DateTime? promoEndsAt, List<PriceTier> priceTiers, double? rating, int reviewCount, int? soldCount, List<SkuProperty> properties, List<Sku> skus, SizeChart? sizeChart, String descriptionHtml, List<SpecRow> specs, Seller? seller, ReviewsSummary? reviews, bool isAvailable, List<ProductSummary> similar, List<ProductSummary> boughtTogether, String? shareUrl
});


@override $SizeChartCopyWith<$Res>? get sizeChart;@override $SellerCopyWith<$Res>? get seller;@override $ReviewsSummaryCopyWith<$Res>? get reviews;

}
/// @nodoc
class __$ProductDetailsCopyWithImpl<$Res>
    implements _$ProductDetailsCopyWith<$Res> {
  __$ProductDetailsCopyWithImpl(this._self, this._then);

  final _ProductDetails _self;
  final $Res Function(_ProductDetails) _then;

/// Create a copy of ProductDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? media = null,Object? price = null,Object? oldPrice = freezed,Object? promoEndsAt = freezed,Object? priceTiers = null,Object? rating = freezed,Object? reviewCount = null,Object? soldCount = freezed,Object? properties = null,Object? skus = null,Object? sizeChart = freezed,Object? descriptionHtml = null,Object? specs = null,Object? seller = freezed,Object? reviews = freezed,Object? isAvailable = null,Object? similar = null,Object? boughtTogether = null,Object? shareUrl = freezed,}) {
  return _then(_ProductDetails(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,media: null == media ? _self._media : media // ignore: cast_nullable_to_non_nullable
as List<GalleryMedia>,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,oldPrice: freezed == oldPrice ? _self.oldPrice : oldPrice // ignore: cast_nullable_to_non_nullable
as int?,promoEndsAt: freezed == promoEndsAt ? _self.promoEndsAt : promoEndsAt // ignore: cast_nullable_to_non_nullable
as DateTime?,priceTiers: null == priceTiers ? _self._priceTiers : priceTiers // ignore: cast_nullable_to_non_nullable
as List<PriceTier>,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double?,reviewCount: null == reviewCount ? _self.reviewCount : reviewCount // ignore: cast_nullable_to_non_nullable
as int,soldCount: freezed == soldCount ? _self.soldCount : soldCount // ignore: cast_nullable_to_non_nullable
as int?,properties: null == properties ? _self._properties : properties // ignore: cast_nullable_to_non_nullable
as List<SkuProperty>,skus: null == skus ? _self._skus : skus // ignore: cast_nullable_to_non_nullable
as List<Sku>,sizeChart: freezed == sizeChart ? _self.sizeChart : sizeChart // ignore: cast_nullable_to_non_nullable
as SizeChart?,descriptionHtml: null == descriptionHtml ? _self.descriptionHtml : descriptionHtml // ignore: cast_nullable_to_non_nullable
as String,specs: null == specs ? _self._specs : specs // ignore: cast_nullable_to_non_nullable
as List<SpecRow>,seller: freezed == seller ? _self.seller : seller // ignore: cast_nullable_to_non_nullable
as Seller?,reviews: freezed == reviews ? _self.reviews : reviews // ignore: cast_nullable_to_non_nullable
as ReviewsSummary?,isAvailable: null == isAvailable ? _self.isAvailable : isAvailable // ignore: cast_nullable_to_non_nullable
as bool,similar: null == similar ? _self._similar : similar // ignore: cast_nullable_to_non_nullable
as List<ProductSummary>,boughtTogether: null == boughtTogether ? _self._boughtTogether : boughtTogether // ignore: cast_nullable_to_non_nullable
as List<ProductSummary>,shareUrl: freezed == shareUrl ? _self.shareUrl : shareUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of ProductDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SizeChartCopyWith<$Res>? get sizeChart {
    if (_self.sizeChart == null) {
    return null;
  }

  return $SizeChartCopyWith<$Res>(_self.sizeChart!, (value) {
    return _then(_self.copyWith(sizeChart: value));
  });
}/// Create a copy of ProductDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SellerCopyWith<$Res>? get seller {
    if (_self.seller == null) {
    return null;
  }

  return $SellerCopyWith<$Res>(_self.seller!, (value) {
    return _then(_self.copyWith(seller: value));
  });
}/// Create a copy of ProductDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewsSummaryCopyWith<$Res>? get reviews {
    if (_self.reviews == null) {
    return null;
  }

  return $ReviewsSummaryCopyWith<$Res>(_self.reviews!, (value) {
    return _then(_self.copyWith(reviews: value));
  });
}
}

/// @nodoc
mixin _$GalleryMedia {

 MediaKind get kind;/// Image to show; for videos, the poster frame.
 String get imageUrl; String? get videoUrl;/// AI-generated replacement photo (shows «иллюстрация»).
 bool get isIllustration;
/// Create a copy of GalleryMedia
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GalleryMediaCopyWith<GalleryMedia> get copyWith => _$GalleryMediaCopyWithImpl<GalleryMedia>(this as GalleryMedia, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GalleryMedia&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.videoUrl, videoUrl) || other.videoUrl == videoUrl)&&(identical(other.isIllustration, isIllustration) || other.isIllustration == isIllustration));
}


@override
int get hashCode => Object.hash(runtimeType,kind,imageUrl,videoUrl,isIllustration);

@override
String toString() {
  return 'GalleryMedia(kind: $kind, imageUrl: $imageUrl, videoUrl: $videoUrl, isIllustration: $isIllustration)';
}


}

/// @nodoc
abstract mixin class $GalleryMediaCopyWith<$Res>  {
  factory $GalleryMediaCopyWith(GalleryMedia value, $Res Function(GalleryMedia) _then) = _$GalleryMediaCopyWithImpl;
@useResult
$Res call({
 MediaKind kind, String imageUrl, String? videoUrl, bool isIllustration
});




}
/// @nodoc
class _$GalleryMediaCopyWithImpl<$Res>
    implements $GalleryMediaCopyWith<$Res> {
  _$GalleryMediaCopyWithImpl(this._self, this._then);

  final GalleryMedia _self;
  final $Res Function(GalleryMedia) _then;

/// Create a copy of GalleryMedia
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? kind = null,Object? imageUrl = null,Object? videoUrl = freezed,Object? isIllustration = null,}) {
  return _then(_self.copyWith(
kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as MediaKind,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,videoUrl: freezed == videoUrl ? _self.videoUrl : videoUrl // ignore: cast_nullable_to_non_nullable
as String?,isIllustration: null == isIllustration ? _self.isIllustration : isIllustration // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [GalleryMedia].
extension GalleryMediaPatterns on GalleryMedia {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GalleryMedia value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GalleryMedia() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GalleryMedia value)  $default,){
final _that = this;
switch (_that) {
case _GalleryMedia():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GalleryMedia value)?  $default,){
final _that = this;
switch (_that) {
case _GalleryMedia() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( MediaKind kind,  String imageUrl,  String? videoUrl,  bool isIllustration)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GalleryMedia() when $default != null:
return $default(_that.kind,_that.imageUrl,_that.videoUrl,_that.isIllustration);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( MediaKind kind,  String imageUrl,  String? videoUrl,  bool isIllustration)  $default,) {final _that = this;
switch (_that) {
case _GalleryMedia():
return $default(_that.kind,_that.imageUrl,_that.videoUrl,_that.isIllustration);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( MediaKind kind,  String imageUrl,  String? videoUrl,  bool isIllustration)?  $default,) {final _that = this;
switch (_that) {
case _GalleryMedia() when $default != null:
return $default(_that.kind,_that.imageUrl,_that.videoUrl,_that.isIllustration);case _:
  return null;

}
}

}

/// @nodoc


class _GalleryMedia implements GalleryMedia {
  const _GalleryMedia({required this.kind, required this.imageUrl, this.videoUrl, this.isIllustration = false});
  

@override final  MediaKind kind;
/// Image to show; for videos, the poster frame.
@override final  String imageUrl;
@override final  String? videoUrl;
/// AI-generated replacement photo (shows «иллюстрация»).
@override@JsonKey() final  bool isIllustration;

/// Create a copy of GalleryMedia
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GalleryMediaCopyWith<_GalleryMedia> get copyWith => __$GalleryMediaCopyWithImpl<_GalleryMedia>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GalleryMedia&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.videoUrl, videoUrl) || other.videoUrl == videoUrl)&&(identical(other.isIllustration, isIllustration) || other.isIllustration == isIllustration));
}


@override
int get hashCode => Object.hash(runtimeType,kind,imageUrl,videoUrl,isIllustration);

@override
String toString() {
  return 'GalleryMedia(kind: $kind, imageUrl: $imageUrl, videoUrl: $videoUrl, isIllustration: $isIllustration)';
}


}

/// @nodoc
abstract mixin class _$GalleryMediaCopyWith<$Res> implements $GalleryMediaCopyWith<$Res> {
  factory _$GalleryMediaCopyWith(_GalleryMedia value, $Res Function(_GalleryMedia) _then) = __$GalleryMediaCopyWithImpl;
@override @useResult
$Res call({
 MediaKind kind, String imageUrl, String? videoUrl, bool isIllustration
});




}
/// @nodoc
class __$GalleryMediaCopyWithImpl<$Res>
    implements _$GalleryMediaCopyWith<$Res> {
  __$GalleryMediaCopyWithImpl(this._self, this._then);

  final _GalleryMedia _self;
  final $Res Function(_GalleryMedia) _then;

/// Create a copy of GalleryMedia
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? kind = null,Object? imageUrl = null,Object? videoUrl = freezed,Object? isIllustration = null,}) {
  return _then(_GalleryMedia(
kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as MediaKind,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,videoUrl: freezed == videoUrl ? _self.videoUrl : videoUrl // ignore: cast_nullable_to_non_nullable
as String?,isIllustration: null == isIllustration ? _self.isIllustration : isIllustration // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$PriceTier {

 int get minQuantity; int get price;
/// Create a copy of PriceTier
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PriceTierCopyWith<PriceTier> get copyWith => _$PriceTierCopyWithImpl<PriceTier>(this as PriceTier, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PriceTier&&(identical(other.minQuantity, minQuantity) || other.minQuantity == minQuantity)&&(identical(other.price, price) || other.price == price));
}


@override
int get hashCode => Object.hash(runtimeType,minQuantity,price);

@override
String toString() {
  return 'PriceTier(minQuantity: $minQuantity, price: $price)';
}


}

/// @nodoc
abstract mixin class $PriceTierCopyWith<$Res>  {
  factory $PriceTierCopyWith(PriceTier value, $Res Function(PriceTier) _then) = _$PriceTierCopyWithImpl;
@useResult
$Res call({
 int minQuantity, int price
});




}
/// @nodoc
class _$PriceTierCopyWithImpl<$Res>
    implements $PriceTierCopyWith<$Res> {
  _$PriceTierCopyWithImpl(this._self, this._then);

  final PriceTier _self;
  final $Res Function(PriceTier) _then;

/// Create a copy of PriceTier
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? minQuantity = null,Object? price = null,}) {
  return _then(_self.copyWith(
minQuantity: null == minQuantity ? _self.minQuantity : minQuantity // ignore: cast_nullable_to_non_nullable
as int,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PriceTier].
extension PriceTierPatterns on PriceTier {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PriceTier value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PriceTier() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PriceTier value)  $default,){
final _that = this;
switch (_that) {
case _PriceTier():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PriceTier value)?  $default,){
final _that = this;
switch (_that) {
case _PriceTier() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int minQuantity,  int price)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PriceTier() when $default != null:
return $default(_that.minQuantity,_that.price);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int minQuantity,  int price)  $default,) {final _that = this;
switch (_that) {
case _PriceTier():
return $default(_that.minQuantity,_that.price);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int minQuantity,  int price)?  $default,) {final _that = this;
switch (_that) {
case _PriceTier() when $default != null:
return $default(_that.minQuantity,_that.price);case _:
  return null;

}
}

}

/// @nodoc


class _PriceTier implements PriceTier {
  const _PriceTier({required this.minQuantity, required this.price});
  

@override final  int minQuantity;
@override final  int price;

/// Create a copy of PriceTier
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PriceTierCopyWith<_PriceTier> get copyWith => __$PriceTierCopyWithImpl<_PriceTier>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PriceTier&&(identical(other.minQuantity, minQuantity) || other.minQuantity == minQuantity)&&(identical(other.price, price) || other.price == price));
}


@override
int get hashCode => Object.hash(runtimeType,minQuantity,price);

@override
String toString() {
  return 'PriceTier(minQuantity: $minQuantity, price: $price)';
}


}

/// @nodoc
abstract mixin class _$PriceTierCopyWith<$Res> implements $PriceTierCopyWith<$Res> {
  factory _$PriceTierCopyWith(_PriceTier value, $Res Function(_PriceTier) _then) = __$PriceTierCopyWithImpl;
@override @useResult
$Res call({
 int minQuantity, int price
});




}
/// @nodoc
class __$PriceTierCopyWithImpl<$Res>
    implements _$PriceTierCopyWith<$Res> {
  __$PriceTierCopyWithImpl(this._self, this._then);

  final _PriceTier _self;
  final $Res Function(_PriceTier) _then;

/// Create a copy of PriceTier
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? minQuantity = null,Object? price = null,}) {
  return _then(_PriceTier(
minQuantity: null == minQuantity ? _self.minQuantity : minQuantity // ignore: cast_nullable_to_non_nullable
as int,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$SizeChart {

 List<String> get headers; List<List<String>> get rows;
/// Create a copy of SizeChart
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SizeChartCopyWith<SizeChart> get copyWith => _$SizeChartCopyWithImpl<SizeChart>(this as SizeChart, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SizeChart&&const DeepCollectionEquality().equals(other.headers, headers)&&const DeepCollectionEquality().equals(other.rows, rows));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(headers),const DeepCollectionEquality().hash(rows));

@override
String toString() {
  return 'SizeChart(headers: $headers, rows: $rows)';
}


}

/// @nodoc
abstract mixin class $SizeChartCopyWith<$Res>  {
  factory $SizeChartCopyWith(SizeChart value, $Res Function(SizeChart) _then) = _$SizeChartCopyWithImpl;
@useResult
$Res call({
 List<String> headers, List<List<String>> rows
});




}
/// @nodoc
class _$SizeChartCopyWithImpl<$Res>
    implements $SizeChartCopyWith<$Res> {
  _$SizeChartCopyWithImpl(this._self, this._then);

  final SizeChart _self;
  final $Res Function(SizeChart) _then;

/// Create a copy of SizeChart
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? headers = null,Object? rows = null,}) {
  return _then(_self.copyWith(
headers: null == headers ? _self.headers : headers // ignore: cast_nullable_to_non_nullable
as List<String>,rows: null == rows ? _self.rows : rows // ignore: cast_nullable_to_non_nullable
as List<List<String>>,
  ));
}

}


/// Adds pattern-matching-related methods to [SizeChart].
extension SizeChartPatterns on SizeChart {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SizeChart value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SizeChart() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SizeChart value)  $default,){
final _that = this;
switch (_that) {
case _SizeChart():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SizeChart value)?  $default,){
final _that = this;
switch (_that) {
case _SizeChart() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> headers,  List<List<String>> rows)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SizeChart() when $default != null:
return $default(_that.headers,_that.rows);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> headers,  List<List<String>> rows)  $default,) {final _that = this;
switch (_that) {
case _SizeChart():
return $default(_that.headers,_that.rows);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> headers,  List<List<String>> rows)?  $default,) {final _that = this;
switch (_that) {
case _SizeChart() when $default != null:
return $default(_that.headers,_that.rows);case _:
  return null;

}
}

}

/// @nodoc


class _SizeChart implements SizeChart {
  const _SizeChart({required final  List<String> headers, required final  List<List<String>> rows}): _headers = headers,_rows = rows;
  

 final  List<String> _headers;
@override List<String> get headers {
  if (_headers is EqualUnmodifiableListView) return _headers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_headers);
}

 final  List<List<String>> _rows;
@override List<List<String>> get rows {
  if (_rows is EqualUnmodifiableListView) return _rows;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_rows);
}


/// Create a copy of SizeChart
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SizeChartCopyWith<_SizeChart> get copyWith => __$SizeChartCopyWithImpl<_SizeChart>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SizeChart&&const DeepCollectionEquality().equals(other._headers, _headers)&&const DeepCollectionEquality().equals(other._rows, _rows));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_headers),const DeepCollectionEquality().hash(_rows));

@override
String toString() {
  return 'SizeChart(headers: $headers, rows: $rows)';
}


}

/// @nodoc
abstract mixin class _$SizeChartCopyWith<$Res> implements $SizeChartCopyWith<$Res> {
  factory _$SizeChartCopyWith(_SizeChart value, $Res Function(_SizeChart) _then) = __$SizeChartCopyWithImpl;
@override @useResult
$Res call({
 List<String> headers, List<List<String>> rows
});




}
/// @nodoc
class __$SizeChartCopyWithImpl<$Res>
    implements _$SizeChartCopyWith<$Res> {
  __$SizeChartCopyWithImpl(this._self, this._then);

  final _SizeChart _self;
  final $Res Function(_SizeChart) _then;

/// Create a copy of SizeChart
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? headers = null,Object? rows = null,}) {
  return _then(_SizeChart(
headers: null == headers ? _self._headers : headers // ignore: cast_nullable_to_non_nullable
as List<String>,rows: null == rows ? _self._rows : rows // ignore: cast_nullable_to_non_nullable
as List<List<String>>,
  ));
}


}

/// @nodoc
mixin _$SpecRow {

 String get name; String get value;
/// Create a copy of SpecRow
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpecRowCopyWith<SpecRow> get copyWith => _$SpecRowCopyWithImpl<SpecRow>(this as SpecRow, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpecRow&&(identical(other.name, name) || other.name == name)&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,name,value);

@override
String toString() {
  return 'SpecRow(name: $name, value: $value)';
}


}

/// @nodoc
abstract mixin class $SpecRowCopyWith<$Res>  {
  factory $SpecRowCopyWith(SpecRow value, $Res Function(SpecRow) _then) = _$SpecRowCopyWithImpl;
@useResult
$Res call({
 String name, String value
});




}
/// @nodoc
class _$SpecRowCopyWithImpl<$Res>
    implements $SpecRowCopyWith<$Res> {
  _$SpecRowCopyWithImpl(this._self, this._then);

  final SpecRow _self;
  final $Res Function(SpecRow) _then;

/// Create a copy of SpecRow
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? value = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SpecRow].
extension SpecRowPatterns on SpecRow {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SpecRow value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SpecRow() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SpecRow value)  $default,){
final _that = this;
switch (_that) {
case _SpecRow():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SpecRow value)?  $default,){
final _that = this;
switch (_that) {
case _SpecRow() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SpecRow() when $default != null:
return $default(_that.name,_that.value);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String value)  $default,) {final _that = this;
switch (_that) {
case _SpecRow():
return $default(_that.name,_that.value);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String value)?  $default,) {final _that = this;
switch (_that) {
case _SpecRow() when $default != null:
return $default(_that.name,_that.value);case _:
  return null;

}
}

}

/// @nodoc


class _SpecRow implements SpecRow {
  const _SpecRow({required this.name, required this.value});
  

@override final  String name;
@override final  String value;

/// Create a copy of SpecRow
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SpecRowCopyWith<_SpecRow> get copyWith => __$SpecRowCopyWithImpl<_SpecRow>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SpecRow&&(identical(other.name, name) || other.name == name)&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,name,value);

@override
String toString() {
  return 'SpecRow(name: $name, value: $value)';
}


}

/// @nodoc
abstract mixin class _$SpecRowCopyWith<$Res> implements $SpecRowCopyWith<$Res> {
  factory _$SpecRowCopyWith(_SpecRow value, $Res Function(_SpecRow) _then) = __$SpecRowCopyWithImpl;
@override @useResult
$Res call({
 String name, String value
});




}
/// @nodoc
class __$SpecRowCopyWithImpl<$Res>
    implements _$SpecRowCopyWith<$Res> {
  __$SpecRowCopyWithImpl(this._self, this._then);

  final _SpecRow _self;
  final $Res Function(_SpecRow) _then;

/// Create a copy of SpecRow
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? value = null,}) {
  return _then(_SpecRow(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$Seller {

/// For «Все товары продавца»; `null` when the server does not list
/// the seller's products.
 String? get id; String get name;/// Marketplace name: Taobao, 1688, Tmall.
 String get source; double? get rating; int? get salesCount;
/// Create a copy of Seller
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SellerCopyWith<Seller> get copyWith => _$SellerCopyWithImpl<Seller>(this as Seller, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Seller&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.source, source) || other.source == source)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.salesCount, salesCount) || other.salesCount == salesCount));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,source,rating,salesCount);

@override
String toString() {
  return 'Seller(id: $id, name: $name, source: $source, rating: $rating, salesCount: $salesCount)';
}


}

/// @nodoc
abstract mixin class $SellerCopyWith<$Res>  {
  factory $SellerCopyWith(Seller value, $Res Function(Seller) _then) = _$SellerCopyWithImpl;
@useResult
$Res call({
 String? id, String name, String source, double? rating, int? salesCount
});




}
/// @nodoc
class _$SellerCopyWithImpl<$Res>
    implements $SellerCopyWith<$Res> {
  _$SellerCopyWithImpl(this._self, this._then);

  final Seller _self;
  final $Res Function(Seller) _then;

/// Create a copy of Seller
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = null,Object? source = null,Object? rating = freezed,Object? salesCount = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double?,salesCount: freezed == salesCount ? _self.salesCount : salesCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Seller].
extension SellerPatterns on Seller {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Seller value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Seller() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Seller value)  $default,){
final _that = this;
switch (_that) {
case _Seller():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Seller value)?  $default,){
final _that = this;
switch (_that) {
case _Seller() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String name,  String source,  double? rating,  int? salesCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Seller() when $default != null:
return $default(_that.id,_that.name,_that.source,_that.rating,_that.salesCount);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String name,  String source,  double? rating,  int? salesCount)  $default,) {final _that = this;
switch (_that) {
case _Seller():
return $default(_that.id,_that.name,_that.source,_that.rating,_that.salesCount);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String name,  String source,  double? rating,  int? salesCount)?  $default,) {final _that = this;
switch (_that) {
case _Seller() when $default != null:
return $default(_that.id,_that.name,_that.source,_that.rating,_that.salesCount);case _:
  return null;

}
}

}

/// @nodoc


class _Seller implements Seller {
  const _Seller({this.id, required this.name, required this.source, this.rating, this.salesCount});
  

/// For «Все товары продавца»; `null` when the server does not list
/// the seller's products.
@override final  String? id;
@override final  String name;
/// Marketplace name: Taobao, 1688, Tmall.
@override final  String source;
@override final  double? rating;
@override final  int? salesCount;

/// Create a copy of Seller
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SellerCopyWith<_Seller> get copyWith => __$SellerCopyWithImpl<_Seller>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Seller&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.source, source) || other.source == source)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.salesCount, salesCount) || other.salesCount == salesCount));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,source,rating,salesCount);

@override
String toString() {
  return 'Seller(id: $id, name: $name, source: $source, rating: $rating, salesCount: $salesCount)';
}


}

/// @nodoc
abstract mixin class _$SellerCopyWith<$Res> implements $SellerCopyWith<$Res> {
  factory _$SellerCopyWith(_Seller value, $Res Function(_Seller) _then) = __$SellerCopyWithImpl;
@override @useResult
$Res call({
 String? id, String name, String source, double? rating, int? salesCount
});




}
/// @nodoc
class __$SellerCopyWithImpl<$Res>
    implements _$SellerCopyWith<$Res> {
  __$SellerCopyWithImpl(this._self, this._then);

  final _Seller _self;
  final $Res Function(_Seller) _then;

/// Create a copy of Seller
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = null,Object? source = null,Object? rating = freezed,Object? salesCount = freezed,}) {
  return _then(_Seller(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double?,salesCount: freezed == salesCount ? _self.salesCount : salesCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc
mixin _$ReviewsSummary {

 double get average; int get count;/// Strip of customer photos above the reviews.
 List<String> get photoUrls;/// A preview: the first two or three reviews.
 List<Review> get items;
/// Create a copy of ReviewsSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewsSummaryCopyWith<ReviewsSummary> get copyWith => _$ReviewsSummaryCopyWithImpl<ReviewsSummary>(this as ReviewsSummary, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewsSummary&&(identical(other.average, average) || other.average == average)&&(identical(other.count, count) || other.count == count)&&const DeepCollectionEquality().equals(other.photoUrls, photoUrls)&&const DeepCollectionEquality().equals(other.items, items));
}


@override
int get hashCode => Object.hash(runtimeType,average,count,const DeepCollectionEquality().hash(photoUrls),const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'ReviewsSummary(average: $average, count: $count, photoUrls: $photoUrls, items: $items)';
}


}

/// @nodoc
abstract mixin class $ReviewsSummaryCopyWith<$Res>  {
  factory $ReviewsSummaryCopyWith(ReviewsSummary value, $Res Function(ReviewsSummary) _then) = _$ReviewsSummaryCopyWithImpl;
@useResult
$Res call({
 double average, int count, List<String> photoUrls, List<Review> items
});




}
/// @nodoc
class _$ReviewsSummaryCopyWithImpl<$Res>
    implements $ReviewsSummaryCopyWith<$Res> {
  _$ReviewsSummaryCopyWithImpl(this._self, this._then);

  final ReviewsSummary _self;
  final $Res Function(ReviewsSummary) _then;

/// Create a copy of ReviewsSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? average = null,Object? count = null,Object? photoUrls = null,Object? items = null,}) {
  return _then(_self.copyWith(
average: null == average ? _self.average : average // ignore: cast_nullable_to_non_nullable
as double,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,photoUrls: null == photoUrls ? _self.photoUrls : photoUrls // ignore: cast_nullable_to_non_nullable
as List<String>,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<Review>,
  ));
}

}


/// Adds pattern-matching-related methods to [ReviewsSummary].
extension ReviewsSummaryPatterns on ReviewsSummary {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewsSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewsSummary() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewsSummary value)  $default,){
final _that = this;
switch (_that) {
case _ReviewsSummary():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewsSummary value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewsSummary() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double average,  int count,  List<String> photoUrls,  List<Review> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReviewsSummary() when $default != null:
return $default(_that.average,_that.count,_that.photoUrls,_that.items);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double average,  int count,  List<String> photoUrls,  List<Review> items)  $default,) {final _that = this;
switch (_that) {
case _ReviewsSummary():
return $default(_that.average,_that.count,_that.photoUrls,_that.items);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double average,  int count,  List<String> photoUrls,  List<Review> items)?  $default,) {final _that = this;
switch (_that) {
case _ReviewsSummary() when $default != null:
return $default(_that.average,_that.count,_that.photoUrls,_that.items);case _:
  return null;

}
}

}

/// @nodoc


class _ReviewsSummary implements ReviewsSummary {
  const _ReviewsSummary({required this.average, required this.count, final  List<String> photoUrls = const <String>[], final  List<Review> items = const <Review>[]}): _photoUrls = photoUrls,_items = items;
  

@override final  double average;
@override final  int count;
/// Strip of customer photos above the reviews.
 final  List<String> _photoUrls;
/// Strip of customer photos above the reviews.
@override@JsonKey() List<String> get photoUrls {
  if (_photoUrls is EqualUnmodifiableListView) return _photoUrls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_photoUrls);
}

/// A preview: the first two or three reviews.
 final  List<Review> _items;
/// A preview: the first two or three reviews.
@override@JsonKey() List<Review> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of ReviewsSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewsSummaryCopyWith<_ReviewsSummary> get copyWith => __$ReviewsSummaryCopyWithImpl<_ReviewsSummary>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewsSummary&&(identical(other.average, average) || other.average == average)&&(identical(other.count, count) || other.count == count)&&const DeepCollectionEquality().equals(other._photoUrls, _photoUrls)&&const DeepCollectionEquality().equals(other._items, _items));
}


@override
int get hashCode => Object.hash(runtimeType,average,count,const DeepCollectionEquality().hash(_photoUrls),const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'ReviewsSummary(average: $average, count: $count, photoUrls: $photoUrls, items: $items)';
}


}

/// @nodoc
abstract mixin class _$ReviewsSummaryCopyWith<$Res> implements $ReviewsSummaryCopyWith<$Res> {
  factory _$ReviewsSummaryCopyWith(_ReviewsSummary value, $Res Function(_ReviewsSummary) _then) = __$ReviewsSummaryCopyWithImpl;
@override @useResult
$Res call({
 double average, int count, List<String> photoUrls, List<Review> items
});




}
/// @nodoc
class __$ReviewsSummaryCopyWithImpl<$Res>
    implements _$ReviewsSummaryCopyWith<$Res> {
  __$ReviewsSummaryCopyWithImpl(this._self, this._then);

  final _ReviewsSummary _self;
  final $Res Function(_ReviewsSummary) _then;

/// Create a copy of ReviewsSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? average = null,Object? count = null,Object? photoUrls = null,Object? items = null,}) {
  return _then(_ReviewsSummary(
average: null == average ? _self.average : average // ignore: cast_nullable_to_non_nullable
as double,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,photoUrls: null == photoUrls ? _self._photoUrls : photoUrls // ignore: cast_nullable_to_non_nullable
as List<String>,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<Review>,
  ));
}


}

/// @nodoc
mixin _$Review {

 String get author; DateTime get date; int get rating; String get text; String? get skuLabel; List<String> get photoUrls;/// Imported from the marketplace and machine-translated.
 bool get isTranslated;
/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewCopyWith<Review> get copyWith => _$ReviewCopyWithImpl<Review>(this as Review, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Review&&(identical(other.author, author) || other.author == author)&&(identical(other.date, date) || other.date == date)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.text, text) || other.text == text)&&(identical(other.skuLabel, skuLabel) || other.skuLabel == skuLabel)&&const DeepCollectionEquality().equals(other.photoUrls, photoUrls)&&(identical(other.isTranslated, isTranslated) || other.isTranslated == isTranslated));
}


@override
int get hashCode => Object.hash(runtimeType,author,date,rating,text,skuLabel,const DeepCollectionEquality().hash(photoUrls),isTranslated);

@override
String toString() {
  return 'Review(author: $author, date: $date, rating: $rating, text: $text, skuLabel: $skuLabel, photoUrls: $photoUrls, isTranslated: $isTranslated)';
}


}

/// @nodoc
abstract mixin class $ReviewCopyWith<$Res>  {
  factory $ReviewCopyWith(Review value, $Res Function(Review) _then) = _$ReviewCopyWithImpl;
@useResult
$Res call({
 String author, DateTime date, int rating, String text, String? skuLabel, List<String> photoUrls, bool isTranslated
});




}
/// @nodoc
class _$ReviewCopyWithImpl<$Res>
    implements $ReviewCopyWith<$Res> {
  _$ReviewCopyWithImpl(this._self, this._then);

  final Review _self;
  final $Res Function(Review) _then;

/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? author = null,Object? date = null,Object? rating = null,Object? text = null,Object? skuLabel = freezed,Object? photoUrls = null,Object? isTranslated = null,}) {
  return _then(_self.copyWith(
author: null == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,skuLabel: freezed == skuLabel ? _self.skuLabel : skuLabel // ignore: cast_nullable_to_non_nullable
as String?,photoUrls: null == photoUrls ? _self.photoUrls : photoUrls // ignore: cast_nullable_to_non_nullable
as List<String>,isTranslated: null == isTranslated ? _self.isTranslated : isTranslated // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [Review].
extension ReviewPatterns on Review {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Review value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Review() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Review value)  $default,){
final _that = this;
switch (_that) {
case _Review():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Review value)?  $default,){
final _that = this;
switch (_that) {
case _Review() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String author,  DateTime date,  int rating,  String text,  String? skuLabel,  List<String> photoUrls,  bool isTranslated)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Review() when $default != null:
return $default(_that.author,_that.date,_that.rating,_that.text,_that.skuLabel,_that.photoUrls,_that.isTranslated);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String author,  DateTime date,  int rating,  String text,  String? skuLabel,  List<String> photoUrls,  bool isTranslated)  $default,) {final _that = this;
switch (_that) {
case _Review():
return $default(_that.author,_that.date,_that.rating,_that.text,_that.skuLabel,_that.photoUrls,_that.isTranslated);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String author,  DateTime date,  int rating,  String text,  String? skuLabel,  List<String> photoUrls,  bool isTranslated)?  $default,) {final _that = this;
switch (_that) {
case _Review() when $default != null:
return $default(_that.author,_that.date,_that.rating,_that.text,_that.skuLabel,_that.photoUrls,_that.isTranslated);case _:
  return null;

}
}

}

/// @nodoc


class _Review implements Review {
  const _Review({required this.author, required this.date, required this.rating, required this.text, this.skuLabel, final  List<String> photoUrls = const <String>[], this.isTranslated = false}): _photoUrls = photoUrls;
  

@override final  String author;
@override final  DateTime date;
@override final  int rating;
@override final  String text;
@override final  String? skuLabel;
 final  List<String> _photoUrls;
@override@JsonKey() List<String> get photoUrls {
  if (_photoUrls is EqualUnmodifiableListView) return _photoUrls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_photoUrls);
}

/// Imported from the marketplace and machine-translated.
@override@JsonKey() final  bool isTranslated;

/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewCopyWith<_Review> get copyWith => __$ReviewCopyWithImpl<_Review>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Review&&(identical(other.author, author) || other.author == author)&&(identical(other.date, date) || other.date == date)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.text, text) || other.text == text)&&(identical(other.skuLabel, skuLabel) || other.skuLabel == skuLabel)&&const DeepCollectionEquality().equals(other._photoUrls, _photoUrls)&&(identical(other.isTranslated, isTranslated) || other.isTranslated == isTranslated));
}


@override
int get hashCode => Object.hash(runtimeType,author,date,rating,text,skuLabel,const DeepCollectionEquality().hash(_photoUrls),isTranslated);

@override
String toString() {
  return 'Review(author: $author, date: $date, rating: $rating, text: $text, skuLabel: $skuLabel, photoUrls: $photoUrls, isTranslated: $isTranslated)';
}


}

/// @nodoc
abstract mixin class _$ReviewCopyWith<$Res> implements $ReviewCopyWith<$Res> {
  factory _$ReviewCopyWith(_Review value, $Res Function(_Review) _then) = __$ReviewCopyWithImpl;
@override @useResult
$Res call({
 String author, DateTime date, int rating, String text, String? skuLabel, List<String> photoUrls, bool isTranslated
});




}
/// @nodoc
class __$ReviewCopyWithImpl<$Res>
    implements _$ReviewCopyWith<$Res> {
  __$ReviewCopyWithImpl(this._self, this._then);

  final _Review _self;
  final $Res Function(_Review) _then;

/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? author = null,Object? date = null,Object? rating = null,Object? text = null,Object? skuLabel = freezed,Object? photoUrls = null,Object? isTranslated = null,}) {
  return _then(_Review(
author: null == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,skuLabel: freezed == skuLabel ? _self.skuLabel : skuLabel // ignore: cast_nullable_to_non_nullable
as String?,photoUrls: null == photoUrls ? _self._photoUrls : photoUrls // ignore: cast_nullable_to_non_nullable
as List<String>,isTranslated: null == isTranslated ? _self.isTranslated : isTranslated // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$DeliveryQuote {

 DeliveryType get type; String get name;/// e.g. «7–10 дней», already adjusted for the region.
 String get term;/// `null` until the item is weighed: «после взвешивания».
 int? get price;/// Set when this type is not allowed for the product (batteries by air).
 String? get unavailableReason;
/// Create a copy of DeliveryQuote
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeliveryQuoteCopyWith<DeliveryQuote> get copyWith => _$DeliveryQuoteCopyWithImpl<DeliveryQuote>(this as DeliveryQuote, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeliveryQuote&&(identical(other.type, type) || other.type == type)&&(identical(other.name, name) || other.name == name)&&(identical(other.term, term) || other.term == term)&&(identical(other.price, price) || other.price == price)&&(identical(other.unavailableReason, unavailableReason) || other.unavailableReason == unavailableReason));
}


@override
int get hashCode => Object.hash(runtimeType,type,name,term,price,unavailableReason);

@override
String toString() {
  return 'DeliveryQuote(type: $type, name: $name, term: $term, price: $price, unavailableReason: $unavailableReason)';
}


}

/// @nodoc
abstract mixin class $DeliveryQuoteCopyWith<$Res>  {
  factory $DeliveryQuoteCopyWith(DeliveryQuote value, $Res Function(DeliveryQuote) _then) = _$DeliveryQuoteCopyWithImpl;
@useResult
$Res call({
 DeliveryType type, String name, String term, int? price, String? unavailableReason
});




}
/// @nodoc
class _$DeliveryQuoteCopyWithImpl<$Res>
    implements $DeliveryQuoteCopyWith<$Res> {
  _$DeliveryQuoteCopyWithImpl(this._self, this._then);

  final DeliveryQuote _self;
  final $Res Function(DeliveryQuote) _then;

/// Create a copy of DeliveryQuote
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? name = null,Object? term = null,Object? price = freezed,Object? unavailableReason = freezed,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as DeliveryType,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,term: null == term ? _self.term : term // ignore: cast_nullable_to_non_nullable
as String,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int?,unavailableReason: freezed == unavailableReason ? _self.unavailableReason : unavailableReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DeliveryQuote].
extension DeliveryQuotePatterns on DeliveryQuote {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeliveryQuote value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeliveryQuote() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeliveryQuote value)  $default,){
final _that = this;
switch (_that) {
case _DeliveryQuote():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeliveryQuote value)?  $default,){
final _that = this;
switch (_that) {
case _DeliveryQuote() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DeliveryType type,  String name,  String term,  int? price,  String? unavailableReason)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeliveryQuote() when $default != null:
return $default(_that.type,_that.name,_that.term,_that.price,_that.unavailableReason);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DeliveryType type,  String name,  String term,  int? price,  String? unavailableReason)  $default,) {final _that = this;
switch (_that) {
case _DeliveryQuote():
return $default(_that.type,_that.name,_that.term,_that.price,_that.unavailableReason);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DeliveryType type,  String name,  String term,  int? price,  String? unavailableReason)?  $default,) {final _that = this;
switch (_that) {
case _DeliveryQuote() when $default != null:
return $default(_that.type,_that.name,_that.term,_that.price,_that.unavailableReason);case _:
  return null;

}
}

}

/// @nodoc


class _DeliveryQuote implements DeliveryQuote {
  const _DeliveryQuote({required this.type, required this.name, required this.term, this.price, this.unavailableReason});
  

@override final  DeliveryType type;
@override final  String name;
/// e.g. «7–10 дней», already adjusted for the region.
@override final  String term;
/// `null` until the item is weighed: «после взвешивания».
@override final  int? price;
/// Set when this type is not allowed for the product (batteries by air).
@override final  String? unavailableReason;

/// Create a copy of DeliveryQuote
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeliveryQuoteCopyWith<_DeliveryQuote> get copyWith => __$DeliveryQuoteCopyWithImpl<_DeliveryQuote>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeliveryQuote&&(identical(other.type, type) || other.type == type)&&(identical(other.name, name) || other.name == name)&&(identical(other.term, term) || other.term == term)&&(identical(other.price, price) || other.price == price)&&(identical(other.unavailableReason, unavailableReason) || other.unavailableReason == unavailableReason));
}


@override
int get hashCode => Object.hash(runtimeType,type,name,term,price,unavailableReason);

@override
String toString() {
  return 'DeliveryQuote(type: $type, name: $name, term: $term, price: $price, unavailableReason: $unavailableReason)';
}


}

/// @nodoc
abstract mixin class _$DeliveryQuoteCopyWith<$Res> implements $DeliveryQuoteCopyWith<$Res> {
  factory _$DeliveryQuoteCopyWith(_DeliveryQuote value, $Res Function(_DeliveryQuote) _then) = __$DeliveryQuoteCopyWithImpl;
@override @useResult
$Res call({
 DeliveryType type, String name, String term, int? price, String? unavailableReason
});




}
/// @nodoc
class __$DeliveryQuoteCopyWithImpl<$Res>
    implements _$DeliveryQuoteCopyWith<$Res> {
  __$DeliveryQuoteCopyWithImpl(this._self, this._then);

  final _DeliveryQuote _self;
  final $Res Function(_DeliveryQuote) _then;

/// Create a copy of DeliveryQuote
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? name = null,Object? term = null,Object? price = freezed,Object? unavailableReason = freezed,}) {
  return _then(_DeliveryQuote(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as DeliveryType,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,term: null == term ? _self.term : term // ignore: cast_nullable_to_non_nullable
as String,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int?,unavailableReason: freezed == unavailableReason ? _self.unavailableReason : unavailableReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
