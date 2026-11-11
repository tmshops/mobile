// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sku.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SkuProperty {

 String get id; String get title; List<SkuValue> get values;/// Size-like property: shows the «Размерная сетка» link.
 bool get isSize;
/// Create a copy of SkuProperty
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SkuPropertyCopyWith<SkuProperty> get copyWith => _$SkuPropertyCopyWithImpl<SkuProperty>(this as SkuProperty, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SkuProperty&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other.values, values)&&(identical(other.isSize, isSize) || other.isSize == isSize));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,const DeepCollectionEquality().hash(values),isSize);

@override
String toString() {
  return 'SkuProperty(id: $id, title: $title, values: $values, isSize: $isSize)';
}


}

/// @nodoc
abstract mixin class $SkuPropertyCopyWith<$Res>  {
  factory $SkuPropertyCopyWith(SkuProperty value, $Res Function(SkuProperty) _then) = _$SkuPropertyCopyWithImpl;
@useResult
$Res call({
 String id, String title, List<SkuValue> values, bool isSize
});




}
/// @nodoc
class _$SkuPropertyCopyWithImpl<$Res>
    implements $SkuPropertyCopyWith<$Res> {
  _$SkuPropertyCopyWithImpl(this._self, this._then);

  final SkuProperty _self;
  final $Res Function(SkuProperty) _then;

/// Create a copy of SkuProperty
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? values = null,Object? isSize = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,values: null == values ? _self.values : values // ignore: cast_nullable_to_non_nullable
as List<SkuValue>,isSize: null == isSize ? _self.isSize : isSize // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SkuProperty].
extension SkuPropertyPatterns on SkuProperty {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SkuProperty value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SkuProperty() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SkuProperty value)  $default,){
final _that = this;
switch (_that) {
case _SkuProperty():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SkuProperty value)?  $default,){
final _that = this;
switch (_that) {
case _SkuProperty() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  List<SkuValue> values,  bool isSize)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SkuProperty() when $default != null:
return $default(_that.id,_that.title,_that.values,_that.isSize);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  List<SkuValue> values,  bool isSize)  $default,) {final _that = this;
switch (_that) {
case _SkuProperty():
return $default(_that.id,_that.title,_that.values,_that.isSize);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  List<SkuValue> values,  bool isSize)?  $default,) {final _that = this;
switch (_that) {
case _SkuProperty() when $default != null:
return $default(_that.id,_that.title,_that.values,_that.isSize);case _:
  return null;

}
}

}

/// @nodoc


class _SkuProperty extends SkuProperty {
  const _SkuProperty({required this.id, required this.title, required final  List<SkuValue> values, this.isSize = false}): _values = values,super._();
  

@override final  String id;
@override final  String title;
 final  List<SkuValue> _values;
@override List<SkuValue> get values {
  if (_values is EqualUnmodifiableListView) return _values;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_values);
}

/// Size-like property: shows the «Размерная сетка» link.
@override@JsonKey() final  bool isSize;

/// Create a copy of SkuProperty
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SkuPropertyCopyWith<_SkuProperty> get copyWith => __$SkuPropertyCopyWithImpl<_SkuProperty>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SkuProperty&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other._values, _values)&&(identical(other.isSize, isSize) || other.isSize == isSize));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,const DeepCollectionEquality().hash(_values),isSize);

@override
String toString() {
  return 'SkuProperty(id: $id, title: $title, values: $values, isSize: $isSize)';
}


}

