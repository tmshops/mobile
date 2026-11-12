// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favourite_card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FavouriteCard {

 Favourite get favourite; ProductSummary get product; bool get isAvailable; String? get sellerName;
/// Create a copy of FavouriteCard
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FavouriteCardCopyWith<FavouriteCard> get copyWith => _$FavouriteCardCopyWithImpl<FavouriteCard>(this as FavouriteCard, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavouriteCard&&(identical(other.favourite, favourite) || other.favourite == favourite)&&(identical(other.product, product) || other.product == product)&&(identical(other.isAvailable, isAvailable) || other.isAvailable == isAvailable)&&(identical(other.sellerName, sellerName) || other.sellerName == sellerName));
}


@override
int get hashCode => Object.hash(runtimeType,favourite,product,isAvailable,sellerName);

@override
String toString() {
  return 'FavouriteCard(favourite: $favourite, product: $product, isAvailable: $isAvailable, sellerName: $sellerName)';
}


}

/// @nodoc
abstract mixin class $FavouriteCardCopyWith<$Res>  {
  factory $FavouriteCardCopyWith(FavouriteCard value, $Res Function(FavouriteCard) _then) = _$FavouriteCardCopyWithImpl;
@useResult
$Res call({
 Favourite favourite, ProductSummary product, bool isAvailable, String? sellerName
});


$FavouriteCopyWith<$Res> get favourite;$ProductSummaryCopyWith<$Res> get product;

}
/// @nodoc
class _$FavouriteCardCopyWithImpl<$Res>
    implements $FavouriteCardCopyWith<$Res> {
  _$FavouriteCardCopyWithImpl(this._self, this._then);

  final FavouriteCard _self;
  final $Res Function(FavouriteCard) _then;

/// Create a copy of FavouriteCard
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? favourite = null,Object? product = null,Object? isAvailable = null,Object? sellerName = freezed,}) {
  return _then(_self.copyWith(
favourite: null == favourite ? _self.favourite : favourite // ignore: cast_nullable_to_non_nullable
as Favourite,product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ProductSummary,isAvailable: null == isAvailable ? _self.isAvailable : isAvailable // ignore: cast_nullable_to_non_nullable
as bool,sellerName: freezed == sellerName ? _self.sellerName : sellerName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of FavouriteCard
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FavouriteCopyWith<$Res> get favourite {
  
  return $FavouriteCopyWith<$Res>(_self.favourite, (value) {
    return _then(_self.copyWith(favourite: value));
  });
}/// Create a copy of FavouriteCard
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductSummaryCopyWith<$Res> get product {
  
  return $ProductSummaryCopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}


/// Adds pattern-matching-related methods to [FavouriteCard].
extension FavouriteCardPatterns on FavouriteCard {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FavouriteCard value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FavouriteCard() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FavouriteCard value)  $default,){
final _that = this;
switch (_that) {
case _FavouriteCard():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FavouriteCard value)?  $default,){
final _that = this;
switch (_that) {
case _FavouriteCard() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Favourite favourite,  ProductSummary product,  bool isAvailable,  String? sellerName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FavouriteCard() when $default != null:
return $default(_that.favourite,_that.product,_that.isAvailable,_that.sellerName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Favourite favourite,  ProductSummary product,  bool isAvailable,  String? sellerName)  $default,) {final _that = this;
switch (_that) {
case _FavouriteCard():
return $default(_that.favourite,_that.product,_that.isAvailable,_that.sellerName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Favourite favourite,  ProductSummary product,  bool isAvailable,  String? sellerName)?  $default,) {final _that = this;
switch (_that) {
case _FavouriteCard() when $default != null:
return $default(_that.favourite,_that.product,_that.isAvailable,_that.sellerName);case _:
  return null;

}
}

}

/// @nodoc


class _FavouriteCard extends FavouriteCard {
  const _FavouriteCard({required this.favourite, required this.product, required this.isAvailable, this.sellerName}): super._();
  

@override final  Favourite favourite;
@override final  ProductSummary product;
@override final  bool isAvailable;
@override final  String? sellerName;

/// Create a copy of FavouriteCard
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FavouriteCardCopyWith<_FavouriteCard> get copyWith => __$FavouriteCardCopyWithImpl<_FavouriteCard>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FavouriteCard&&(identical(other.favourite, favourite) || other.favourite == favourite)&&(identical(other.product, product) || other.product == product)&&(identical(other.isAvailable, isAvailable) || other.isAvailable == isAvailable)&&(identical(other.sellerName, sellerName) || other.sellerName == sellerName));
}


@override
int get hashCode => Object.hash(runtimeType,favourite,product,isAvailable,sellerName);

@override
String toString() {
  return 'FavouriteCard(favourite: $favourite, product: $product, isAvailable: $isAvailable, sellerName: $sellerName)';
}


}

/// @nodoc
abstract mixin class _$FavouriteCardCopyWith<$Res> implements $FavouriteCardCopyWith<$Res> {
  factory _$FavouriteCardCopyWith(_FavouriteCard value, $Res Function(_FavouriteCard) _then) = __$FavouriteCardCopyWithImpl;
@override @useResult
$Res call({
 Favourite favourite, ProductSummary product, bool isAvailable, String? sellerName
});


@override $FavouriteCopyWith<$Res> get favourite;@override $ProductSummaryCopyWith<$Res> get product;

}
/// @nodoc
class __$FavouriteCardCopyWithImpl<$Res>
    implements _$FavouriteCardCopyWith<$Res> {
  __$FavouriteCardCopyWithImpl(this._self, this._then);

  final _FavouriteCard _self;
  final $Res Function(_FavouriteCard) _then;

/// Create a copy of FavouriteCard
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? favourite = null,Object? product = null,Object? isAvailable = null,Object? sellerName = freezed,}) {
  return _then(_FavouriteCard(
favourite: null == favourite ? _self.favourite : favourite // ignore: cast_nullable_to_non_nullable
as Favourite,product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ProductSummary,isAvailable: null == isAvailable ? _self.isAvailable : isAvailable // ignore: cast_nullable_to_non_nullable
as bool,sellerName: freezed == sellerName ? _self.sellerName : sellerName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of FavouriteCard
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FavouriteCopyWith<$Res> get favourite {
  
  return $FavouriteCopyWith<$Res>(_self.favourite, (value) {
    return _then(_self.copyWith(favourite: value));
  });
}/// Create a copy of FavouriteCard
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
