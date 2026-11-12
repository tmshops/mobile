// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$InfoArticle {

 String get title;/// Sanitised on render: only safe tags are drawn.
 String get html;
/// Create a copy of InfoArticle
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InfoArticleCopyWith<InfoArticle> get copyWith => _$InfoArticleCopyWithImpl<InfoArticle>(this as InfoArticle, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InfoArticle&&(identical(other.title, title) || other.title == title)&&(identical(other.html, html) || other.html == html));
}


@override
int get hashCode => Object.hash(runtimeType,title,html);

@override
String toString() {
  return 'InfoArticle(title: $title, html: $html)';
}


}

/// @nodoc
abstract mixin class $InfoArticleCopyWith<$Res>  {
  factory $InfoArticleCopyWith(InfoArticle value, $Res Function(InfoArticle) _then) = _$InfoArticleCopyWithImpl;
@useResult
$Res call({
 String title, String html
});




}
/// @nodoc
class _$InfoArticleCopyWithImpl<$Res>
    implements $InfoArticleCopyWith<$Res> {
  _$InfoArticleCopyWithImpl(this._self, this._then);

  final InfoArticle _self;
  final $Res Function(InfoArticle) _then;

/// Create a copy of InfoArticle
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? html = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,html: null == html ? _self.html : html // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [InfoArticle].
extension InfoArticlePatterns on InfoArticle {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InfoArticle value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InfoArticle() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InfoArticle value)  $default,){
final _that = this;
switch (_that) {
case _InfoArticle():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InfoArticle value)?  $default,){
final _that = this;
switch (_that) {
case _InfoArticle() when $default != null:
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
case _InfoArticle() when $default != null:
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
case _InfoArticle():
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
case _InfoArticle() when $default != null:
return $default(_that.title,_that.html);case _:
  return null;

}
}

}

/// @nodoc


class _InfoArticle implements InfoArticle {
  const _InfoArticle({required this.title, required this.html});
  

@override final  String title;
/// Sanitised on render: only safe tags are drawn.
@override final  String html;

/// Create a copy of InfoArticle
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InfoArticleCopyWith<_InfoArticle> get copyWith => __$InfoArticleCopyWithImpl<_InfoArticle>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InfoArticle&&(identical(other.title, title) || other.title == title)&&(identical(other.html, html) || other.html == html));
}


@override
int get hashCode => Object.hash(runtimeType,title,html);

@override
String toString() {
  return 'InfoArticle(title: $title, html: $html)';
}


}

