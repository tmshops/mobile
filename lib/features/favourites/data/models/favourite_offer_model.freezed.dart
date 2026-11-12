// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favourite_offer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FavouriteOfferModel {

 ProductSummaryModel get product; bool get isAvailable; String? get sellerName;
/// Create a copy of FavouriteOfferModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FavouriteOfferModelCopyWith<FavouriteOfferModel> get copyWith => _$FavouriteOfferModelCopyWithImpl<FavouriteOfferModel>(this as FavouriteOfferModel, _$identity);

  /// Serializes this FavouriteOfferModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavouriteOfferModel&&(identical(other.product, product) || other.product == product)&&(identical(other.isAvailable, isAvailable) || other.isAvailable == isAvailable)&&(identical(other.sellerName, sellerName) || other.sellerName == sellerName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,product,isAvailable,sellerName);

@override
String toString() {
  return 'FavouriteOfferModel(product: $product, isAvailable: $isAvailable, sellerName: $sellerName)';
}


}

/// @nodoc
abstract mixin class $FavouriteOfferModelCopyWith<$Res>  {
  factory $FavouriteOfferModelCopyWith(FavouriteOfferModel value, $Res Function(FavouriteOfferModel) _then) = _$FavouriteOfferModelCopyWithImpl;
@useResult
$Res call({
 ProductSummaryModel product, bool isAvailable, String? sellerName
});


$ProductSummaryModelCopyWith<$Res> get product;

}
/// @nodoc
class _$FavouriteOfferModelCopyWithImpl<$Res>
    implements $FavouriteOfferModelCopyWith<$Res> {
  _$FavouriteOfferModelCopyWithImpl(this._self, this._then);

  final FavouriteOfferModel _self;
  final $Res Function(FavouriteOfferModel) _then;

/// Create a copy of FavouriteOfferModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? product = null,Object? isAvailable = null,Object? sellerName = freezed,}) {
  return _then(_self.copyWith(
product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ProductSummaryModel,isAvailable: null == isAvailable ? _self.isAvailable : isAvailable // ignore: cast_nullable_to_non_nullable
as bool,sellerName: freezed == sellerName ? _self.sellerName : sellerName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of FavouriteOfferModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductSummaryModelCopyWith<$Res> get product {
  
  return $ProductSummaryModelCopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}


/// Adds pattern-matching-related methods to [FavouriteOfferModel].
extension FavouriteOfferModelPatterns on FavouriteOfferModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FavouriteOfferModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FavouriteOfferModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FavouriteOfferModel value)  $default,){
final _that = this;
switch (_that) {
case _FavouriteOfferModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FavouriteOfferModel value)?  $default,){
final _that = this;
switch (_that) {
case _FavouriteOfferModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ProductSummaryModel product,  bool isAvailable,  String? sellerName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FavouriteOfferModel() when $default != null:
return $default(_that.product,_that.isAvailable,_that.sellerName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ProductSummaryModel product,  bool isAvailable,  String? sellerName)  $default,) {final _that = this;
switch (_that) {
case _FavouriteOfferModel():
return $default(_that.product,_that.isAvailable,_that.sellerName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ProductSummaryModel product,  bool isAvailable,  String? sellerName)?  $default,) {final _that = this;
switch (_that) {
case _FavouriteOfferModel() when $default != null:
return $default(_that.product,_that.isAvailable,_that.sellerName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FavouriteOfferModel implements FavouriteOfferModel {
  const _FavouriteOfferModel({required this.product, required this.isAvailable, this.sellerName});
  factory _FavouriteOfferModel.fromJson(Map<String, dynamic> json) => _$FavouriteOfferModelFromJson(json);

@override final  ProductSummaryModel product;
@override final  bool isAvailable;
@override final  String? sellerName;

/// Create a copy of FavouriteOfferModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FavouriteOfferModelCopyWith<_FavouriteOfferModel> get copyWith => __$FavouriteOfferModelCopyWithImpl<_FavouriteOfferModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FavouriteOfferModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FavouriteOfferModel&&(identical(other.product, product) || other.product == product)&&(identical(other.isAvailable, isAvailable) || other.isAvailable == isAvailable)&&(identical(other.sellerName, sellerName) || other.sellerName == sellerName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,product,isAvailable,sellerName);

@override
String toString() {
  return 'FavouriteOfferModel(product: $product, isAvailable: $isAvailable, sellerName: $sellerName)';
}


}

/// @nodoc
abstract mixin class _$FavouriteOfferModelCopyWith<$Res> implements $FavouriteOfferModelCopyWith<$Res> {
  factory _$FavouriteOfferModelCopyWith(_FavouriteOfferModel value, $Res Function(_FavouriteOfferModel) _then) = __$FavouriteOfferModelCopyWithImpl;
@override @useResult
$Res call({
 ProductSummaryModel product, bool isAvailable, String? sellerName
});


@override $ProductSummaryModelCopyWith<$Res> get product;

}
/// @nodoc
class __$FavouriteOfferModelCopyWithImpl<$Res>
    implements _$FavouriteOfferModelCopyWith<$Res> {
  __$FavouriteOfferModelCopyWithImpl(this._self, this._then);

  final _FavouriteOfferModel _self;
  final $Res Function(_FavouriteOfferModel) _then;

/// Create a copy of FavouriteOfferModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? product = null,Object? isAvailable = null,Object? sellerName = freezed,}) {
  return _then(_FavouriteOfferModel(
product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ProductSummaryModel,isAvailable: null == isAvailable ? _self.isAvailable : isAvailable // ignore: cast_nullable_to_non_nullable
as bool,sellerName: freezed == sellerName ? _self.sellerName : sellerName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of FavouriteOfferModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductSummaryModelCopyWith<$Res> get product {
  
  return $ProductSummaryModelCopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}

// dart format on
