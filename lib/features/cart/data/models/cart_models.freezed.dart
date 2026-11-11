// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CartQuoteModel {

 List<LineQuoteModel> get lines; List<SellerQuoteModel> get sellers; CartSummaryModel get summary; int get minOrderSum; PromoResultModel? get promo;
/// Create a copy of CartQuoteModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartQuoteModelCopyWith<CartQuoteModel> get copyWith => _$CartQuoteModelCopyWithImpl<CartQuoteModel>(this as CartQuoteModel, _$identity);

  /// Serializes this CartQuoteModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartQuoteModel&&const DeepCollectionEquality().equals(other.lines, lines)&&const DeepCollectionEquality().equals(other.sellers, sellers)&&(identical(other.summary, summary) || other.summary == summary)&&(identical(other.minOrderSum, minOrderSum) || other.minOrderSum == minOrderSum)&&(identical(other.promo, promo) || other.promo == promo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(lines),const DeepCollectionEquality().hash(sellers),summary,minOrderSum,promo);

@override
String toString() {
  return 'CartQuoteModel(lines: $lines, sellers: $sellers, summary: $summary, minOrderSum: $minOrderSum, promo: $promo)';
}


}

/// @nodoc
abstract mixin class $CartQuoteModelCopyWith<$Res>  {
  factory $CartQuoteModelCopyWith(CartQuoteModel value, $Res Function(CartQuoteModel) _then) = _$CartQuoteModelCopyWithImpl;
@useResult
$Res call({
 List<LineQuoteModel> lines, List<SellerQuoteModel> sellers, CartSummaryModel summary, int minOrderSum, PromoResultModel? promo
});


$CartSummaryModelCopyWith<$Res> get summary;$PromoResultModelCopyWith<$Res>? get promo;

}
/// @nodoc
class _$CartQuoteModelCopyWithImpl<$Res>
    implements $CartQuoteModelCopyWith<$Res> {
  _$CartQuoteModelCopyWithImpl(this._self, this._then);

  final CartQuoteModel _self;
  final $Res Function(CartQuoteModel) _then;

/// Create a copy of CartQuoteModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? lines = null,Object? sellers = null,Object? summary = null,Object? minOrderSum = null,Object? promo = freezed,}) {
  return _then(_self.copyWith(
lines: null == lines ? _self.lines : lines // ignore: cast_nullable_to_non_nullable
as List<LineQuoteModel>,sellers: null == sellers ? _self.sellers : sellers // ignore: cast_nullable_to_non_nullable
as List<SellerQuoteModel>,summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as CartSummaryModel,minOrderSum: null == minOrderSum ? _self.minOrderSum : minOrderSum // ignore: cast_nullable_to_non_nullable
as int,promo: freezed == promo ? _self.promo : promo // ignore: cast_nullable_to_non_nullable
as PromoResultModel?,
  ));
}
/// Create a copy of CartQuoteModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartSummaryModelCopyWith<$Res> get summary {
  
  return $CartSummaryModelCopyWith<$Res>(_self.summary, (value) {
    return _then(_self.copyWith(summary: value));
  });
}/// Create a copy of CartQuoteModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PromoResultModelCopyWith<$Res>? get promo {
    if (_self.promo == null) {
    return null;
  }

  return $PromoResultModelCopyWith<$Res>(_self.promo!, (value) {
    return _then(_self.copyWith(promo: value));
  });
}
}


