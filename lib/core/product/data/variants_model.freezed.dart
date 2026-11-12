// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'variants_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VariantsModel {

 List<VariantPropertyModel> get properties; List<VariantSkuModel> get skus;
/// Create a copy of VariantsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VariantsModelCopyWith<VariantsModel> get copyWith => _$VariantsModelCopyWithImpl<VariantsModel>(this as VariantsModel, _$identity);

  /// Serializes this VariantsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VariantsModel&&const DeepCollectionEquality().equals(other.properties, properties)&&const DeepCollectionEquality().equals(other.skus, skus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(properties),const DeepCollectionEquality().hash(skus));

@override
String toString() {
  return 'VariantsModel(properties: $properties, skus: $skus)';
}


}

/// @nodoc
abstract mixin class $VariantsModelCopyWith<$Res>  {
  factory $VariantsModelCopyWith(VariantsModel value, $Res Function(VariantsModel) _then) = _$VariantsModelCopyWithImpl;
@useResult
$Res call({
 List<VariantPropertyModel> properties, List<VariantSkuModel> skus
});




}
/// @nodoc
class _$VariantsModelCopyWithImpl<$Res>
    implements $VariantsModelCopyWith<$Res> {
  _$VariantsModelCopyWithImpl(this._self, this._then);

  final VariantsModel _self;
  final $Res Function(VariantsModel) _then;

/// Create a copy of VariantsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? properties = null,Object? skus = null,}) {
  return _then(_self.copyWith(
properties: null == properties ? _self.properties : properties // ignore: cast_nullable_to_non_nullable
as List<VariantPropertyModel>,skus: null == skus ? _self.skus : skus // ignore: cast_nullable_to_non_nullable
as List<VariantSkuModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [VariantsModel].
extension VariantsModelPatterns on VariantsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VariantsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VariantsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VariantsModel value)  $default,){
final _that = this;
switch (_that) {
case _VariantsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VariantsModel value)?  $default,){
final _that = this;
switch (_that) {
case _VariantsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<VariantPropertyModel> properties,  List<VariantSkuModel> skus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VariantsModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<VariantPropertyModel> properties,  List<VariantSkuModel> skus)  $default,) {final _that = this;
switch (_that) {
case _VariantsModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<VariantPropertyModel> properties,  List<VariantSkuModel> skus)?  $default,) {final _that = this;
switch (_that) {
case _VariantsModel() when $default != null:
return $default(_that.properties,_that.skus);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VariantsModel implements VariantsModel {
  const _VariantsModel({required final  List<VariantPropertyModel> properties, required final  List<VariantSkuModel> skus}): _properties = properties,_skus = skus;
  factory _VariantsModel.fromJson(Map<String, dynamic> json) => _$VariantsModelFromJson(json);

 final  List<VariantPropertyModel> _properties;
@override List<VariantPropertyModel> get properties {
  if (_properties is EqualUnmodifiableListView) return _properties;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_properties);
}

 final  List<VariantSkuModel> _skus;
@override List<VariantSkuModel> get skus {
  if (_skus is EqualUnmodifiableListView) return _skus;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_skus);
}


/// Create a copy of VariantsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VariantsModelCopyWith<_VariantsModel> get copyWith => __$VariantsModelCopyWithImpl<_VariantsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VariantsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VariantsModel&&const DeepCollectionEquality().equals(other._properties, _properties)&&const DeepCollectionEquality().equals(other._skus, _skus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_properties),const DeepCollectionEquality().hash(_skus));

@override
String toString() {
  return 'VariantsModel(properties: $properties, skus: $skus)';
}


}

/// @nodoc
abstract mixin class _$VariantsModelCopyWith<$Res> implements $VariantsModelCopyWith<$Res> {
  factory _$VariantsModelCopyWith(_VariantsModel value, $Res Function(_VariantsModel) _then) = __$VariantsModelCopyWithImpl;
@override @useResult
$Res call({
 List<VariantPropertyModel> properties, List<VariantSkuModel> skus
});




}
/// @nodoc
class __$VariantsModelCopyWithImpl<$Res>
    implements _$VariantsModelCopyWith<$Res> {
  __$VariantsModelCopyWithImpl(this._self, this._then);

  final _VariantsModel _self;
  final $Res Function(_VariantsModel) _then;

/// Create a copy of VariantsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? properties = null,Object? skus = null,}) {
  return _then(_VariantsModel(
properties: null == properties ? _self._properties : properties // ignore: cast_nullable_to_non_nullable
as List<VariantPropertyModel>,skus: null == skus ? _self._skus : skus // ignore: cast_nullable_to_non_nullable
as List<VariantSkuModel>,
  ));
}


}


