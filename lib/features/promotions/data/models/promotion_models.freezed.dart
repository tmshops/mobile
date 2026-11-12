// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'promotion_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PromotionModel {

 String get slug;/// discount, day_deal, bundle, free_delivery; others get a plain badge.
 String get type; String get title; String get subtitle; String get imageUrl; DateTime get endsAt;
/// Create a copy of PromotionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PromotionModelCopyWith<PromotionModel> get copyWith => _$PromotionModelCopyWithImpl<PromotionModel>(this as PromotionModel, _$identity);

  /// Serializes this PromotionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PromotionModel&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.endsAt, endsAt) || other.endsAt == endsAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,slug,type,title,subtitle,imageUrl,endsAt);

@override
String toString() {
  return 'PromotionModel(slug: $slug, type: $type, title: $title, subtitle: $subtitle, imageUrl: $imageUrl, endsAt: $endsAt)';
}


}

/// @nodoc
abstract mixin class $PromotionModelCopyWith<$Res>  {
  factory $PromotionModelCopyWith(PromotionModel value, $Res Function(PromotionModel) _then) = _$PromotionModelCopyWithImpl;
@useResult
$Res call({
 String slug, String type, String title, String subtitle, String imageUrl, DateTime endsAt
});




}
/// @nodoc
class _$PromotionModelCopyWithImpl<$Res>
    implements $PromotionModelCopyWith<$Res> {
  _$PromotionModelCopyWithImpl(this._self, this._then);

  final PromotionModel _self;
  final $Res Function(PromotionModel) _then;

/// Create a copy of PromotionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? slug = null,Object? type = null,Object? title = null,Object? subtitle = null,Object? imageUrl = null,Object? endsAt = null,}) {
  return _then(_self.copyWith(
slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subtitle: null == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,endsAt: null == endsAt ? _self.endsAt : endsAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [PromotionModel].
extension PromotionModelPatterns on PromotionModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PromotionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PromotionModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PromotionModel value)  $default,){
final _that = this;
switch (_that) {
case _PromotionModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PromotionModel value)?  $default,){
final _that = this;
switch (_that) {
case _PromotionModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String slug,  String type,  String title,  String subtitle,  String imageUrl,  DateTime endsAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PromotionModel() when $default != null:
return $default(_that.slug,_that.type,_that.title,_that.subtitle,_that.imageUrl,_that.endsAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String slug,  String type,  String title,  String subtitle,  String imageUrl,  DateTime endsAt)  $default,) {final _that = this;
switch (_that) {
case _PromotionModel():
return $default(_that.slug,_that.type,_that.title,_that.subtitle,_that.imageUrl,_that.endsAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String slug,  String type,  String title,  String subtitle,  String imageUrl,  DateTime endsAt)?  $default,) {final _that = this;
switch (_that) {
case _PromotionModel() when $default != null:
return $default(_that.slug,_that.type,_that.title,_that.subtitle,_that.imageUrl,_that.endsAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PromotionModel implements PromotionModel {
  const _PromotionModel({required this.slug, required this.type, required this.title, required this.subtitle, required this.imageUrl, required this.endsAt});
  factory _PromotionModel.fromJson(Map<String, dynamic> json) => _$PromotionModelFromJson(json);

@override final  String slug;
/// discount, day_deal, bundle, free_delivery; others get a plain badge.
@override final  String type;
@override final  String title;
@override final  String subtitle;
@override final  String imageUrl;
@override final  DateTime endsAt;

/// Create a copy of PromotionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PromotionModelCopyWith<_PromotionModel> get copyWith => __$PromotionModelCopyWithImpl<_PromotionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PromotionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PromotionModel&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.endsAt, endsAt) || other.endsAt == endsAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,slug,type,title,subtitle,imageUrl,endsAt);

@override
String toString() {
  return 'PromotionModel(slug: $slug, type: $type, title: $title, subtitle: $subtitle, imageUrl: $imageUrl, endsAt: $endsAt)';
}


}

/// @nodoc
abstract mixin class _$PromotionModelCopyWith<$Res> implements $PromotionModelCopyWith<$Res> {
  factory _$PromotionModelCopyWith(_PromotionModel value, $Res Function(_PromotionModel) _then) = __$PromotionModelCopyWithImpl;
@override @useResult
$Res call({
 String slug, String type, String title, String subtitle, String imageUrl, DateTime endsAt
});




}
/// @nodoc
class __$PromotionModelCopyWithImpl<$Res>
    implements _$PromotionModelCopyWith<$Res> {
  __$PromotionModelCopyWithImpl(this._self, this._then);

  final _PromotionModel _self;
  final $Res Function(_PromotionModel) _then;

/// Create a copy of PromotionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? slug = null,Object? type = null,Object? title = null,Object? subtitle = null,Object? imageUrl = null,Object? endsAt = null,}) {
  return _then(_PromotionModel(
slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subtitle: null == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,endsAt: null == endsAt ? _self.endsAt : endsAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}


/// @nodoc
mixin _$PromotionDetailsModel {

 String get slug; String get type; String get title; String get subtitle; String get imageUrl; DateTime get endsAt; List<ConditionModel> get conditions; String? get promoCode; bool get isEnded;
/// Create a copy of PromotionDetailsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PromotionDetailsModelCopyWith<PromotionDetailsModel> get copyWith => _$PromotionDetailsModelCopyWithImpl<PromotionDetailsModel>(this as PromotionDetailsModel, _$identity);

  /// Serializes this PromotionDetailsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PromotionDetailsModel&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.endsAt, endsAt) || other.endsAt == endsAt)&&const DeepCollectionEquality().equals(other.conditions, conditions)&&(identical(other.promoCode, promoCode) || other.promoCode == promoCode)&&(identical(other.isEnded, isEnded) || other.isEnded == isEnded));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,slug,type,title,subtitle,imageUrl,endsAt,const DeepCollectionEquality().hash(conditions),promoCode,isEnded);

@override
String toString() {
  return 'PromotionDetailsModel(slug: $slug, type: $type, title: $title, subtitle: $subtitle, imageUrl: $imageUrl, endsAt: $endsAt, conditions: $conditions, promoCode: $promoCode, isEnded: $isEnded)';
}


}

/// @nodoc
abstract mixin class $PromotionDetailsModelCopyWith<$Res>  {
  factory $PromotionDetailsModelCopyWith(PromotionDetailsModel value, $Res Function(PromotionDetailsModel) _then) = _$PromotionDetailsModelCopyWithImpl;
@useResult
$Res call({
 String slug, String type, String title, String subtitle, String imageUrl, DateTime endsAt, List<ConditionModel> conditions, String? promoCode, bool isEnded
});




}
/// @nodoc
class _$PromotionDetailsModelCopyWithImpl<$Res>
    implements $PromotionDetailsModelCopyWith<$Res> {
  _$PromotionDetailsModelCopyWithImpl(this._self, this._then);

  final PromotionDetailsModel _self;
  final $Res Function(PromotionDetailsModel) _then;

/// Create a copy of PromotionDetailsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? slug = null,Object? type = null,Object? title = null,Object? subtitle = null,Object? imageUrl = null,Object? endsAt = null,Object? conditions = null,Object? promoCode = freezed,Object? isEnded = null,}) {
  return _then(_self.copyWith(
slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subtitle: null == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,endsAt: null == endsAt ? _self.endsAt : endsAt // ignore: cast_nullable_to_non_nullable
as DateTime,conditions: null == conditions ? _self.conditions : conditions // ignore: cast_nullable_to_non_nullable
as List<ConditionModel>,promoCode: freezed == promoCode ? _self.promoCode : promoCode // ignore: cast_nullable_to_non_nullable
as String?,isEnded: null == isEnded ? _self.isEnded : isEnded // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [PromotionDetailsModel].
extension PromotionDetailsModelPatterns on PromotionDetailsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PromotionDetailsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PromotionDetailsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PromotionDetailsModel value)  $default,){
final _that = this;
switch (_that) {
case _PromotionDetailsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PromotionDetailsModel value)?  $default,){
final _that = this;
switch (_that) {
case _PromotionDetailsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String slug,  String type,  String title,  String subtitle,  String imageUrl,  DateTime endsAt,  List<ConditionModel> conditions,  String? promoCode,  bool isEnded)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PromotionDetailsModel() when $default != null:
return $default(_that.slug,_that.type,_that.title,_that.subtitle,_that.imageUrl,_that.endsAt,_that.conditions,_that.promoCode,_that.isEnded);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String slug,  String type,  String title,  String subtitle,  String imageUrl,  DateTime endsAt,  List<ConditionModel> conditions,  String? promoCode,  bool isEnded)  $default,) {final _that = this;
switch (_that) {
case _PromotionDetailsModel():
return $default(_that.slug,_that.type,_that.title,_that.subtitle,_that.imageUrl,_that.endsAt,_that.conditions,_that.promoCode,_that.isEnded);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String slug,  String type,  String title,  String subtitle,  String imageUrl,  DateTime endsAt,  List<ConditionModel> conditions,  String? promoCode,  bool isEnded)?  $default,) {final _that = this;
switch (_that) {
case _PromotionDetailsModel() when $default != null:
return $default(_that.slug,_that.type,_that.title,_that.subtitle,_that.imageUrl,_that.endsAt,_that.conditions,_that.promoCode,_that.isEnded);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PromotionDetailsModel implements PromotionDetailsModel {
  const _PromotionDetailsModel({required this.slug, required this.type, required this.title, required this.subtitle, required this.imageUrl, required this.endsAt, final  List<ConditionModel> conditions = const <ConditionModel>[], this.promoCode, this.isEnded = false}): _conditions = conditions;
  factory _PromotionDetailsModel.fromJson(Map<String, dynamic> json) => _$PromotionDetailsModelFromJson(json);

@override final  String slug;
@override final  String type;
@override final  String title;
@override final  String subtitle;
@override final  String imageUrl;
@override final  DateTime endsAt;
 final  List<ConditionModel> _conditions;
@override@JsonKey() List<ConditionModel> get conditions {
  if (_conditions is EqualUnmodifiableListView) return _conditions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_conditions);
}

@override final  String? promoCode;
@override@JsonKey() final  bool isEnded;

/// Create a copy of PromotionDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PromotionDetailsModelCopyWith<_PromotionDetailsModel> get copyWith => __$PromotionDetailsModelCopyWithImpl<_PromotionDetailsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PromotionDetailsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PromotionDetailsModel&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.endsAt, endsAt) || other.endsAt == endsAt)&&const DeepCollectionEquality().equals(other._conditions, _conditions)&&(identical(other.promoCode, promoCode) || other.promoCode == promoCode)&&(identical(other.isEnded, isEnded) || other.isEnded == isEnded));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,slug,type,title,subtitle,imageUrl,endsAt,const DeepCollectionEquality().hash(_conditions),promoCode,isEnded);

@override
String toString() {
  return 'PromotionDetailsModel(slug: $slug, type: $type, title: $title, subtitle: $subtitle, imageUrl: $imageUrl, endsAt: $endsAt, conditions: $conditions, promoCode: $promoCode, isEnded: $isEnded)';
}


}

/// @nodoc
abstract mixin class _$PromotionDetailsModelCopyWith<$Res> implements $PromotionDetailsModelCopyWith<$Res> {
  factory _$PromotionDetailsModelCopyWith(_PromotionDetailsModel value, $Res Function(_PromotionDetailsModel) _then) = __$PromotionDetailsModelCopyWithImpl;
@override @useResult
$Res call({
 String slug, String type, String title, String subtitle, String imageUrl, DateTime endsAt, List<ConditionModel> conditions, String? promoCode, bool isEnded
});




}
/// @nodoc
class __$PromotionDetailsModelCopyWithImpl<$Res>
    implements _$PromotionDetailsModelCopyWith<$Res> {
  __$PromotionDetailsModelCopyWithImpl(this._self, this._then);

  final _PromotionDetailsModel _self;
  final $Res Function(_PromotionDetailsModel) _then;

/// Create a copy of PromotionDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? slug = null,Object? type = null,Object? title = null,Object? subtitle = null,Object? imageUrl = null,Object? endsAt = null,Object? conditions = null,Object? promoCode = freezed,Object? isEnded = null,}) {
  return _then(_PromotionDetailsModel(
slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subtitle: null == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,endsAt: null == endsAt ? _self.endsAt : endsAt // ignore: cast_nullable_to_non_nullable
as DateTime,conditions: null == conditions ? _self._conditions : conditions // ignore: cast_nullable_to_non_nullable
as List<ConditionModel>,promoCode: freezed == promoCode ? _self.promoCode : promoCode // ignore: cast_nullable_to_non_nullable
as String?,isEnded: null == isEnded ? _self.isEnded : isEnded // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$ConditionModel {

 String get kind; String get text;
/// Create a copy of ConditionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConditionModelCopyWith<ConditionModel> get copyWith => _$ConditionModelCopyWithImpl<ConditionModel>(this as ConditionModel, _$identity);

  /// Serializes this ConditionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConditionModel&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.text, text) || other.text == text));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kind,text);

@override
String toString() {
  return 'ConditionModel(kind: $kind, text: $text)';
}


}

/// @nodoc
abstract mixin class $ConditionModelCopyWith<$Res>  {
  factory $ConditionModelCopyWith(ConditionModel value, $Res Function(ConditionModel) _then) = _$ConditionModelCopyWithImpl;
@useResult
$Res call({
 String kind, String text
});




}
/// @nodoc
class _$ConditionModelCopyWithImpl<$Res>
    implements $ConditionModelCopyWith<$Res> {
  _$ConditionModelCopyWithImpl(this._self, this._then);

  final ConditionModel _self;
  final $Res Function(ConditionModel) _then;

/// Create a copy of ConditionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? kind = null,Object? text = null,}) {
  return _then(_self.copyWith(
kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ConditionModel].
extension ConditionModelPatterns on ConditionModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ConditionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConditionModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ConditionModel value)  $default,){
final _that = this;
switch (_that) {
case _ConditionModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ConditionModel value)?  $default,){
final _that = this;
switch (_that) {
case _ConditionModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String kind,  String text)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConditionModel() when $default != null:
return $default(_that.kind,_that.text);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String kind,  String text)  $default,) {final _that = this;
switch (_that) {
case _ConditionModel():
return $default(_that.kind,_that.text);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String kind,  String text)?  $default,) {final _that = this;
switch (_that) {
case _ConditionModel() when $default != null:
return $default(_that.kind,_that.text);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ConditionModel implements ConditionModel {
  const _ConditionModel({required this.kind, required this.text});
  factory _ConditionModel.fromJson(Map<String, dynamic> json) => _$ConditionModelFromJson(json);

@override final  String kind;
@override final  String text;

/// Create a copy of ConditionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConditionModelCopyWith<_ConditionModel> get copyWith => __$ConditionModelCopyWithImpl<_ConditionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ConditionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConditionModel&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.text, text) || other.text == text));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kind,text);

@override
String toString() {
  return 'ConditionModel(kind: $kind, text: $text)';
}


}

/// @nodoc
abstract mixin class _$ConditionModelCopyWith<$Res> implements $ConditionModelCopyWith<$Res> {
  factory _$ConditionModelCopyWith(_ConditionModel value, $Res Function(_ConditionModel) _then) = __$ConditionModelCopyWithImpl;
@override @useResult
$Res call({
 String kind, String text
});




}
/// @nodoc
class __$ConditionModelCopyWithImpl<$Res>
    implements _$ConditionModelCopyWith<$Res> {
  __$ConditionModelCopyWithImpl(this._self, this._then);

  final _ConditionModel _self;
  final $Res Function(_ConditionModel) _then;

/// Create a copy of ConditionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? kind = null,Object? text = null,}) {
  return _then(_ConditionModel(
kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
