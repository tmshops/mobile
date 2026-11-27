// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_page_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductPageModel {

 List<ProductSummaryModel> get items; String? get nextCursor;
/// Create a copy of ProductPageModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductPageModelCopyWith<ProductPageModel> get copyWith => _$ProductPageModelCopyWithImpl<ProductPageModel>(this as ProductPageModel, _$identity);

  /// Serializes this ProductPageModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductPageModel&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),nextCursor);

@override
String toString() {
  return 'ProductPageModel(items: $items, nextCursor: $nextCursor)';
}


}

/// @nodoc
abstract mixin class $ProductPageModelCopyWith<$Res>  {
  factory $ProductPageModelCopyWith(ProductPageModel value, $Res Function(ProductPageModel) _then) = _$ProductPageModelCopyWithImpl;
@useResult
$Res call({
 List<ProductSummaryModel> items, String? nextCursor
});




}
/// @nodoc
class _$ProductPageModelCopyWithImpl<$Res>
    implements $ProductPageModelCopyWith<$Res> {
  _$ProductPageModelCopyWithImpl(this._self, this._then);

  final ProductPageModel _self;
  final $Res Function(ProductPageModel) _then;

/// Create a copy of ProductPageModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? nextCursor = freezed,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<ProductSummaryModel>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductPageModel].
extension ProductPageModelPatterns on ProductPageModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductPageModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductPageModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductPageModel value)  $default,){
final _that = this;
switch (_that) {
case _ProductPageModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductPageModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProductPageModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ProductSummaryModel> items,  String? nextCursor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductPageModel() when $default != null:
return $default(_that.items,_that.nextCursor);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ProductSummaryModel> items,  String? nextCursor)  $default,) {final _that = this;
switch (_that) {
case _ProductPageModel():
return $default(_that.items,_that.nextCursor);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ProductSummaryModel> items,  String? nextCursor)?  $default,) {final _that = this;
switch (_that) {
case _ProductPageModel() when $default != null:
return $default(_that.items,_that.nextCursor);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductPageModel implements ProductPageModel {
  const _ProductPageModel({required final  List<ProductSummaryModel> items, this.nextCursor}): _items = items;
  factory _ProductPageModel.fromJson(Map<String, dynamic> json) => _$ProductPageModelFromJson(json);

 final  List<ProductSummaryModel> _items;
@override List<ProductSummaryModel> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  String? nextCursor;

/// Create a copy of ProductPageModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductPageModelCopyWith<_ProductPageModel> get copyWith => __$ProductPageModelCopyWithImpl<_ProductPageModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductPageModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductPageModel&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),nextCursor);

@override
String toString() {
  return 'ProductPageModel(items: $items, nextCursor: $nextCursor)';
}


}

/// @nodoc
abstract mixin class _$ProductPageModelCopyWith<$Res> implements $ProductPageModelCopyWith<$Res> {
  factory _$ProductPageModelCopyWith(_ProductPageModel value, $Res Function(_ProductPageModel) _then) = __$ProductPageModelCopyWithImpl;
@override @useResult
$Res call({
 List<ProductSummaryModel> items, String? nextCursor
});




}
/// @nodoc
class __$ProductPageModelCopyWithImpl<$Res>
    implements _$ProductPageModelCopyWith<$Res> {
  __$ProductPageModelCopyWithImpl(this._self, this._then);

  final _ProductPageModel _self;
  final $Res Function(_ProductPageModel) _then;

/// Create a copy of ProductPageModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? nextCursor = freezed,}) {
  return _then(_ProductPageModel(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<ProductSummaryModel>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
