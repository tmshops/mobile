// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_variants.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductVariants {

 List<SkuProperty> get properties; List<Sku> get skus;
/// Create a copy of ProductVariants
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductVariantsCopyWith<ProductVariants> get copyWith => _$ProductVariantsCopyWithImpl<ProductVariants>(this as ProductVariants, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductVariants&&const DeepCollectionEquality().equals(other.properties, properties)&&const DeepCollectionEquality().equals(other.skus, skus));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(properties),const DeepCollectionEquality().hash(skus));

@override
String toString() {
  return 'ProductVariants(properties: $properties, skus: $skus)';
}


}

/// @nodoc
abstract mixin class $ProductVariantsCopyWith<$Res>  {
  factory $ProductVariantsCopyWith(ProductVariants value, $Res Function(ProductVariants) _then) = _$ProductVariantsCopyWithImpl;
@useResult
$Res call({
 List<SkuProperty> properties, List<Sku> skus
});




}
/// @nodoc
class _$ProductVariantsCopyWithImpl<$Res>
    implements $ProductVariantsCopyWith<$Res> {
  _$ProductVariantsCopyWithImpl(this._self, this._then);

  final ProductVariants _self;
  final $Res Function(ProductVariants) _then;

/// Create a copy of ProductVariants
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? properties = null,Object? skus = null,}) {
  return _then(_self.copyWith(
properties: null == properties ? _self.properties : properties // ignore: cast_nullable_to_non_nullable
as List<SkuProperty>,skus: null == skus ? _self.skus : skus // ignore: cast_nullable_to_non_nullable
as List<Sku>,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductVariants].
extension ProductVariantsPatterns on ProductVariants {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductVariants value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductVariants() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductVariants value)  $default,){
final _that = this;
switch (_that) {
case _ProductVariants():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductVariants value)?  $default,){
final _that = this;
switch (_that) {
case _ProductVariants() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<SkuProperty> properties,  List<Sku> skus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductVariants() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<SkuProperty> properties,  List<Sku> skus)  $default,) {final _that = this;
switch (_that) {
case _ProductVariants():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<SkuProperty> properties,  List<Sku> skus)?  $default,) {final _that = this;
switch (_that) {
case _ProductVariants() when $default != null:
return $default(_that.properties,_that.skus);case _:
  return null;

}
}

}

/// @nodoc


class _ProductVariants implements ProductVariants {
  const _ProductVariants({required final  List<SkuProperty> properties, required final  List<Sku> skus}): _properties = properties,_skus = skus;
  

 final  List<SkuProperty> _properties;
@override List<SkuProperty> get properties {
  if (_properties is EqualUnmodifiableListView) return _properties;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_properties);
}

 final  List<Sku> _skus;
@override List<Sku> get skus {
  if (_skus is EqualUnmodifiableListView) return _skus;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_skus);
}


/// Create a copy of ProductVariants
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductVariantsCopyWith<_ProductVariants> get copyWith => __$ProductVariantsCopyWithImpl<_ProductVariants>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductVariants&&const DeepCollectionEquality().equals(other._properties, _properties)&&const DeepCollectionEquality().equals(other._skus, _skus));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_properties),const DeepCollectionEquality().hash(_skus));

@override
String toString() {
  return 'ProductVariants(properties: $properties, skus: $skus)';
}


}

/// @nodoc
abstract mixin class _$ProductVariantsCopyWith<$Res> implements $ProductVariantsCopyWith<$Res> {
  factory _$ProductVariantsCopyWith(_ProductVariants value, $Res Function(_ProductVariants) _then) = __$ProductVariantsCopyWithImpl;
@override @useResult
$Res call({
 List<SkuProperty> properties, List<Sku> skus
});




}
/// @nodoc
class __$ProductVariantsCopyWithImpl<$Res>
    implements _$ProductVariantsCopyWith<$Res> {
  __$ProductVariantsCopyWithImpl(this._self, this._then);

  final _ProductVariants _self;
  final $Res Function(_ProductVariants) _then;

/// Create a copy of ProductVariants
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? properties = null,Object? skus = null,}) {
  return _then(_ProductVariants(
properties: null == properties ? _self._properties : properties // ignore: cast_nullable_to_non_nullable
as List<SkuProperty>,skus: null == skus ? _self._skus : skus // ignore: cast_nullable_to_non_nullable
as List<Sku>,
  ));
}


}

// dart format on