/// Adds pattern-matching-related methods to [CartQuoteModel].
extension CartQuoteModelPatterns on CartQuoteModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartQuoteModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartQuoteModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartQuoteModel value)  $default,){
final _that = this;
switch (_that) {
case _CartQuoteModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartQuoteModel value)?  $default,){
final _that = this;
switch (_that) {
case _CartQuoteModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<LineQuoteModel> lines,  List<SellerQuoteModel> sellers,  CartSummaryModel summary,  int minOrderSum,  PromoResultModel? promo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartQuoteModel() when $default != null:
return $default(_that.lines,_that.sellers,_that.summary,_that.minOrderSum,_that.promo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<LineQuoteModel> lines,  List<SellerQuoteModel> sellers,  CartSummaryModel summary,  int minOrderSum,  PromoResultModel? promo)  $default,) {final _that = this;
switch (_that) {
case _CartQuoteModel():
return $default(_that.lines,_that.sellers,_that.summary,_that.minOrderSum,_that.promo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<LineQuoteModel> lines,  List<SellerQuoteModel> sellers,  CartSummaryModel summary,  int minOrderSum,  PromoResultModel? promo)?  $default,) {final _that = this;
switch (_that) {
case _CartQuoteModel() when $default != null:
return $default(_that.lines,_that.sellers,_that.summary,_that.minOrderSum,_that.promo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CartQuoteModel implements CartQuoteModel {
  const _CartQuoteModel({required final  List<LineQuoteModel> lines, required final  List<SellerQuoteModel> sellers, required this.summary, required this.minOrderSum, this.promo}): _lines = lines,_sellers = sellers;
  factory _CartQuoteModel.fromJson(Map<String, dynamic> json) => _$CartQuoteModelFromJson(json);

 final  List<LineQuoteModel> _lines;
@override List<LineQuoteModel> get lines {
  if (_lines is EqualUnmodifiableListView) return _lines;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lines);
}

 final  List<SellerQuoteModel> _sellers;
@override List<SellerQuoteModel> get sellers {
  if (_sellers is EqualUnmodifiableListView) return _sellers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sellers);
}

@override final  CartSummaryModel summary;
@override final  int minOrderSum;
@override final  PromoResultModel? promo;

/// Create a copy of CartQuoteModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartQuoteModelCopyWith<_CartQuoteModel> get copyWith => __$CartQuoteModelCopyWithImpl<_CartQuoteModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CartQuoteModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartQuoteModel&&const DeepCollectionEquality().equals(other._lines, _lines)&&const DeepCollectionEquality().equals(other._sellers, _sellers)&&(identical(other.summary, summary) || other.summary == summary)&&(identical(other.minOrderSum, minOrderSum) || other.minOrderSum == minOrderSum)&&(identical(other.promo, promo) || other.promo == promo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_lines),const DeepCollectionEquality().hash(_sellers),summary,minOrderSum,promo);

@override
String toString() {
  return 'CartQuoteModel(lines: $lines, sellers: $sellers, summary: $summary, minOrderSum: $minOrderSum, promo: $promo)';
}


}

/// @nodoc
abstract mixin class _$CartQuoteModelCopyWith<$Res> implements $CartQuoteModelCopyWith<$Res> {
  factory _$CartQuoteModelCopyWith(_CartQuoteModel value, $Res Function(_CartQuoteModel) _then) = __$CartQuoteModelCopyWithImpl;
@override @useResult
$Res call({
 List<LineQuoteModel> lines, List<SellerQuoteModel> sellers, CartSummaryModel summary, int minOrderSum, PromoResultModel? promo
});


@override $CartSummaryModelCopyWith<$Res> get summary;@override $PromoResultModelCopyWith<$Res>? get promo;

}
/// @nodoc
class __$CartQuoteModelCopyWithImpl<$Res>
    implements _$CartQuoteModelCopyWith<$Res> {
  __$CartQuoteModelCopyWithImpl(this._self, this._then);

  final _CartQuoteModel _self;
  final $Res Function(_CartQuoteModel) _then;

/// Create a copy of CartQuoteModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? lines = null,Object? sellers = null,Object? summary = null,Object? minOrderSum = null,Object? promo = freezed,}) {
  return _then(_CartQuoteModel(
lines: null == lines ? _self._lines : lines // ignore: cast_nullable_to_non_nullable
as List<LineQuoteModel>,sellers: null == sellers ? _self._sellers : sellers // ignore: cast_nullable_to_non_nullable
as List<SellerQuoteModel>,summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as CartSummaryModel,minOrderSum: null == minOrderSum ? _self.minOrderSum : minOrderSum // ignore: cast_nullable_to_non_nullable
as int,promo: freezed == promo ? _self.promo : promo // ignore: cast_nullable_to_non_nullable
as PromoResultModel?,
  ));
}

/// Create a copy of CartQuoteModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartSummaryModelCopyWith<$Res> get summary {
  
  return $CartSummaryModelCopyWith<$Res>(_self.summary, (value) {
    return _then(_self.copyWith(summary: value));
  });
}/// Create a copy of CartQuoteModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PromoResultModelCopyWith<$Res>? get promo {
    if (_self.promo == null) {
    return null;
  }

  return $PromoResultModelCopyWith<$Res>(_self.promo!, (value) {
    return _then(_self.copyWith(promo: value));
  });
}
}


/// @nodoc
mixin _$LineQuoteModel {

 String get productId; String? get skuId; int get price; int get stock; bool get isAvailable;
/// Create a copy of LineQuoteModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LineQuoteModelCopyWith<LineQuoteModel> get copyWith => _$LineQuoteModelCopyWithImpl<LineQuoteModel>(this as LineQuoteModel, _$identity);

  /// Serializes this LineQuoteModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LineQuoteModel&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.skuId, skuId) || other.skuId == skuId)&&(identical(other.price, price) || other.price == price)&&(identical(other.stock, stock) || other.stock == stock)&&(identical(other.isAvailable, isAvailable) || other.isAvailable == isAvailable));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productId,skuId,price,stock,isAvailable);

@override
String toString() {
  return 'LineQuoteModel(productId: $productId, skuId: $skuId, price: $price, stock: $stock, isAvailable: $isAvailable)';
}


}

