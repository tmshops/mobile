// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductDetailsModel {

 String get id; String get title; DateTime get serverTime; List<MediaModel> get media; int get price; int? get oldPrice; DateTime? get promoEndsAt; List<PriceTierModel> get priceTiers; double? get rating; int get reviewCount; int? get soldCount; List<SkuPropertyModel> get properties; List<SkuModel> get skus; SizeChartModel? get sizeChart; String get descriptionHtml; List<SpecRowModel> get specs; SellerModel? get seller; ReviewsSummaryModel? get reviews; bool get isAvailable; List<ProductSummaryModel> get similar; List<ProductSummaryModel> get boughtTogether; String? get shareUrl;
/// Create a copy of ProductDetailsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductDetailsModelCopyWith<ProductDetailsModel> get copyWith => _$ProductDetailsModelCopyWithImpl<ProductDetailsModel>(this as ProductDetailsModel, _$identity);

  /// Serializes this ProductDetailsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductDetailsModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.serverTime, serverTime) || other.serverTime == serverTime)&&const DeepCollectionEquality().equals(other.media, media)&&(identical(other.price, price) || other.price == price)&&(identical(other.oldPrice, oldPrice) || other.oldPrice == oldPrice)&&(identical(other.promoEndsAt, promoEndsAt) || other.promoEndsAt == promoEndsAt)&&const DeepCollectionEquality().equals(other.priceTiers, priceTiers)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.reviewCount, reviewCount) || other.reviewCount == reviewCount)&&(identical(other.soldCount, soldCount) || other.soldCount == soldCount)&&const DeepCollectionEquality().equals(other.properties, properties)&&const DeepCollectionEquality().equals(other.skus, skus)&&(identical(other.sizeChart, sizeChart) || other.sizeChart == sizeChart)&&(identical(other.descriptionHtml, descriptionHtml) || other.descriptionHtml == descriptionHtml)&&const DeepCollectionEquality().equals(other.specs, specs)&&(identical(other.seller, seller) || other.seller == seller)&&(identical(other.reviews, reviews) || other.reviews == reviews)&&(identical(other.isAvailable, isAvailable) || other.isAvailable == isAvailable)&&const DeepCollectionEquality().equals(other.similar, similar)&&const DeepCollectionEquality().equals(other.boughtTogether, boughtTogether)&&(identical(other.shareUrl, shareUrl) || other.shareUrl == shareUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,title,serverTime,const DeepCollectionEquality().hash(media),price,oldPrice,promoEndsAt,const DeepCollectionEquality().hash(priceTiers),rating,reviewCount,soldCount,const DeepCollectionEquality().hash(properties),const DeepCollectionEquality().hash(skus),sizeChart,descriptionHtml,const DeepCollectionEquality().hash(specs),seller,reviews,isAvailable,const DeepCollectionEquality().hash(similar),const DeepCollectionEquality().hash(boughtTogether),shareUrl]);

@override
String toString() {
  return 'ProductDetailsModel(id: $id, title: $title, serverTime: $serverTime, media: $media, price: $price, oldPrice: $oldPrice, promoEndsAt: $promoEndsAt, priceTiers: $priceTiers, rating: $rating, reviewCount: $reviewCount, soldCount: $soldCount, properties: $properties, skus: $skus, sizeChart: $sizeChart, descriptionHtml: $descriptionHtml, specs: $specs, seller: $seller, reviews: $reviews, isAvailable: $isAvailable, similar: $similar, boughtTogether: $boughtTogether, shareUrl: $shareUrl)';
}


}

