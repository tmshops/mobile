// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'price_alert.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PriceAlert {

 ProductSummary get product; int get subscribedPrice;/// Switched off on the list stays visible until the list is reloaded,
/// so it can be switched back on.
 bool get isOn;
/// Create a copy of PriceAlert
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PriceAlertCopyWith<PriceAlert> get copyWith => _$PriceAlertCopyWithImpl<PriceAlert>(this as PriceAlert, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PriceAlert&&(identical(other.product, product) || other.product == product)&&(identical(other.subscribedPrice, subscribedPrice) || other.subscribedPrice == subscribedPrice)&&(identical(other.isOn, isOn) || other.isOn == isOn));
}


@override
int get hashCode => Object.hash(runtimeType,product,subscribedPrice,isOn);

@override
String toString() {
  return 'PriceAlert(product: $product, subscribedPrice: $subscribedPrice, isOn: $isOn)';
}


}

/// @nodoc
abstract mixin class $PriceAlertCopyWith<$Res>  {
  factory $PriceAlertCopyWith(PriceAlert value, $Res Function(PriceAlert) _then) = _$PriceAlertCopyWithImpl;
@useResult
$Res call({
 ProductSummary product, int subscribedPrice, bool isOn
});


$ProductSummaryCopyWith<$Res> get product;

}
/// @nodoc
class _$PriceAlertCopyWithImpl<$Res>
    implements $PriceAlertCopyWith<$Res> {
  _$PriceAlertCopyWithImpl(this._self, this._then);

  final PriceAlert _self;
  final $Res Function(PriceAlert) _then;

/// Create a copy of PriceAlert
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? product = null,Object? subscribedPrice = null,Object? isOn = null,}) {
  return _then(_self.copyWith(
product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ProductSummary,subscribedPrice: null == subscribedPrice ? _self.subscribedPrice : subscribedPrice // ignore: cast_nullable_to_non_nullable
as int,isOn: null == isOn ? _self.isOn : isOn // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of PriceAlert
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductSummaryCopyWith<$Res> get product {
  
  return $ProductSummaryCopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}


/// Adds pattern-matching-related methods to [PriceAlert].
extension PriceAlertPatterns on PriceAlert {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PriceAlert value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PriceAlert() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PriceAlert value)  $default,){
final _that = this;
switch (_that) {
case _PriceAlert():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PriceAlert value)?  $default,){
final _that = this;
switch (_that) {
case _PriceAlert() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ProductSummary product,  int subscribedPrice,  bool isOn)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PriceAlert() when $default != null:
return $default(_that.product,_that.subscribedPrice,_that.isOn);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ProductSummary product,  int subscribedPrice,  bool isOn)  $default,) {final _that = this;
switch (_that) {
case _PriceAlert():
return $default(_that.product,_that.subscribedPrice,_that.isOn);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ProductSummary product,  int subscribedPrice,  bool isOn)?  $default,) {final _that = this;
switch (_that) {
case _PriceAlert() when $default != null:
return $default(_that.product,_that.subscribedPrice,_that.isOn);case _:
  return null;

}
}

}

/// @nodoc


class _PriceAlert extends PriceAlert {
  const _PriceAlert({required this.product, required this.subscribedPrice, this.isOn = true}): super._();
  

@override final  ProductSummary product;
@override final  int subscribedPrice;
/// Switched off on the list stays visible until the list is reloaded,
/// so it can be switched back on.
@override@JsonKey() final  bool isOn;

/// Create a copy of PriceAlert
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PriceAlertCopyWith<_PriceAlert> get copyWith => __$PriceAlertCopyWithImpl<_PriceAlert>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PriceAlert&&(identical(other.product, product) || other.product == product)&&(identical(other.subscribedPrice, subscribedPrice) || other.subscribedPrice == subscribedPrice)&&(identical(other.isOn, isOn) || other.isOn == isOn));
}


@override
int get hashCode => Object.hash(runtimeType,product,subscribedPrice,isOn);

@override
String toString() {
  return 'PriceAlert(product: $product, subscribedPrice: $subscribedPrice, isOn: $isOn)';
}


}

/// @nodoc
abstract mixin class _$PriceAlertCopyWith<$Res> implements $PriceAlertCopyWith<$Res> {
  factory _$PriceAlertCopyWith(_PriceAlert value, $Res Function(_PriceAlert) _then) = __$PriceAlertCopyWithImpl;
@override @useResult
$Res call({
 ProductSummary product, int subscribedPrice, bool isOn
});


@override $ProductSummaryCopyWith<$Res> get product;

}
/// @nodoc
class __$PriceAlertCopyWithImpl<$Res>
    implements _$PriceAlertCopyWith<$Res> {
  __$PriceAlertCopyWithImpl(this._self, this._then);

  final _PriceAlert _self;
  final $Res Function(_PriceAlert) _then;

/// Create a copy of PriceAlert
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? product = null,Object? subscribedPrice = null,Object? isOn = null,}) {
  return _then(_PriceAlert(
product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ProductSummary,subscribedPrice: null == subscribedPrice ? _self.subscribedPrice : subscribedPrice // ignore: cast_nullable_to_non_nullable
as int,isOn: null == isOn ? _self.isOn : isOn // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of PriceAlert
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductSummaryCopyWith<$Res> get product {
  
  return $ProductSummaryCopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}

// dart format on
