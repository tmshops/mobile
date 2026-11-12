// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'promotion.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Promotion {

 String get slug; PromotionType get type;/// Server texts in the request language.
 String get title; String get subtitle;/// 2:1 banner.
 String get imageUrl;/// Already on the device clock.
 DateTime get endsAt;
/// Create a copy of Promotion
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PromotionCopyWith<Promotion> get copyWith => _$PromotionCopyWithImpl<Promotion>(this as Promotion, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Promotion&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.endsAt, endsAt) || other.endsAt == endsAt));
}


@override
int get hashCode => Object.hash(runtimeType,slug,type,title,subtitle,imageUrl,endsAt);

@override
String toString() {
  return 'Promotion(slug: $slug, type: $type, title: $title, subtitle: $subtitle, imageUrl: $imageUrl, endsAt: $endsAt)';
}


}

/// @nodoc
abstract mixin class $PromotionCopyWith<$Res>  {
  factory $PromotionCopyWith(Promotion value, $Res Function(Promotion) _then) = _$PromotionCopyWithImpl;
@useResult
$Res call({
 String slug, PromotionType type, String title, String subtitle, String imageUrl, DateTime endsAt
});




}
/// @nodoc
class _$PromotionCopyWithImpl<$Res>
    implements $PromotionCopyWith<$Res> {
  _$PromotionCopyWithImpl(this._self, this._then);

  final Promotion _self;
  final $Res Function(Promotion) _then;

/// Create a copy of Promotion
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? slug = null,Object? type = null,Object? title = null,Object? subtitle = null,Object? imageUrl = null,Object? endsAt = null,}) {
  return _then(_self.copyWith(
slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as PromotionType,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subtitle: null == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,endsAt: null == endsAt ? _self.endsAt : endsAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [Promotion].
extension PromotionPatterns on Promotion {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Promotion value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Promotion() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Promotion value)  $default,){
final _that = this;
switch (_that) {
case _Promotion():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Promotion value)?  $default,){
final _that = this;
switch (_that) {
case _Promotion() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String slug,  PromotionType type,  String title,  String subtitle,  String imageUrl,  DateTime endsAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Promotion() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String slug,  PromotionType type,  String title,  String subtitle,  String imageUrl,  DateTime endsAt)  $default,) {final _that = this;
switch (_that) {
case _Promotion():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String slug,  PromotionType type,  String title,  String subtitle,  String imageUrl,  DateTime endsAt)?  $default,) {final _that = this;
switch (_that) {
case _Promotion() when $default != null:
return $default(_that.slug,_that.type,_that.title,_that.subtitle,_that.imageUrl,_that.endsAt);case _:
  return null;

}
}

}

/// @nodoc


class _Promotion implements Promotion {
  const _Promotion({required this.slug, required this.type, required this.title, required this.subtitle, required this.imageUrl, required this.endsAt});
  

@override final  String slug;
@override final  PromotionType type;
/// Server texts in the request language.
@override final  String title;
@override final  String subtitle;
/// 2:1 banner.
@override final  String imageUrl;
/// Already on the device clock.
@override final  DateTime endsAt;

/// Create a copy of Promotion
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PromotionCopyWith<_Promotion> get copyWith => __$PromotionCopyWithImpl<_Promotion>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Promotion&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.endsAt, endsAt) || other.endsAt == endsAt));
}


@override
int get hashCode => Object.hash(runtimeType,slug,type,title,subtitle,imageUrl,endsAt);

@override
String toString() {
  return 'Promotion(slug: $slug, type: $type, title: $title, subtitle: $subtitle, imageUrl: $imageUrl, endsAt: $endsAt)';
}


}

/// @nodoc
abstract mixin class _$PromotionCopyWith<$Res> implements $PromotionCopyWith<$Res> {
  factory _$PromotionCopyWith(_Promotion value, $Res Function(_Promotion) _then) = __$PromotionCopyWithImpl;
@override @useResult
$Res call({
 String slug, PromotionType type, String title, String subtitle, String imageUrl, DateTime endsAt
});




}
/// @nodoc
class __$PromotionCopyWithImpl<$Res>
    implements _$PromotionCopyWith<$Res> {
  __$PromotionCopyWithImpl(this._self, this._then);

  final _Promotion _self;
  final $Res Function(_Promotion) _then;

/// Create a copy of Promotion
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? slug = null,Object? type = null,Object? title = null,Object? subtitle = null,Object? imageUrl = null,Object? endsAt = null,}) {
  return _then(_Promotion(
slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as PromotionType,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subtitle: null == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,endsAt: null == endsAt ? _self.endsAt : endsAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

/// @nodoc
mixin _$PromoCondition {

 ConditionKind get kind;/// Server text, e.g. «Не суммируется с другими промокодами».
 String get text;
/// Create a copy of PromoCondition
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PromoConditionCopyWith<PromoCondition> get copyWith => _$PromoConditionCopyWithImpl<PromoCondition>(this as PromoCondition, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PromoCondition&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.text, text) || other.text == text));
}


@override
int get hashCode => Object.hash(runtimeType,kind,text);

@override
String toString() {
  return 'PromoCondition(kind: $kind, text: $text)';
}


}