/// @nodoc
abstract mixin class $ProductDetailsModelCopyWith<$Res>  {
  factory $ProductDetailsModelCopyWith(ProductDetailsModel value, $Res Function(ProductDetailsModel) _then) = _$ProductDetailsModelCopyWithImpl;
@useResult
$Res call({
 String id, String title, DateTime serverTime, List<MediaModel> media, int price, int? oldPrice, DateTime? promoEndsAt, List<PriceTierModel> priceTiers, double? rating, int reviewCount, int? soldCount, List<SkuPropertyModel> properties, List<SkuModel> skus, SizeChartModel? sizeChart, String descriptionHtml, List<SpecRowModel> specs, SellerModel? seller, ReviewsSummaryModel? reviews, bool isAvailable, List<ProductSummaryModel> similar, List<ProductSummaryModel> boughtTogether, String? shareUrl
});


$SizeChartModelCopyWith<$Res>? get sizeChart;$SellerModelCopyWith<$Res>? get seller;$ReviewsSummaryModelCopyWith<$Res>? get reviews;

}
/// @nodoc
class _$ProductDetailsModelCopyWithImpl<$Res>
    implements $ProductDetailsModelCopyWith<$Res> {
  _$ProductDetailsModelCopyWithImpl(this._self, this._then);

  final ProductDetailsModel _self;
  final $Res Function(ProductDetailsModel) _then;

/// Create a copy of ProductDetailsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? serverTime = null,Object? media = null,Object? price = null,Object? oldPrice = freezed,Object? promoEndsAt = freezed,Object? priceTiers = null,Object? rating = freezed,Object? reviewCount = null,Object? soldCount = freezed,Object? properties = null,Object? skus = null,Object? sizeChart = freezed,Object? descriptionHtml = null,Object? specs = null,Object? seller = freezed,Object? reviews = freezed,Object? isAvailable = null,Object? similar = null,Object? boughtTogether = null,Object? shareUrl = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,serverTime: null == serverTime ? _self.serverTime : serverTime // ignore: cast_nullable_to_non_nullable
as DateTime,media: null == media ? _self.media : media // ignore: cast_nullable_to_non_nullable
as List<MediaModel>,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,oldPrice: freezed == oldPrice ? _self.oldPrice : oldPrice // ignore: cast_nullable_to_non_nullable
as int?,promoEndsAt: freezed == promoEndsAt ? _self.promoEndsAt : promoEndsAt // ignore: cast_nullable_to_non_nullable
as DateTime?,priceTiers: null == priceTiers ? _self.priceTiers : priceTiers // ignore: cast_nullable_to_non_nullable
as List<PriceTierModel>,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double?,reviewCount: null == reviewCount ? _self.reviewCount : reviewCount // ignore: cast_nullable_to_non_nullable
as int,soldCount: freezed == soldCount ? _self.soldCount : soldCount // ignore: cast_nullable_to_non_nullable
as int?,properties: null == properties ? _self.properties : properties // ignore: cast_nullable_to_non_nullable
as List<SkuPropertyModel>,skus: null == skus ? _self.skus : skus // ignore: cast_nullable_to_non_nullable
as List<SkuModel>,sizeChart: freezed == sizeChart ? _self.sizeChart : sizeChart // ignore: cast_nullable_to_non_nullable
as SizeChartModel?,descriptionHtml: null == descriptionHtml ? _self.descriptionHtml : descriptionHtml // ignore: cast_nullable_to_non_nullable
as String,specs: null == specs ? _self.specs : specs // ignore: cast_nullable_to_non_nullable
as List<SpecRowModel>,seller: freezed == seller ? _self.seller : seller // ignore: cast_nullable_to_non_nullable
as SellerModel?,reviews: freezed == reviews ? _self.reviews : reviews // ignore: cast_nullable_to_non_nullable
as ReviewsSummaryModel?,isAvailable: null == isAvailable ? _self.isAvailable : isAvailable // ignore: cast_nullable_to_non_nullable
as bool,similar: null == similar ? _self.similar : similar // ignore: cast_nullable_to_non_nullable
as List<ProductSummaryModel>,boughtTogether: null == boughtTogether ? _self.boughtTogether : boughtTogether // ignore: cast_nullable_to_non_nullable
as List<ProductSummaryModel>,shareUrl: freezed == shareUrl ? _self.shareUrl : shareUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of ProductDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SizeChartModelCopyWith<$Res>? get sizeChart {
    if (_self.sizeChart == null) {
    return null;
  }

  return $SizeChartModelCopyWith<$Res>(_self.sizeChart!, (value) {
    return _then(_self.copyWith(sizeChart: value));
  });
}/// Create a copy of ProductDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SellerModelCopyWith<$Res>? get seller {
    if (_self.seller == null) {
    return null;
  }

  return $SellerModelCopyWith<$Res>(_self.seller!, (value) {
    return _then(_self.copyWith(seller: value));
  });
}/// Create a copy of ProductDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewsSummaryModelCopyWith<$Res>? get reviews {
    if (_self.reviews == null) {
    return null;
  }

  return $ReviewsSummaryModelCopyWith<$Res>(_self.reviews!, (value) {
    return _then(_self.copyWith(reviews: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProductDetailsModel].
extension ProductDetailsModelPatterns on ProductDetailsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductDetailsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductDetailsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductDetailsModel value)  $default,){
final _that = this;
switch (_that) {
case _ProductDetailsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductDetailsModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProductDetailsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  DateTime serverTime,  List<MediaModel> media,  int price,  int? oldPrice,  DateTime? promoEndsAt,  List<PriceTierModel> priceTiers,  double? rating,  int reviewCount,  int? soldCount,  List<SkuPropertyModel> properties,  List<SkuModel> skus,  SizeChartModel? sizeChart,  String descriptionHtml,  List<SpecRowModel> specs,  SellerModel? seller,  ReviewsSummaryModel? reviews,  bool isAvailable,  List<ProductSummaryModel> similar,  List<ProductSummaryModel> boughtTogether,  String? shareUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductDetailsModel() when $default != null:
return $default(_that.id,_that.title,_that.serverTime,_that.media,_that.price,_that.oldPrice,_that.promoEndsAt,_that.priceTiers,_that.rating,_that.reviewCount,_that.soldCount,_that.properties,_that.skus,_that.sizeChart,_that.descriptionHtml,_that.specs,_that.seller,_that.reviews,_that.isAvailable,_that.similar,_that.boughtTogether,_that.shareUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  DateTime serverTime,  List<MediaModel> media,  int price,  int? oldPrice,  DateTime? promoEndsAt,  List<PriceTierModel> priceTiers,  double? rating,  int reviewCount,  int? soldCount,  List<SkuPropertyModel> properties,  List<SkuModel> skus,  SizeChartModel? sizeChart,  String descriptionHtml,  List<SpecRowModel> specs,  SellerModel? seller,  ReviewsSummaryModel? reviews,  bool isAvailable,  List<ProductSummaryModel> similar,  List<ProductSummaryModel> boughtTogether,  String? shareUrl)  $default,) {final _that = this;
switch (_that) {
case _ProductDetailsModel():
return $default(_that.id,_that.title,_that.serverTime,_that.media,_that.price,_that.oldPrice,_that.promoEndsAt,_that.priceTiers,_that.rating,_that.reviewCount,_that.soldCount,_that.properties,_that.skus,_that.sizeChart,_that.descriptionHtml,_that.specs,_that.seller,_that.reviews,_that.isAvailable,_that.similar,_that.boughtTogether,_that.shareUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  DateTime serverTime,  List<MediaModel> media,  int price,  int? oldPrice,  DateTime? promoEndsAt,  List<PriceTierModel> priceTiers,  double? rating,  int reviewCount,  int? soldCount,  List<SkuPropertyModel> properties,  List<SkuModel> skus,  SizeChartModel? sizeChart,  String descriptionHtml,  List<SpecRowModel> specs,  SellerModel? seller,  ReviewsSummaryModel? reviews,  bool isAvailable,  List<ProductSummaryModel> similar,  List<ProductSummaryModel> boughtTogether,  String? shareUrl)?  $default,) {final _that = this;
switch (_that) {
case _ProductDetailsModel() when $default != null:
return $default(_that.id,_that.title,_that.serverTime,_that.media,_that.price,_that.oldPrice,_that.promoEndsAt,_that.priceTiers,_that.rating,_that.reviewCount,_that.soldCount,_that.properties,_that.skus,_that.sizeChart,_that.descriptionHtml,_that.specs,_that.seller,_that.reviews,_that.isAvailable,_that.similar,_that.boughtTogether,_that.shareUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductDetailsModel implements ProductDetailsModel {
  const _ProductDetailsModel({required this.id, required this.title, required this.serverTime, required final  List<MediaModel> media, required this.price, this.oldPrice, this.promoEndsAt, final  List<PriceTierModel> priceTiers = const <PriceTierModel>[], this.rating, this.reviewCount = 0, this.soldCount, final  List<SkuPropertyModel> properties = const <SkuPropertyModel>[], final  List<SkuModel> skus = const <SkuModel>[], this.sizeChart, this.descriptionHtml = '', final  List<SpecRowModel> specs = const <SpecRowModel>[], this.seller, this.reviews, this.isAvailable = true, final  List<ProductSummaryModel> similar = const <ProductSummaryModel>[], final  List<ProductSummaryModel> boughtTogether = const <ProductSummaryModel>[], this.shareUrl}): _media = media,_priceTiers = priceTiers,_properties = properties,_skus = skus,_specs = specs,_similar = similar,_boughtTogether = boughtTogether;
  factory _ProductDetailsModel.fromJson(Map<String, dynamic> json) => _$ProductDetailsModelFromJson(json);

@override final  String id;
@override final  String title;
@override final  DateTime serverTime;
 final  List<MediaModel> _media;
@override List<MediaModel> get media {
  if (_media is EqualUnmodifiableListView) return _media;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_media);
}

@override final  int price;
@override final  int? oldPrice;
@override final  DateTime? promoEndsAt;
 final  List<PriceTierModel> _priceTiers;
@override@JsonKey() List<PriceTierModel> get priceTiers {
  if (_priceTiers is EqualUnmodifiableListView) return _priceTiers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_priceTiers);
}

@override final  double? rating;
@override@JsonKey() final  int reviewCount;
@override final  int? soldCount;
 final  List<SkuPropertyModel> _properties;
@override@JsonKey() List<SkuPropertyModel> get properties {
  if (_properties is EqualUnmodifiableListView) return _properties;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_properties);
}

 final  List<SkuModel> _skus;
@override@JsonKey() List<SkuModel> get skus {
  if (_skus is EqualUnmodifiableListView) return _skus;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_skus);
}

@override final  SizeChartModel? sizeChart;
@override@JsonKey() final  String descriptionHtml;
 final  List<SpecRowModel> _specs;
@override@JsonKey() List<SpecRowModel> get specs {
  if (_specs is EqualUnmodifiableListView) return _specs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_specs);
}

@override final  SellerModel? seller;
@override final  ReviewsSummaryModel? reviews;
@override@JsonKey() final  bool isAvailable;
 final  List<ProductSummaryModel> _similar;
@override@JsonKey() List<ProductSummaryModel> get similar {
  if (_similar is EqualUnmodifiableListView) return _similar;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_similar);
}

 final  List<ProductSummaryModel> _boughtTogether;
@override@JsonKey() List<ProductSummaryModel> get boughtTogether {
  if (_boughtTogether is EqualUnmodifiableListView) return _boughtTogether;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_boughtTogether);
}

@override final  String? shareUrl;

/// Create a copy of ProductDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductDetailsModelCopyWith<_ProductDetailsModel> get copyWith => __$ProductDetailsModelCopyWithImpl<_ProductDetailsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductDetailsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductDetailsModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.serverTime, serverTime) || other.serverTime == serverTime)&&const DeepCollectionEquality().equals(other._media, _media)&&(identical(other.price, price) || other.price == price)&&(identical(other.oldPrice, oldPrice) || other.oldPrice == oldPrice)&&(identical(other.promoEndsAt, promoEndsAt) || other.promoEndsAt == promoEndsAt)&&const DeepCollectionEquality().equals(other._priceTiers, _priceTiers)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.reviewCount, reviewCount) || other.reviewCount == reviewCount)&&(identical(other.soldCount, soldCount) || other.soldCount == soldCount)&&const DeepCollectionEquality().equals(other._properties, _properties)&&const DeepCollectionEquality().equals(other._skus, _skus)&&(identical(other.sizeChart, sizeChart) || other.sizeChart == sizeChart)&&(identical(other.descriptionHtml, descriptionHtml) || other.descriptionHtml == descriptionHtml)&&const DeepCollectionEquality().equals(other._specs, _specs)&&(identical(other.seller, seller) || other.seller == seller)&&(identical(other.reviews, reviews) || other.reviews == reviews)&&(identical(other.isAvailable, isAvailable) || other.isAvailable == isAvailable)&&const DeepCollectionEquality().equals(other._similar, _similar)&&const DeepCollectionEquality().equals(other._boughtTogether, _boughtTogether)&&(identical(other.shareUrl, shareUrl) || other.shareUrl == shareUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,title,serverTime,const DeepCollectionEquality().hash(_media),price,oldPrice,promoEndsAt,const DeepCollectionEquality().hash(_priceTiers),rating,reviewCount,soldCount,const DeepCollectionEquality().hash(_properties),const DeepCollectionEquality().hash(_skus),sizeChart,descriptionHtml,const DeepCollectionEquality().hash(_specs),seller,reviews,isAvailable,const DeepCollectionEquality().hash(_similar),const DeepCollectionEquality().hash(_boughtTogether),shareUrl]);