/// @nodoc
abstract mixin class _$InfoArticleCopyWith<$Res> implements $InfoArticleCopyWith<$Res> {
  factory _$InfoArticleCopyWith(_InfoArticle value, $Res Function(_InfoArticle) _then) = __$InfoArticleCopyWithImpl;
@override @useResult
$Res call({
 String title, String html
});




}
/// @nodoc
class __$InfoArticleCopyWithImpl<$Res>
    implements _$InfoArticleCopyWith<$Res> {
  __$InfoArticleCopyWithImpl(this._self, this._then);

  final _InfoArticle _self;
  final $Res Function(_InfoArticle) _then;

/// Create a copy of InfoArticle
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? html = null,}) {
  return _then(_InfoArticle(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,html: null == html ? _self.html : html // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$DeliveryTypeTerm {

/// API code, the key of [RegionTariff.perKg].
 String get code; DeliveryKind get kind; String get name;/// «7–10 дней».
 String get term;/// «от 1 кг», «от 5 кг».
 String get minWeight;
/// Create a copy of DeliveryTypeTerm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeliveryTypeTermCopyWith<DeliveryTypeTerm> get copyWith => _$DeliveryTypeTermCopyWithImpl<DeliveryTypeTerm>(this as DeliveryTypeTerm, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeliveryTypeTerm&&(identical(other.code, code) || other.code == code)&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.name, name) || other.name == name)&&(identical(other.term, term) || other.term == term)&&(identical(other.minWeight, minWeight) || other.minWeight == minWeight));
}


@override
int get hashCode => Object.hash(runtimeType,code,kind,name,term,minWeight);

@override
String toString() {
  return 'DeliveryTypeTerm(code: $code, kind: $kind, name: $name, term: $term, minWeight: $minWeight)';
}


}

/// @nodoc
abstract mixin class $DeliveryTypeTermCopyWith<$Res>  {
  factory $DeliveryTypeTermCopyWith(DeliveryTypeTerm value, $Res Function(DeliveryTypeTerm) _then) = _$DeliveryTypeTermCopyWithImpl;
@useResult
$Res call({
 String code, DeliveryKind kind, String name, String term, String minWeight
});




}
/// @nodoc
class _$DeliveryTypeTermCopyWithImpl<$Res>
    implements $DeliveryTypeTermCopyWith<$Res> {
  _$DeliveryTypeTermCopyWithImpl(this._self, this._then);

  final DeliveryTypeTerm _self;
  final $Res Function(DeliveryTypeTerm) _then;

/// Create a copy of DeliveryTypeTerm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,Object? kind = null,Object? name = null,Object? term = null,Object? minWeight = null,}) {
  return _then(_self.copyWith(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as DeliveryKind,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,term: null == term ? _self.term : term // ignore: cast_nullable_to_non_nullable
as String,minWeight: null == minWeight ? _self.minWeight : minWeight // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DeliveryTypeTerm].
extension DeliveryTypeTermPatterns on DeliveryTypeTerm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeliveryTypeTerm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeliveryTypeTerm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeliveryTypeTerm value)  $default,){
final _that = this;
switch (_that) {
case _DeliveryTypeTerm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeliveryTypeTerm value)?  $default,){
final _that = this;
switch (_that) {
case _DeliveryTypeTerm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String code,  DeliveryKind kind,  String name,  String term,  String minWeight)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeliveryTypeTerm() when $default != null:
return $default(_that.code,_that.kind,_that.name,_that.term,_that.minWeight);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String code,  DeliveryKind kind,  String name,  String term,  String minWeight)  $default,) {final _that = this;
switch (_that) {
case _DeliveryTypeTerm():
return $default(_that.code,_that.kind,_that.name,_that.term,_that.minWeight);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String code,  DeliveryKind kind,  String name,  String term,  String minWeight)?  $default,) {final _that = this;
switch (_that) {
case _DeliveryTypeTerm() when $default != null:
return $default(_that.code,_that.kind,_that.name,_that.term,_that.minWeight);case _:
  return null;

}
}

}

/// @nodoc


class _DeliveryTypeTerm implements DeliveryTypeTerm {
  const _DeliveryTypeTerm({required this.code, required this.kind, required this.name, required this.term, required this.minWeight});
  

/// API code, the key of [RegionTariff.perKg].
@override final  String code;
@override final  DeliveryKind kind;
@override final  String name;
/// «7–10 дней».
@override final  String term;
/// «от 1 кг», «от 5 кг».
@override final  String minWeight;

/// Create a copy of DeliveryTypeTerm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeliveryTypeTermCopyWith<_DeliveryTypeTerm> get copyWith => __$DeliveryTypeTermCopyWithImpl<_DeliveryTypeTerm>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeliveryTypeTerm&&(identical(other.code, code) || other.code == code)&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.name, name) || other.name == name)&&(identical(other.term, term) || other.term == term)&&(identical(other.minWeight, minWeight) || other.minWeight == minWeight));
}


@override
int get hashCode => Object.hash(runtimeType,code,kind,name,term,minWeight);

@override
String toString() {
  return 'DeliveryTypeTerm(code: $code, kind: $kind, name: $name, term: $term, minWeight: $minWeight)';
}


}