/// @nodoc
abstract mixin class $LineQuoteModelCopyWith<$Res>  {
  factory $LineQuoteModelCopyWith(LineQuoteModel value, $Res Function(LineQuoteModel) _then) = _$LineQuoteModelCopyWithImpl;
@useResult
$Res call({
 String productId, String? skuId, int price, int stock, bool isAvailable
});




}
/// @nodoc
class _$LineQuoteModelCopyWithImpl<$Res>
    implements $LineQuoteModelCopyWith<$Res> {
  _$LineQuoteModelCopyWithImpl(this._self, this._then);

  final LineQuoteModel _self;
  final $Res Function(LineQuoteModel) _then;

/// Create a copy of LineQuoteModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productId = null,Object? skuId = freezed,Object? price = null,Object? stock = null,Object? isAvailable = null,}) {
  return _then(_self.copyWith(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,skuId: freezed == skuId ? _self.skuId : skuId // ignore: cast_nullable_to_non_nullable
as String?,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,stock: null == stock ? _self.stock : stock // ignore: cast_nullable_to_non_nullable
as int,isAvailable: null == isAvailable ? _self.isAvailable : isAvailable // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [LineQuoteModel].
extension LineQuoteModelPatterns on LineQuoteModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LineQuoteModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LineQuoteModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LineQuoteModel value)  $default,){
final _that = this;
switch (_that) {
case _LineQuoteModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LineQuoteModel value)?  $default,){
final _that = this;
switch (_that) {
case _LineQuoteModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String productId,  String? skuId,  int price,  int stock,  bool isAvailable)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LineQuoteModel() when $default != null:
return $default(_that.productId,_that.skuId,_that.price,_that.stock,_that.isAvailable);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String productId,  String? skuId,  int price,  int stock,  bool isAvailable)  $default,) {final _that = this;
switch (_that) {
case _LineQuoteModel():
return $default(_that.productId,_that.skuId,_that.price,_that.stock,_that.isAvailable);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String productId,  String? skuId,  int price,  int stock,  bool isAvailable)?  $default,) {final _that = this;
switch (_that) {
case _LineQuoteModel() when $default != null:
return $default(_that.productId,_that.skuId,_that.price,_that.stock,_that.isAvailable);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LineQuoteModel implements LineQuoteModel {
  const _LineQuoteModel({required this.productId, this.skuId, required this.price, required this.stock, required this.isAvailable});
  factory _LineQuoteModel.fromJson(Map<String, dynamic> json) => _$LineQuoteModelFromJson(json);

@override final  String productId;
@override final  String? skuId;
@override final  int price;
@override final  int stock;
@override final  bool isAvailable;

/// Create a copy of LineQuoteModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LineQuoteModelCopyWith<_LineQuoteModel> get copyWith => __$LineQuoteModelCopyWithImpl<_LineQuoteModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LineQuoteModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LineQuoteModel&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.skuId, skuId) || other.skuId == skuId)&&(identical(other.price, price) || other.price == price)&&(identical(other.stock, stock) || other.stock == stock)&&(identical(other.isAvailable, isAvailable) || other.isAvailable == isAvailable));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productId,skuId,price,stock,isAvailable);

@override
String toString() {
  return 'LineQuoteModel(productId: $productId, skuId: $skuId, price: $price, stock: $stock, isAvailable: $isAvailable)';
}


}

/// @nodoc
abstract mixin class _$LineQuoteModelCopyWith<$Res> implements $LineQuoteModelCopyWith<$Res> {
  factory _$LineQuoteModelCopyWith(_LineQuoteModel value, $Res Function(_LineQuoteModel) _then) = __$LineQuoteModelCopyWithImpl;
@override @useResult
$Res call({
 String productId, String? skuId, int price, int stock, bool isAvailable
});




}
/// @nodoc
class __$LineQuoteModelCopyWithImpl<$Res>
    implements _$LineQuoteModelCopyWith<$Res> {
  __$LineQuoteModelCopyWithImpl(this._self, this._then);

  final _LineQuoteModel _self;
  final $Res Function(_LineQuoteModel) _then;

/// Create a copy of LineQuoteModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productId = null,Object? skuId = freezed,Object? price = null,Object? stock = null,Object? isAvailable = null,}) {
  return _then(_LineQuoteModel(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,skuId: freezed == skuId ? _self.skuId : skuId // ignore: cast_nullable_to_non_nullable
as String?,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,stock: null == stock ? _self.stock : stock // ignore: cast_nullable_to_non_nullable
as int,isAvailable: null == isAvailable ? _self.isAvailable : isAvailable // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$SellerQuoteModel {

 String get name; String get source; int get chinaDelivery;
/// Create a copy of SellerQuoteModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SellerQuoteModelCopyWith<SellerQuoteModel> get copyWith => _$SellerQuoteModelCopyWithImpl<SellerQuoteModel>(this as SellerQuoteModel, _$identity);

  /// Serializes this SellerQuoteModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SellerQuoteModel&&(identical(other.name, name) || other.name == name)&&(identical(other.source, source) || other.source == source)&&(identical(other.chinaDelivery, chinaDelivery) || other.chinaDelivery == chinaDelivery));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,source,chinaDelivery);

@override
String toString() {
  return 'SellerQuoteModel(name: $name, source: $source, chinaDelivery: $chinaDelivery)';
}


}

/// @nodoc
abstract mixin class $SellerQuoteModelCopyWith<$Res>  {
  factory $SellerQuoteModelCopyWith(SellerQuoteModel value, $Res Function(SellerQuoteModel) _then) = _$SellerQuoteModelCopyWithImpl;
@useResult
$Res call({
 String name, String source, int chinaDelivery
});




}
/// @nodoc
class _$SellerQuoteModelCopyWithImpl<$Res>
    implements $SellerQuoteModelCopyWith<$Res> {
  _$SellerQuoteModelCopyWithImpl(this._self, this._then);

  final SellerQuoteModel _self;
  final $Res Function(SellerQuoteModel) _then;

/// Create a copy of SellerQuoteModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? source = null,Object? chinaDelivery = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String,chinaDelivery: null == chinaDelivery ? _self.chinaDelivery : chinaDelivery // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SellerQuoteModel].
extension SellerQuoteModelPatterns on SellerQuoteModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SellerQuoteModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SellerQuoteModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SellerQuoteModel value)  $default,){
final _that = this;
switch (_that) {
case _SellerQuoteModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SellerQuoteModel value)?  $default,){
final _that = this;
switch (_that) {
case _SellerQuoteModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String source,  int chinaDelivery)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SellerQuoteModel() when $default != null:
return $default(_that.name,_that.source,_that.chinaDelivery);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String source,  int chinaDelivery)  $default,) {final _that = this;
switch (_that) {
case _SellerQuoteModel():
return $default(_that.name,_that.source,_that.chinaDelivery);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String source,  int chinaDelivery)?  $default,) {final _that = this;
switch (_that) {
case _SellerQuoteModel() when $default != null:
return $default(_that.name,_that.source,_that.chinaDelivery);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SellerQuoteModel implements SellerQuoteModel {
  const _SellerQuoteModel({required this.name, required this.source, required this.chinaDelivery});
  factory _SellerQuoteModel.fromJson(Map<String, dynamic> json) => _$SellerQuoteModelFromJson(json);

@override final  String name;
@override final  String source;
@override final  int chinaDelivery;

/// Create a copy of SellerQuoteModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SellerQuoteModelCopyWith<_SellerQuoteModel> get copyWith => __$SellerQuoteModelCopyWithImpl<_SellerQuoteModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SellerQuoteModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SellerQuoteModel&&(identical(other.name, name) || other.name == name)&&(identical(other.source, source) || other.source == source)&&(identical(other.chinaDelivery, chinaDelivery) || other.chinaDelivery == chinaDelivery));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,source,chinaDelivery);

@override
String toString() {
  return 'SellerQuoteModel(name: $name, source: $source, chinaDelivery: $chinaDelivery)';
}


}

/// @nodoc
abstract mixin class _$SellerQuoteModelCopyWith<$Res> implements $SellerQuoteModelCopyWith<$Res> {
  factory _$SellerQuoteModelCopyWith(_SellerQuoteModel value, $Res Function(_SellerQuoteModel) _then) = __$SellerQuoteModelCopyWithImpl;
@override @useResult
$Res call({
 String name, String source, int chinaDelivery
});




}
/// @nodoc
class __$SellerQuoteModelCopyWithImpl<$Res>
    implements _$SellerQuoteModelCopyWith<$Res> {
  __$SellerQuoteModelCopyWithImpl(this._self, this._then);

  final _SellerQuoteModel _self;
  final $Res Function(_SellerQuoteModel) _then;

/// Create a copy of SellerQuoteModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? source = null,Object? chinaDelivery = null,}) {
  return _then(_SellerQuoteModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String,chinaDelivery: null == chinaDelivery ? _self.chinaDelivery : chinaDelivery // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$CartSummaryModel {

 int get items; int get chinaDelivery; int get internationalEstimate; int get discount; int get total;
/// Create a copy of CartSummaryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartSummaryModelCopyWith<CartSummaryModel> get copyWith => _$CartSummaryModelCopyWithImpl<CartSummaryModel>(this as CartSummaryModel, _$identity);

  /// Serializes this CartSummaryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartSummaryModel&&(identical(other.items, items) || other.items == items)&&(identical(other.chinaDelivery, chinaDelivery) || other.chinaDelivery == chinaDelivery)&&(identical(other.internationalEstimate, internationalEstimate) || other.internationalEstimate == internationalEstimate)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,items,chinaDelivery,internationalEstimate,discount,total);

@override
String toString() {
  return 'CartSummaryModel(items: $items, chinaDelivery: $chinaDelivery, internationalEstimate: $internationalEstimate, discount: $discount, total: $total)';
}


}

/// @nodoc
abstract mixin class $CartSummaryModelCopyWith<$Res>  {
  factory $CartSummaryModelCopyWith(CartSummaryModel value, $Res Function(CartSummaryModel) _then) = _$CartSummaryModelCopyWithImpl;
@useResult
$Res call({
 int items, int chinaDelivery, int internationalEstimate, int discount, int total
});




}
/// @nodoc
class _$CartSummaryModelCopyWithImpl<$Res>
    implements $CartSummaryModelCopyWith<$Res> {
  _$CartSummaryModelCopyWithImpl(this._self, this._then);

  final CartSummaryModel _self;
  final $Res Function(CartSummaryModel) _then;

/// Create a copy of CartSummaryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? chinaDelivery = null,Object? internationalEstimate = null,Object? discount = null,Object? total = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as int,chinaDelivery: null == chinaDelivery ? _self.chinaDelivery : chinaDelivery // ignore: cast_nullable_to_non_nullable
as int,internationalEstimate: null == internationalEstimate ? _self.internationalEstimate : internationalEstimate // ignore: cast_nullable_to_non_nullable
as int,discount: null == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CartSummaryModel].
extension CartSummaryModelPatterns on CartSummaryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartSummaryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartSummaryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartSummaryModel value)  $default,){
final _that = this;
switch (_that) {
case _CartSummaryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartSummaryModel value)?  $default,){
final _that = this;
switch (_that) {
case _CartSummaryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int items,  int chinaDelivery,  int internationalEstimate,  int discount,  int total)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartSummaryModel() when $default != null:
return $default(_that.items,_that.chinaDelivery,_that.internationalEstimate,_that.discount,_that.total);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int items,  int chinaDelivery,  int internationalEstimate,  int discount,  int total)  $default,) {final _that = this;
switch (_that) {
case _CartSummaryModel():
return $default(_that.items,_that.chinaDelivery,_that.internationalEstimate,_that.discount,_that.total);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int items,  int chinaDelivery,  int internationalEstimate,  int discount,  int total)?  $default,) {final _that = this;
switch (_that) {
case _CartSummaryModel() when $default != null:
return $default(_that.items,_that.chinaDelivery,_that.internationalEstimate,_that.discount,_that.total);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CartSummaryModel implements CartSummaryModel {
  const _CartSummaryModel({required this.items, required this.chinaDelivery, required this.internationalEstimate, required this.discount, required this.total});
  factory _CartSummaryModel.fromJson(Map<String, dynamic> json) => _$CartSummaryModelFromJson(json);

@override final  int items;
@override final  int chinaDelivery;
@override final  int internationalEstimate;
@override final  int discount;
@override final  int total;

/// Create a copy of CartSummaryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartSummaryModelCopyWith<_CartSummaryModel> get copyWith => __$CartSummaryModelCopyWithImpl<_CartSummaryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CartSummaryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartSummaryModel&&(identical(other.items, items) || other.items == items)&&(identical(other.chinaDelivery, chinaDelivery) || other.chinaDelivery == chinaDelivery)&&(identical(other.internationalEstimate, internationalEstimate) || other.internationalEstimate == internationalEstimate)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,items,chinaDelivery,internationalEstimate,discount,total);

@override
String toString() {
  return 'CartSummaryModel(items: $items, chinaDelivery: $chinaDelivery, internationalEstimate: $internationalEstimate, discount: $discount, total: $total)';
}


}

/// @nodoc
abstract mixin class _$CartSummaryModelCopyWith<$Res> implements $CartSummaryModelCopyWith<$Res> {
  factory _$CartSummaryModelCopyWith(_CartSummaryModel value, $Res Function(_CartSummaryModel) _then) = __$CartSummaryModelCopyWithImpl;
@override @useResult
$Res call({
 int items, int chinaDelivery, int internationalEstimate, int discount, int total
});




}
/// @nodoc
class __$CartSummaryModelCopyWithImpl<$Res>
    implements _$CartSummaryModelCopyWith<$Res> {
  __$CartSummaryModelCopyWithImpl(this._self, this._then);

  final _CartSummaryModel _self;
  final $Res Function(_CartSummaryModel) _then;

/// Create a copy of CartSummaryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? chinaDelivery = null,Object? internationalEstimate = null,Object? discount = null,Object? total = null,}) {
  return _then(_CartSummaryModel(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as int,chinaDelivery: null == chinaDelivery ? _self.chinaDelivery : chinaDelivery // ignore: cast_nullable_to_non_nullable
as int,internationalEstimate: null == internationalEstimate ? _self.internationalEstimate : internationalEstimate // ignore: cast_nullable_to_non_nullable
as int,discount: null == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$PromoResultModel {

 String get code;/// `applied` or `invalid`.
 String get status; String? get message;
/// Create a copy of PromoResultModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PromoResultModelCopyWith<PromoResultModel> get copyWith => _$PromoResultModelCopyWithImpl<PromoResultModel>(this as PromoResultModel, _$identity);

  /// Serializes this PromoResultModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PromoResultModel&&(identical(other.code, code) || other.code == code)&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,status,message);

@override
String toString() {
  return 'PromoResultModel(code: $code, status: $status, message: $message)';
}


}

/// @nodoc
abstract mixin class $PromoResultModelCopyWith<$Res>  {
  factory $PromoResultModelCopyWith(PromoResultModel value, $Res Function(PromoResultModel) _then) = _$PromoResultModelCopyWithImpl;
@useResult
$Res call({
 String code, String status, String? message
});




}
/// @nodoc
class _$PromoResultModelCopyWithImpl<$Res>
    implements $PromoResultModelCopyWith<$Res> {
  _$PromoResultModelCopyWithImpl(this._self, this._then);

  final PromoResultModel _self;
  final $Res Function(PromoResultModel) _then;

/// Create a copy of PromoResultModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,Object? status = null,Object? message = freezed,}) {
  return _then(_self.copyWith(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PromoResultModel].
extension PromoResultModelPatterns on PromoResultModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PromoResultModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PromoResultModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PromoResultModel value)  $default,){
final _that = this;
switch (_that) {
case _PromoResultModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PromoResultModel value)?  $default,){
final _that = this;
switch (_that) {
case _PromoResultModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String code,  String status,  String? message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PromoResultModel() when $default != null:
return $default(_that.code,_that.status,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String code,  String status,  String? message)  $default,) {final _that = this;
switch (_that) {
case _PromoResultModel():
return $default(_that.code,_that.status,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String code,  String status,  String? message)?  $default,) {final _that = this;
switch (_that) {
case _PromoResultModel() when $default != null:
return $default(_that.code,_that.status,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PromoResultModel implements PromoResultModel {
  const _PromoResultModel({required this.code, required this.status, this.message});
  factory _PromoResultModel.fromJson(Map<String, dynamic> json) => _$PromoResultModelFromJson(json);

@override final  String code;
/// `applied` or `invalid`.
@override final  String status;
@override final  String? message;

/// Create a copy of PromoResultModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PromoResultModelCopyWith<_PromoResultModel> get copyWith => __$PromoResultModelCopyWithImpl<_PromoResultModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PromoResultModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PromoResultModel&&(identical(other.code, code) || other.code == code)&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,status,message);

@override
String toString() {
  return 'PromoResultModel(code: $code, status: $status, message: $message)';
}


}

/// @nodoc
abstract mixin class _$PromoResultModelCopyWith<$Res> implements $PromoResultModelCopyWith<$Res> {
  factory _$PromoResultModelCopyWith(_PromoResultModel value, $Res Function(_PromoResultModel) _then) = __$PromoResultModelCopyWithImpl;
@override @useResult
$Res call({
 String code, String status, String? message
});




}
/// @nodoc
class __$PromoResultModelCopyWithImpl<$Res>
    implements _$PromoResultModelCopyWith<$Res> {
  __$PromoResultModelCopyWithImpl(this._self, this._then);

  final _PromoResultModel _self;
  final $Res Function(_PromoResultModel) _then;

/// Create a copy of PromoResultModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? status = null,Object? message = freezed,}) {
  return _then(_PromoResultModel(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$VariantsModel {

 List<VariantPropertyModel> get properties; List<VariantSkuModel> get skus;
/// Create a copy of VariantsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VariantsModelCopyWith<VariantsModel> get copyWith => _$VariantsModelCopyWithImpl<VariantsModel>(this as VariantsModel, _$identity);

  /// Serializes this VariantsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VariantsModel&&const DeepCollectionEquality().equals(other.properties, properties)&&const DeepCollectionEquality().equals(other.skus, skus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(properties),const DeepCollectionEquality().hash(skus));

@override
String toString() {
  return 'VariantsModel(properties: $properties, skus: $skus)';
}


}

/// @nodoc
abstract mixin class $VariantsModelCopyWith<$Res>  {
  factory $VariantsModelCopyWith(VariantsModel value, $Res Function(VariantsModel) _then) = _$VariantsModelCopyWithImpl;
@useResult
$Res call({
 List<VariantPropertyModel> properties, List<VariantSkuModel> skus
});




}
/// @nodoc
class _$VariantsModelCopyWithImpl<$Res>
    implements $VariantsModelCopyWith<$Res> {
  _$VariantsModelCopyWithImpl(this._self, this._then);

  final VariantsModel _self;
  final $Res Function(VariantsModel) _then;

/// Create a copy of VariantsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? properties = null,Object? skus = null,}) {
  return _then(_self.copyWith(
properties: null == properties ? _self.properties : properties // ignore: cast_nullable_to_non_nullable
as List<VariantPropertyModel>,skus: null == skus ? _self.skus : skus // ignore: cast_nullable_to_non_nullable
as List<VariantSkuModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [VariantsModel].
extension VariantsModelPatterns on VariantsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VariantsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VariantsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VariantsModel value)  $default,){
final _that = this;
switch (_that) {
case _VariantsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VariantsModel value)?  $default,){
final _that = this;
switch (_that) {
case _VariantsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<VariantPropertyModel> properties,  List<VariantSkuModel> skus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VariantsModel() when $default != null:
return $default(_that.properties,_that.skus);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<VariantPropertyModel> properties,  List<VariantSkuModel> skus)  $default,) {final _that = this;
switch (_that) {
case _VariantsModel():
return $default(_that.properties,_that.skus);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<VariantPropertyModel> properties,  List<VariantSkuModel> skus)?  $default,) {final _that = this;
switch (_that) {
case _VariantsModel() when $default != null:
return $default(_that.properties,_that.skus);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VariantsModel implements VariantsModel {
  const _VariantsModel({required final  List<VariantPropertyModel> properties, required final  List<VariantSkuModel> skus}): _properties = properties,_skus = skus;
  factory _VariantsModel.fromJson(Map<String, dynamic> json) => _$VariantsModelFromJson(json);

 final  List<VariantPropertyModel> _properties;
@override List<VariantPropertyModel> get properties {
  if (_properties is EqualUnmodifiableListView) return _properties;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_properties);
}

 final  List<VariantSkuModel> _skus;
@override List<VariantSkuModel> get skus {
  if (_skus is EqualUnmodifiableListView) return _skus;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_skus);
}


/// Create a copy of VariantsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VariantsModelCopyWith<_VariantsModel> get copyWith => __$VariantsModelCopyWithImpl<_VariantsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VariantsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VariantsModel&&const DeepCollectionEquality().equals(other._properties, _properties)&&const DeepCollectionEquality().equals(other._skus, _skus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_properties),const DeepCollectionEquality().hash(_skus));

@override
String toString() {
  return 'VariantsModel(properties: $properties, skus: $skus)';
}


}

/// @nodoc
abstract mixin class _$VariantsModelCopyWith<$Res> implements $VariantsModelCopyWith<$Res> {
  factory _$VariantsModelCopyWith(_VariantsModel value, $Res Function(_VariantsModel) _then) = __$VariantsModelCopyWithImpl;
@override @useResult
$Res call({
 List<VariantPropertyModel> properties, List<VariantSkuModel> skus
});




}
/// @nodoc
class __$VariantsModelCopyWithImpl<$Res>
    implements _$VariantsModelCopyWith<$Res> {
  __$VariantsModelCopyWithImpl(this._self, this._then);

  final _VariantsModel _self;
  final $Res Function(_VariantsModel) _then;

/// Create a copy of VariantsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? properties = null,Object? skus = null,}) {
  return _then(_VariantsModel(
properties: null == properties ? _self._properties : properties // ignore: cast_nullable_to_non_nullable
as List<VariantPropertyModel>,skus: null == skus ? _self._skus : skus // ignore: cast_nullable_to_non_nullable
as List<VariantSkuModel>,
  ));
}


}


/// @nodoc
mixin _$VariantPropertyModel {

 String get id; String get title; List<VariantValueModel> get values; bool get isSize;
/// Create a copy of VariantPropertyModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VariantPropertyModelCopyWith<VariantPropertyModel> get copyWith => _$VariantPropertyModelCopyWithImpl<VariantPropertyModel>(this as VariantPropertyModel, _$identity);

  /// Serializes this VariantPropertyModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VariantPropertyModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other.values, values)&&(identical(other.isSize, isSize) || other.isSize == isSize));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,const DeepCollectionEquality().hash(values),isSize);

@override
String toString() {
  return 'VariantPropertyModel(id: $id, title: $title, values: $values, isSize: $isSize)';
}


}

/// @nodoc
abstract mixin class $VariantPropertyModelCopyWith<$Res>  {
  factory $VariantPropertyModelCopyWith(VariantPropertyModel value, $Res Function(VariantPropertyModel) _then) = _$VariantPropertyModelCopyWithImpl;
@useResult
$Res call({
 String id, String title, List<VariantValueModel> values, bool isSize
});




}
/// @nodoc
class _$VariantPropertyModelCopyWithImpl<$Res>
    implements $VariantPropertyModelCopyWith<$Res> {
  _$VariantPropertyModelCopyWithImpl(this._self, this._then);

  final VariantPropertyModel _self;
  final $Res Function(VariantPropertyModel) _then;

/// Create a copy of VariantPropertyModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? values = null,Object? isSize = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,values: null == values ? _self.values : values // ignore: cast_nullable_to_non_nullable
as List<VariantValueModel>,isSize: null == isSize ? _self.isSize : isSize // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [VariantPropertyModel].
extension VariantPropertyModelPatterns on VariantPropertyModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VariantPropertyModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VariantPropertyModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VariantPropertyModel value)  $default,){
final _that = this;
switch (_that) {
case _VariantPropertyModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VariantPropertyModel value)?  $default,){
final _that = this;
switch (_that) {
case _VariantPropertyModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  List<VariantValueModel> values,  bool isSize)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VariantPropertyModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  List<VariantValueModel> values,  bool isSize)  $default,) {final _that = this;
switch (_that) {
case _VariantPropertyModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  List<VariantValueModel> values,  bool isSize)?  $default,) {final _that = this;
switch (_that) {
case _VariantPropertyModel() when $default != null:
return $default(_that.id,_that.title,_that.values,_that.isSize);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VariantPropertyModel implements VariantPropertyModel {
  const _VariantPropertyModel({required this.id, required this.title, required final  List<VariantValueModel> values, this.isSize = false}): _values = values;
  factory _VariantPropertyModel.fromJson(Map<String, dynamic> json) => _$VariantPropertyModelFromJson(json);

@override final  String id;
@override final  String title;
 final  List<VariantValueModel> _values;
@override List<VariantValueModel> get values {
  if (_values is EqualUnmodifiableListView) return _values;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_values);
}

@override@JsonKey() final  bool isSize;

/// Create a copy of VariantPropertyModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VariantPropertyModelCopyWith<_VariantPropertyModel> get copyWith => __$VariantPropertyModelCopyWithImpl<_VariantPropertyModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VariantPropertyModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VariantPropertyModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other._values, _values)&&(identical(other.isSize, isSize) || other.isSize == isSize));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,const DeepCollectionEquality().hash(_values),isSize);

@override
String toString() {
  return 'VariantPropertyModel(id: $id, title: $title, values: $values, isSize: $isSize)';
}


}

/// @nodoc
abstract mixin class _$VariantPropertyModelCopyWith<$Res> implements $VariantPropertyModelCopyWith<$Res> {
  factory _$VariantPropertyModelCopyWith(_VariantPropertyModel value, $Res Function(_VariantPropertyModel) _then) = __$VariantPropertyModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, List<VariantValueModel> values, bool isSize
});




}
/// @nodoc
class __$VariantPropertyModelCopyWithImpl<$Res>
    implements _$VariantPropertyModelCopyWith<$Res> {
  __$VariantPropertyModelCopyWithImpl(this._self, this._then);

  final _VariantPropertyModel _self;
  final $Res Function(_VariantPropertyModel) _then;

/// Create a copy of VariantPropertyModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? values = null,Object? isSize = null,}) {
  return _then(_VariantPropertyModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,values: null == values ? _self._values : values // ignore: cast_nullable_to_non_nullable
as List<VariantValueModel>,isSize: null == isSize ? _self.isSize : isSize // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$VariantValueModel {

 String get id; String get label; String? get imageUrl;
/// Create a copy of VariantValueModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VariantValueModelCopyWith<VariantValueModel> get copyWith => _$VariantValueModelCopyWithImpl<VariantValueModel>(this as VariantValueModel, _$identity);

  /// Serializes this VariantValueModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VariantValueModel&&(identical(other.id, id) || other.id == id)&&(identical(other.label, label) || other.label == label)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,label,imageUrl);

@override
String toString() {
  return 'VariantValueModel(id: $id, label: $label, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class $VariantValueModelCopyWith<$Res>  {
  factory $VariantValueModelCopyWith(VariantValueModel value, $Res Function(VariantValueModel) _then) = _$VariantValueModelCopyWithImpl;
@useResult
$Res call({
 String id, String label, String? imageUrl
});




}
/// @nodoc
class _$VariantValueModelCopyWithImpl<$Res>
    implements $VariantValueModelCopyWith<$Res> {
  _$VariantValueModelCopyWithImpl(this._self, this._then);

  final VariantValueModel _self;
  final $Res Function(VariantValueModel) _then;

/// Create a copy of VariantValueModel
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


/// Adds pattern-matching-related methods to [VariantValueModel].
extension VariantValueModelPatterns on VariantValueModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VariantValueModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VariantValueModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VariantValueModel value)  $default,){
final _that = this;
switch (_that) {
case _VariantValueModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VariantValueModel value)?  $default,){
final _that = this;
switch (_that) {
case _VariantValueModel() when $default != null:
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
case _VariantValueModel() when $default != null:
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
case _VariantValueModel():
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
case _VariantValueModel() when $default != null:
return $default(_that.id,_that.label,_that.imageUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VariantValueModel implements VariantValueModel {
  const _VariantValueModel({required this.id, required this.label, this.imageUrl});
  factory _VariantValueModel.fromJson(Map<String, dynamic> json) => _$VariantValueModelFromJson(json);

@override final  String id;
@override final  String label;
@override final  String? imageUrl;

/// Create a copy of VariantValueModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VariantValueModelCopyWith<_VariantValueModel> get copyWith => __$VariantValueModelCopyWithImpl<_VariantValueModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VariantValueModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VariantValueModel&&(identical(other.id, id) || other.id == id)&&(identical(other.label, label) || other.label == label)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,label,imageUrl);

@override
String toString() {
  return 'VariantValueModel(id: $id, label: $label, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class _$VariantValueModelCopyWith<$Res> implements $VariantValueModelCopyWith<$Res> {
  factory _$VariantValueModelCopyWith(_VariantValueModel value, $Res Function(_VariantValueModel) _then) = __$VariantValueModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String label, String? imageUrl
});




}
/// @nodoc
class __$VariantValueModelCopyWithImpl<$Res>
    implements _$VariantValueModelCopyWith<$Res> {
  __$VariantValueModelCopyWithImpl(this._self, this._then);

  final _VariantValueModel _self;
  final $Res Function(_VariantValueModel) _then;

/// Create a copy of VariantValueModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? label = null,Object? imageUrl = freezed,}) {
  return _then(_VariantValueModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$VariantSkuModel {

 String get id; Map<String, String> get values; int get price; int? get oldPrice; int get stock;
/// Create a copy of VariantSkuModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VariantSkuModelCopyWith<VariantSkuModel> get copyWith => _$VariantSkuModelCopyWithImpl<VariantSkuModel>(this as VariantSkuModel, _$identity);

  /// Serializes this VariantSkuModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VariantSkuModel&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.values, values)&&(identical(other.price, price) || other.price == price)&&(identical(other.oldPrice, oldPrice) || other.oldPrice == oldPrice)&&(identical(other.stock, stock) || other.stock == stock));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(values),price,oldPrice,stock);

@override
String toString() {
  return 'VariantSkuModel(id: $id, values: $values, price: $price, oldPrice: $oldPrice, stock: $stock)';
}


}

/// @nodoc
abstract mixin class $VariantSkuModelCopyWith<$Res>  {
  factory $VariantSkuModelCopyWith(VariantSkuModel value, $Res Function(VariantSkuModel) _then) = _$VariantSkuModelCopyWithImpl;
@useResult
$Res call({
 String id, Map<String, String> values, int price, int? oldPrice, int stock
});




}
/// @nodoc
class _$VariantSkuModelCopyWithImpl<$Res>
    implements $VariantSkuModelCopyWith<$Res> {
  _$VariantSkuModelCopyWithImpl(this._self, this._then);

  final VariantSkuModel _self;
  final $Res Function(VariantSkuModel) _then;

/// Create a copy of VariantSkuModel
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


/// Adds pattern-matching-related methods to [VariantSkuModel].
extension VariantSkuModelPatterns on VariantSkuModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VariantSkuModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VariantSkuModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VariantSkuModel value)  $default,){
final _that = this;
switch (_that) {
case _VariantSkuModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VariantSkuModel value)?  $default,){
final _that = this;
switch (_that) {
case _VariantSkuModel() when $default != null:
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
case _VariantSkuModel() when $default != null:
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
case _VariantSkuModel():
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
case _VariantSkuModel() when $default != null:
return $default(_that.id,_that.values,_that.price,_that.oldPrice,_that.stock);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VariantSkuModel implements VariantSkuModel {
  const _VariantSkuModel({required this.id, required final  Map<String, String> values, required this.price, this.oldPrice, required this.stock}): _values = values;
  factory _VariantSkuModel.fromJson(Map<String, dynamic> json) => _$VariantSkuModelFromJson(json);

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

/// Create a copy of VariantSkuModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VariantSkuModelCopyWith<_VariantSkuModel> get copyWith => __$VariantSkuModelCopyWithImpl<_VariantSkuModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VariantSkuModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VariantSkuModel&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._values, _values)&&(identical(other.price, price) || other.price == price)&&(identical(other.oldPrice, oldPrice) || other.oldPrice == oldPrice)&&(identical(other.stock, stock) || other.stock == stock));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_values),price,oldPrice,stock);

@override
String toString() {
  return 'VariantSkuModel(id: $id, values: $values, price: $price, oldPrice: $oldPrice, stock: $stock)';
}


}

/// @nodoc
abstract mixin class _$VariantSkuModelCopyWith<$Res> implements $VariantSkuModelCopyWith<$Res> {
  factory _$VariantSkuModelCopyWith(_VariantSkuModel value, $Res Function(_VariantSkuModel) _then) = __$VariantSkuModelCopyWithImpl;
@override @useResult
$Res call({
 String id, Map<String, String> values, int price, int? oldPrice, int stock
});




}
/// @nodoc
class __$VariantSkuModelCopyWithImpl<$Res>
    implements _$VariantSkuModelCopyWith<$Res> {
  __$VariantSkuModelCopyWithImpl(this._self, this._then);

  final _VariantSkuModel _self;
  final $Res Function(_VariantSkuModel) _then;

/// Create a copy of VariantSkuModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? values = null,Object? price = null,Object? oldPrice = freezed,Object? stock = null,}) {
  return _then(_VariantSkuModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,values: null == values ? _self._values : values // ignore: cast_nullable_to_non_nullable
as Map<String, String>,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,oldPrice: freezed == oldPrice ? _self.oldPrice : oldPrice // ignore: cast_nullable_to_non_nullable
as int?,stock: null == stock ? _self.stock : stock // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