/// @nodoc
mixin _$VariantPropertyModel {

 String get id; String get title; List<VariantValueModel> get values; bool get isSize;
/// Create a copy of VariantPropertyModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VariantPropertyModelCopyWith<VariantPropertyModel> get copyWith => _$VariantPropertyModelCopyWithImpl<VariantPropertyModel>(this as VariantPropertyModel, _$identity);

  /// Serializes this VariantPropertyModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VariantPropertyModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other.values, values)&&(identical(other.isSize, isSize) || other.isSize == isSize));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,const DeepCollectionEquality().hash(values),isSize);

@override
String toString() {
  return 'VariantPropertyModel(id: $id, title: $title, values: $values, isSize: $isSize)';
}


}

/// @nodoc
abstract mixin class $VariantPropertyModelCopyWith<$Res>  {
  factory $VariantPropertyModelCopyWith(VariantPropertyModel value, $Res Function(VariantPropertyModel) _then) = _$VariantPropertyModelCopyWithImpl;
@useResult
$Res call({
 String id, String title, List<VariantValueModel> values, bool isSize
});




}
/// @nodoc
class _$VariantPropertyModelCopyWithImpl<$Res>
    implements $VariantPropertyModelCopyWith<$Res> {
  _$VariantPropertyModelCopyWithImpl(this._self, this._then);

  final VariantPropertyModel _self;
  final $Res Function(VariantPropertyModel) _then;

/// Create a copy of VariantPropertyModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? values = null,Object? isSize = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,values: null == values ? _self.values : values // ignore: cast_nullable_to_non_nullable
as List<VariantValueModel>,isSize: null == isSize ? _self.isSize : isSize // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [VariantPropertyModel].
extension VariantPropertyModelPatterns on VariantPropertyModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VariantPropertyModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VariantPropertyModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VariantPropertyModel value)  $default,){
final _that = this;
switch (_that) {
case _VariantPropertyModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VariantPropertyModel value)?  $default,){
final _that = this;
switch (_that) {
case _VariantPropertyModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  List<VariantValueModel> values,  bool isSize)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VariantPropertyModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  List<VariantValueModel> values,  bool isSize)  $default,) {final _that = this;
switch (_that) {
case _VariantPropertyModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  List<VariantValueModel> values,  bool isSize)?  $default,) {final _that = this;
switch (_that) {
case _VariantPropertyModel() when $default != null:
return $default(_that.id,_that.title,_that.values,_that.isSize);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VariantPropertyModel implements VariantPropertyModel {
  const _VariantPropertyModel({required this.id, required this.title, required final  List<VariantValueModel> values, this.isSize = false}): _values = values;
  factory _VariantPropertyModel.fromJson(Map<String, dynamic> json) => _$VariantPropertyModelFromJson(json);

@override final  String id;
@override final  String title;
 final  List<VariantValueModel> _values;
@override List<VariantValueModel> get values {
  if (_values is EqualUnmodifiableListView) return _values;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_values);
}

@override@JsonKey() final  bool isSize;

/// Create a copy of VariantPropertyModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VariantPropertyModelCopyWith<_VariantPropertyModel> get copyWith => __$VariantPropertyModelCopyWithImpl<_VariantPropertyModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VariantPropertyModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VariantPropertyModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other._values, _values)&&(identical(other.isSize, isSize) || other.isSize == isSize));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,const DeepCollectionEquality().hash(_values),isSize);

@override
String toString() {
  return 'VariantPropertyModel(id: $id, title: $title, values: $values, isSize: $isSize)';
}


}

/// @nodoc
abstract mixin class _$VariantPropertyModelCopyWith<$Res> implements $VariantPropertyModelCopyWith<$Res> {
  factory _$VariantPropertyModelCopyWith(_VariantPropertyModel value, $Res Function(_VariantPropertyModel) _then) = __$VariantPropertyModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, List<VariantValueModel> values, bool isSize
});




}
/// @nodoc
class __$VariantPropertyModelCopyWithImpl<$Res>
    implements _$VariantPropertyModelCopyWith<$Res> {
  __$VariantPropertyModelCopyWithImpl(this._self, this._then);

  final _VariantPropertyModel _self;
  final $Res Function(_VariantPropertyModel) _then;

/// Create a copy of VariantPropertyModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? values = null,Object? isSize = null,}) {
  return _then(_VariantPropertyModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,values: null == values ? _self._values : values // ignore: cast_nullable_to_non_nullable
as List<VariantValueModel>,isSize: null == isSize ? _self.isSize : isSize // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$VariantValueModel {

 String get id; String get label; String? get imageUrl;
/// Create a copy of VariantValueModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VariantValueModelCopyWith<VariantValueModel> get copyWith => _$VariantValueModelCopyWithImpl<VariantValueModel>(this as VariantValueModel, _$identity);

  /// Serializes this VariantValueModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VariantValueModel&&(identical(other.id, id) || other.id == id)&&(identical(other.label, label) || other.label == label)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,label,imageUrl);

@override
String toString() {
  return 'VariantValueModel(id: $id, label: $label, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class $VariantValueModelCopyWith<$Res>  {
  factory $VariantValueModelCopyWith(VariantValueModel value, $Res Function(VariantValueModel) _then) = _$VariantValueModelCopyWithImpl;
@useResult
$Res call({
 String id, String label, String? imageUrl
});




}
/// @nodoc
class _$VariantValueModelCopyWithImpl<$Res>
    implements $VariantValueModelCopyWith<$Res> {
  _$VariantValueModelCopyWithImpl(this._self, this._then);

  final VariantValueModel _self;
  final $Res Function(VariantValueModel) _then;

/// Create a copy of VariantValueModel
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


/// Adds pattern-matching-related methods to [VariantValueModel].
extension VariantValueModelPatterns on VariantValueModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VariantValueModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VariantValueModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VariantValueModel value)  $default,){
final _that = this;
switch (_that) {
case _VariantValueModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VariantValueModel value)?  $default,){
final _that = this;
switch (_that) {
case _VariantValueModel() when $default != null:
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
case _VariantValueModel() when $default != null:
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
case _VariantValueModel():
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
case _VariantValueModel() when $default != null:
return $default(_that.id,_that.label,_that.imageUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VariantValueModel implements VariantValueModel {
  const _VariantValueModel({required this.id, required this.label, this.imageUrl});
  factory _VariantValueModel.fromJson(Map<String, dynamic> json) => _$VariantValueModelFromJson(json);

@override final  String id;
@override final  String label;
@override final  String? imageUrl;

/// Create a copy of VariantValueModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VariantValueModelCopyWith<_VariantValueModel> get copyWith => __$VariantValueModelCopyWithImpl<_VariantValueModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VariantValueModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VariantValueModel&&(identical(other.id, id) || other.id == id)&&(identical(other.label, label) || other.label == label)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,label,imageUrl);

@override
String toString() {
  return 'VariantValueModel(id: $id, label: $label, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class _$VariantValueModelCopyWith<$Res> implements $VariantValueModelCopyWith<$Res> {
  factory _$VariantValueModelCopyWith(_VariantValueModel value, $Res Function(_VariantValueModel) _then) = __$VariantValueModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String label, String? imageUrl
});




}
/// @nodoc
class __$VariantValueModelCopyWithImpl<$Res>
    implements _$VariantValueModelCopyWith<$Res> {
  __$VariantValueModelCopyWithImpl(this._self, this._then);

  final _VariantValueModel _self;
  final $Res Function(_VariantValueModel) _then;

/// Create a copy of VariantValueModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? label = null,Object? imageUrl = freezed,}) {
  return _then(_VariantValueModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$VariantSkuModel {

 String get id; Map<String, String> get values; int get price; int? get oldPrice; int get stock;
/// Create a copy of VariantSkuModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VariantSkuModelCopyWith<VariantSkuModel> get copyWith => _$VariantSkuModelCopyWithImpl<VariantSkuModel>(this as VariantSkuModel, _$identity);

  /// Serializes this VariantSkuModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VariantSkuModel&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.values, values)&&(identical(other.price, price) || other.price == price)&&(identical(other.oldPrice, oldPrice) || other.oldPrice == oldPrice)&&(identical(other.stock, stock) || other.stock == stock));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(values),price,oldPrice,stock);

@override
String toString() {
  return 'VariantSkuModel(id: $id, values: $values, price: $price, oldPrice: $oldPrice, stock: $stock)';
}


}

/// @nodoc
abstract mixin class $VariantSkuModelCopyWith<$Res>  {
  factory $VariantSkuModelCopyWith(VariantSkuModel value, $Res Function(VariantSkuModel) _then) = _$VariantSkuModelCopyWithImpl;
@useResult
$Res call({
 String id, Map<String, String> values, int price, int? oldPrice, int stock
});




}
/// @nodoc
class _$VariantSkuModelCopyWithImpl<$Res>
    implements $VariantSkuModelCopyWith<$Res> {
  _$VariantSkuModelCopyWithImpl(this._self, this._then);

  final VariantSkuModel _self;
  final $Res Function(VariantSkuModel) _then;

/// Create a copy of VariantSkuModel
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


/// Adds pattern-matching-related methods to [VariantSkuModel].
extension VariantSkuModelPatterns on VariantSkuModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VariantSkuModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VariantSkuModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VariantSkuModel value)  $default,){
final _that = this;
switch (_that) {
case _VariantSkuModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VariantSkuModel value)?  $default,){
final _that = this;
switch (_that) {
case _VariantSkuModel() when $default != null:
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
case _VariantSkuModel() when $default != null:
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
case _VariantSkuModel():
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
case _VariantSkuModel() when $default != null:
return $default(_that.id,_that.values,_that.price,_that.oldPrice,_that.stock);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VariantSkuModel implements VariantSkuModel {
  const _VariantSkuModel({required this.id, required final  Map<String, String> values, required this.price, this.oldPrice, required this.stock}): _values = values;
  factory _VariantSkuModel.fromJson(Map<String, dynamic> json) => _$VariantSkuModelFromJson(json);

@override final  String id;
 final  Map<String, String> _values;
@override Map<String, String> get values {
  if (_values is EqualUnmodifiableMapView) return _values;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_values);
}

@override final  int price;
@override final  int? oldPrice;
@override final  int stock;

/// Create a copy of VariantSkuModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VariantSkuModelCopyWith<_VariantSkuModel> get copyWith => __$VariantSkuModelCopyWithImpl<_VariantSkuModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VariantSkuModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VariantSkuModel&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._values, _values)&&(identical(other.price, price) || other.price == price)&&(identical(other.oldPrice, oldPrice) || other.oldPrice == oldPrice)&&(identical(other.stock, stock) || other.stock == stock));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_values),price,oldPrice,stock);

@override
String toString() {
  return 'VariantSkuModel(id: $id, values: $values, price: $price, oldPrice: $oldPrice, stock: $stock)';
}


}

/// @nodoc
abstract mixin class _$VariantSkuModelCopyWith<$Res> implements $VariantSkuModelCopyWith<$Res> {
  factory _$VariantSkuModelCopyWith(_VariantSkuModel value, $Res Function(_VariantSkuModel) _then) = __$VariantSkuModelCopyWithImpl;
@override @useResult
$Res call({
 String id, Map<String, String> values, int price, int? oldPrice, int stock
});




}
/// @nodoc
class __$VariantSkuModelCopyWithImpl<$Res>
    implements _$VariantSkuModelCopyWith<$Res> {
  __$VariantSkuModelCopyWithImpl(this._self, this._then);

  final _VariantSkuModel _self;
  final $Res Function(_VariantSkuModel) _then;

/// Create a copy of VariantSkuModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? values = null,Object? price = null,Object? oldPrice = freezed,Object? stock = null,}) {
  return _then(_VariantSkuModel(
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