@override
String toString() {
  return 'ProductDetailsModel(id: $id, title: $title, serverTime: $serverTime, media: $media, price: $price, oldPrice: $oldPrice, promoEndsAt: $promoEndsAt, priceTiers: $priceTiers, rating: $rating, reviewCount: $reviewCount, soldCount: $soldCount, properties: $properties, skus: $skus, sizeChart: $sizeChart, descriptionHtml: $descriptionHtml, specs: $specs, seller: $seller, reviews: $reviews, isAvailable: $isAvailable, similar: $similar, boughtTogether: $boughtTogether, shareUrl: $shareUrl)';
}


}

/// @nodoc
abstract mixin class _$ProductDetailsModelCopyWith<$Res> implements $ProductDetailsModelCopyWith<$Res> {
  factory _$ProductDetailsModelCopyWith(_ProductDetailsModel value, $Res Function(_ProductDetailsModel) _then) = __$ProductDetailsModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, DateTime serverTime, List<MediaModel> media, int price, int? oldPrice, DateTime? promoEndsAt, List<PriceTierModel> priceTiers, double? rating, int reviewCount, int? soldCount, List<SkuPropertyModel> properties, List<SkuModel> skus, SizeChartModel? sizeChart, String descriptionHtml, List<SpecRowModel> specs, SellerModel? seller, ReviewsSummaryModel? reviews, bool isAvailable, List<ProductSummaryModel> similar, List<ProductSummaryModel> boughtTogether, String? shareUrl
});


@override $SizeChartModelCopyWith<$Res>? get sizeChart;@override $SellerModelCopyWith<$Res>? get seller;@override $ReviewsSummaryModelCopyWith<$Res>? get reviews;

}
/// @nodoc
class __$ProductDetailsModelCopyWithImpl<$Res>
    implements _$ProductDetailsModelCopyWith<$Res> {
  __$ProductDetailsModelCopyWithImpl(this._self, this._then);

  final _ProductDetailsModel _self;
  final $Res Function(_ProductDetailsModel) _then;

/// Create a copy of ProductDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? serverTime = null,Object? media = null,Object? price = null,Object? oldPrice = freezed,Object? promoEndsAt = freezed,Object? priceTiers = null,Object? rating = freezed,Object? reviewCount = null,Object? soldCount = freezed,Object? properties = null,Object? skus = null,Object? sizeChart = freezed,Object? descriptionHtml = null,Object? specs = null,Object? seller = freezed,Object? reviews = freezed,Object? isAvailable = null,Object? similar = null,Object? boughtTogether = null,Object? shareUrl = freezed,}) {
  return _then(_ProductDetailsModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,serverTime: null == serverTime ? _self.serverTime : serverTime // ignore: cast_nullable_to_non_nullable
as DateTime,media: null == media ? _self._media : media // ignore: cast_nullable_to_non_nullable
as List<MediaModel>,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,oldPrice: freezed == oldPrice ? _self.oldPrice : oldPrice // ignore: cast_nullable_to_non_nullable
as int?,promoEndsAt: freezed == promoEndsAt ? _self.promoEndsAt : promoEndsAt // ignore: cast_nullable_to_non_nullable
as DateTime?,priceTiers: null == priceTiers ? _self._priceTiers : priceTiers // ignore: cast_nullable_to_non_nullable
as List<PriceTierModel>,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double?,reviewCount: null == reviewCount ? _self.reviewCount : reviewCount // ignore: cast_nullable_to_non_nullable
as int,soldCount: freezed == soldCount ? _self.soldCount : soldCount // ignore: cast_nullable_to_non_nullable
as int?,properties: null == properties ? _self._properties : properties // ignore: cast_nullable_to_non_nullable
as List<SkuPropertyModel>,skus: null == skus ? _self._skus : skus // ignore: cast_nullable_to_non_nullable
as List<SkuModel>,sizeChart: freezed == sizeChart ? _self.sizeChart : sizeChart // ignore: cast_nullable_to_non_nullable
as SizeChartModel?,descriptionHtml: null == descriptionHtml ? _self.descriptionHtml : descriptionHtml // ignore: cast_nullable_to_non_nullable
as String,specs: null == specs ? _self._specs : specs // ignore: cast_nullable_to_non_nullable
as List<SpecRowModel>,seller: freezed == seller ? _self.seller : seller // ignore: cast_nullable_to_non_nullable
as SellerModel?,reviews: freezed == reviews ? _self.reviews : reviews // ignore: cast_nullable_to_non_nullable
as ReviewsSummaryModel?,isAvailable: null == isAvailable ? _self.isAvailable : isAvailable // ignore: cast_nullable_to_non_nullable
as bool,similar: null == similar ? _self._similar : similar // ignore: cast_nullable_to_non_nullable
as List<ProductSummaryModel>,boughtTogether: null == boughtTogether ? _self._boughtTogether : boughtTogether // ignore: cast_nullable_to_non_nullable
as List<ProductSummaryModel>,shareUrl: freezed == shareUrl ? _self.shareUrl : shareUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of ProductDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SizeChartModelCopyWith<$Res>? get sizeChart {
    if (_self.sizeChart == null) {
    return null;
  }

  return $SizeChartModelCopyWith<$Res>(_self.sizeChart!, (value) {
    return _then(_self.copyWith(sizeChart: value));
  });
}/// Create a copy of ProductDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SellerModelCopyWith<$Res>? get seller {
    if (_self.seller == null) {
    return null;
  }

  return $SellerModelCopyWith<$Res>(_self.seller!, (value) {
    return _then(_self.copyWith(seller: value));
  });
}/// Create a copy of ProductDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewsSummaryModelCopyWith<$Res>? get reviews {
    if (_self.reviews == null) {
    return null;
  }

  return $ReviewsSummaryModelCopyWith<$Res>(_self.reviews!, (value) {
    return _then(_self.copyWith(reviews: value));
  });
}
}


/// @nodoc
mixin _$MediaModel {

/// `image` or `video`; unknown kinds are skipped.
 String get kind; String get imageUrl; String? get videoUrl; bool get isIllustration;
/// Create a copy of MediaModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MediaModelCopyWith<MediaModel> get copyWith => _$MediaModelCopyWithImpl<MediaModel>(this as MediaModel, _$identity);

  /// Serializes this MediaModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MediaModel&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.videoUrl, videoUrl) || other.videoUrl == videoUrl)&&(identical(other.isIllustration, isIllustration) || other.isIllustration == isIllustration));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kind,imageUrl,videoUrl,isIllustration);

@override
String toString() {
  return 'MediaModel(kind: $kind, imageUrl: $imageUrl, videoUrl: $videoUrl, isIllustration: $isIllustration)';
}


}