/// @nodoc
abstract mixin class _$SkuPropertyCopyWith<$Res> implements $SkuPropertyCopyWith<$Res> {
  factory _$SkuPropertyCopyWith(_SkuProperty value, $Res Function(_SkuProperty) _then) = __$SkuPropertyCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, List<SkuValue> values, bool isSize
});




}
/// @nodoc
class __$SkuPropertyCopyWithImpl<$Res>
    implements _$SkuPropertyCopyWith<$Res> {
  __$SkuPropertyCopyWithImpl(this._self, this._then);

  final _SkuProperty _self;
  final $Res Function(_SkuProperty) _then;

/// Create a copy of SkuProperty
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? values = null,Object? isSize = null,}) {
  return _then(_SkuProperty(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,values: null == values ? _self._values : values // ignore: cast_nullable_to_non_nullable
as List<SkuValue>,isSize: null == isSize ? _self.isSize : isSize // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$SkuValue {

 String get id; String get label; String? get imageUrl;
/// Create a copy of SkuValue
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SkuValueCopyWith<SkuValue> get copyWith => _$SkuValueCopyWithImpl<SkuValue>(this as SkuValue, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SkuValue&&(identical(other.id, id) || other.id == id)&&(identical(other.label, label) || other.label == label)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}


@override
int get hashCode => Object.hash(runtimeType,id,label,imageUrl);

@override
String toString() {
  return 'SkuValue(id: $id, label: $label, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class $SkuValueCopyWith<$Res>  {
  factory $SkuValueCopyWith(SkuValue value, $Res Function(SkuValue) _then) = _$SkuValueCopyWithImpl;
@useResult
$Res call({
 String id, String label, String? imageUrl
});




}
/// @nodoc
class _$SkuValueCopyWithImpl<$Res>
    implements $SkuValueCopyWith<$Res> {
  _$SkuValueCopyWithImpl(this._self, this._then);

  final SkuValue _self;
  final $Res Function(SkuValue) _then;

/// Create a copy of SkuValue
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? label = null,Object? imageUrl = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SkuValue].
extension SkuValuePatterns on SkuValue {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SkuValue value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SkuValue() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SkuValue value)  $default,){
final _that = this;
switch (_that) {
case _SkuValue():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SkuValue value)?  $default,){
final _that = this;
switch (_that) {
case _SkuValue() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String label,  String? imageUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SkuValue() when $default != null:
return $default(_that.id,_that.label,_that.imageUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String label,  String? imageUrl)  $default,) {final _that = this;
switch (_that) {
case _SkuValue():
return $default(_that.id,_that.label,_that.imageUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String label,  String? imageUrl)?  $default,) {final _that = this;
switch (_that) {
case _SkuValue() when $default != null:
return $default(_that.id,_that.label,_that.imageUrl);case _:
  return null;

}
}

}

/// @nodoc


class _SkuValue implements SkuValue {
  const _SkuValue({required this.id, required this.label, this.imageUrl});
  

@override final  String id;
@override final  String label;
@override final  String? imageUrl;

/// Create a copy of SkuValue
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SkuValueCopyWith<_SkuValue> get copyWith => __$SkuValueCopyWithImpl<_SkuValue>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SkuValue&&(identical(other.id, id) || other.id == id)&&(identical(other.label, label) || other.label == label)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}


@override
int get hashCode => Object.hash(runtimeType,id,label,imageUrl);

@override
String toString() {
  return 'SkuValue(id: $id, label: $label, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class _$SkuValueCopyWith<$Res> implements $SkuValueCopyWith<$Res> {
  factory _$SkuValueCopyWith(_SkuValue value, $Res Function(_SkuValue) _then) = __$SkuValueCopyWithImpl;
@override @useResult
$Res call({
 String id, String label, String? imageUrl
});




}
/// @nodoc
class __$SkuValueCopyWithImpl<$Res>
    implements _$SkuValueCopyWith<$Res> {
  __$SkuValueCopyWithImpl(this._self, this._then);

  final _SkuValue _self;
  final $Res Function(_SkuValue) _then;

/// Create a copy of SkuValue
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? label = null,Object? imageUrl = freezed,}) {
  return _then(_SkuValue(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$Sku {

 String get id;/// Property id → value id.
 Map<String, String> get values; int get price; int? get oldPrice; int get stock;
/// Create a copy of Sku
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SkuCopyWith<Sku> get copyWith => _$SkuCopyWithImpl<Sku>(this as Sku, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Sku&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.values, values)&&(identical(other.price, price) || other.price == price)&&(identical(other.oldPrice, oldPrice) || other.oldPrice == oldPrice)&&(identical(other.stock, stock) || other.stock == stock));
}


@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(values),price,oldPrice,stock);

@override
String toString() {
  return 'Sku(id: $id, values: $values, price: $price, oldPrice: $oldPrice, stock: $stock)';
}


}

/// @nodoc
abstract mixin class $SkuCopyWith<$Res>  {
  factory $SkuCopyWith(Sku value, $Res Function(Sku) _then) = _$SkuCopyWithImpl;
@useResult
$Res call({
 String id, Map<String, String> values, int price, int? oldPrice, int stock
});




}
/// @nodoc
class _$SkuCopyWithImpl<$Res>
    implements $SkuCopyWith<$Res> {
  _$SkuCopyWithImpl(this._self, this._then);

  final Sku _self;
  final $Res Function(Sku) _then;

/// Create a copy of Sku
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? values = null,Object? price = null,Object? oldPrice = freezed,Object? stock = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,values: null == values ? _self.values : values // ignore: cast_nullable_to_non_nullable
as Map<String, String>,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,oldPrice: freezed == oldPrice ? _self.oldPrice : oldPrice // ignore: cast_nullable_to_non_nullable
as int?,stock: null == stock ? _self.stock : stock // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Sku].
extension SkuPatterns on Sku {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Sku value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Sku() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Sku value)  $default,){
final _that = this;
switch (_that) {
case _Sku():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Sku value)?  $default,){
final _that = this;
switch (_that) {
case _Sku() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  Map<String, String> values,  int price,  int? oldPrice,  int stock)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Sku() when $default != null:
return $default(_that.id,_that.values,_that.price,_that.oldPrice,_that.stock);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  Map<String, String> values,  int price,  int? oldPrice,  int stock)  $default,) {final _that = this;
switch (_that) {
case _Sku():
return $default(_that.id,_that.values,_that.price,_that.oldPrice,_that.stock);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  Map<String, String> values,  int price,  int? oldPrice,  int stock)?  $default,) {final _that = this;
switch (_that) {
case _Sku() when $default != null:
return $default(_that.id,_that.values,_that.price,_that.oldPrice,_that.stock);case _:
  return null;

}
}

}