/// @nodoc
abstract mixin class $PromoConditionCopyWith<$Res>  {
  factory $PromoConditionCopyWith(PromoCondition value, $Res Function(PromoCondition) _then) = _$PromoConditionCopyWithImpl;
@useResult
$Res call({
 ConditionKind kind, String text
});




}
/// @nodoc
class _$PromoConditionCopyWithImpl<$Res>
    implements $PromoConditionCopyWith<$Res> {
  _$PromoConditionCopyWithImpl(this._self, this._then);

  final PromoCondition _self;
  final $Res Function(PromoCondition) _then;

/// Create a copy of PromoCondition
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? kind = null,Object? text = null,}) {
  return _then(_self.copyWith(
kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as ConditionKind,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PromoCondition].
extension PromoConditionPatterns on PromoCondition {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PromoCondition value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PromoCondition() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PromoCondition value)  $default,){
final _that = this;
switch (_that) {
case _PromoCondition():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PromoCondition value)?  $default,){
final _that = this;
switch (_that) {
case _PromoCondition() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ConditionKind kind,  String text)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PromoCondition() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ConditionKind kind,  String text)  $default,) {final _that = this;
switch (_that) {
case _PromoCondition():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ConditionKind kind,  String text)?  $default,) {final _that = this;
switch (_that) {
case _PromoCondition() when $default != null:
return $default(_that.kind,_that.text);case _:
  return null;

}
}

}

/// @nodoc


class _PromoCondition implements PromoCondition {
  const _PromoCondition({required this.kind, required this.text});
  

@override final  ConditionKind kind;
/// Server text, e.g. «Не суммируется с другими промокодами».
@override final  String text;

/// Create a copy of PromoCondition
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PromoConditionCopyWith<_PromoCondition> get copyWith => __$PromoConditionCopyWithImpl<_PromoCondition>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PromoCondition&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.text, text) || other.text == text));
}


@override
int get hashCode => Object.hash(runtimeType,kind,text);

@override
String toString() {
  return 'PromoCondition(kind: $kind, text: $text)';
}


}

/// @nodoc
abstract mixin class _$PromoConditionCopyWith<$Res> implements $PromoConditionCopyWith<$Res> {
  factory _$PromoConditionCopyWith(_PromoCondition value, $Res Function(_PromoCondition) _then) = __$PromoConditionCopyWithImpl;
@override @useResult
$Res call({
 ConditionKind kind, String text
});




}
/// @nodoc
class __$PromoConditionCopyWithImpl<$Res>
    implements _$PromoConditionCopyWith<$Res> {
  __$PromoConditionCopyWithImpl(this._self, this._then);

  final _PromoCondition _self;
  final $Res Function(_PromoCondition) _then;

/// Create a copy of PromoCondition
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? kind = null,Object? text = null,}) {
  return _then(_PromoCondition(
kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as ConditionKind,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$PromotionDetails {

 Promotion get promotion; List<PromoCondition> get conditions; String? get promoCode;/// Opened from an old link: the page says it is over.
 bool get isEnded;
/// Create a copy of PromotionDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PromotionDetailsCopyWith<PromotionDetails> get copyWith => _$PromotionDetailsCopyWithImpl<PromotionDetails>(this as PromotionDetails, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PromotionDetails&&(identical(other.promotion, promotion) || other.promotion == promotion)&&const DeepCollectionEquality().equals(other.conditions, conditions)&&(identical(other.promoCode, promoCode) || other.promoCode == promoCode)&&(identical(other.isEnded, isEnded) || other.isEnded == isEnded));
}


@override
int get hashCode => Object.hash(runtimeType,promotion,const DeepCollectionEquality().hash(conditions),promoCode,isEnded);

@override
String toString() {
  return 'PromotionDetails(promotion: $promotion, conditions: $conditions, promoCode: $promoCode, isEnded: $isEnded)';
}


}

/// @nodoc
abstract mixin class $PromotionDetailsCopyWith<$Res>  {
  factory $PromotionDetailsCopyWith(PromotionDetails value, $Res Function(PromotionDetails) _then) = _$PromotionDetailsCopyWithImpl;
@useResult
$Res call({
 Promotion promotion, List<PromoCondition> conditions, String? promoCode, bool isEnded
});


$PromotionCopyWith<$Res> get promotion;

}
/// @nodoc
class _$PromotionDetailsCopyWithImpl<$Res>
    implements $PromotionDetailsCopyWith<$Res> {
  _$PromotionDetailsCopyWithImpl(this._self, this._then);

  final PromotionDetails _self;
  final $Res Function(PromotionDetails) _then;

/// Create a copy of PromotionDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? promotion = null,Object? conditions = null,Object? promoCode = freezed,Object? isEnded = null,}) {
  return _then(_self.copyWith(
promotion: null == promotion ? _self.promotion : promotion // ignore: cast_nullable_to_non_nullable
as Promotion,conditions: null == conditions ? _self.conditions : conditions // ignore: cast_nullable_to_non_nullable
as List<PromoCondition>,promoCode: freezed == promoCode ? _self.promoCode : promoCode // ignore: cast_nullable_to_non_nullable
as String?,isEnded: null == isEnded ? _self.isEnded : isEnded // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of PromotionDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PromotionCopyWith<$Res> get promotion {
  
  return $PromotionCopyWith<$Res>(_self.promotion, (value) {
    return _then(_self.copyWith(promotion: value));
  });
}
}


/// Adds pattern-matching-related methods to [PromotionDetails].
extension PromotionDetailsPatterns on PromotionDetails {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PromotionDetails value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PromotionDetails() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PromotionDetails value)  $default,){
final _that = this;
switch (_that) {
case _PromotionDetails():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PromotionDetails value)?  $default,){
final _that = this;
switch (_that) {
case _PromotionDetails() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Promotion promotion,  List<PromoCondition> conditions,  String? promoCode,  bool isEnded)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PromotionDetails() when $default != null:
return $default(_that.promotion,_that.conditions,_that.promoCode,_that.isEnded);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Promotion promotion,  List<PromoCondition> conditions,  String? promoCode,  bool isEnded)  $default,) {final _that = this;
switch (_that) {
case _PromotionDetails():
return $default(_that.promotion,_that.conditions,_that.promoCode,_that.isEnded);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Promotion promotion,  List<PromoCondition> conditions,  String? promoCode,  bool isEnded)?  $default,) {final _that = this;
switch (_that) {
case _PromotionDetails() when $default != null:
return $default(_that.promotion,_that.conditions,_that.promoCode,_that.isEnded);case _:
  return null;

}
}

}