/// @nodoc
abstract mixin class _$DeliveryTypeTermCopyWith<$Res> implements $DeliveryTypeTermCopyWith<$Res> {
  factory _$DeliveryTypeTermCopyWith(_DeliveryTypeTerm value, $Res Function(_DeliveryTypeTerm) _then) = __$DeliveryTypeTermCopyWithImpl;
@override @useResult
$Res call({
 String code, DeliveryKind kind, String name, String term, String minWeight
});




}
/// @nodoc
class __$DeliveryTypeTermCopyWithImpl<$Res>
    implements _$DeliveryTypeTermCopyWith<$Res> {
  __$DeliveryTypeTermCopyWithImpl(this._self, this._then);

  final _DeliveryTypeTerm _self;
  final $Res Function(_DeliveryTypeTerm) _then;

/// Create a copy of DeliveryTypeTerm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? kind = null,Object? name = null,Object? term = null,Object? minWeight = null,}) {
  return _then(_DeliveryTypeTerm(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as DeliveryKind,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,term: null == term ? _self.term : term // ignore: cast_nullable_to_non_nullable
as String,minWeight: null == minWeight ? _self.minWeight : minWeight // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$RegionTariff {

 String get region;/// Type code → TMT per kg. A missing type is not delivered there.
 Map<String, int> get perKg;
/// Create a copy of RegionTariff
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegionTariffCopyWith<RegionTariff> get copyWith => _$RegionTariffCopyWithImpl<RegionTariff>(this as RegionTariff, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegionTariff&&(identical(other.region, region) || other.region == region)&&const DeepCollectionEquality().equals(other.perKg, perKg));
}


@override
int get hashCode => Object.hash(runtimeType,region,const DeepCollectionEquality().hash(perKg));

@override
String toString() {
  return 'RegionTariff(region: $region, perKg: $perKg)';
}


}

/// @nodoc
abstract mixin class $RegionTariffCopyWith<$Res>  {
  factory $RegionTariffCopyWith(RegionTariff value, $Res Function(RegionTariff) _then) = _$RegionTariffCopyWithImpl;
@useResult
$Res call({
 String region, Map<String, int> perKg
});




}
/// @nodoc
class _$RegionTariffCopyWithImpl<$Res>
    implements $RegionTariffCopyWith<$Res> {
  _$RegionTariffCopyWithImpl(this._self, this._then);

  final RegionTariff _self;
  final $Res Function(RegionTariff) _then;

/// Create a copy of RegionTariff
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? region = null,Object? perKg = null,}) {
  return _then(_self.copyWith(
region: null == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as String,perKg: null == perKg ? _self.perKg : perKg // ignore: cast_nullable_to_non_nullable
as Map<String, int>,
  ));
}

}


/// Adds pattern-matching-related methods to [RegionTariff].
extension RegionTariffPatterns on RegionTariff {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RegionTariff value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RegionTariff() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RegionTariff value)  $default,){
final _that = this;
switch (_that) {
case _RegionTariff():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RegionTariff value)?  $default,){
final _that = this;
switch (_that) {
case _RegionTariff() when $default != null:
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
case _RegionTariff() when $default != null:
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
case _RegionTariff():
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
case _RegionTariff() when $default != null:
return $default(_that.region,_that.perKg);case _:
  return null;

}
}

}

/// @nodoc


class _RegionTariff implements RegionTariff {
  const _RegionTariff({required this.region, required final  Map<String, int> perKg}): _perKg = perKg;
  

@override final  String region;
/// Type code → TMT per kg. A missing type is not delivered there.
 final  Map<String, int> _perKg;
/// Type code → TMT per kg. A missing type is not delivered there.
@override Map<String, int> get perKg {
  if (_perKg is EqualUnmodifiableMapView) return _perKg;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_perKg);
}


/// Create a copy of RegionTariff
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegionTariffCopyWith<_RegionTariff> get copyWith => __$RegionTariffCopyWithImpl<_RegionTariff>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegionTariff&&(identical(other.region, region) || other.region == region)&&const DeepCollectionEquality().equals(other._perKg, _perKg));
}


@override
int get hashCode => Object.hash(runtimeType,region,const DeepCollectionEquality().hash(_perKg));

@override
String toString() {
  return 'RegionTariff(region: $region, perKg: $perKg)';
}


}