/// @nodoc
abstract mixin class $MediaModelCopyWith<$Res>  {
  factory $MediaModelCopyWith(MediaModel value, $Res Function(MediaModel) _then) = _$MediaModelCopyWithImpl;
@useResult
$Res call({
 String kind, String imageUrl, String? videoUrl, bool isIllustration
});




}
/// @nodoc
class _$MediaModelCopyWithImpl<$Res>
    implements $MediaModelCopyWith<$Res> {
  _$MediaModelCopyWithImpl(this._self, this._then);

  final MediaModel _self;
  final $Res Function(MediaModel) _then;

/// Create a copy of MediaModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? kind = null,Object? imageUrl = null,Object? videoUrl = freezed,Object? isIllustration = null,}) {
  return _then(_self.copyWith(
kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,videoUrl: freezed == videoUrl ? _self.videoUrl : videoUrl // ignore: cast_nullable_to_non_nullable
as String?,isIllustration: null == isIllustration ? _self.isIllustration : isIllustration // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [MediaModel].
extension MediaModelPatterns on MediaModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MediaModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MediaModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MediaModel value)  $default,){
final _that = this;
switch (_that) {
case _MediaModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MediaModel value)?  $default,){
final _that = this;
switch (_that) {
case _MediaModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String kind,  String imageUrl,  String? videoUrl,  bool isIllustration)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MediaModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String kind,  String imageUrl,  String? videoUrl,  bool isIllustration)  $default,) {final _that = this;
switch (_that) {
case _MediaModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String kind,  String imageUrl,  String? videoUrl,  bool isIllustration)?  $default,) {final _that = this;
switch (_that) {
case _MediaModel() when $default != null:
return $default(_that.kind,_that.imageUrl,_that.videoUrl,_that.isIllustration);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MediaModel implements MediaModel {
  const _MediaModel({required this.kind, required this.imageUrl, this.videoUrl, this.isIllustration = false});
  factory _MediaModel.fromJson(Map<String, dynamic> json) => _$MediaModelFromJson(json);

/// `image` or `video`; unknown kinds are skipped.
@override final  String kind;
@override final  String imageUrl;
@override final  String? videoUrl;
@override@JsonKey() final  bool isIllustration;

/// Create a copy of MediaModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MediaModelCopyWith<_MediaModel> get copyWith => __$MediaModelCopyWithImpl<_MediaModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MediaModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MediaModel&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.videoUrl, videoUrl) || other.videoUrl == videoUrl)&&(identical(other.isIllustration, isIllustration) || other.isIllustration == isIllustration));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kind,imageUrl,videoUrl,isIllustration);

@override
String toString() {
  return 'MediaModel(kind: $kind, imageUrl: $imageUrl, videoUrl: $videoUrl, isIllustration: $isIllustration)';
}


}

/// @nodoc
abstract mixin class _$MediaModelCopyWith<$Res> implements $MediaModelCopyWith<$Res> {
  factory _$MediaModelCopyWith(_MediaModel value, $Res Function(_MediaModel) _then) = __$MediaModelCopyWithImpl;
@override @useResult
$Res call({
 String kind, String imageUrl, String? videoUrl, bool isIllustration
});




}
/// @nodoc
class __$MediaModelCopyWithImpl<$Res>
    implements _$MediaModelCopyWith<$Res> {
  __$MediaModelCopyWithImpl(this._self, this._then);

  final _MediaModel _self;
  final $Res Function(_MediaModel) _then;

/// Create a copy of MediaModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? kind = null,Object? imageUrl = null,Object? videoUrl = freezed,Object? isIllustration = null,}) {
  return _then(_MediaModel(
kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,videoUrl: freezed == videoUrl ? _self.videoUrl : videoUrl // ignore: cast_nullable_to_non_nullable
as String?,isIllustration: null == isIllustration ? _self.isIllustration : isIllustration // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$PriceTierModel {

 int get minQuantity; int get price;
/// Create a copy of PriceTierModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PriceTierModelCopyWith<PriceTierModel> get copyWith => _$PriceTierModelCopyWithImpl<PriceTierModel>(this as PriceTierModel, _$identity);

  /// Serializes this PriceTierModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PriceTierModel&&(identical(other.minQuantity, minQuantity) || other.minQuantity == minQuantity)&&(identical(other.price, price) || other.price == price));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,minQuantity,price);

@override
String toString() {
  return 'PriceTierModel(minQuantity: $minQuantity, price: $price)';
}


}

/// @nodoc
abstract mixin class $PriceTierModelCopyWith<$Res>  {
  factory $PriceTierModelCopyWith(PriceTierModel value, $Res Function(PriceTierModel) _then) = _$PriceTierModelCopyWithImpl;
@useResult
$Res call({
 int minQuantity, int price
});




}
/// @nodoc
class _$PriceTierModelCopyWithImpl<$Res>
    implements $PriceTierModelCopyWith<$Res> {
  _$PriceTierModelCopyWithImpl(this._self, this._then);

  final PriceTierModel _self;
  final $Res Function(PriceTierModel) _then;

/// Create a copy of PriceTierModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? minQuantity = null,Object? price = null,}) {
  return _then(_self.copyWith(
minQuantity: null == minQuantity ? _self.minQuantity : minQuantity // ignore: cast_nullable_to_non_nullable
as int,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PriceTierModel].
extension PriceTierModelPatterns on PriceTierModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PriceTierModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PriceTierModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PriceTierModel value)  $default,){
final _that = this;
switch (_that) {
case _PriceTierModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PriceTierModel value)?  $default,){
final _that = this;
switch (_that) {
case _PriceTierModel() when $default != null:
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
case _PriceTierModel() when $default != null:
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
case _PriceTierModel():
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
case _PriceTierModel() when $default != null:
return $default(_that.minQuantity,_that.price);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PriceTierModel implements PriceTierModel {
  const _PriceTierModel({required this.minQuantity, required this.price});
  factory _PriceTierModel.fromJson(Map<String, dynamic> json) => _$PriceTierModelFromJson(json);

@override final  int minQuantity;
@override final  int price;

/// Create a copy of PriceTierModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PriceTierModelCopyWith<_PriceTierModel> get copyWith => __$PriceTierModelCopyWithImpl<_PriceTierModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PriceTierModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PriceTierModel&&(identical(other.minQuantity, minQuantity) || other.minQuantity == minQuantity)&&(identical(other.price, price) || other.price == price));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,minQuantity,price);

@override
String toString() {
  return 'PriceTierModel(minQuantity: $minQuantity, price: $price)';
}


}

/// @nodoc
abstract mixin class _$PriceTierModelCopyWith<$Res> implements $PriceTierModelCopyWith<$Res> {
  factory _$PriceTierModelCopyWith(_PriceTierModel value, $Res Function(_PriceTierModel) _then) = __$PriceTierModelCopyWithImpl;
@override @useResult
$Res call({
 int minQuantity, int price
});




}
/// @nodoc
class __$PriceTierModelCopyWithImpl<$Res>
    implements _$PriceTierModelCopyWith<$Res> {
  __$PriceTierModelCopyWithImpl(this._self, this._then);

  final _PriceTierModel _self;
  final $Res Function(_PriceTierModel) _then;

/// Create a copy of PriceTierModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? minQuantity = null,Object? price = null,}) {
  return _then(_PriceTierModel(
minQuantity: null == minQuantity ? _self.minQuantity : minQuantity // ignore: cast_nullable_to_non_nullable
as int,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$SkuPropertyModel {

 String get id; String get title; List<SkuValueModel> get values; bool get isSize;
/// Create a copy of SkuPropertyModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SkuPropertyModelCopyWith<SkuPropertyModel> get copyWith => _$SkuPropertyModelCopyWithImpl<SkuPropertyModel>(this as SkuPropertyModel, _$identity);

  /// Serializes this SkuPropertyModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SkuPropertyModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other.values, values)&&(identical(other.isSize, isSize) || other.isSize == isSize));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,const DeepCollectionEquality().hash(values),isSize);

@override
String toString() {
  return 'SkuPropertyModel(id: $id, title: $title, values: $values, isSize: $isSize)';
}


}

/// @nodoc
abstract mixin class $SkuPropertyModelCopyWith<$Res>  {
  factory $SkuPropertyModelCopyWith(SkuPropertyModel value, $Res Function(SkuPropertyModel) _then) = _$SkuPropertyModelCopyWithImpl;
@useResult
$Res call({
 String id, String title, List<SkuValueModel> values, bool isSize
});




}
/// @nodoc
class _$SkuPropertyModelCopyWithImpl<$Res>
    implements $SkuPropertyModelCopyWith<$Res> {
  _$SkuPropertyModelCopyWithImpl(this._self, this._then);

  final SkuPropertyModel _self;
  final $Res Function(SkuPropertyModel) _then;

/// Create a copy of SkuPropertyModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? values = null,Object? isSize = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,values: null == values ? _self.values : values // ignore: cast_nullable_to_non_nullable
as List<SkuValueModel>,isSize: null == isSize ? _self.isSize : isSize // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SkuPropertyModel].
extension SkuPropertyModelPatterns on SkuPropertyModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SkuPropertyModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SkuPropertyModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SkuPropertyModel value)  $default,){
final _that = this;
switch (_that) {
case _SkuPropertyModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SkuPropertyModel value)?  $default,){
final _that = this;
switch (_that) {
case _SkuPropertyModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  List<SkuValueModel> values,  bool isSize)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SkuPropertyModel() when $default != null:
return $default(_that.id,_that.title,_that.values,_that.isSize);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  List<SkuValueModel> values,  bool isSize)  $default,) {final _that = this;
switch (_that) {
case _SkuPropertyModel():
return $default(_that.id,_that.title,_that.values,_that.isSize);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  List<SkuValueModel> values,  bool isSize)?  $default,) {final _that = this;
switch (_that) {
case _SkuPropertyModel() when $default != null:
return $default(_that.id,_that.title,_that.values,_that.isSize);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SkuPropertyModel implements SkuPropertyModel {
  const _SkuPropertyModel({required this.id, required this.title, required final  List<SkuValueModel> values, this.isSize = false}): _values = values;
  factory _SkuPropertyModel.fromJson(Map<String, dynamic> json) => _$SkuPropertyModelFromJson(json);

@override final  String id;
@override final  String title;
 final  List<SkuValueModel> _values;
@override List<SkuValueModel> get values {
  if (_values is EqualUnmodifiableListView) return _values;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_values);
}

@override@JsonKey() final  bool isSize;

/// Create a copy of SkuPropertyModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SkuPropertyModelCopyWith<_SkuPropertyModel> get copyWith => __$SkuPropertyModelCopyWithImpl<_SkuPropertyModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SkuPropertyModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SkuPropertyModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other._values, _values)&&(identical(other.isSize, isSize) || other.isSize == isSize));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,const DeepCollectionEquality().hash(_values),isSize);

@override
String toString() {
  return 'SkuPropertyModel(id: $id, title: $title, values: $values, isSize: $isSize)';
}


}

/// @nodoc
abstract mixin class _$SkuPropertyModelCopyWith<$Res> implements $SkuPropertyModelCopyWith<$Res> {
  factory _$SkuPropertyModelCopyWith(_SkuPropertyModel value, $Res Function(_SkuPropertyModel) _then) = __$SkuPropertyModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, List<SkuValueModel> values, bool isSize
});




}
/// @nodoc
class __$SkuPropertyModelCopyWithImpl<$Res>
    implements _$SkuPropertyModelCopyWith<$Res> {
  __$SkuPropertyModelCopyWithImpl(this._self, this._then);

  final _SkuPropertyModel _self;
  final $Res Function(_SkuPropertyModel) _then;

/// Create a copy of SkuPropertyModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? values = null,Object? isSize = null,}) {
  return _then(_SkuPropertyModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,values: null == values ? _self._values : values // ignore: cast_nullable_to_non_nullable
as List<SkuValueModel>,isSize: null == isSize ? _self.isSize : isSize // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$SkuValueModel {

 String get id; String get label; String? get imageUrl;
/// Create a copy of SkuValueModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SkuValueModelCopyWith<SkuValueModel> get copyWith => _$SkuValueModelCopyWithImpl<SkuValueModel>(this as SkuValueModel, _$identity);

  /// Serializes this SkuValueModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SkuValueModel&&(identical(other.id, id) || other.id == id)&&(identical(other.label, label) || other.label == label)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,label,imageUrl);

@override
String toString() {
  return 'SkuValueModel(id: $id, label: $label, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class $SkuValueModelCopyWith<$Res>  {
  factory $SkuValueModelCopyWith(SkuValueModel value, $Res Function(SkuValueModel) _then) = _$SkuValueModelCopyWithImpl;
@useResult
$Res call({
 String id, String label, String? imageUrl
});




}
/// @nodoc
class _$SkuValueModelCopyWithImpl<$Res>
    implements $SkuValueModelCopyWith<$Res> {
  _$SkuValueModelCopyWithImpl(this._self, this._then);

  final SkuValueModel _self;
  final $Res Function(SkuValueModel) _then;

/// Create a copy of SkuValueModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? label = null,Object? imageUrl = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SkuValueModel].
extension SkuValueModelPatterns on SkuValueModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SkuValueModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SkuValueModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SkuValueModel value)  $default,){
final _that = this;
switch (_that) {
case _SkuValueModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SkuValueModel value)?  $default,){
final _that = this;
switch (_that) {
case _SkuValueModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String label,  String? imageUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SkuValueModel() when $default != null:
return $default(_that.id,_that.label,_that.imageUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String label,  String? imageUrl)  $default,) {final _that = this;
switch (_that) {
case _SkuValueModel():
return $default(_that.id,_that.label,_that.imageUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String label,  String? imageUrl)?  $default,) {final _that = this;
switch (_that) {
case _SkuValueModel() when $default != null:
return $default(_that.id,_that.label,_that.imageUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SkuValueModel implements SkuValueModel {
  const _SkuValueModel({required this.id, required this.label, this.imageUrl});
  factory _SkuValueModel.fromJson(Map<String, dynamic> json) => _$SkuValueModelFromJson(json);

@override final  String id;
@override final  String label;
@override final  String? imageUrl;

/// Create a copy of SkuValueModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SkuValueModelCopyWith<_SkuValueModel> get copyWith => __$SkuValueModelCopyWithImpl<_SkuValueModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SkuValueModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SkuValueModel&&(identical(other.id, id) || other.id == id)&&(identical(other.label, label) || other.label == label)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,label,imageUrl);

@override
String toString() {
  return 'SkuValueModel(id: $id, label: $label, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class _$SkuValueModelCopyWith<$Res> implements $SkuValueModelCopyWith<$Res> {
  factory _$SkuValueModelCopyWith(_SkuValueModel value, $Res Function(_SkuValueModel) _then) = __$SkuValueModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String label, String? imageUrl
});




}
/// @nodoc
class __$SkuValueModelCopyWithImpl<$Res>
    implements _$SkuValueModelCopyWith<$Res> {
  __$SkuValueModelCopyWithImpl(this._self, this._then);

  final _SkuValueModel _self;
  final $Res Function(_SkuValueModel) _then;

/// Create a copy of SkuValueModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? label = null,Object? imageUrl = freezed,}) {
  return _then(_SkuValueModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$SkuModel {

 String get id; Map<String, String> get values; int get price; int? get oldPrice; int get stock;
/// Create a copy of SkuModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SkuModelCopyWith<SkuModel> get copyWith => _$SkuModelCopyWithImpl<SkuModel>(this as SkuModel, _$identity);

  /// Serializes this SkuModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SkuModel&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.values, values)&&(identical(other.price, price) || other.price == price)&&(identical(other.oldPrice, oldPrice) || other.oldPrice == oldPrice)&&(identical(other.stock, stock) || other.stock == stock));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(values),price,oldPrice,stock);

@override
String toString() {
  return 'SkuModel(id: $id, values: $values, price: $price, oldPrice: $oldPrice, stock: $stock)';
}


}

/// @nodoc
abstract mixin class $SkuModelCopyWith<$Res>  {
  factory $SkuModelCopyWith(SkuModel value, $Res Function(SkuModel) _then) = _$SkuModelCopyWithImpl;
@useResult
$Res call({
 String id, Map<String, String> values, int price, int? oldPrice, int stock
});




}
/// @nodoc
class _$SkuModelCopyWithImpl<$Res>
    implements $SkuModelCopyWith<$Res> {
  _$SkuModelCopyWithImpl(this._self, this._then);

  final SkuModel _self;
  final $Res Function(SkuModel) _then;

/// Create a copy of SkuModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? values = null,Object? price = null,Object? oldPrice = freezed,Object? stock = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,values: null == values ? _self.values : values // ignore: cast_nullable_to_non_nullable
as Map<String, String>,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,oldPrice: freezed == oldPrice ? _self.oldPrice : oldPrice // ignore: cast_nullable_to_non_nullable
as int?,stock: null == stock ? _self.stock : stock // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SkuModel].
extension SkuModelPatterns on SkuModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SkuModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SkuModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SkuModel value)  $default,){
final _that = this;
switch (_that) {
case _SkuModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SkuModel value)?  $default,){
final _that = this;
switch (_that) {
case _SkuModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  Map<String, String> values,  int price,  int? oldPrice,  int stock)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SkuModel() when $default != null:
return $default(_that.id,_that.values,_that.price,_that.oldPrice,_that.stock);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  Map<String, String> values,  int price,  int? oldPrice,  int stock)  $default,) {final _that = this;
switch (_that) {
case _SkuModel():
return $default(_that.id,_that.values,_that.price,_that.oldPrice,_that.stock);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  Map<String, String> values,  int price,  int? oldPrice,  int stock)?  $default,) {final _that = this;
switch (_that) {
case _SkuModel() when $default != null:
return $default(_that.id,_that.values,_that.price,_that.oldPrice,_that.stock);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SkuModel implements SkuModel {
  const _SkuModel({required this.id, required final  Map<String, String> values, required this.price, this.oldPrice, required this.stock}): _values = values;
  factory _SkuModel.fromJson(Map<String, dynamic> json) => _$SkuModelFromJson(json);

@override final  String id;
 final  Map<String, String> _values;
@override Map<String, String> get values {
  if (_values is EqualUnmodifiableMapView) return _values;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_values);
}

@override final  int price;
@override final  int? oldPrice;
@override final  int stock;

/// Create a copy of SkuModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SkuModelCopyWith<_SkuModel> get copyWith => __$SkuModelCopyWithImpl<_SkuModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SkuModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SkuModel&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._values, _values)&&(identical(other.price, price) || other.price == price)&&(identical(other.oldPrice, oldPrice) || other.oldPrice == oldPrice)&&(identical(other.stock, stock) || other.stock == stock));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_values),price,oldPrice,stock);

@override
String toString() {
  return 'SkuModel(id: $id, values: $values, price: $price, oldPrice: $oldPrice, stock: $stock)';
}


}

/// @nodoc
abstract mixin class _$SkuModelCopyWith<$Res> implements $SkuModelCopyWith<$Res> {
  factory _$SkuModelCopyWith(_SkuModel value, $Res Function(_SkuModel) _then) = __$SkuModelCopyWithImpl;
@override @useResult
$Res call({
 String id, Map<String, String> values, int price, int? oldPrice, int stock
});




}
/// @nodoc
class __$SkuModelCopyWithImpl<$Res>
    implements _$SkuModelCopyWith<$Res> {
  __$SkuModelCopyWithImpl(this._self, this._then);

  final _SkuModel _self;
  final $Res Function(_SkuModel) _then;

/// Create a copy of SkuModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? values = null,Object? price = null,Object? oldPrice = freezed,Object? stock = null,}) {
  return _then(_SkuModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,values: null == values ? _self._values : values // ignore: cast_nullable_to_non_nullable
as Map<String, String>,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,oldPrice: freezed == oldPrice ? _self.oldPrice : oldPrice // ignore: cast_nullable_to_non_nullable
as int?,stock: null == stock ? _self.stock : stock // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$SizeChartModel {

 List<String> get headers; List<List<String>> get rows;
/// Create a copy of SizeChartModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SizeChartModelCopyWith<SizeChartModel> get copyWith => _$SizeChartModelCopyWithImpl<SizeChartModel>(this as SizeChartModel, _$identity);

  /// Serializes this SizeChartModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SizeChartModel&&const DeepCollectionEquality().equals(other.headers, headers)&&const DeepCollectionEquality().equals(other.rows, rows));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(headers),const DeepCollectionEquality().hash(rows));

@override
String toString() {
  return 'SizeChartModel(headers: $headers, rows: $rows)';
}


}

/// @nodoc
abstract mixin class $SizeChartModelCopyWith<$Res>  {
  factory $SizeChartModelCopyWith(SizeChartModel value, $Res Function(SizeChartModel) _then) = _$SizeChartModelCopyWithImpl;
@useResult
$Res call({
 List<String> headers, List<List<String>> rows
});




}
/// @nodoc
class _$SizeChartModelCopyWithImpl<$Res>
    implements $SizeChartModelCopyWith<$Res> {
  _$SizeChartModelCopyWithImpl(this._self, this._then);

  final SizeChartModel _self;
  final $Res Function(SizeChartModel) _then;

/// Create a copy of SizeChartModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? headers = null,Object? rows = null,}) {
  return _then(_self.copyWith(
headers: null == headers ? _self.headers : headers // ignore: cast_nullable_to_non_nullable
as List<String>,rows: null == rows ? _self.rows : rows // ignore: cast_nullable_to_non_nullable
as List<List<String>>,
  ));
}

}


/// Adds pattern-matching-related methods to [SizeChartModel].
extension SizeChartModelPatterns on SizeChartModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SizeChartModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SizeChartModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SizeChartModel value)  $default,){
final _that = this;
switch (_that) {
case _SizeChartModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SizeChartModel value)?  $default,){
final _that = this;
switch (_that) {
case _SizeChartModel() when $default != null:
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
case _SizeChartModel() when $default != null:
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
case _SizeChartModel():
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
case _SizeChartModel() when $default != null:
return $default(_that.headers,_that.rows);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SizeChartModel implements SizeChartModel {
  const _SizeChartModel({required final  List<String> headers, required final  List<List<String>> rows}): _headers = headers,_rows = rows;
  factory _SizeChartModel.fromJson(Map<String, dynamic> json) => _$SizeChartModelFromJson(json);

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


/// Create a copy of SizeChartModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SizeChartModelCopyWith<_SizeChartModel> get copyWith => __$SizeChartModelCopyWithImpl<_SizeChartModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SizeChartModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SizeChartModel&&const DeepCollectionEquality().equals(other._headers, _headers)&&const DeepCollectionEquality().equals(other._rows, _rows));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_headers),const DeepCollectionEquality().hash(_rows));

@override
String toString() {
  return 'SizeChartModel(headers: $headers, rows: $rows)';
}


}

/// @nodoc
abstract mixin class _$SizeChartModelCopyWith<$Res> implements $SizeChartModelCopyWith<$Res> {
  factory _$SizeChartModelCopyWith(_SizeChartModel value, $Res Function(_SizeChartModel) _then) = __$SizeChartModelCopyWithImpl;
@override @useResult
$Res call({
 List<String> headers, List<List<String>> rows
});




}
/// @nodoc
class __$SizeChartModelCopyWithImpl<$Res>
    implements _$SizeChartModelCopyWith<$Res> {
  __$SizeChartModelCopyWithImpl(this._self, this._then);

  final _SizeChartModel _self;
  final $Res Function(_SizeChartModel) _then;

/// Create a copy of SizeChartModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? headers = null,Object? rows = null,}) {
  return _then(_SizeChartModel(
headers: null == headers ? _self._headers : headers // ignore: cast_nullable_to_non_nullable
as List<String>,rows: null == rows ? _self._rows : rows // ignore: cast_nullable_to_non_nullable
as List<List<String>>,
  ));
}


}


/// @nodoc
mixin _$SpecRowModel {

 String get name; String get value;
/// Create a copy of SpecRowModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpecRowModelCopyWith<SpecRowModel> get copyWith => _$SpecRowModelCopyWithImpl<SpecRowModel>(this as SpecRowModel, _$identity);

  /// Serializes this SpecRowModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpecRowModel&&(identical(other.name, name) || other.name == name)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,value);

@override
String toString() {
  return 'SpecRowModel(name: $name, value: $value)';
}


}

/// @nodoc
abstract mixin class $SpecRowModelCopyWith<$Res>  {
  factory $SpecRowModelCopyWith(SpecRowModel value, $Res Function(SpecRowModel) _then) = _$SpecRowModelCopyWithImpl;
@useResult
$Res call({
 String name, String value
});




}
/// @nodoc
class _$SpecRowModelCopyWithImpl<$Res>
    implements $SpecRowModelCopyWith<$Res> {
  _$SpecRowModelCopyWithImpl(this._self, this._then);

  final SpecRowModel _self;
  final $Res Function(SpecRowModel) _then;

/// Create a copy of SpecRowModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? value = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SpecRowModel].
extension SpecRowModelPatterns on SpecRowModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SpecRowModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SpecRowModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SpecRowModel value)  $default,){
final _that = this;
switch (_that) {
case _SpecRowModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SpecRowModel value)?  $default,){
final _that = this;
switch (_that) {
case _SpecRowModel() when $default != null:
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
case _SpecRowModel() when $default != null:
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
case _SpecRowModel():
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
case _SpecRowModel() when $default != null:
return $default(_that.name,_that.value);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SpecRowModel implements SpecRowModel {
  const _SpecRowModel({required this.name, required this.value});
  factory _SpecRowModel.fromJson(Map<String, dynamic> json) => _$SpecRowModelFromJson(json);

@override final  String name;
@override final  String value;

/// Create a copy of SpecRowModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SpecRowModelCopyWith<_SpecRowModel> get copyWith => __$SpecRowModelCopyWithImpl<_SpecRowModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SpecRowModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SpecRowModel&&(identical(other.name, name) || other.name == name)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,value);

@override
String toString() {
  return 'SpecRowModel(name: $name, value: $value)';
}


}

/// @nodoc
abstract mixin class _$SpecRowModelCopyWith<$Res> implements $SpecRowModelCopyWith<$Res> {
  factory _$SpecRowModelCopyWith(_SpecRowModel value, $Res Function(_SpecRowModel) _then) = __$SpecRowModelCopyWithImpl;
@override @useResult
$Res call({
 String name, String value
});




}
/// @nodoc
class __$SpecRowModelCopyWithImpl<$Res>
    implements _$SpecRowModelCopyWith<$Res> {
  __$SpecRowModelCopyWithImpl(this._self, this._then);

  final _SpecRowModel _self;
  final $Res Function(_SpecRowModel) _then;

/// Create a copy of SpecRowModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? value = null,}) {
  return _then(_SpecRowModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$SellerModel {

 String? get id; String get name; String get source; double? get rating; int? get salesCount;
/// Create a copy of SellerModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SellerModelCopyWith<SellerModel> get copyWith => _$SellerModelCopyWithImpl<SellerModel>(this as SellerModel, _$identity);

  /// Serializes this SellerModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SellerModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.source, source) || other.source == source)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.salesCount, salesCount) || other.salesCount == salesCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,source,rating,salesCount);

@override
String toString() {
  return 'SellerModel(id: $id, name: $name, source: $source, rating: $rating, salesCount: $salesCount)';
}


}

/// @nodoc
abstract mixin class $SellerModelCopyWith<$Res>  {
  factory $SellerModelCopyWith(SellerModel value, $Res Function(SellerModel) _then) = _$SellerModelCopyWithImpl;
@useResult
$Res call({
 String? id, String name, String source, double? rating, int? salesCount
});




}
/// @nodoc
class _$SellerModelCopyWithImpl<$Res>
    implements $SellerModelCopyWith<$Res> {
  _$SellerModelCopyWithImpl(this._self, this._then);

  final SellerModel _self;
  final $Res Function(SellerModel) _then;

/// Create a copy of SellerModel
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


/// Adds pattern-matching-related methods to [SellerModel].
extension SellerModelPatterns on SellerModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SellerModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SellerModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SellerModel value)  $default,){
final _that = this;
switch (_that) {
case _SellerModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SellerModel value)?  $default,){
final _that = this;
switch (_that) {
case _SellerModel() when $default != null:
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
case _SellerModel() when $default != null:
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
case _SellerModel():
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
case _SellerModel() when $default != null:
return $default(_that.id,_that.name,_that.source,_that.rating,_that.salesCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SellerModel implements SellerModel {
  const _SellerModel({this.id, required this.name, required this.source, this.rating, this.salesCount});
  factory _SellerModel.fromJson(Map<String, dynamic> json) => _$SellerModelFromJson(json);

@override final  String? id;
@override final  String name;
@override final  String source;
@override final  double? rating;
@override final  int? salesCount;

/// Create a copy of SellerModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SellerModelCopyWith<_SellerModel> get copyWith => __$SellerModelCopyWithImpl<_SellerModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SellerModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SellerModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.source, source) || other.source == source)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.salesCount, salesCount) || other.salesCount == salesCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,source,rating,salesCount);

@override
String toString() {
  return 'SellerModel(id: $id, name: $name, source: $source, rating: $rating, salesCount: $salesCount)';
}


}

/// @nodoc
abstract mixin class _$SellerModelCopyWith<$Res> implements $SellerModelCopyWith<$Res> {
  factory _$SellerModelCopyWith(_SellerModel value, $Res Function(_SellerModel) _then) = __$SellerModelCopyWithImpl;
@override @useResult
$Res call({
 String? id, String name, String source, double? rating, int? salesCount
});




}
/// @nodoc
class __$SellerModelCopyWithImpl<$Res>
    implements _$SellerModelCopyWith<$Res> {
  __$SellerModelCopyWithImpl(this._self, this._then);

  final _SellerModel _self;
  final $Res Function(_SellerModel) _then;

/// Create a copy of SellerModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = null,Object? source = null,Object? rating = freezed,Object? salesCount = freezed,}) {
  return _then(_SellerModel(
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
mixin _$ReviewsSummaryModel {

 double get average; int get count; List<String> get photoUrls; List<ReviewModel> get items;
/// Create a copy of ReviewsSummaryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewsSummaryModelCopyWith<ReviewsSummaryModel> get copyWith => _$ReviewsSummaryModelCopyWithImpl<ReviewsSummaryModel>(this as ReviewsSummaryModel, _$identity);

  /// Serializes this ReviewsSummaryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewsSummaryModel&&(identical(other.average, average) || other.average == average)&&(identical(other.count, count) || other.count == count)&&const DeepCollectionEquality().equals(other.photoUrls, photoUrls)&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,average,count,const DeepCollectionEquality().hash(photoUrls),const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'ReviewsSummaryModel(average: $average, count: $count, photoUrls: $photoUrls, items: $items)';
}


}

/// @nodoc
abstract mixin class $ReviewsSummaryModelCopyWith<$Res>  {
  factory $ReviewsSummaryModelCopyWith(ReviewsSummaryModel value, $Res Function(ReviewsSummaryModel) _then) = _$ReviewsSummaryModelCopyWithImpl;
@useResult
$Res call({
 double average, int count, List<String> photoUrls, List<ReviewModel> items
});




}
/// @nodoc
class _$ReviewsSummaryModelCopyWithImpl<$Res>
    implements $ReviewsSummaryModelCopyWith<$Res> {
  _$ReviewsSummaryModelCopyWithImpl(this._self, this._then);

  final ReviewsSummaryModel _self;
  final $Res Function(ReviewsSummaryModel) _then;

/// Create a copy of ReviewsSummaryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? average = null,Object? count = null,Object? photoUrls = null,Object? items = null,}) {
  return _then(_self.copyWith(
average: null == average ? _self.average : average // ignore: cast_nullable_to_non_nullable
as double,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,photoUrls: null == photoUrls ? _self.photoUrls : photoUrls // ignore: cast_nullable_to_non_nullable
as List<String>,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<ReviewModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [ReviewsSummaryModel].
extension ReviewsSummaryModelPatterns on ReviewsSummaryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewsSummaryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewsSummaryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewsSummaryModel value)  $default,){
final _that = this;
switch (_that) {
case _ReviewsSummaryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewsSummaryModel value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewsSummaryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double average,  int count,  List<String> photoUrls,  List<ReviewModel> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReviewsSummaryModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double average,  int count,  List<String> photoUrls,  List<ReviewModel> items)  $default,) {final _that = this;
switch (_that) {
case _ReviewsSummaryModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double average,  int count,  List<String> photoUrls,  List<ReviewModel> items)?  $default,) {final _that = this;
switch (_that) {
case _ReviewsSummaryModel() when $default != null:
return $default(_that.average,_that.count,_that.photoUrls,_that.items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReviewsSummaryModel implements ReviewsSummaryModel {
  const _ReviewsSummaryModel({required this.average, required this.count, final  List<String> photoUrls = const <String>[], final  List<ReviewModel> items = const <ReviewModel>[]}): _photoUrls = photoUrls,_items = items;
  factory _ReviewsSummaryModel.fromJson(Map<String, dynamic> json) => _$ReviewsSummaryModelFromJson(json);

@override final  double average;
@override final  int count;
 final  List<String> _photoUrls;
@override@JsonKey() List<String> get photoUrls {
  if (_photoUrls is EqualUnmodifiableListView) return _photoUrls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_photoUrls);
}

 final  List<ReviewModel> _items;
@override@JsonKey() List<ReviewModel> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of ReviewsSummaryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewsSummaryModelCopyWith<_ReviewsSummaryModel> get copyWith => __$ReviewsSummaryModelCopyWithImpl<_ReviewsSummaryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewsSummaryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewsSummaryModel&&(identical(other.average, average) || other.average == average)&&(identical(other.count, count) || other.count == count)&&const DeepCollectionEquality().equals(other._photoUrls, _photoUrls)&&const DeepCollectionEquality().equals(other._items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,average,count,const DeepCollectionEquality().hash(_photoUrls),const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'ReviewsSummaryModel(average: $average, count: $count, photoUrls: $photoUrls, items: $items)';
}


}

/// @nodoc
abstract mixin class _$ReviewsSummaryModelCopyWith<$Res> implements $ReviewsSummaryModelCopyWith<$Res> {
  factory _$ReviewsSummaryModelCopyWith(_ReviewsSummaryModel value, $Res Function(_ReviewsSummaryModel) _then) = __$ReviewsSummaryModelCopyWithImpl;
@override @useResult
$Res call({
 double average, int count, List<String> photoUrls, List<ReviewModel> items
});




}
/// @nodoc
class __$ReviewsSummaryModelCopyWithImpl<$Res>
    implements _$ReviewsSummaryModelCopyWith<$Res> {
  __$ReviewsSummaryModelCopyWithImpl(this._self, this._then);

  final _ReviewsSummaryModel _self;
  final $Res Function(_ReviewsSummaryModel) _then;

/// Create a copy of ReviewsSummaryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? average = null,Object? count = null,Object? photoUrls = null,Object? items = null,}) {
  return _then(_ReviewsSummaryModel(
average: null == average ? _self.average : average // ignore: cast_nullable_to_non_nullable
as double,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,photoUrls: null == photoUrls ? _self._photoUrls : photoUrls // ignore: cast_nullable_to_non_nullable
as List<String>,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<ReviewModel>,
  ));
}


}


/// @nodoc
mixin _$ReviewModel {

 String get author; DateTime get date; int get rating; String get text; String? get skuLabel; List<String> get photoUrls; bool get isTranslated;
/// Create a copy of ReviewModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewModelCopyWith<ReviewModel> get copyWith => _$ReviewModelCopyWithImpl<ReviewModel>(this as ReviewModel, _$identity);

  /// Serializes this ReviewModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewModel&&(identical(other.author, author) || other.author == author)&&(identical(other.date, date) || other.date == date)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.text, text) || other.text == text)&&(identical(other.skuLabel, skuLabel) || other.skuLabel == skuLabel)&&const DeepCollectionEquality().equals(other.photoUrls, photoUrls)&&(identical(other.isTranslated, isTranslated) || other.isTranslated == isTranslated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,author,date,rating,text,skuLabel,const DeepCollectionEquality().hash(photoUrls),isTranslated);

@override
String toString() {
  return 'ReviewModel(author: $author, date: $date, rating: $rating, text: $text, skuLabel: $skuLabel, photoUrls: $photoUrls, isTranslated: $isTranslated)';
}


}

/// @nodoc
abstract mixin class $ReviewModelCopyWith<$Res>  {
  factory $ReviewModelCopyWith(ReviewModel value, $Res Function(ReviewModel) _then) = _$ReviewModelCopyWithImpl;
@useResult
$Res call({
 String author, DateTime date, int rating, String text, String? skuLabel, List<String> photoUrls, bool isTranslated
});




}
/// @nodoc
class _$ReviewModelCopyWithImpl<$Res>
    implements $ReviewModelCopyWith<$Res> {
  _$ReviewModelCopyWithImpl(this._self, this._then);

  final ReviewModel _self;
  final $Res Function(ReviewModel) _then;

/// Create a copy of ReviewModel
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


/// Adds pattern-matching-related methods to [ReviewModel].
extension ReviewModelPatterns on ReviewModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewModel value)  $default,){
final _that = this;
switch (_that) {
case _ReviewModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewModel value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewModel() when $default != null:
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
case _ReviewModel() when $default != null:
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
case _ReviewModel():
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
case _ReviewModel() when $default != null:
return $default(_that.author,_that.date,_that.rating,_that.text,_that.skuLabel,_that.photoUrls,_that.isTranslated);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReviewModel implements ReviewModel {
  const _ReviewModel({required this.author, required this.date, required this.rating, required this.text, this.skuLabel, final  List<String> photoUrls = const <String>[], this.isTranslated = false}): _photoUrls = photoUrls;
  factory _ReviewModel.fromJson(Map<String, dynamic> json) => _$ReviewModelFromJson(json);

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

@override@JsonKey() final  bool isTranslated;

/// Create a copy of ReviewModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewModelCopyWith<_ReviewModel> get copyWith => __$ReviewModelCopyWithImpl<_ReviewModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewModel&&(identical(other.author, author) || other.author == author)&&(identical(other.date, date) || other.date == date)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.text, text) || other.text == text)&&(identical(other.skuLabel, skuLabel) || other.skuLabel == skuLabel)&&const DeepCollectionEquality().equals(other._photoUrls, _photoUrls)&&(identical(other.isTranslated, isTranslated) || other.isTranslated == isTranslated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,author,date,rating,text,skuLabel,const DeepCollectionEquality().hash(_photoUrls),isTranslated);

@override
String toString() {
  return 'ReviewModel(author: $author, date: $date, rating: $rating, text: $text, skuLabel: $skuLabel, photoUrls: $photoUrls, isTranslated: $isTranslated)';
}


}

/// @nodoc
abstract mixin class _$ReviewModelCopyWith<$Res> implements $ReviewModelCopyWith<$Res> {
  factory _$ReviewModelCopyWith(_ReviewModel value, $Res Function(_ReviewModel) _then) = __$ReviewModelCopyWithImpl;
@override @useResult
$Res call({
 String author, DateTime date, int rating, String text, String? skuLabel, List<String> photoUrls, bool isTranslated
});




}
/// @nodoc
class __$ReviewModelCopyWithImpl<$Res>
    implements _$ReviewModelCopyWith<$Res> {
  __$ReviewModelCopyWithImpl(this._self, this._then);

  final _ReviewModel _self;
  final $Res Function(_ReviewModel) _then;

/// Create a copy of ReviewModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? author = null,Object? date = null,Object? rating = null,Object? text = null,Object? skuLabel = freezed,Object? photoUrls = null,Object? isTranslated = null,}) {
  return _then(_ReviewModel(
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
mixin _$DeliveryQuoteModel {

/// `express`, `air`, `truck`; unknown types are skipped.
 String get type; String get name; String get term; int? get price; String? get unavailableReason;
/// Create a copy of DeliveryQuoteModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeliveryQuoteModelCopyWith<DeliveryQuoteModel> get copyWith => _$DeliveryQuoteModelCopyWithImpl<DeliveryQuoteModel>(this as DeliveryQuoteModel, _$identity);

  /// Serializes this DeliveryQuoteModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeliveryQuoteModel&&(identical(other.type, type) || other.type == type)&&(identical(other.name, name) || other.name == name)&&(identical(other.term, term) || other.term == term)&&(identical(other.price, price) || other.price == price)&&(identical(other.unavailableReason, unavailableReason) || other.unavailableReason == unavailableReason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,name,term,price,unavailableReason);

@override
String toString() {
  return 'DeliveryQuoteModel(type: $type, name: $name, term: $term, price: $price, unavailableReason: $unavailableReason)';
}


}

/// @nodoc
abstract mixin class $DeliveryQuoteModelCopyWith<$Res>  {
  factory $DeliveryQuoteModelCopyWith(DeliveryQuoteModel value, $Res Function(DeliveryQuoteModel) _then) = _$DeliveryQuoteModelCopyWithImpl;
@useResult
$Res call({
 String type, String name, String term, int? price, String? unavailableReason
});




}
/// @nodoc
class _$DeliveryQuoteModelCopyWithImpl<$Res>
    implements $DeliveryQuoteModelCopyWith<$Res> {
  _$DeliveryQuoteModelCopyWithImpl(this._self, this._then);

  final DeliveryQuoteModel _self;
  final $Res Function(DeliveryQuoteModel) _then;

/// Create a copy of DeliveryQuoteModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? name = null,Object? term = null,Object? price = freezed,Object? unavailableReason = freezed,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,term: null == term ? _self.term : term // ignore: cast_nullable_to_non_nullable
as String,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int?,unavailableReason: freezed == unavailableReason ? _self.unavailableReason : unavailableReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DeliveryQuoteModel].
extension DeliveryQuoteModelPatterns on DeliveryQuoteModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeliveryQuoteModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeliveryQuoteModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeliveryQuoteModel value)  $default,){
final _that = this;
switch (_that) {
case _DeliveryQuoteModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeliveryQuoteModel value)?  $default,){
final _that = this;
switch (_that) {
case _DeliveryQuoteModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String type,  String name,  String term,  int? price,  String? unavailableReason)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeliveryQuoteModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String type,  String name,  String term,  int? price,  String? unavailableReason)  $default,) {final _that = this;
switch (_that) {
case _DeliveryQuoteModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String type,  String name,  String term,  int? price,  String? unavailableReason)?  $default,) {final _that = this;
switch (_that) {
case _DeliveryQuoteModel() when $default != null:
return $default(_that.type,_that.name,_that.term,_that.price,_that.unavailableReason);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeliveryQuoteModel implements DeliveryQuoteModel {
  const _DeliveryQuoteModel({required this.type, required this.name, required this.term, this.price, this.unavailableReason});
  factory _DeliveryQuoteModel.fromJson(Map<String, dynamic> json) => _$DeliveryQuoteModelFromJson(json);

/// `express`, `air`, `truck`; unknown types are skipped.
@override final  String type;
@override final  String name;
@override final  String term;
@override final  int? price;
@override final  String? unavailableReason;

/// Create a copy of DeliveryQuoteModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeliveryQuoteModelCopyWith<_DeliveryQuoteModel> get copyWith => __$DeliveryQuoteModelCopyWithImpl<_DeliveryQuoteModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeliveryQuoteModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeliveryQuoteModel&&(identical(other.type, type) || other.type == type)&&(identical(other.name, name) || other.name == name)&&(identical(other.term, term) || other.term == term)&&(identical(other.price, price) || other.price == price)&&(identical(other.unavailableReason, unavailableReason) || other.unavailableReason == unavailableReason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,name,term,price,unavailableReason);

@override
String toString() {
  return 'DeliveryQuoteModel(type: $type, name: $name, term: $term, price: $price, unavailableReason: $unavailableReason)';
}


}

/// @nodoc
abstract mixin class _$DeliveryQuoteModelCopyWith<$Res> implements $DeliveryQuoteModelCopyWith<$Res> {
  factory _$DeliveryQuoteModelCopyWith(_DeliveryQuoteModel value, $Res Function(_DeliveryQuoteModel) _then) = __$DeliveryQuoteModelCopyWithImpl;
@override @useResult
$Res call({
 String type, String name, String term, int? price, String? unavailableReason
});




}
/// @nodoc
class __$DeliveryQuoteModelCopyWithImpl<$Res>
    implements _$DeliveryQuoteModelCopyWith<$Res> {
  __$DeliveryQuoteModelCopyWithImpl(this._self, this._then);

  final _DeliveryQuoteModel _self;
  final $Res Function(_DeliveryQuoteModel) _then;

/// Create a copy of DeliveryQuoteModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? name = null,Object? term = null,Object? price = freezed,Object? unavailableReason = freezed,}) {
  return _then(_DeliveryQuoteModel(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,term: null == term ? _self.term : term // ignore: cast_nullable_to_non_nullable
as String,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int?,unavailableReason: freezed == unavailableReason ? _self.unavailableReason : unavailableReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
