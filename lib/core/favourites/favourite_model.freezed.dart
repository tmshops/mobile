// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favourite_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FavouriteModel {

 ProductSummaryModel get product; int get savedPrice; DateTime get addedAt;
/// Create a copy of FavouriteModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FavouriteModelCopyWith<FavouriteModel> get copyWith => _$FavouriteModelCopyWithImpl<FavouriteModel>(this as FavouriteModel, _$identity);

  /// Serializes this FavouriteModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavouriteModel&&(identical(other.product, product) || other.product == product)&&(identical(other.savedPrice, savedPrice) || other.savedPrice == savedPrice)&&(identical(other.addedAt, addedAt) || other.addedAt == addedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,product,savedPrice,addedAt);

@override
String toString() {
  return 'FavouriteModel(product: $product, savedPrice: $savedPrice, addedAt: $addedAt)';
}


}

/// @nodoc
abstract mixin class $FavouriteModelCopyWith<$Res>  {
  factory $FavouriteModelCopyWith(FavouriteModel value, $Res Function(FavouriteModel) _then) = _$FavouriteModelCopyWithImpl;
@useResult
$Res call({
 ProductSummaryModel product, int savedPrice, DateTime addedAt
});


$ProductSummaryModelCopyWith<$Res> get product;

}
/// @nodoc
class _$FavouriteModelCopyWithImpl<$Res>
    implements $FavouriteModelCopyWith<$Res> {
  _$FavouriteModelCopyWithImpl(this._self, this._then);

  final FavouriteModel _self;
  final $Res Function(FavouriteModel) _then;

/// Create a copy of FavouriteModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? product = null,Object? savedPrice = null,Object? addedAt = null,}) {
  return _then(_self.copyWith(
product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ProductSummaryModel,savedPrice: null == savedPrice ? _self.savedPrice : savedPrice // ignore: cast_nullable_to_non_nullable
as int,addedAt: null == addedAt ? _self.addedAt : addedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}
/// Create a copy of FavouriteModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductSummaryModelCopyWith<$Res> get product {
  
  return $ProductSummaryModelCopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}


/// Adds pattern-matching-related methods to [FavouriteModel].
extension FavouriteModelPatterns on FavouriteModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FavouriteModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FavouriteModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FavouriteModel value)  $default,){
final _that = this;
switch (_that) {
case _FavouriteModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FavouriteModel value)?  $default,){
final _that = this;
switch (_that) {
case _FavouriteModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ProductSummaryModel product,  int savedPrice,  DateTime addedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FavouriteModel() when $default != null:
return $default(_that.product,_that.savedPrice,_that.addedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ProductSummaryModel product,  int savedPrice,  DateTime addedAt)  $default,) {final _that = this;
switch (_that) {
case _FavouriteModel():
return $default(_that.product,_that.savedPrice,_that.addedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ProductSummaryModel product,  int savedPrice,  DateTime addedAt)?  $default,) {final _that = this;
switch (_that) {
case _FavouriteModel() when $default != null:
return $default(_that.product,_that.savedPrice,_that.addedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FavouriteModel implements FavouriteModel {
  const _FavouriteModel({required this.product, required this.savedPrice, required this.addedAt});
  factory _FavouriteModel.fromJson(Map<String, dynamic> json) => _$FavouriteModelFromJson(json);

@override final  ProductSummaryModel product;
@override final  int savedPrice;
@override final  DateTime addedAt;

/// Create a copy of FavouriteModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FavouriteModelCopyWith<_FavouriteModel> get copyWith => __$FavouriteModelCopyWithImpl<_FavouriteModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FavouriteModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FavouriteModel&&(identical(other.product, product) || other.product == product)&&(identical(other.savedPrice, savedPrice) || other.savedPrice == savedPrice)&&(identical(other.addedAt, addedAt) || other.addedAt == addedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,product,savedPrice,addedAt);

@override
String toString() {
  return 'FavouriteModel(product: $product, savedPrice: $savedPrice, addedAt: $addedAt)';
}


}

/// @nodoc
abstract mixin class _$FavouriteModelCopyWith<$Res> implements $FavouriteModelCopyWith<$Res> {
  factory _$FavouriteModelCopyWith(_FavouriteModel value, $Res Function(_FavouriteModel) _then) = __$FavouriteModelCopyWithImpl;
@override @useResult
$Res call({
 ProductSummaryModel product, int savedPrice, DateTime addedAt
});


@override $ProductSummaryModelCopyWith<$Res> get product;

}
/// @nodoc
class __$FavouriteModelCopyWithImpl<$Res>
    implements _$FavouriteModelCopyWith<$Res> {
  __$FavouriteModelCopyWithImpl(this._self, this._then);

  final _FavouriteModel _self;
  final $Res Function(_FavouriteModel) _then;

/// Create a copy of FavouriteModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? product = null,Object? savedPrice = null,Object? addedAt = null,}) {
  return _then(_FavouriteModel(
product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ProductSummaryModel,savedPrice: null == savedPrice ? _self.savedPrice : savedPrice // ignore: cast_nullable_to_non_nullable
as int,addedAt: null == addedAt ? _self.addedAt : addedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

/// Create a copy of FavouriteModel
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