/// @nodoc


class _PromotionDetails implements PromotionDetails {
  const _PromotionDetails({required this.promotion, final  List<PromoCondition> conditions = const <PromoCondition>[], this.promoCode, this.isEnded = false}): _conditions = conditions;
  

@override final  Promotion promotion;
 final  List<PromoCondition> _conditions;
@override@JsonKey() List<PromoCondition> get conditions {
  if (_conditions is EqualUnmodifiableListView) return _conditions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_conditions);
}

@override final  String? promoCode;
/// Opened from an old link: the page says it is over.
@override@JsonKey() final  bool isEnded;

/// Create a copy of PromotionDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PromotionDetailsCopyWith<_PromotionDetails> get copyWith => __$PromotionDetailsCopyWithImpl<_PromotionDetails>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PromotionDetails&&(identical(other.promotion, promotion) || other.promotion == promotion)&&const DeepCollectionEquality().equals(other._conditions, _conditions)&&(identical(other.promoCode, promoCode) || other.promoCode == promoCode)&&(identical(other.isEnded, isEnded) || other.isEnded == isEnded));
}


@override
int get hashCode => Object.hash(runtimeType,promotion,const DeepCollectionEquality().hash(_conditions),promoCode,isEnded);

@override
String toString() {
  return 'PromotionDetails(promotion: $promotion, conditions: $conditions, promoCode: $promoCode, isEnded: $isEnded)';
}


}

/// @nodoc
abstract mixin class _$PromotionDetailsCopyWith<$Res> implements $PromotionDetailsCopyWith<$Res> {
  factory _$PromotionDetailsCopyWith(_PromotionDetails value, $Res Function(_PromotionDetails) _then) = __$PromotionDetailsCopyWithImpl;
@override @useResult
$Res call({
 Promotion promotion, List<PromoCondition> conditions, String? promoCode, bool isEnded
});


@override $PromotionCopyWith<$Res> get promotion;

}
/// @nodoc
class __$PromotionDetailsCopyWithImpl<$Res>
    implements _$PromotionDetailsCopyWith<$Res> {
  __$PromotionDetailsCopyWithImpl(this._self, this._then);

  final _PromotionDetails _self;
  final $Res Function(_PromotionDetails) _then;

/// Create a copy of PromotionDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? promotion = null,Object? conditions = null,Object? promoCode = freezed,Object? isEnded = null,}) {
  return _then(_PromotionDetails(
promotion: null == promotion ? _self.promotion : promotion // ignore: cast_nullable_to_non_nullable
as Promotion,conditions: null == conditions ? _self._conditions : conditions // ignore: cast_nullable_to_non_nullable
as List<PromoCondition>,promoCode: freezed == promoCode ? _self.promoCode : promoCode // ignore: cast_nullable_to_non_nullable
as String?,isEnded: null == isEnded ? _self.isEnded : isEnded // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of PromotionDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PromotionCopyWith<$Res> get promotion {
  
  return $PromotionCopyWith<$Res>(_self.promotion, (value) {
    return _then(_self.copyWith(promotion: value));
  });
}
}

// dart format on