/// @nodoc
abstract mixin class _$RegionTariffCopyWith<$Res> implements $RegionTariffCopyWith<$Res> {
  factory _$RegionTariffCopyWith(_RegionTariff value, $Res Function(_RegionTariff) _then) = __$RegionTariffCopyWithImpl;
@override @useResult
$Res call({
 String region, Map<String, int> perKg
});




}
/// @nodoc
class __$RegionTariffCopyWithImpl<$Res>
    implements _$RegionTariffCopyWith<$Res> {
  __$RegionTariffCopyWithImpl(this._self, this._then);

  final _RegionTariff _self;
  final $Res Function(_RegionTariff) _then;

/// Create a copy of RegionTariff
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? region = null,Object? perKg = null,}) {
  return _then(_RegionTariff(
region: null == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as String,perKg: null == perKg ? _self._perKg : perKg // ignore: cast_nullable_to_non_nullable
as Map<String, int>,
  ));
}


}

/// @nodoc
mixin _$DeliveryTerms {

 List<DeliveryTypeTerm> get types; List<RegionTariff> get tariffs;/// Payment methods and conditions, written on the server.
 String get html;
/// Create a copy of DeliveryTerms
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeliveryTermsCopyWith<DeliveryTerms> get copyWith => _$DeliveryTermsCopyWithImpl<DeliveryTerms>(this as DeliveryTerms, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeliveryTerms&&const DeepCollectionEquality().equals(other.types, types)&&const DeepCollectionEquality().equals(other.tariffs, tariffs)&&(identical(other.html, html) || other.html == html));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(types),const DeepCollectionEquality().hash(tariffs),html);

@override
String toString() {
  return 'DeliveryTerms(types: $types, tariffs: $tariffs, html: $html)';
}


}

/// @nodoc
abstract mixin class $DeliveryTermsCopyWith<$Res>  {
  factory $DeliveryTermsCopyWith(DeliveryTerms value, $Res Function(DeliveryTerms) _then) = _$DeliveryTermsCopyWithImpl;
@useResult
$Res call({
 List<DeliveryTypeTerm> types, List<RegionTariff> tariffs, String html
});




}
/// @nodoc
class _$DeliveryTermsCopyWithImpl<$Res>
    implements $DeliveryTermsCopyWith<$Res> {
  _$DeliveryTermsCopyWithImpl(this._self, this._then);

  final DeliveryTerms _self;
  final $Res Function(DeliveryTerms) _then;

/// Create a copy of DeliveryTerms
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? types = null,Object? tariffs = null,Object? html = null,}) {
  return _then(_self.copyWith(
types: null == types ? _self.types : types // ignore: cast_nullable_to_non_nullable
as List<DeliveryTypeTerm>,tariffs: null == tariffs ? _self.tariffs : tariffs // ignore: cast_nullable_to_non_nullable
as List<RegionTariff>,html: null == html ? _self.html : html // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DeliveryTerms].
extension DeliveryTermsPatterns on DeliveryTerms {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeliveryTerms value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeliveryTerms() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeliveryTerms value)  $default,){
final _that = this;
switch (_that) {
case _DeliveryTerms():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeliveryTerms value)?  $default,){
final _that = this;
switch (_that) {
case _DeliveryTerms() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<DeliveryTypeTerm> types,  List<RegionTariff> tariffs,  String html)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeliveryTerms() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<DeliveryTypeTerm> types,  List<RegionTariff> tariffs,  String html)  $default,) {final _that = this;
switch (_that) {
case _DeliveryTerms():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<DeliveryTypeTerm> types,  List<RegionTariff> tariffs,  String html)?  $default,) {final _that = this;
switch (_that) {
case _DeliveryTerms() when $default != null:
return $default(_that.types,_that.tariffs,_that.html);case _:
  return null;

}
}

}

/// @nodoc


class _DeliveryTerms extends DeliveryTerms {
  const _DeliveryTerms({required final  List<DeliveryTypeTerm> types, required final  List<RegionTariff> tariffs, required this.html}): _types = types,_tariffs = tariffs,super._();
  

 final  List<DeliveryTypeTerm> _types;
@override List<DeliveryTypeTerm> get types {
  if (_types is EqualUnmodifiableListView) return _types;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_types);
}

 final  List<RegionTariff> _tariffs;
@override List<RegionTariff> get tariffs {
  if (_tariffs is EqualUnmodifiableListView) return _tariffs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tariffs);
}

/// Payment methods and conditions, written on the server.
@override final  String html;

