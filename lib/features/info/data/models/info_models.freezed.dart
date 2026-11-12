// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'info_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InfoArticleModel {

 String get title; String get html;
/// Create a copy of InfoArticleModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InfoArticleModelCopyWith<InfoArticleModel> get copyWith => _$InfoArticleModelCopyWithImpl<InfoArticleModel>(this as InfoArticleModel, _$identity);

  /// Serializes this InfoArticleModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InfoArticleModel&&(identical(other.title, title) || other.title == title)&&(identical(other.html, html) || other.html == html));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,html);

@override
String toString() {
  return 'InfoArticleModel(title: $title, html: $html)';
}


}

/// @nodoc
abstract mixin class $InfoArticleModelCopyWith<$Res>  {
  factory $InfoArticleModelCopyWith(InfoArticleModel value, $Res Function(InfoArticleModel) _then) = _$InfoArticleModelCopyWithImpl;
@useResult
$Res call({
 String title, String html
});




}
/// @nodoc
class _$InfoArticleModelCopyWithImpl<$Res>
    implements $InfoArticleModelCopyWith<$Res> {
  _$InfoArticleModelCopyWithImpl(this._self, this._then);

  final InfoArticleModel _self;
  final $Res Function(InfoArticleModel) _then;

/// Create a copy of InfoArticleModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? html = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,html: null == html ? _self.html : html // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [InfoArticleModel].
extension InfoArticleModelPatterns on InfoArticleModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InfoArticleModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InfoArticleModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InfoArticleModel value)  $default,){
final _that = this;
switch (_that) {
case _InfoArticleModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InfoArticleModel value)?  $default,){
final _that = this;
switch (_that) {
case _InfoArticleModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String html)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InfoArticleModel() when $default != null:
return $default(_that.title,_that.html);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String html)  $default,) {final _that = this;
switch (_that) {
case _InfoArticleModel():
return $default(_that.title,_that.html);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String html)?  $default,) {final _that = this;
switch (_that) {
case _InfoArticleModel() when $default != null:
return $default(_that.title,_that.html);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InfoArticleModel implements InfoArticleModel {
  const _InfoArticleModel({required this.title, required this.html});
  factory _InfoArticleModel.fromJson(Map<String, dynamic> json) => _$InfoArticleModelFromJson(json);

@override final  String title;
@override final  String html;

/// Create a copy of InfoArticleModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InfoArticleModelCopyWith<_InfoArticleModel> get copyWith => __$InfoArticleModelCopyWithImpl<_InfoArticleModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InfoArticleModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InfoArticleModel&&(identical(other.title, title) || other.title == title)&&(identical(other.html, html) || other.html == html));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,html);

@override
String toString() {
  return 'InfoArticleModel(title: $title, html: $html)';
}


}

/// @nodoc
abstract mixin class _$InfoArticleModelCopyWith<$Res> implements $InfoArticleModelCopyWith<$Res> {
  factory _$InfoArticleModelCopyWith(_InfoArticleModel value, $Res Function(_InfoArticleModel) _then) = __$InfoArticleModelCopyWithImpl;
@override @useResult
$Res call({
 String title, String html
});




}
/// @nodoc
class __$InfoArticleModelCopyWithImpl<$Res>
    implements _$InfoArticleModelCopyWith<$Res> {
  __$InfoArticleModelCopyWithImpl(this._self, this._then);

  final _InfoArticleModel _self;
  final $Res Function(_InfoArticleModel) _then;

/// Create a copy of InfoArticleModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? html = null,}) {
  return _then(_InfoArticleModel(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,html: null == html ? _self.html : html // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$DeliveryTermsModel {

 List<DeliveryTypeModel> get types; List<RegionTariffModel> get tariffs; String get html;
/// Create a copy of DeliveryTermsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeliveryTermsModelCopyWith<DeliveryTermsModel> get copyWith => _$DeliveryTermsModelCopyWithImpl<DeliveryTermsModel>(this as DeliveryTermsModel, _$identity);

  /// Serializes this DeliveryTermsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeliveryTermsModel&&const DeepCollectionEquality().equals(other.types, types)&&const DeepCollectionEquality().equals(other.tariffs, tariffs)&&(identical(other.html, html) || other.html == html));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(types),const DeepCollectionEquality().hash(tariffs),html);

@override
String toString() {
  return 'DeliveryTermsModel(types: $types, tariffs: $tariffs, html: $html)';
}


}

/// @nodoc
abstract mixin class $DeliveryTermsModelCopyWith<$Res>  {
  factory $DeliveryTermsModelCopyWith(DeliveryTermsModel value, $Res Function(DeliveryTermsModel) _then) = _$DeliveryTermsModelCopyWithImpl;
@useResult
$Res call({
 List<DeliveryTypeModel> types, List<RegionTariffModel> tariffs, String html
});




}
/// @nodoc
class _$DeliveryTermsModelCopyWithImpl<$Res>
    implements $DeliveryTermsModelCopyWith<$Res> {
  _$DeliveryTermsModelCopyWithImpl(this._self, this._then);

  final DeliveryTermsModel _self;
  final $Res Function(DeliveryTermsModel) _then;

/// Create a copy of DeliveryTermsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? types = null,Object? tariffs = null,Object? html = null,}) {
  return _then(_self.copyWith(
types: null == types ? _self.types : types // ignore: cast_nullable_to_non_nullable
as List<DeliveryTypeModel>,tariffs: null == tariffs ? _self.tariffs : tariffs // ignore: cast_nullable_to_non_nullable
as List<RegionTariffModel>,html: null == html ? _self.html : html // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DeliveryTermsModel].
extension DeliveryTermsModelPatterns on DeliveryTermsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeliveryTermsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeliveryTermsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeliveryTermsModel value)  $default,){
final _that = this;
switch (_that) {
case _DeliveryTermsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeliveryTermsModel value)?  $default,){
final _that = this;
switch (_that) {
case _DeliveryTermsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<DeliveryTypeModel> types,  List<RegionTariffModel> tariffs,  String html)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeliveryTermsModel() when $default != null:
return $default(_that.types,_that.tariffs,_that.html);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<DeliveryTypeModel> types,  List<RegionTariffModel> tariffs,  String html)  $default,) {final _that = this;
switch (_that) {
case _DeliveryTermsModel():
return $default(_that.types,_that.tariffs,_that.html);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<DeliveryTypeModel> types,  List<RegionTariffModel> tariffs,  String html)?  $default,) {final _that = this;
switch (_that) {
case _DeliveryTermsModel() when $default != null:
return $default(_that.types,_that.tariffs,_that.html);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeliveryTermsModel implements DeliveryTermsModel {
  const _DeliveryTermsModel({required final  List<DeliveryTypeModel> types, required final  List<RegionTariffModel> tariffs, required this.html}): _types = types,_tariffs = tariffs;
  factory _DeliveryTermsModel.fromJson(Map<String, dynamic> json) => _$DeliveryTermsModelFromJson(json);

 final  List<DeliveryTypeModel> _types;
@override List<DeliveryTypeModel> get types {
  if (_types is EqualUnmodifiableListView) return _types;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_types);
}

 final  List<RegionTariffModel> _tariffs;
@override List<RegionTariffModel> get tariffs {
  if (_tariffs is EqualUnmodifiableListView) return _tariffs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tariffs);
}

@override final  String html;

/// Create a copy of DeliveryTermsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeliveryTermsModelCopyWith<_DeliveryTermsModel> get copyWith => __$DeliveryTermsModelCopyWithImpl<_DeliveryTermsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeliveryTermsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeliveryTermsModel&&const DeepCollectionEquality().equals(other._types, _types)&&const DeepCollectionEquality().equals(other._tariffs, _tariffs)&&(identical(other.html, html) || other.html == html));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_types),const DeepCollectionEquality().hash(_tariffs),html);

@override
String toString() {
  return 'DeliveryTermsModel(types: $types, tariffs: $tariffs, html: $html)';
}


}

/// @nodoc
abstract mixin class _$DeliveryTermsModelCopyWith<$Res> implements $DeliveryTermsModelCopyWith<$Res> {
  factory _$DeliveryTermsModelCopyWith(_DeliveryTermsModel value, $Res Function(_DeliveryTermsModel) _then) = __$DeliveryTermsModelCopyWithImpl;
@override @useResult
$Res call({
 List<DeliveryTypeModel> types, List<RegionTariffModel> tariffs, String html
});




}
/// @nodoc
class __$DeliveryTermsModelCopyWithImpl<$Res>
    implements _$DeliveryTermsModelCopyWith<$Res> {
  __$DeliveryTermsModelCopyWithImpl(this._self, this._then);

  final _DeliveryTermsModel _self;
  final $Res Function(_DeliveryTermsModel) _then;

/// Create a copy of DeliveryTermsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? types = null,Object? tariffs = null,Object? html = null,}) {
  return _then(_DeliveryTermsModel(
types: null == types ? _self._types : types // ignore: cast_nullable_to_non_nullable
as List<DeliveryTypeModel>,tariffs: null == tariffs ? _self._tariffs : tariffs // ignore: cast_nullable_to_non_nullable
as List<RegionTariffModel>,html: null == html ? _self.html : html // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$DeliveryTypeModel {

 String get type; String get name; String get term; String get minWeight;
/// Create a copy of DeliveryTypeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeliveryTypeModelCopyWith<DeliveryTypeModel> get copyWith => _$DeliveryTypeModelCopyWithImpl<DeliveryTypeModel>(this as DeliveryTypeModel, _$identity);

  /// Serializes this DeliveryTypeModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeliveryTypeModel&&(identical(other.type, type) || other.type == type)&&(identical(other.name, name) || other.name == name)&&(identical(other.term, term) || other.term == term)&&(identical(other.minWeight, minWeight) || other.minWeight == minWeight));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,name,term,minWeight);

@override
String toString() {
  return 'DeliveryTypeModel(type: $type, name: $name, term: $term, minWeight: $minWeight)';
}


}

/// @nodoc
abstract mixin class $DeliveryTypeModelCopyWith<$Res>  {
  factory $DeliveryTypeModelCopyWith(DeliveryTypeModel value, $Res Function(DeliveryTypeModel) _then) = _$DeliveryTypeModelCopyWithImpl;
@useResult
$Res call({
 String type, String name, String term, String minWeight
});




}
/// @nodoc
class _$DeliveryTypeModelCopyWithImpl<$Res>
    implements $DeliveryTypeModelCopyWith<$Res> {
  _$DeliveryTypeModelCopyWithImpl(this._self, this._then);

  final DeliveryTypeModel _self;
  final $Res Function(DeliveryTypeModel) _then;

/// Create a copy of DeliveryTypeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? name = null,Object? term = null,Object? minWeight = null,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,term: null == term ? _self.term : term // ignore: cast_nullable_to_non_nullable
as String,minWeight: null == minWeight ? _self.minWeight : minWeight // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DeliveryTypeModel].
extension DeliveryTypeModelPatterns on DeliveryTypeModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeliveryTypeModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeliveryTypeModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeliveryTypeModel value)  $default,){
final _that = this;
switch (_that) {
case _DeliveryTypeModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeliveryTypeModel value)?  $default,){
final _that = this;
switch (_that) {
case _DeliveryTypeModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String type,  String name,  String term,  String minWeight)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeliveryTypeModel() when $default != null:
return $default(_that.type,_that.name,_that.term,_that.minWeight);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String type,  String name,  String term,  String minWeight)  $default,) {final _that = this;
switch (_that) {
case _DeliveryTypeModel():
return $default(_that.type,_that.name,_that.term,_that.minWeight);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String type,  String name,  String term,  String minWeight)?  $default,) {final _that = this;
switch (_that) {
case _DeliveryTypeModel() when $default != null:
return $default(_that.type,_that.name,_that.term,_that.minWeight);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeliveryTypeModel implements DeliveryTypeModel {
  const _DeliveryTypeModel({required this.type, required this.name, required this.term, required this.minWeight});
  factory _DeliveryTypeModel.fromJson(Map<String, dynamic> json) => _$DeliveryTypeModelFromJson(json);

@override final  String type;
@override final  String name;
@override final  String term;
@override final  String minWeight;

/// Create a copy of DeliveryTypeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeliveryTypeModelCopyWith<_DeliveryTypeModel> get copyWith => __$DeliveryTypeModelCopyWithImpl<_DeliveryTypeModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeliveryTypeModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeliveryTypeModel&&(identical(other.type, type) || other.type == type)&&(identical(other.name, name) || other.name == name)&&(identical(other.term, term) || other.term == term)&&(identical(other.minWeight, minWeight) || other.minWeight == minWeight));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,name,term,minWeight);

@override
String toString() {
  return 'DeliveryTypeModel(type: $type, name: $name, term: $term, minWeight: $minWeight)';
}


}

/// @nodoc
abstract mixin class _$DeliveryTypeModelCopyWith<$Res> implements $DeliveryTypeModelCopyWith<$Res> {
  factory _$DeliveryTypeModelCopyWith(_DeliveryTypeModel value, $Res Function(_DeliveryTypeModel) _then) = __$DeliveryTypeModelCopyWithImpl;
@override @useResult
$Res call({
 String type, String name, String term, String minWeight
});




}
/// @nodoc
class __$DeliveryTypeModelCopyWithImpl<$Res>
    implements _$DeliveryTypeModelCopyWith<$Res> {
  __$DeliveryTypeModelCopyWithImpl(this._self, this._then);

  final _DeliveryTypeModel _self;
  final $Res Function(_DeliveryTypeModel) _then;

/// Create a copy of DeliveryTypeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? name = null,Object? term = null,Object? minWeight = null,}) {
  return _then(_DeliveryTypeModel(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,term: null == term ? _self.term : term // ignore: cast_nullable_to_non_nullable
as String,minWeight: null == minWeight ? _self.minWeight : minWeight // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$RegionTariffModel {

 String get region; Map<String, int> get perKg;
/// Create a copy of RegionTariffModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegionTariffModelCopyWith<RegionTariffModel> get copyWith => _$RegionTariffModelCopyWithImpl<RegionTariffModel>(this as RegionTariffModel, _$identity);

  /// Serializes this RegionTariffModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegionTariffModel&&(identical(other.region, region) || other.region == region)&&const DeepCollectionEquality().equals(other.perKg, perKg));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,region,const DeepCollectionEquality().hash(perKg));

@override
String toString() {
  return 'RegionTariffModel(region: $region, perKg: $perKg)';
}


}

/// @nodoc
abstract mixin class $RegionTariffModelCopyWith<$Res>  {
  factory $RegionTariffModelCopyWith(RegionTariffModel value, $Res Function(RegionTariffModel) _then) = _$RegionTariffModelCopyWithImpl;
@useResult
$Res call({
 String region, Map<String, int> perKg
});




}
/// @nodoc
class _$RegionTariffModelCopyWithImpl<$Res>
    implements $RegionTariffModelCopyWith<$Res> {
  _$RegionTariffModelCopyWithImpl(this._self, this._then);

  final RegionTariffModel _self;
  final $Res Function(RegionTariffModel) _then;

/// Create a copy of RegionTariffModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? region = null,Object? perKg = null,}) {
  return _then(_self.copyWith(
region: null == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as String,perKg: null == perKg ? _self.perKg : perKg // ignore: cast_nullable_to_non_nullable
as Map<String, int>,
  ));
}

}


/// Adds pattern-matching-related methods to [RegionTariffModel].
extension RegionTariffModelPatterns on RegionTariffModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RegionTariffModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RegionTariffModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RegionTariffModel value)  $default,){
final _that = this;
switch (_that) {
case _RegionTariffModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RegionTariffModel value)?  $default,){
final _that = this;
switch (_that) {
case _RegionTariffModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String region,  Map<String, int> perKg)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RegionTariffModel() when $default != null:
return $default(_that.region,_that.perKg);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String region,  Map<String, int> perKg)  $default,) {final _that = this;
switch (_that) {
case _RegionTariffModel():
return $default(_that.region,_that.perKg);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String region,  Map<String, int> perKg)?  $default,) {final _that = this;
switch (_that) {
case _RegionTariffModel() when $default != null:
return $default(_that.region,_that.perKg);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RegionTariffModel implements RegionTariffModel {
  const _RegionTariffModel({required this.region, required final  Map<String, int> perKg}): _perKg = perKg;
  factory _RegionTariffModel.fromJson(Map<String, dynamic> json) => _$RegionTariffModelFromJson(json);

@override final  String region;
 final  Map<String, int> _perKg;
@override Map<String, int> get perKg {
  if (_perKg is EqualUnmodifiableMapView) return _perKg;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_perKg);
}


/// Create a copy of RegionTariffModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegionTariffModelCopyWith<_RegionTariffModel> get copyWith => __$RegionTariffModelCopyWithImpl<_RegionTariffModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RegionTariffModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegionTariffModel&&(identical(other.region, region) || other.region == region)&&const DeepCollectionEquality().equals(other._perKg, _perKg));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,region,const DeepCollectionEquality().hash(_perKg));

@override
String toString() {
  return 'RegionTariffModel(region: $region, perKg: $perKg)';
}


}

/// @nodoc
abstract mixin class _$RegionTariffModelCopyWith<$Res> implements $RegionTariffModelCopyWith<$Res> {
  factory _$RegionTariffModelCopyWith(_RegionTariffModel value, $Res Function(_RegionTariffModel) _then) = __$RegionTariffModelCopyWithImpl;
@override @useResult
$Res call({
 String region, Map<String, int> perKg
});




}
/// @nodoc
class __$RegionTariffModelCopyWithImpl<$Res>
    implements _$RegionTariffModelCopyWith<$Res> {
  __$RegionTariffModelCopyWithImpl(this._self, this._then);

  final _RegionTariffModel _self;
  final $Res Function(_RegionTariffModel) _then;

/// Create a copy of RegionTariffModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? region = null,Object? perKg = null,}) {
  return _then(_RegionTariffModel(
region: null == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as String,perKg: null == perKg ? _self._perKg : perKg // ignore: cast_nullable_to_non_nullable
as Map<String, int>,
  ));
}


}


/// @nodoc
mixin _$FaqModel {

 List<FaqSectionModel> get sections;
/// Create a copy of FaqModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FaqModelCopyWith<FaqModel> get copyWith => _$FaqModelCopyWithImpl<FaqModel>(this as FaqModel, _$identity);

  /// Serializes this FaqModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FaqModel&&const DeepCollectionEquality().equals(other.sections, sections));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(sections));

@override
String toString() {
  return 'FaqModel(sections: $sections)';
}


}

/// @nodoc
abstract mixin class $FaqModelCopyWith<$Res>  {
  factory $FaqModelCopyWith(FaqModel value, $Res Function(FaqModel) _then) = _$FaqModelCopyWithImpl;
@useResult
$Res call({
 List<FaqSectionModel> sections
});




}
/// @nodoc
class _$FaqModelCopyWithImpl<$Res>
    implements $FaqModelCopyWith<$Res> {
  _$FaqModelCopyWithImpl(this._self, this._then);

  final FaqModel _self;
  final $Res Function(FaqModel) _then;

/// Create a copy of FaqModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sections = null,}) {
  return _then(_self.copyWith(
sections: null == sections ? _self.sections : sections // ignore: cast_nullable_to_non_nullable
as List<FaqSectionModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [FaqModel].
extension FaqModelPatterns on FaqModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FaqModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FaqModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FaqModel value)  $default,){
final _that = this;
switch (_that) {
case _FaqModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FaqModel value)?  $default,){
final _that = this;
switch (_that) {
case _FaqModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<FaqSectionModel> sections)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FaqModel() when $default != null:
return $default(_that.sections);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<FaqSectionModel> sections)  $default,) {final _that = this;
switch (_that) {
case _FaqModel():
return $default(_that.sections);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<FaqSectionModel> sections)?  $default,) {final _that = this;
switch (_that) {
case _FaqModel() when $default != null:
return $default(_that.sections);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FaqModel implements FaqModel {
  const _FaqModel({required final  List<FaqSectionModel> sections}): _sections = sections;
  factory _FaqModel.fromJson(Map<String, dynamic> json) => _$FaqModelFromJson(json);

 final  List<FaqSectionModel> _sections;
@override List<FaqSectionModel> get sections {
  if (_sections is EqualUnmodifiableListView) return _sections;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sections);
}


/// Create a copy of FaqModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FaqModelCopyWith<_FaqModel> get copyWith => __$FaqModelCopyWithImpl<_FaqModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FaqModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FaqModel&&const DeepCollectionEquality().equals(other._sections, _sections));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_sections));

@override
String toString() {
  return 'FaqModel(sections: $sections)';
}


}

/// @nodoc
abstract mixin class _$FaqModelCopyWith<$Res> implements $FaqModelCopyWith<$Res> {
  factory _$FaqModelCopyWith(_FaqModel value, $Res Function(_FaqModel) _then) = __$FaqModelCopyWithImpl;
@override @useResult
$Res call({
 List<FaqSectionModel> sections
});




}
/// @nodoc
class __$FaqModelCopyWithImpl<$Res>
    implements _$FaqModelCopyWith<$Res> {
  __$FaqModelCopyWithImpl(this._self, this._then);

  final _FaqModel _self;
  final $Res Function(_FaqModel) _then;

/// Create a copy of FaqModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sections = null,}) {
  return _then(_FaqModel(
sections: null == sections ? _self._sections : sections // ignore: cast_nullable_to_non_nullable
as List<FaqSectionModel>,
  ));
}


}


/// @nodoc
mixin _$FaqSectionModel {

 String get title; List<FaqItemModel> get items;
/// Create a copy of FaqSectionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FaqSectionModelCopyWith<FaqSectionModel> get copyWith => _$FaqSectionModelCopyWithImpl<FaqSectionModel>(this as FaqSectionModel, _$identity);

  /// Serializes this FaqSectionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FaqSectionModel&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'FaqSectionModel(title: $title, items: $items)';
}


}

/// @nodoc
abstract mixin class $FaqSectionModelCopyWith<$Res>  {
  factory $FaqSectionModelCopyWith(FaqSectionModel value, $Res Function(FaqSectionModel) _then) = _$FaqSectionModelCopyWithImpl;
@useResult
$Res call({
 String title, List<FaqItemModel> items
});




}
/// @nodoc
class _$FaqSectionModelCopyWithImpl<$Res>
    implements $FaqSectionModelCopyWith<$Res> {
  _$FaqSectionModelCopyWithImpl(this._self, this._then);

  final FaqSectionModel _self;
  final $Res Function(FaqSectionModel) _then;

/// Create a copy of FaqSectionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? items = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<FaqItemModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [FaqSectionModel].
extension FaqSectionModelPatterns on FaqSectionModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FaqSectionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FaqSectionModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FaqSectionModel value)  $default,){
final _that = this;
switch (_that) {
case _FaqSectionModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FaqSectionModel value)?  $default,){
final _that = this;
switch (_that) {
case _FaqSectionModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  List<FaqItemModel> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FaqSectionModel() when $default != null:
return $default(_that.title,_that.items);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  List<FaqItemModel> items)  $default,) {final _that = this;
switch (_that) {
case _FaqSectionModel():
return $default(_that.title,_that.items);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  List<FaqItemModel> items)?  $default,) {final _that = this;
switch (_that) {
case _FaqSectionModel() when $default != null:
return $default(_that.title,_that.items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FaqSectionModel implements FaqSectionModel {
  const _FaqSectionModel({required this.title, required final  List<FaqItemModel> items}): _items = items;
  factory _FaqSectionModel.fromJson(Map<String, dynamic> json) => _$FaqSectionModelFromJson(json);

@override final  String title;
 final  List<FaqItemModel> _items;
@override List<FaqItemModel> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of FaqSectionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FaqSectionModelCopyWith<_FaqSectionModel> get copyWith => __$FaqSectionModelCopyWithImpl<_FaqSectionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FaqSectionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FaqSectionModel&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other._items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'FaqSectionModel(title: $title, items: $items)';
}


}

/// @nodoc
abstract mixin class _$FaqSectionModelCopyWith<$Res> implements $FaqSectionModelCopyWith<$Res> {
  factory _$FaqSectionModelCopyWith(_FaqSectionModel value, $Res Function(_FaqSectionModel) _then) = __$FaqSectionModelCopyWithImpl;
@override @useResult
$Res call({
 String title, List<FaqItemModel> items
});




}
/// @nodoc
class __$FaqSectionModelCopyWithImpl<$Res>
    implements _$FaqSectionModelCopyWith<$Res> {
  __$FaqSectionModelCopyWithImpl(this._self, this._then);

  final _FaqSectionModel _self;
  final $Res Function(_FaqSectionModel) _then;

/// Create a copy of FaqSectionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? items = null,}) {
  return _then(_FaqSectionModel(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<FaqItemModel>,
  ));
}


}


/// @nodoc
mixin _$FaqItemModel {

 String get id; String get question; String get answer;
/// Create a copy of FaqItemModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FaqItemModelCopyWith<FaqItemModel> get copyWith => _$FaqItemModelCopyWithImpl<FaqItemModel>(this as FaqItemModel, _$identity);

  /// Serializes this FaqItemModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FaqItemModel&&(identical(other.id, id) || other.id == id)&&(identical(other.question, question) || other.question == question)&&(identical(other.answer, answer) || other.answer == answer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,question,answer);

@override
String toString() {
  return 'FaqItemModel(id: $id, question: $question, answer: $answer)';
}


}

/// @nodoc
abstract mixin class $FaqItemModelCopyWith<$Res>  {
  factory $FaqItemModelCopyWith(FaqItemModel value, $Res Function(FaqItemModel) _then) = _$FaqItemModelCopyWithImpl;
@useResult
$Res call({
 String id, String question, String answer
});




}
/// @nodoc
class _$FaqItemModelCopyWithImpl<$Res>
    implements $FaqItemModelCopyWith<$Res> {
  _$FaqItemModelCopyWithImpl(this._self, this._then);

  final FaqItemModel _self;
  final $Res Function(FaqItemModel) _then;

/// Create a copy of FaqItemModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? question = null,Object? answer = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,answer: null == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [FaqItemModel].
extension FaqItemModelPatterns on FaqItemModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FaqItemModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FaqItemModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FaqItemModel value)  $default,){
final _that = this;
switch (_that) {
case _FaqItemModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FaqItemModel value)?  $default,){
final _that = this;
switch (_that) {
case _FaqItemModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String question,  String answer)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FaqItemModel() when $default != null:
return $default(_that.id,_that.question,_that.answer);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String question,  String answer)  $default,) {final _that = this;
switch (_that) {
case _FaqItemModel():
return $default(_that.id,_that.question,_that.answer);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String question,  String answer)?  $default,) {final _that = this;
switch (_that) {
case _FaqItemModel() when $default != null:
return $default(_that.id,_that.question,_that.answer);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FaqItemModel implements FaqItemModel {
  const _FaqItemModel({required this.id, required this.question, required this.answer});
  factory _FaqItemModel.fromJson(Map<String, dynamic> json) => _$FaqItemModelFromJson(json);

@override final  String id;
@override final  String question;
@override final  String answer;

/// Create a copy of FaqItemModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FaqItemModelCopyWith<_FaqItemModel> get copyWith => __$FaqItemModelCopyWithImpl<_FaqItemModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FaqItemModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FaqItemModel&&(identical(other.id, id) || other.id == id)&&(identical(other.question, question) || other.question == question)&&(identical(other.answer, answer) || other.answer == answer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,question,answer);

@override
String toString() {
  return 'FaqItemModel(id: $id, question: $question, answer: $answer)';
}


}

/// @nodoc
abstract mixin class _$FaqItemModelCopyWith<$Res> implements $FaqItemModelCopyWith<$Res> {
  factory _$FaqItemModelCopyWith(_FaqItemModel value, $Res Function(_FaqItemModel) _then) = __$FaqItemModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String question, String answer
});




}
/// @nodoc
class __$FaqItemModelCopyWithImpl<$Res>
    implements _$FaqItemModelCopyWith<$Res> {
  __$FaqItemModelCopyWithImpl(this._self, this._then);

  final _FaqItemModel _self;
  final $Res Function(_FaqItemModel) _then;

/// Create a copy of FaqItemModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? question = null,Object? answer = null,}) {
  return _then(_FaqItemModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,answer: null == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$PickupPointsModel {

 List<PickupPointModel> get points;
/// Create a copy of PickupPointsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PickupPointsModelCopyWith<PickupPointsModel> get copyWith => _$PickupPointsModelCopyWithImpl<PickupPointsModel>(this as PickupPointsModel, _$identity);

  /// Serializes this PickupPointsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PickupPointsModel&&const DeepCollectionEquality().equals(other.points, points));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(points));

@override
String toString() {
  return 'PickupPointsModel(points: $points)';
}


}

/// @nodoc
abstract mixin class $PickupPointsModelCopyWith<$Res>  {
  factory $PickupPointsModelCopyWith(PickupPointsModel value, $Res Function(PickupPointsModel) _then) = _$PickupPointsModelCopyWithImpl;
@useResult
$Res call({
 List<PickupPointModel> points
});




}
/// @nodoc
class _$PickupPointsModelCopyWithImpl<$Res>
    implements $PickupPointsModelCopyWith<$Res> {
  _$PickupPointsModelCopyWithImpl(this._self, this._then);

  final PickupPointsModel _self;
  final $Res Function(PickupPointsModel) _then;

/// Create a copy of PickupPointsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? points = null,}) {
  return _then(_self.copyWith(
points: null == points ? _self.points : points // ignore: cast_nullable_to_non_nullable
as List<PickupPointModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [PickupPointsModel].
extension PickupPointsModelPatterns on PickupPointsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PickupPointsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PickupPointsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PickupPointsModel value)  $default,){
final _that = this;
switch (_that) {
case _PickupPointsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PickupPointsModel value)?  $default,){
final _that = this;
switch (_that) {
case _PickupPointsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<PickupPointModel> points)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PickupPointsModel() when $default != null:
return $default(_that.points);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<PickupPointModel> points)  $default,) {final _that = this;
switch (_that) {
case _PickupPointsModel():
return $default(_that.points);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<PickupPointModel> points)?  $default,) {final _that = this;
switch (_that) {
case _PickupPointsModel() when $default != null:
return $default(_that.points);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PickupPointsModel implements PickupPointsModel {
  const _PickupPointsModel({required final  List<PickupPointModel> points}): _points = points;
  factory _PickupPointsModel.fromJson(Map<String, dynamic> json) => _$PickupPointsModelFromJson(json);

 final  List<PickupPointModel> _points;
@override List<PickupPointModel> get points {
  if (_points is EqualUnmodifiableListView) return _points;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_points);
}


/// Create a copy of PickupPointsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PickupPointsModelCopyWith<_PickupPointsModel> get copyWith => __$PickupPointsModelCopyWithImpl<_PickupPointsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PickupPointsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PickupPointsModel&&const DeepCollectionEquality().equals(other._points, _points));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_points));

@override
String toString() {
  return 'PickupPointsModel(points: $points)';
}


}

/// @nodoc
abstract mixin class _$PickupPointsModelCopyWith<$Res> implements $PickupPointsModelCopyWith<$Res> {
  factory _$PickupPointsModelCopyWith(_PickupPointsModel value, $Res Function(_PickupPointsModel) _then) = __$PickupPointsModelCopyWithImpl;
@override @useResult
$Res call({
 List<PickupPointModel> points
});




}
/// @nodoc
class __$PickupPointsModelCopyWithImpl<$Res>
    implements _$PickupPointsModelCopyWith<$Res> {
  __$PickupPointsModelCopyWithImpl(this._self, this._then);

  final _PickupPointsModel _self;
  final $Res Function(_PickupPointsModel) _then;

/// Create a copy of PickupPointsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? points = null,}) {
  return _then(_PickupPointsModel(
points: null == points ? _self._points : points // ignore: cast_nullable_to_non_nullable
as List<PickupPointModel>,
  ));
}


}


/// @nodoc
mixin _$PickupPointModel {

 String get id; String get region; String get name; String get address; String get hours; String get phone;
/// Create a copy of PickupPointModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PickupPointModelCopyWith<PickupPointModel> get copyWith => _$PickupPointModelCopyWithImpl<PickupPointModel>(this as PickupPointModel, _$identity);

  /// Serializes this PickupPointModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PickupPointModel&&(identical(other.id, id) || other.id == id)&&(identical(other.region, region) || other.region == region)&&(identical(other.name, name) || other.name == name)&&(identical(other.address, address) || other.address == address)&&(identical(other.hours, hours) || other.hours == hours)&&(identical(other.phone, phone) || other.phone == phone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,region,name,address,hours,phone);

@override
String toString() {
  return 'PickupPointModel(id: $id, region: $region, name: $name, address: $address, hours: $hours, phone: $phone)';
}


}

/// @nodoc
abstract mixin class $PickupPointModelCopyWith<$Res>  {
  factory $PickupPointModelCopyWith(PickupPointModel value, $Res Function(PickupPointModel) _then) = _$PickupPointModelCopyWithImpl;
@useResult
$Res call({
 String id, String region, String name, String address, String hours, String phone
});




}
/// @nodoc
class _$PickupPointModelCopyWithImpl<$Res>
    implements $PickupPointModelCopyWith<$Res> {
  _$PickupPointModelCopyWithImpl(this._self, this._then);

  final PickupPointModel _self;
  final $Res Function(PickupPointModel) _then;

/// Create a copy of PickupPointModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? region = null,Object? name = null,Object? address = null,Object? hours = null,Object? phone = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,region: null == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,hours: null == hours ? _self.hours : hours // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PickupPointModel].
extension PickupPointModelPatterns on PickupPointModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PickupPointModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PickupPointModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PickupPointModel value)  $default,){
final _that = this;
switch (_that) {
case _PickupPointModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PickupPointModel value)?  $default,){
final _that = this;
switch (_that) {
case _PickupPointModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String region,  String name,  String address,  String hours,  String phone)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PickupPointModel() when $default != null:
return $default(_that.id,_that.region,_that.name,_that.address,_that.hours,_that.phone);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String region,  String name,  String address,  String hours,  String phone)  $default,) {final _that = this;
switch (_that) {
case _PickupPointModel():
return $default(_that.id,_that.region,_that.name,_that.address,_that.hours,_that.phone);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String region,  String name,  String address,  String hours,  String phone)?  $default,) {final _that = this;
switch (_that) {
case _PickupPointModel() when $default != null:
return $default(_that.id,_that.region,_that.name,_that.address,_that.hours,_that.phone);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PickupPointModel implements PickupPointModel {
  const _PickupPointModel({required this.id, required this.region, required this.name, required this.address, required this.hours, required this.phone});
  factory _PickupPointModel.fromJson(Map<String, dynamic> json) => _$PickupPointModelFromJson(json);

@override final  String id;
@override final  String region;
@override final  String name;
@override final  String address;
@override final  String hours;
@override final  String phone;

/// Create a copy of PickupPointModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PickupPointModelCopyWith<_PickupPointModel> get copyWith => __$PickupPointModelCopyWithImpl<_PickupPointModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PickupPointModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PickupPointModel&&(identical(other.id, id) || other.id == id)&&(identical(other.region, region) || other.region == region)&&(identical(other.name, name) || other.name == name)&&(identical(other.address, address) || other.address == address)&&(identical(other.hours, hours) || other.hours == hours)&&(identical(other.phone, phone) || other.phone == phone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,region,name,address,hours,phone);

@override
String toString() {
  return 'PickupPointModel(id: $id, region: $region, name: $name, address: $address, hours: $hours, phone: $phone)';
}


}

/// @nodoc
abstract mixin class _$PickupPointModelCopyWith<$Res> implements $PickupPointModelCopyWith<$Res> {
  factory _$PickupPointModelCopyWith(_PickupPointModel value, $Res Function(_PickupPointModel) _then) = __$PickupPointModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String region, String name, String address, String hours, String phone
});




}
/// @nodoc
class __$PickupPointModelCopyWithImpl<$Res>
    implements _$PickupPointModelCopyWith<$Res> {
  __$PickupPointModelCopyWithImpl(this._self, this._then);

  final _PickupPointModel _self;
  final $Res Function(_PickupPointModel) _then;

/// Create a copy of PickupPointModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? region = null,Object? name = null,Object? address = null,Object? hours = null,Object? phone = null,}) {
  return _then(_PickupPointModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,region: null == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,hours: null == hours ? _self.hours : hours // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ContactsModel {

 List<String> get phones; String get address; String get hours; String? get telegram; String? get whatsapp; String? get email;
/// Create a copy of ContactsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContactsModelCopyWith<ContactsModel> get copyWith => _$ContactsModelCopyWithImpl<ContactsModel>(this as ContactsModel, _$identity);

  /// Serializes this ContactsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContactsModel&&const DeepCollectionEquality().equals(other.phones, phones)&&(identical(other.address, address) || other.address == address)&&(identical(other.hours, hours) || other.hours == hours)&&(identical(other.telegram, telegram) || other.telegram == telegram)&&(identical(other.whatsapp, whatsapp) || other.whatsapp == whatsapp)&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(phones),address,hours,telegram,whatsapp,email);

@override
String toString() {
  return 'ContactsModel(phones: $phones, address: $address, hours: $hours, telegram: $telegram, whatsapp: $whatsapp, email: $email)';
}


}

/// @nodoc
abstract mixin class $ContactsModelCopyWith<$Res>  {
  factory $ContactsModelCopyWith(ContactsModel value, $Res Function(ContactsModel) _then) = _$ContactsModelCopyWithImpl;
@useResult
$Res call({
 List<String> phones, String address, String hours, String? telegram, String? whatsapp, String? email
});




}
/// @nodoc
class _$ContactsModelCopyWithImpl<$Res>
    implements $ContactsModelCopyWith<$Res> {
  _$ContactsModelCopyWithImpl(this._self, this._then);

  final ContactsModel _self;
  final $Res Function(ContactsModel) _then;

/// Create a copy of ContactsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? phones = null,Object? address = null,Object? hours = null,Object? telegram = freezed,Object? whatsapp = freezed,Object? email = freezed,}) {
  return _then(_self.copyWith(
phones: null == phones ? _self.phones : phones // ignore: cast_nullable_to_non_nullable
as List<String>,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,hours: null == hours ? _self.hours : hours // ignore: cast_nullable_to_non_nullable
as String,telegram: freezed == telegram ? _self.telegram : telegram // ignore: cast_nullable_to_non_nullable
as String?,whatsapp: freezed == whatsapp ? _self.whatsapp : whatsapp // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ContactsModel].
extension ContactsModelPatterns on ContactsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ContactsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ContactsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ContactsModel value)  $default,){
final _that = this;
switch (_that) {
case _ContactsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ContactsModel value)?  $default,){
final _that = this;
switch (_that) {
case _ContactsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> phones,  String address,  String hours,  String? telegram,  String? whatsapp,  String? email)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ContactsModel() when $default != null:
return $default(_that.phones,_that.address,_that.hours,_that.telegram,_that.whatsapp,_that.email);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> phones,  String address,  String hours,  String? telegram,  String? whatsapp,  String? email)  $default,) {final _that = this;
switch (_that) {
case _ContactsModel():
return $default(_that.phones,_that.address,_that.hours,_that.telegram,_that.whatsapp,_that.email);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> phones,  String address,  String hours,  String? telegram,  String? whatsapp,  String? email)?  $default,) {final _that = this;
switch (_that) {
case _ContactsModel() when $default != null:
return $default(_that.phones,_that.address,_that.hours,_that.telegram,_that.whatsapp,_that.email);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ContactsModel implements ContactsModel {
  const _ContactsModel({required final  List<String> phones, required this.address, required this.hours, this.telegram, this.whatsapp, this.email}): _phones = phones;
  factory _ContactsModel.fromJson(Map<String, dynamic> json) => _$ContactsModelFromJson(json);

 final  List<String> _phones;
@override List<String> get phones {
  if (_phones is EqualUnmodifiableListView) return _phones;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_phones);
}

@override final  String address;
@override final  String hours;
@override final  String? telegram;
@override final  String? whatsapp;
@override final  String? email;

/// Create a copy of ContactsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ContactsModelCopyWith<_ContactsModel> get copyWith => __$ContactsModelCopyWithImpl<_ContactsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ContactsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ContactsModel&&const DeepCollectionEquality().equals(other._phones, _phones)&&(identical(other.address, address) || other.address == address)&&(identical(other.hours, hours) || other.hours == hours)&&(identical(other.telegram, telegram) || other.telegram == telegram)&&(identical(other.whatsapp, whatsapp) || other.whatsapp == whatsapp)&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_phones),address,hours,telegram,whatsapp,email);

@override
String toString() {
  return 'ContactsModel(phones: $phones, address: $address, hours: $hours, telegram: $telegram, whatsapp: $whatsapp, email: $email)';
}


}

/// @nodoc
abstract mixin class _$ContactsModelCopyWith<$Res> implements $ContactsModelCopyWith<$Res> {
  factory _$ContactsModelCopyWith(_ContactsModel value, $Res Function(_ContactsModel) _then) = __$ContactsModelCopyWithImpl;
@override @useResult
$Res call({
 List<String> phones, String address, String hours, String? telegram, String? whatsapp, String? email
});




}
/// @nodoc
class __$ContactsModelCopyWithImpl<$Res>
    implements _$ContactsModelCopyWith<$Res> {
  __$ContactsModelCopyWithImpl(this._self, this._then);

  final _ContactsModel _self;
  final $Res Function(_ContactsModel) _then;

/// Create a copy of ContactsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? phones = null,Object? address = null,Object? hours = null,Object? telegram = freezed,Object? whatsapp = freezed,Object? email = freezed,}) {
  return _then(_ContactsModel(
phones: null == phones ? _self._phones : phones // ignore: cast_nullable_to_non_nullable
as List<String>,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,hours: null == hours ? _self.hours : hours // ignore: cast_nullable_to_non_nullable
as String,telegram: freezed == telegram ? _self.telegram : telegram // ignore: cast_nullable_to_non_nullable
as String?,whatsapp: freezed == whatsapp ? _self.whatsapp : whatsapp // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
