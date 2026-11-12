// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'viewed_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ViewedProduct {

 ProductSummary get product; DateTime get viewedAt;
/// Create a copy of ViewedProduct
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ViewedProductCopyWith<ViewedProduct> get copyWith => _$ViewedProductCopyWithImpl<ViewedProduct>(this as ViewedProduct, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ViewedProduct&&(identical(other.product, product) || other.product == product)&&(identical(other.viewedAt, viewedAt) || other.viewedAt == viewedAt));
}


@override
int get hashCode => Object.hash(runtimeType,product,viewedAt);

@override
String toString() {
  return 'ViewedProduct(product: $product, viewedAt: $viewedAt)';
}


}

/// @nodoc
abstract mixin class $ViewedProductCopyWith<$Res>  {
  factory $ViewedProductCopyWith(ViewedProduct value, $Res Function(ViewedProduct) _then) = _$ViewedProductCopyWithImpl;
@useResult
$Res call({
 ProductSummary product, DateTime viewedAt
});


$ProductSummaryCopyWith<$Res> get product;

}
/// @nodoc
class _$ViewedProductCopyWithImpl<$Res>
    implements $ViewedProductCopyWith<$Res> {
  _$ViewedProductCopyWithImpl(this._self, this._then);

  final ViewedProduct _self;
  final $Res Function(ViewedProduct) _then;

/// Create a copy of ViewedProduct
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? product = null,Object? viewedAt = null,}) {
  return _then(_self.copyWith(
product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ProductSummary,viewedAt: null == viewedAt ? _self.viewedAt : viewedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}
/// Create a copy of ViewedProduct
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductSummaryCopyWith<$Res> get product {
  
  return $ProductSummaryCopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}


/// Adds pattern-matching-related methods to [ViewedProduct].
extension ViewedProductPatterns on ViewedProduct {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ViewedProduct value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ViewedProduct() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ViewedProduct value)  $default,){
final _that = this;
switch (_that) {
case _ViewedProduct():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ViewedProduct value)?  $default,){
final _that = this;
switch (_that) {
case _ViewedProduct() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ProductSummary product,  DateTime viewedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ViewedProduct() when $default != null:
return $default(_that.product,_that.viewedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ProductSummary product,  DateTime viewedAt)  $default,) {final _that = this;
switch (_that) {
case _ViewedProduct():
return $default(_that.product,_that.viewedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ProductSummary product,  DateTime viewedAt)?  $default,) {final _that = this;
switch (_that) {
case _ViewedProduct() when $default != null:
return $default(_that.product,_that.viewedAt);case _:
  return null;

}
}

}

/// @nodoc


class _ViewedProduct implements ViewedProduct {
  const _ViewedProduct({required this.product, required this.viewedAt});
  

@override final  ProductSummary product;
@override final  DateTime viewedAt;

/// Create a copy of ViewedProduct
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ViewedProductCopyWith<_ViewedProduct> get copyWith => __$ViewedProductCopyWithImpl<_ViewedProduct>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ViewedProduct&&(identical(other.product, product) || other.product == product)&&(identical(other.viewedAt, viewedAt) || other.viewedAt == viewedAt));
}


@override
int get hashCode => Object.hash(runtimeType,product,viewedAt);

@override
String toString() {
  return 'ViewedProduct(product: $product, viewedAt: $viewedAt)';
}


}

/// @nodoc
abstract mixin class _$ViewedProductCopyWith<$Res> implements $ViewedProductCopyWith<$Res> {
  factory _$ViewedProductCopyWith(_ViewedProduct value, $Res Function(_ViewedProduct) _then) = __$ViewedProductCopyWithImpl;
@override @useResult
$Res call({
 ProductSummary product, DateTime viewedAt
});


@override $ProductSummaryCopyWith<$Res> get product;

}
/// @nodoc
class __$ViewedProductCopyWithImpl<$Res>
    implements _$ViewedProductCopyWith<$Res> {
  __$ViewedProductCopyWithImpl(this._self, this._then);

  final _ViewedProduct _self;
  final $Res Function(_ViewedProduct) _then;

/// Create a copy of ViewedProduct
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? product = null,Object? viewedAt = null,}) {
  return _then(_ViewedProduct(
product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ProductSummary,viewedAt: null == viewedAt ? _self.viewedAt : viewedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

/// Create a copy of ViewedProduct
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