/// Create a copy of DeliveryTerms
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeliveryTermsCopyWith<_DeliveryTerms> get copyWith => __$DeliveryTermsCopyWithImpl<_DeliveryTerms>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeliveryTerms&&const DeepCollectionEquality().equals(other._types, _types)&&const DeepCollectionEquality().equals(other._tariffs, _tariffs)&&(identical(other.html, html) || other.html == html));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_types),const DeepCollectionEquality().hash(_tariffs),html);

@override
String toString() {
  return 'DeliveryTerms(types: $types, tariffs: $tariffs, html: $html)';
}


}

/// @nodoc
abstract mixin class _$DeliveryTermsCopyWith<$Res> implements $DeliveryTermsCopyWith<$Res> {
  factory _$DeliveryTermsCopyWith(_DeliveryTerms value, $Res Function(_DeliveryTerms) _then) = __$DeliveryTermsCopyWithImpl;
@override @useResult
$Res call({
 List<DeliveryTypeTerm> types, List<RegionTariff> tariffs, String html
});




}
/// @nodoc
class __$DeliveryTermsCopyWithImpl<$Res>
    implements _$DeliveryTermsCopyWith<$Res> {
  __$DeliveryTermsCopyWithImpl(this._self, this._then);

  final _DeliveryTerms _self;
  final $Res Function(_DeliveryTerms) _then;

/// Create a copy of DeliveryTerms
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? types = null,Object? tariffs = null,Object? html = null,}) {
  return _then(_DeliveryTerms(
types: null == types ? _self._types : types // ignore: cast_nullable_to_non_nullable
as List<DeliveryTypeTerm>,tariffs: null == tariffs ? _self._tariffs : tariffs // ignore: cast_nullable_to_non_nullable
as List<RegionTariff>,html: null == html ? _self.html : html // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$FaqItem {

 String get id; String get question;/// HTML.
 String get answer;
/// Create a copy of FaqItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FaqItemCopyWith<FaqItem> get copyWith => _$FaqItemCopyWithImpl<FaqItem>(this as FaqItem, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FaqItem&&(identical(other.id, id) || other.id == id)&&(identical(other.question, question) || other.question == question)&&(identical(other.answer, answer) || other.answer == answer));
}


@override
int get hashCode => Object.hash(runtimeType,id,question,answer);

@override
String toString() {
  return 'FaqItem(id: $id, question: $question, answer: $answer)';
}


}

/// @nodoc
abstract mixin class $FaqItemCopyWith<$Res>  {
  factory $FaqItemCopyWith(FaqItem value, $Res Function(FaqItem) _then) = _$FaqItemCopyWithImpl;
@useResult
$Res call({
 String id, String question, String answer
});




}
/// @nodoc
class _$FaqItemCopyWithImpl<$Res>
    implements $FaqItemCopyWith<$Res> {
  _$FaqItemCopyWithImpl(this._self, this._then);

  final FaqItem _self;
  final $Res Function(FaqItem) _then;

/// Create a copy of FaqItem
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


/// Adds pattern-matching-related methods to [FaqItem].
extension FaqItemPatterns on FaqItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FaqItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FaqItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FaqItem value)  $default,){
final _that = this;
switch (_that) {
case _FaqItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FaqItem value)?  $default,){
final _that = this;
switch (_that) {
case _FaqItem() when $default != null:
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
case _FaqItem() when $default != null:
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
case _FaqItem():
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
case _FaqItem() when $default != null:
return $default(_that.id,_that.question,_that.answer);case _:
  return null;

}
}

}

/// @nodoc


class _FaqItem implements FaqItem {
  const _FaqItem({required this.id, required this.question, required this.answer});
  

@override final  String id;
@override final  String question;
/// HTML.
@override final  String answer;

/// Create a copy of FaqItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FaqItemCopyWith<_FaqItem> get copyWith => __$FaqItemCopyWithImpl<_FaqItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FaqItem&&(identical(other.id, id) || other.id == id)&&(identical(other.question, question) || other.question == question)&&(identical(other.answer, answer) || other.answer == answer));
}