/// @nodoc


class _Sku implements Sku {
  const _Sku({required this.id, required final  Map<String, String> values, required this.price, this.oldPrice, required this.stock}): _values = values;
  

@override final  String id;
/// Property id → value id.
 final  Map<String, String> _values;
/// Property id → value id.
@override Map<String, String> get values {
  if (_values is EqualUnmodifiableMapView) return _values;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_values);
}

@override final  int price;
@override final  int? oldPrice;
@override final  int stock;

/// Create a copy of Sku
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SkuCopyWith<_Sku> get copyWith => __$SkuCopyWithImpl<_Sku>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Sku&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._values, _values)&&(identical(other.price, price) || other.price == price)&&(identical(other.oldPrice, oldPrice) || other.oldPrice == oldPrice)&&(identical(other.stock, stock) || other.stock == stock));
}


@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_values),price,oldPrice,stock);

@override
String toString() {
  return 'Sku(id: $id, values: $values, price: $price, oldPrice: $oldPrice, stock: $stock)';
}


}

/// @nodoc
abstract mixin class _$SkuCopyWith<$Res> implements $SkuCopyWith<$Res> {
  factory _$SkuCopyWith(_Sku value, $Res Function(_Sku) _then) = __$SkuCopyWithImpl;
@override @useResult
$Res call({
 String id, Map<String, String> values, int price, int? oldPrice, int stock
});




}
/// @nodoc
class __$SkuCopyWithImpl<$Res>
    implements _$SkuCopyWith<$Res> {
  __$SkuCopyWithImpl(this._self, this._then);

  final _Sku _self;
  final $Res Function(_Sku) _then;

/// Create a copy of Sku
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? values = null,Object? price = null,Object? oldPrice = freezed,Object? stock = null,}) {
  return _then(_Sku(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,values: null == values ? _self._values : values // ignore: cast_nullable_to_non_nullable
as Map<String, String>,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,oldPrice: freezed == oldPrice ? _self.oldPrice : oldPrice // ignore: cast_nullable_to_non_nullable
as int?,stock: null == stock ? _self.stock : stock // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
