// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CartItem {

 String get productId; String get title; String get imageUrl; int get price; int get quantity;/// `null` for products without variants.
 String? get skuId;/// Human-readable variant, e.g. «Чёрный, M».
 String? get skuLabel; String? get comment;/// Lines are grouped by seller; known from the product page, so the
/// groups show even before the quote arrives or when offline.
 String? get sellerName;/// Ticked lines go into the order (TZ §5.10).
 bool get isSelected;
/// Create a copy of CartItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartItemCopyWith<CartItem> get copyWith => _$CartItemCopyWithImpl<CartItem>(this as CartItem, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartItem&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.title, title) || other.title == title)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.price, price) || other.price == price)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.skuId, skuId) || other.skuId == skuId)&&(identical(other.skuLabel, skuLabel) || other.skuLabel == skuLabel)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.sellerName, sellerName) || other.sellerName == sellerName)&&(identical(other.isSelected, isSelected) || other.isSelected == isSelected));
}


@override
int get hashCode => Object.hash(runtimeType,productId,title,imageUrl,price,quantity,skuId,skuLabel,comment,sellerName,isSelected);

@override
String toString() {
  return 'CartItem(productId: $productId, title: $title, imageUrl: $imageUrl, price: $price, quantity: $quantity, skuId: $skuId, skuLabel: $skuLabel, comment: $comment, sellerName: $sellerName, isSelected: $isSelected)';
}


}

/// @nodoc
abstract mixin class $CartItemCopyWith<$Res>  {
  factory $CartItemCopyWith(CartItem value, $Res Function(CartItem) _then) = _$CartItemCopyWithImpl;
@useResult
$Res call({
 String productId, String title, String imageUrl, int price, int quantity, String? skuId, String? skuLabel, String? comment, String? sellerName, bool isSelected
});




}
/// @nodoc
class _$CartItemCopyWithImpl<$Res>
    implements $CartItemCopyWith<$Res> {
  _$CartItemCopyWithImpl(this._self, this._then);

  final CartItem _self;
  final $Res Function(CartItem) _then;

/// Create a copy of CartItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productId = null,Object? title = null,Object? imageUrl = null,Object? price = null,Object? quantity = null,Object? skuId = freezed,Object? skuLabel = freezed,Object? comment = freezed,Object? sellerName = freezed,Object? isSelected = null,}) {
  return _then(_self.copyWith(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,skuId: freezed == skuId ? _self.skuId : skuId // ignore: cast_nullable_to_non_nullable
as String?,skuLabel: freezed == skuLabel ? _self.skuLabel : skuLabel // ignore: cast_nullable_to_non_nullable
as String?,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,sellerName: freezed == sellerName ? _self.sellerName : sellerName // ignore: cast_nullable_to_non_nullable
as String?,isSelected: null == isSelected ? _self.isSelected : isSelected // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CartItem].
extension CartItemPatterns on CartItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartItem value)  $default,){
final _that = this;
switch (_that) {
case _CartItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartItem value)?  $default,){
final _that = this;
switch (_that) {
case _CartItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String productId,  String title,  String imageUrl,  int price,  int quantity,  String? skuId,  String? skuLabel,  String? comment,  String? sellerName,  bool isSelected)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartItem() when $default != null:
return $default(_that.productId,_that.title,_that.imageUrl,_that.price,_that.quantity,_that.skuId,_that.skuLabel,_that.comment,_that.sellerName,_that.isSelected);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String productId,  String title,  String imageUrl,  int price,  int quantity,  String? skuId,  String? skuLabel,  String? comment,  String? sellerName,  bool isSelected)  $default,) {final _that = this;
switch (_that) {
case _CartItem():
return $default(_that.productId,_that.title,_that.imageUrl,_that.price,_that.quantity,_that.skuId,_that.skuLabel,_that.comment,_that.sellerName,_that.isSelected);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String productId,  String title,  String imageUrl,  int price,  int quantity,  String? skuId,  String? skuLabel,  String? comment,  String? sellerName,  bool isSelected)?  $default,) {final _that = this;
switch (_that) {
case _CartItem() when $default != null:
return $default(_that.productId,_that.title,_that.imageUrl,_that.price,_that.quantity,_that.skuId,_that.skuLabel,_that.comment,_that.sellerName,_that.isSelected);case _:
  return null;

}
}

}

/// @nodoc


class _CartItem extends CartItem {
  const _CartItem({required this.productId, required this.title, required this.imageUrl, required this.price, required this.quantity, this.skuId, this.skuLabel, this.comment, this.sellerName, this.isSelected = true}): super._();
  

@override final  String productId;
@override final  String title;
@override final  String imageUrl;
@override final  int price;
@override final  int quantity;
/// `null` for products without variants.
@override final  String? skuId;
/// Human-readable variant, e.g. «Чёрный, M».
@override final  String? skuLabel;
@override final  String? comment;
/// Lines are grouped by seller; known from the product page, so the
/// groups show even before the quote arrives or when offline.
@override final  String? sellerName;
/// Ticked lines go into the order (TZ §5.10).
@override@JsonKey() final  bool isSelected;

/// Create a copy of CartItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartItemCopyWith<_CartItem> get copyWith => __$CartItemCopyWithImpl<_CartItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartItem&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.title, title) || other.title == title)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.price, price) || other.price == price)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.skuId, skuId) || other.skuId == skuId)&&(identical(other.skuLabel, skuLabel) || other.skuLabel == skuLabel)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.sellerName, sellerName) || other.sellerName == sellerName)&&(identical(other.isSelected, isSelected) || other.isSelected == isSelected));
}


@override
int get hashCode => Object.hash(runtimeType,productId,title,imageUrl,price,quantity,skuId,skuLabel,comment,sellerName,isSelected);

@override
String toString() {
  return 'CartItem(productId: $productId, title: $title, imageUrl: $imageUrl, price: $price, quantity: $quantity, skuId: $skuId, skuLabel: $skuLabel, comment: $comment, sellerName: $sellerName, isSelected: $isSelected)';
}


}

/// @nodoc
abstract mixin class _$CartItemCopyWith<$Res> implements $CartItemCopyWith<$Res> {
  factory _$CartItemCopyWith(_CartItem value, $Res Function(_CartItem) _then) = __$CartItemCopyWithImpl;
@override @useResult
$Res call({
 String productId, String title, String imageUrl, int price, int quantity, String? skuId, String? skuLabel, String? comment, String? sellerName, bool isSelected
});




}
/// @nodoc
class __$CartItemCopyWithImpl<$Res>
    implements _$CartItemCopyWith<$Res> {
  __$CartItemCopyWithImpl(this._self, this._then);

  final _CartItem _self;
  final $Res Function(_CartItem) _then;

/// Create a copy of CartItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productId = null,Object? title = null,Object? imageUrl = null,Object? price = null,Object? quantity = null,Object? skuId = freezed,Object? skuLabel = freezed,Object? comment = freezed,Object? sellerName = freezed,Object? isSelected = null,}) {
  return _then(_CartItem(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,skuId: freezed == skuId ? _self.skuId : skuId // ignore: cast_nullable_to_non_nullable
as String?,skuLabel: freezed == skuLabel ? _self.skuLabel : skuLabel // ignore: cast_nullable_to_non_nullable
as String?,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,sellerName: freezed == sellerName ? _self.sellerName : sellerName // ignore: cast_nullable_to_non_nullable
as String?,isSelected: null == isSelected ? _self.isSelected : isSelected // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