@override
int get hashCode => Object.hash(runtimeType,id,question,answer);

@override
String toString() {
  return 'FaqItem(id: $id, question: $question, answer: $answer)';
}


}

/// @nodoc
abstract mixin class _$FaqItemCopyWith<$Res> implements $FaqItemCopyWith<$Res> {
  factory _$FaqItemCopyWith(_FaqItem value, $Res Function(_FaqItem) _then) = __$FaqItemCopyWithImpl;
@override @useResult
$Res call({
 String id, String question, String answer
});




}
/// @nodoc
class __$FaqItemCopyWithImpl<$Res>
    implements _$FaqItemCopyWith<$Res> {
  __$FaqItemCopyWithImpl(this._self, this._then);

  final _FaqItem _self;
  final $Res Function(_FaqItem) _then;

/// Create a copy of FaqItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? question = null,Object? answer = null,}) {
  return _then(_FaqItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,answer: null == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$FaqSection {

 String get title; List<FaqItem> get items;
/// Create a copy of FaqSection
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FaqSectionCopyWith<FaqSection> get copyWith => _$FaqSectionCopyWithImpl<FaqSection>(this as FaqSection, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FaqSection&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other.items, items));
}


@override
int get hashCode => Object.hash(runtimeType,title,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'FaqSection(title: $title, items: $items)';
}


}

/// @nodoc
abstract mixin class $FaqSectionCopyWith<$Res>  {
  factory $FaqSectionCopyWith(FaqSection value, $Res Function(FaqSection) _then) = _$FaqSectionCopyWithImpl;
@useResult
$Res call({
 String title, List<FaqItem> items
});




}
/// @nodoc
class _$FaqSectionCopyWithImpl<$Res>
    implements $FaqSectionCopyWith<$Res> {
  _$FaqSectionCopyWithImpl(this._self, this._then);

  final FaqSection _self;
  final $Res Function(FaqSection) _then;

/// Create a copy of FaqSection
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? items = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<FaqItem>,
  ));
}

}


/// Adds pattern-matching-related methods to [FaqSection].
extension FaqSectionPatterns on FaqSection {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FaqSection value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FaqSection() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FaqSection value)  $default,){
final _that = this;
switch (_that) {
case _FaqSection():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FaqSection value)?  $default,){
final _that = this;
switch (_that) {
case _FaqSection() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  List<FaqItem> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FaqSection() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  List<FaqItem> items)  $default,) {final _that = this;
switch (_that) {
case _FaqSection():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  List<FaqItem> items)?  $default,) {final _that = this;
switch (_that) {
case _FaqSection() when $default != null:
return $default(_that.title,_that.items);case _:
  return null;

}
}

}

/// @nodoc


class _FaqSection implements FaqSection {
  const _FaqSection({required this.title, required final  List<FaqItem> items}): _items = items;
  

@override final  String title;
 final  List<FaqItem> _items;
@override List<FaqItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of FaqSection
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FaqSectionCopyWith<_FaqSection> get copyWith => __$FaqSectionCopyWithImpl<_FaqSection>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FaqSection&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other._items, _items));
}


@override
int get hashCode => Object.hash(runtimeType,title,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'FaqSection(title: $title, items: $items)';
}


}

/// @nodoc
abstract mixin class _$FaqSectionCopyWith<$Res> implements $FaqSectionCopyWith<$Res> {
  factory _$FaqSectionCopyWith(_FaqSection value, $Res Function(_FaqSection) _then) = __$FaqSectionCopyWithImpl;
@override @useResult
$Res call({
 String title, List<FaqItem> items
});




}
/// @nodoc
class __$FaqSectionCopyWithImpl<$Res>
    implements _$FaqSectionCopyWith<$Res> {
  __$FaqSectionCopyWithImpl(this._self, this._then);

  final _FaqSection _self;
  final $Res Function(_FaqSection) _then;

/// Create a copy of FaqSection
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? items = null,}) {
  return _then(_FaqSection(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<FaqItem>,
  ));
}


}

