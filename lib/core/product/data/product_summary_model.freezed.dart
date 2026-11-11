// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_summary_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductSummaryModel {

 String get id; String get title; String get imageUrl; int get price; int? get oldPrice; int? get soldCount;/// `hit`, `new`; unknown values are ignored.
 List<String> get marks; bool get isIllustration;
/// Create a copy of ProductSummaryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductSummaryModelCopyWith<ProductSummaryModel> get copyWith => _$ProductSummaryModelCopyWithImpl<ProductSummaryModel>(this as ProductSummaryModel, _$identity);

  /// Serializes this ProductSummaryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductSummaryModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.price, price) || other.price == price)&&(identical(other.oldPrice, oldPrice) || other.oldPrice == oldPrice)&&(identical(other.soldCount, soldCount) || other.soldCount == soldCount)&&const DeepCollectionEquality().equals(other.marks, marks)&&(identical(other.isIllustration, isIllustration) || other.isIllustration == isIllustration));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,imageUrl,price,oldPrice,soldCount,const DeepCollectionEquality().hash(marks),isIllustration);

@override
String toString() {
  return 'ProductSummaryModel(id: $id, title: $title, imageUrl: $imageUrl, price: $price, oldPrice: $oldPrice, soldCount: $soldCount, marks: $marks, isIllustration: $isIllustration)';
}


}

/// @nodoc
abstract mixin class $ProductSummaryModelCopyWith<$Res>  {
  factory $ProductSummaryModelCopyWith(ProductSummaryModel value, $Res Function(ProductSummaryModel) _then) = _$ProductSummaryModelCopyWithImpl;
@useResult
$Res call({
 String id, String title, String imageUrl, int price, int? oldPrice, int? soldCount, List<String> marks, bool isIllustration
});




}
/// @nodoc
class _$ProductSummaryModelCopyWithImpl<$Res>
    implements $ProductSummaryModelCopyWith<$Res> {
  _$ProductSummaryModelCopyWithImpl(this._self, this._then);

  final ProductSummaryModel _self;
  final $Res Function(ProductSummaryModel) _then;

/// Create a copy of ProductSummaryModel
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
as List<String>,isIllustration: null == isIllustration ? _self.isIllustration : isIllustration // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductSummaryModel].
extension ProductSummaryModelPatterns on ProductSummaryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductSummaryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductSummaryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductSummaryModel value)  $default,){
final _that = this;
switch (_that) {
case _ProductSummaryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductSummaryModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProductSummaryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String imageUrl,  int price,  int? oldPrice,  int? soldCount,  List<String> marks,  bool isIllustration)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductSummaryModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String imageUrl,  int price,  int? oldPrice,  int? soldCount,  List<String> marks,  bool isIllustration)  $default,) {final _that = this;
switch (_that) {
case _ProductSummaryModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String imageUrl,  int price,  int? oldPrice,  int? soldCount,  List<String> marks,  bool isIllustration)?  $default,) {final _that = this;
switch (_that) {
case _ProductSummaryModel() when $default != null:
return $default(_that.id,_that.title,_that.imageUrl,_that.price,_that.oldPrice,_that.soldCount,_that.marks,_that.isIllustration);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductSummaryModel implements ProductSummaryModel {
  const _ProductSummaryModel({required this.id, required this.title, required this.imageUrl, required this.price, this.oldPrice, this.soldCount, final  List<String> marks = const <String>[], this.isIllustration = false}): _marks = marks;
  factory _ProductSummaryModel.fromJson(Map<String, dynamic> json) => _$ProductSummaryModelFromJson(json);

@override final  String id;
@override final  String title;
@override final  String imageUrl;
@override final  int price;
@override final  int? oldPrice;
@override final  int? soldCount;
/// `hit`, `new`; unknown values are ignored.
 final  List<String> _marks;
/// `hit`, `new`; unknown values are ignored.
@override@JsonKey() List<String> get marks {
  if (_marks is EqualUnmodifiableListView) return _marks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_marks);
}

@override@JsonKey() final  bool isIllustration;

/// Create a copy of ProductSummaryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductSummaryModelCopyWith<_ProductSummaryModel> get copyWith => __$ProductSummaryModelCopyWithImpl<_ProductSummaryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductSummaryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductSummaryModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.price, price) || other.price == price)&&(identical(other.oldPrice, oldPrice) || other.oldPrice == oldPrice)&&(identical(other.soldCount, soldCount) || other.soldCount == soldCount)&&const DeepCollectionEquality().equals(other._marks, _marks)&&(identical(other.isIllustration, isIllustration) || other.isIllustration == isIllustration));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,imageUrl,price,oldPrice,soldCount,const DeepCollectionEquality().hash(_marks),isIllustration);

@override
String toString() {
  return 'ProductSummaryModel(id: $id, title: $title, imageUrl: $imageUrl, price: $price, oldPrice: $oldPrice, soldCount: $soldCount, marks: $marks, isIllustration: $isIllustration)';
}


}

/// @nodoc
abstract mixin class _$ProductSummaryModelCopyWith<$Res> implements $ProductSummaryModelCopyWith<$Res> {
  factory _$ProductSummaryModelCopyWith(_ProductSummaryModel value, $Res Function(_ProductSummaryModel) _then) = __$ProductSummaryModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String imageUrl, int price, int? oldPrice, int? soldCount, List<String> marks, bool isIllustration
});




}
/// @nodoc
class __$ProductSummaryModelCopyWithImpl<$Res>
    implements _$ProductSummaryModelCopyWith<$Res> {
  __$ProductSummaryModelCopyWithImpl(this._self, this._then);

  final _ProductSummaryModel _self;
  final $Res Function(_ProductSummaryModel) _then;

/// Create a copy of ProductSummaryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? imageUrl = null,Object? price = null,Object? oldPrice = freezed,Object? soldCount = freezed,Object? marks = null,Object? isIllustration = null,}) {
  return _then(_ProductSummaryModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,oldPrice: freezed == oldPrice ? _self.oldPrice : oldPrice // ignore: cast_nullable_to_non_nullable
as int?,soldCount: freezed == soldCount ? _self.soldCount : soldCount // ignore: cast_nullable_to_non_nullable
as int?,marks: null == marks ? _self._marks : marks // ignore: cast_nullable_to_non_nullable
as List<String>,isIllustration: null == isIllustration ? _self.isIllustration : isIllustration // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
