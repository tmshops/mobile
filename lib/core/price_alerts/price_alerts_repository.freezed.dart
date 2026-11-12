// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'price_alerts_repository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PriceAlertModel {

 ProductSummaryModel get product; int get subscribedPrice;
/// Create a copy of PriceAlertModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PriceAlertModelCopyWith<PriceAlertModel> get copyWith => _$PriceAlertModelCopyWithImpl<PriceAlertModel>(this as PriceAlertModel, _$identity);

  /// Serializes this PriceAlertModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PriceAlertModel&&(identical(other.product, product) || other.product == product)&&(identical(other.subscribedPrice, subscribedPrice) || other.subscribedPrice == subscribedPrice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,product,subscribedPrice);

@override
String toString() {
  return 'PriceAlertModel(product: $product, subscribedPrice: $subscribedPrice)';
}


}

/// @nodoc
abstract mixin class $PriceAlertModelCopyWith<$Res>  {
  factory $PriceAlertModelCopyWith(PriceAlertModel value, $Res Function(PriceAlertModel) _then) = _$PriceAlertModelCopyWithImpl;
@useResult
$Res call({
 ProductSummaryModel product, int subscribedPrice
});


$ProductSummaryModelCopyWith<$Res> get product;

}
/// @nodoc
class _$PriceAlertModelCopyWithImpl<$Res>
    implements $PriceAlertModelCopyWith<$Res> {
  _$PriceAlertModelCopyWithImpl(this._self, this._then);

  final PriceAlertModel _self;
  final $Res Function(PriceAlertModel) _then;

/// Create a copy of PriceAlertModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? product = null,Object? subscribedPrice = null,}) {
  return _then(_self.copyWith(
product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ProductSummaryModel,subscribedPrice: null == subscribedPrice ? _self.subscribedPrice : subscribedPrice // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of PriceAlertModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductSummaryModelCopyWith<$Res> get product {
  
  return $ProductSummaryModelCopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}


/// Adds pattern-matching-related methods to [PriceAlertModel].
extension PriceAlertModelPatterns on PriceAlertModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PriceAlertModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PriceAlertModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PriceAlertModel value)  $default,){
final _that = this;
switch (_that) {
case _PriceAlertModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PriceAlertModel value)?  $default,){
final _that = this;
switch (_that) {
case _PriceAlertModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ProductSummaryModel product,  int subscribedPrice)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PriceAlertModel() when $default != null:
return $default(_that.product,_that.subscribedPrice);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ProductSummaryModel product,  int subscribedPrice)  $default,) {final _that = this;
switch (_that) {
case _PriceAlertModel():
return $default(_that.product,_that.subscribedPrice);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ProductSummaryModel product,  int subscribedPrice)?  $default,) {final _that = this;
switch (_that) {
case _PriceAlertModel() when $default != null:
return $default(_that.product,_that.subscribedPrice);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PriceAlertModel implements PriceAlertModel {
  const _PriceAlertModel({required this.product, required this.subscribedPrice});
  factory _PriceAlertModel.fromJson(Map<String, dynamic> json) => _$PriceAlertModelFromJson(json);

@override final  ProductSummaryModel product;
@override final  int subscribedPrice;

/// Create a copy of PriceAlertModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PriceAlertModelCopyWith<_PriceAlertModel> get copyWith => __$PriceAlertModelCopyWithImpl<_PriceAlertModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PriceAlertModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PriceAlertModel&&(identical(other.product, product) || other.product == product)&&(identical(other.subscribedPrice, subscribedPrice) || other.subscribedPrice == subscribedPrice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,product,subscribedPrice);

@override
String toString() {
  return 'PriceAlertModel(product: $product, subscribedPrice: $subscribedPrice)';
}


}

/// @nodoc
abstract mixin class _$PriceAlertModelCopyWith<$Res> implements $PriceAlertModelCopyWith<$Res> {
  factory _$PriceAlertModelCopyWith(_PriceAlertModel value, $Res Function(_PriceAlertModel) _then) = __$PriceAlertModelCopyWithImpl;
@override @useResult
$Res call({
 ProductSummaryModel product, int subscribedPrice
});


@override $ProductSummaryModelCopyWith<$Res> get product;

}
/// @nodoc
class __$PriceAlertModelCopyWithImpl<$Res>
    implements _$PriceAlertModelCopyWith<$Res> {
  __$PriceAlertModelCopyWithImpl(this._self, this._then);

  final _PriceAlertModel _self;
  final $Res Function(_PriceAlertModel) _then;

/// Create a copy of PriceAlertModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? product = null,Object? subscribedPrice = null,}) {
  return _then(_PriceAlertModel(
product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ProductSummaryModel,subscribedPrice: null == subscribedPrice ? _self.subscribedPrice : subscribedPrice // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of PriceAlertModel
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