/// @nodoc
mixin _$PickupPointInfo {

 String get id; String get region; String get name; String get address; String get hours; String get phone;
/// Create a copy of PickupPointInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PickupPointInfoCopyWith<PickupPointInfo> get copyWith => _$PickupPointInfoCopyWithImpl<PickupPointInfo>(this as PickupPointInfo, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PickupPointInfo&&(identical(other.id, id) || other.id == id)&&(identical(other.region, region) || other.region == region)&&(identical(other.name, name) || other.name == name)&&(identical(other.address, address) || other.address == address)&&(identical(other.hours, hours) || other.hours == hours)&&(identical(other.phone, phone) || other.phone == phone));
}


@override
int get hashCode => Object.hash(runtimeType,id,region,name,address,hours,phone);

@override
String toString() {
  return 'PickupPointInfo(id: $id, region: $region, name: $name, address: $address, hours: $hours, phone: $phone)';
}


}

/// @nodoc
abstract mixin class $PickupPointInfoCopyWith<$Res>  {
  factory $PickupPointInfoCopyWith(PickupPointInfo value, $Res Function(PickupPointInfo) _then) = _$PickupPointInfoCopyWithImpl;
@useResult
$Res call({
 String id, String region, String name, String address, String hours, String phone
});




}
/// @nodoc
class _$PickupPointInfoCopyWithImpl<$Res>
    implements $PickupPointInfoCopyWith<$Res> {
  _$PickupPointInfoCopyWithImpl(this._self, this._then);

  final PickupPointInfo _self;
  final $Res Function(PickupPointInfo) _then;

/// Create a copy of PickupPointInfo
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


/// Adds pattern-matching-related methods to [PickupPointInfo].
extension PickupPointInfoPatterns on PickupPointInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PickupPointInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PickupPointInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PickupPointInfo value)  $default,){
final _that = this;
switch (_that) {
case _PickupPointInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PickupPointInfo value)?  $default,){
final _that = this;
switch (_that) {
case _PickupPointInfo() when $default != null:
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
case _PickupPointInfo() when $default != null:
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
case _PickupPointInfo():
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
case _PickupPointInfo() when $default != null:
return $default(_that.id,_that.region,_that.name,_that.address,_that.hours,_that.phone);case _:
  return null;

}
}

}

/// @nodoc


class _PickupPointInfo implements PickupPointInfo {
  const _PickupPointInfo({required this.id, required this.region, required this.name, required this.address, required this.hours, required this.phone});
  

@override final  String id;
@override final  String region;
@override final  String name;
@override final  String address;
@override final  String hours;
@override final  String phone;

/// Create a copy of PickupPointInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PickupPointInfoCopyWith<_PickupPointInfo> get copyWith => __$PickupPointInfoCopyWithImpl<_PickupPointInfo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PickupPointInfo&&(identical(other.id, id) || other.id == id)&&(identical(other.region, region) || other.region == region)&&(identical(other.name, name) || other.name == name)&&(identical(other.address, address) || other.address == address)&&(identical(other.hours, hours) || other.hours == hours)&&(identical(other.phone, phone) || other.phone == phone));
}


@override
int get hashCode => Object.hash(runtimeType,id,region,name,address,hours,phone);

@override
String toString() {
  return 'PickupPointInfo(id: $id, region: $region, name: $name, address: $address, hours: $hours, phone: $phone)';
}


}

