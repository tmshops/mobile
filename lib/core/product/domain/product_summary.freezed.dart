// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductSummary {

 String get id; String get title; String get imageUrl; int get price; int? get oldPrice; int? get soldCount; Set<ProductMark> get marks;/// AI-generated replacement photo (shows «иллюстрация»).
 bool get isIllustration;
/// Create a copy of ProductSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductSummaryCopyWith<ProductSummary> get copyWith => _$ProductSummaryCopyWithImpl<ProductSummary>(this as ProductSummary, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductSummary&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.price, price) || other.price == price)&&(identical(other.oldPrice, oldPrice) || other.oldPrice == oldPrice)&&(identical(other.soldCount, soldCount) || other.soldCount == soldCount)&&const DeepCollectionEquality().equals(other.marks, marks)&&(identical(other.isIllustration, isIllustration) || other.isIllustration == isIllustration));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,imageUrl,price,oldPrice,soldCount,const DeepCollectionEquality().hash(marks),isIllustration);

@override
String toString() {
  return 'ProductSummary(id: $id, title: $title, imageUrl: $imageUrl, price: $price, oldPrice: $oldPrice, soldCount: $soldCount, marks: $marks, isIllustration: $isIllustration)';
}


}

/// @nodoc
abstract mixin class $ProductSummaryCopyWith<$Res>  {
  factory $ProductSummaryCopyWith(ProductSummary value, $Res Function(ProductSummary) _then) = _$ProductSummaryCopyWithImpl;
@useResult
$Res call({
 String id, String title, String imageUrl, int price, int? oldPrice, int? soldCount, Set<ProductMark> marks, bool isIllustration
});




}
/// @nodoc
class _$ProductSummaryCopyWithImpl<$Res>
    implements $ProductSummaryCopyWith<$Res> {
  _$ProductSummaryCopyWithImpl(this._self, this._then);

  final ProductSummary _self;
  final $Res Function(ProductSummary) _then;

/// Create a copy of ProductSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? imageUrl = null,Object? price = null,Object? oldPrice = freezed,Object? soldCount = freezed,Object? marks = null,Object? isIllustration = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,oldPrice: freezed == oldPrice ? _self.oldPrice : oldPrice // ignore: cast_nullable_to_non_nullable
as int?,soldCount: freezed == soldCount ? _self.soldCount : soldCount // ignore: cast_nullable_to_non_nullable
as int?,marks: null == marks ? _self.marks : marks // ignore: cast_nullable_to_non_nullable
as Set<ProductMark>,isIllustration: null == isIllustration ? _self.isIllustration : isIllustration // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductSummary].
extension ProductSummaryPatterns on ProductSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductSummary value)  $default,){
final _that = this;
switch (_that) {
case _ProductSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductSummary value)?  $default,){
final _that = this;
switch (_that) {
case _ProductSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String imageUrl,  int price,  int? oldPrice,  int? soldCount,  Set<ProductMark> marks,  bool isIllustration)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductSummary() when $default != null:
return $default(_that.id,_that.title,_that.imageUrl,_that.price,_that.oldPrice,_that.soldCount,_that.marks,_that.isIllustration);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String imageUrl,  int price,  int? oldPrice,  int? soldCount,  Set<ProductMark> marks,  bool isIllustration)  $default,) {final _that = this;
switch (_that) {
case _ProductSummary():
return $default(_that.id,_that.title,_that.imageUrl,_that.price,_that.oldPrice,_that.soldCount,_that.marks,_that.isIllustration);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String imageUrl,  int price,  int? oldPrice,  int? soldCount,  Set<ProductMark> marks,  bool isIllustration)?  $default,) {final _that = this;
switch (_that) {
case _ProductSummary() when $default != null:
return $default(_that.id,_that.title,_that.imageUrl,_that.price,_that.oldPrice,_that.soldCount,_that.marks,_that.isIllustration);case _:
  return null;

}
}

}

/// @nodoc


class _ProductSummary implements ProductSummary {
  const _ProductSummary({required this.id, required this.title, required this.imageUrl, required this.price, this.oldPrice, this.soldCount, final  Set<ProductMark> marks = const <ProductMark>{}, this.isIllustration = false}): _marks = marks;
  

@override final  String id;
@override final  String title;
@override final  String imageUrl;
@override final  int price;
@override final  int? oldPrice;
@override final  int? soldCount;
 final  Set<ProductMark> _marks;
@override@JsonKey() Set<ProductMark> get marks {
  if (_marks is EqualUnmodifiableSetView) return _marks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_marks);
}

/// AI-generated replacement photo (shows «иллюстрация»).
@override@JsonKey() final  bool isIllustration;

/// Create a copy of ProductSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductSummaryCopyWith<_ProductSummary> get copyWith => __$ProductSummaryCopyWithImpl<_ProductSummary>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductSummary&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.price, price) || other.price == price)&&(identical(other.oldPrice, oldPrice) || other.oldPrice == oldPrice)&&(identical(other.soldCount, soldCount) || other.soldCount == soldCount)&&const DeepCollectionEquality().equals(other._marks, _marks)&&(identical(other.isIllustration, isIllustration) || other.isIllustration == isIllustration));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,imageUrl,price,oldPrice,soldCount,const DeepCollectionEquality().hash(_marks),isIllustration);

@override
String toString() {
  return 'ProductSummary(id: $id, title: $title, imageUrl: $imageUrl, price: $price, oldPrice: $oldPrice, soldCount: $soldCount, marks: $marks, isIllustration: $isIllustration)';
}


}

/// @nodoc
abstract mixin class _$ProductSummaryCopyWith<$Res> implements $ProductSummaryCopyWith<$Res> {
  factory _$ProductSummaryCopyWith(_ProductSummary value, $Res Function(_ProductSummary) _then) = __$ProductSummaryCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String imageUrl, int price, int? oldPrice, int? soldCount, Set<ProductMark> marks, bool isIllustration
});




}
/// @nodoc
class __$ProductSummaryCopyWithImpl<$Res>
    implements _$ProductSummaryCopyWith<$Res> {
  __$ProductSummaryCopyWithImpl(this._self, this._then);

  final _ProductSummary _self;
  final $Res Function(_ProductSummary) _then;

/// Create a copy of ProductSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? imageUrl = null,Object? price = null,Object? oldPrice = freezed,Object? soldCount = freezed,Object? marks = null,Object? isIllustration = null,}) {
  return _then(_ProductSummary(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,oldPrice: freezed == oldPrice ? _self.oldPrice : oldPrice // ignore: cast_nullable_to_non_nullable
as int?,soldCount: freezed == soldCount ? _self.soldCount : soldCount // ignore: cast_nullable_to_non_nullable
as int?,marks: null == marks ? _self._marks : marks // ignore: cast_nullable_to_non_nullable
as Set<ProductMark>,isIllustration: null == isIllustration ? _self.isIllustration : isIllustration // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