/// @nodoc
abstract mixin class _$PickupPointInfoCopyWith<$Res> implements $PickupPointInfoCopyWith<$Res> {
  factory _$PickupPointInfoCopyWith(_PickupPointInfo value, $Res Function(_PickupPointInfo) _then) = __$PickupPointInfoCopyWithImpl;
@override @useResult
$Res call({
 String id, String region, String name, String address, String hours, String phone
});




}
/// @nodoc
class __$PickupPointInfoCopyWithImpl<$Res>
    implements _$PickupPointInfoCopyWith<$Res> {
  __$PickupPointInfoCopyWithImpl(this._self, this._then);

  final _PickupPointInfo _self;
  final $Res Function(_PickupPointInfo) _then;

/// Create a copy of PickupPointInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? region = null,Object? name = null,Object? address = null,Object? hours = null,Object? phone = null,}) {
  return _then(_PickupPointInfo(
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
mixin _$StoreContacts {

 List<String> get phones; String get address; String get hours; String? get telegram; String? get whatsapp; String? get email;
/// Create a copy of StoreContacts
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreContactsCopyWith<StoreContacts> get copyWith => _$StoreContactsCopyWithImpl<StoreContacts>(this as StoreContacts, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreContacts&&const DeepCollectionEquality().equals(other.phones, phones)&&(identical(other.address, address) || other.address == address)&&(identical(other.hours, hours) || other.hours == hours)&&(identical(other.telegram, telegram) || other.telegram == telegram)&&(identical(other.whatsapp, whatsapp) || other.whatsapp == whatsapp)&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(phones),address,hours,telegram,whatsapp,email);

@override
String toString() {
  return 'StoreContacts(phones: $phones, address: $address, hours: $hours, telegram: $telegram, whatsapp: $whatsapp, email: $email)';
}


}

/// @nodoc
abstract mixin class $StoreContactsCopyWith<$Res>  {
  factory $StoreContactsCopyWith(StoreContacts value, $Res Function(StoreContacts) _then) = _$StoreContactsCopyWithImpl;
@useResult
$Res call({
 List<String> phones, String address, String hours, String? telegram, String? whatsapp, String? email
});




}
/// @nodoc
class _$StoreContactsCopyWithImpl<$Res>
    implements $StoreContactsCopyWith<$Res> {
  _$StoreContactsCopyWithImpl(this._self, this._then);

  final StoreContacts _self;
  final $Res Function(StoreContacts) _then;

/// Create a copy of StoreContacts
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


/// Adds pattern-matching-related methods to [StoreContacts].
extension StoreContactsPatterns on StoreContacts {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StoreContacts value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StoreContacts() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StoreContacts value)  $default,){
final _that = this;
switch (_that) {
case _StoreContacts():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StoreContacts value)?  $default,){
final _that = this;
switch (_that) {
case _StoreContacts() when $default != null:
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
case _StoreContacts() when $default != null:
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
case _StoreContacts():
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
case _StoreContacts() when $default != null:
return $default(_that.phones,_that.address,_that.hours,_that.telegram,_that.whatsapp,_that.email);case _:
  return null;

}
}

}

/// @nodoc


class _StoreContacts implements StoreContacts {
  const _StoreContacts({required final  List<String> phones, required this.address, required this.hours, this.telegram, this.whatsapp, this.email}): _phones = phones;
  

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

/// Create a copy of StoreContacts
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreContactsCopyWith<_StoreContacts> get copyWith => __$StoreContactsCopyWithImpl<_StoreContacts>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreContacts&&const DeepCollectionEquality().equals(other._phones, _phones)&&(identical(other.address, address) || other.address == address)&&(identical(other.hours, hours) || other.hours == hours)&&(identical(other.telegram, telegram) || other.telegram == telegram)&&(identical(other.whatsapp, whatsapp) || other.whatsapp == whatsapp)&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_phones),address,hours,telegram,whatsapp,email);

@override
String toString() {
  return 'StoreContacts(phones: $phones, address: $address, hours: $hours, telegram: $telegram, whatsapp: $whatsapp, email: $email)';
}


}

/// @nodoc
abstract mixin class _$StoreContactsCopyWith<$Res> implements $StoreContactsCopyWith<$Res> {
  factory _$StoreContactsCopyWith(_StoreContacts value, $Res Function(_StoreContacts) _then) = __$StoreContactsCopyWithImpl;
@override @useResult
$Res call({
 List<String> phones, String address, String hours, String? telegram, String? whatsapp, String? email
});




}
/// @nodoc
class __$StoreContactsCopyWithImpl<$Res>
    implements _$StoreContactsCopyWith<$Res> {
  __$StoreContactsCopyWithImpl(this._self, this._then);

  final _StoreContacts _self;
  final $Res Function(_StoreContacts) _then;

/// Create a copy of StoreContacts
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? phones = null,Object? address = null,Object? hours = null,Object? telegram = freezed,Object? whatsapp = freezed,Object? email = freezed,}) {
  return _then(_StoreContacts(
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
