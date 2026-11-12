// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SupportContacts {

/// Display form, e.g. «+993 12 00 00 00».
 String get phone; String? get telegram; String? get whatsapp;
/// Create a copy of SupportContacts
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SupportContactsCopyWith<SupportContacts> get copyWith => _$SupportContactsCopyWithImpl<SupportContacts>(this as SupportContacts, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SupportContacts&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.telegram, telegram) || other.telegram == telegram)&&(identical(other.whatsapp, whatsapp) || other.whatsapp == whatsapp));
}


@override
int get hashCode => Object.hash(runtimeType,phone,telegram,whatsapp);

@override
String toString() {
  return 'SupportContacts(phone: $phone, telegram: $telegram, whatsapp: $whatsapp)';
}


}

/// @nodoc
abstract mixin class $SupportContactsCopyWith<$Res>  {
  factory $SupportContactsCopyWith(SupportContacts value, $Res Function(SupportContacts) _then) = _$SupportContactsCopyWithImpl;
@useResult
$Res call({
 String phone, String? telegram, String? whatsapp
});




}
/// @nodoc
class _$SupportContactsCopyWithImpl<$Res>
    implements $SupportContactsCopyWith<$Res> {
  _$SupportContactsCopyWithImpl(this._self, this._then);

  final SupportContacts _self;
  final $Res Function(SupportContacts) _then;

/// Create a copy of SupportContacts
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? phone = null,Object? telegram = freezed,Object? whatsapp = freezed,}) {
  return _then(_self.copyWith(
phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,telegram: freezed == telegram ? _self.telegram : telegram // ignore: cast_nullable_to_non_nullable
as String?,whatsapp: freezed == whatsapp ? _self.whatsapp : whatsapp // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SupportContacts].
extension SupportContactsPatterns on SupportContacts {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SupportContacts value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SupportContacts() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SupportContacts value)  $default,){
final _that = this;
switch (_that) {
case _SupportContacts():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SupportContacts value)?  $default,){
final _that = this;
switch (_that) {
case _SupportContacts() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String phone,  String? telegram,  String? whatsapp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SupportContacts() when $default != null:
return $default(_that.phone,_that.telegram,_that.whatsapp);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String phone,  String? telegram,  String? whatsapp)  $default,) {final _that = this;
switch (_that) {
case _SupportContacts():
return $default(_that.phone,_that.telegram,_that.whatsapp);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String phone,  String? telegram,  String? whatsapp)?  $default,) {final _that = this;
switch (_that) {
case _SupportContacts() when $default != null:
return $default(_that.phone,_that.telegram,_that.whatsapp);case _:
  return null;

}
}

}

/// @nodoc


class _SupportContacts implements SupportContacts {
  const _SupportContacts({required this.phone, this.telegram, this.whatsapp});
  

/// Display form, e.g. «+993 12 00 00 00».
@override final  String phone;
@override final  String? telegram;
@override final  String? whatsapp;

/// Create a copy of SupportContacts
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SupportContactsCopyWith<_SupportContacts> get copyWith => __$SupportContactsCopyWithImpl<_SupportContacts>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SupportContacts&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.telegram, telegram) || other.telegram == telegram)&&(identical(other.whatsapp, whatsapp) || other.whatsapp == whatsapp));
}


@override
int get hashCode => Object.hash(runtimeType,phone,telegram,whatsapp);

@override
String toString() {
  return 'SupportContacts(phone: $phone, telegram: $telegram, whatsapp: $whatsapp)';
}


}

/// @nodoc
abstract mixin class _$SupportContactsCopyWith<$Res> implements $SupportContactsCopyWith<$Res> {
  factory _$SupportContactsCopyWith(_SupportContacts value, $Res Function(_SupportContacts) _then) = __$SupportContactsCopyWithImpl;
@override @useResult
$Res call({
 String phone, String? telegram, String? whatsapp
});




}
/// @nodoc
class __$SupportContactsCopyWithImpl<$Res>
    implements _$SupportContactsCopyWith<$Res> {
  __$SupportContactsCopyWithImpl(this._self, this._then);

  final _SupportContacts _self;
  final $Res Function(_SupportContacts) _then;

/// Create a copy of SupportContacts
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? phone = null,Object? telegram = freezed,Object? whatsapp = freezed,}) {
  return _then(_SupportContacts(
phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,telegram: freezed == telegram ? _self.telegram : telegram // ignore: cast_nullable_to_non_nullable
as String?,whatsapp: freezed == whatsapp ? _self.whatsapp : whatsapp // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$AppConfig {

/// Oldest app version the API still serves, e.g. «1.2.0».
 String get minVersion;/// Store page of this app for this platform.
 String get storeUrl; SupportContacts get support; bool get isMaintenance;/// Server text such as «Вернёмся к 14:00»; the app has its own default.
 String? get maintenanceMessage;/// The signed-in customer is blocked (TZ §5.2, §8.1: 403 blocked).
 bool get isAccountBlocked;
/// Create a copy of AppConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppConfigCopyWith<AppConfig> get copyWith => _$AppConfigCopyWithImpl<AppConfig>(this as AppConfig, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppConfig&&(identical(other.minVersion, minVersion) || other.minVersion == minVersion)&&(identical(other.storeUrl, storeUrl) || other.storeUrl == storeUrl)&&(identical(other.support, support) || other.support == support)&&(identical(other.isMaintenance, isMaintenance) || other.isMaintenance == isMaintenance)&&(identical(other.maintenanceMessage, maintenanceMessage) || other.maintenanceMessage == maintenanceMessage)&&(identical(other.isAccountBlocked, isAccountBlocked) || other.isAccountBlocked == isAccountBlocked));
}


@override
int get hashCode => Object.hash(runtimeType,minVersion,storeUrl,support,isMaintenance,maintenanceMessage,isAccountBlocked);

@override
String toString() {
  return 'AppConfig(minVersion: $minVersion, storeUrl: $storeUrl, support: $support, isMaintenance: $isMaintenance, maintenanceMessage: $maintenanceMessage, isAccountBlocked: $isAccountBlocked)';
}


}

/// @nodoc
abstract mixin class $AppConfigCopyWith<$Res>  {
  factory $AppConfigCopyWith(AppConfig value, $Res Function(AppConfig) _then) = _$AppConfigCopyWithImpl;
@useResult
$Res call({
 String minVersion, String storeUrl, SupportContacts support, bool isMaintenance, String? maintenanceMessage, bool isAccountBlocked
});


$SupportContactsCopyWith<$Res> get support;

}
/// @nodoc
class _$AppConfigCopyWithImpl<$Res>
    implements $AppConfigCopyWith<$Res> {
  _$AppConfigCopyWithImpl(this._self, this._then);

  final AppConfig _self;
  final $Res Function(AppConfig) _then;

/// Create a copy of AppConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? minVersion = null,Object? storeUrl = null,Object? support = null,Object? isMaintenance = null,Object? maintenanceMessage = freezed,Object? isAccountBlocked = null,}) {
  return _then(_self.copyWith(
minVersion: null == minVersion ? _self.minVersion : minVersion // ignore: cast_nullable_to_non_nullable
as String,storeUrl: null == storeUrl ? _self.storeUrl : storeUrl // ignore: cast_nullable_to_non_nullable
as String,support: null == support ? _self.support : support // ignore: cast_nullable_to_non_nullable
as SupportContacts,isMaintenance: null == isMaintenance ? _self.isMaintenance : isMaintenance // ignore: cast_nullable_to_non_nullable
as bool,maintenanceMessage: freezed == maintenanceMessage ? _self.maintenanceMessage : maintenanceMessage // ignore: cast_nullable_to_non_nullable
as String?,isAccountBlocked: null == isAccountBlocked ? _self.isAccountBlocked : isAccountBlocked // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of AppConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SupportContactsCopyWith<$Res> get support {
  
  return $SupportContactsCopyWith<$Res>(_self.support, (value) {
    return _then(_self.copyWith(support: value));
  });
}
}


/// Adds pattern-matching-related methods to [AppConfig].
extension AppConfigPatterns on AppConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppConfig value)  $default,){
final _that = this;
switch (_that) {
case _AppConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppConfig value)?  $default,){
final _that = this;
switch (_that) {
case _AppConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String minVersion,  String storeUrl,  SupportContacts support,  bool isMaintenance,  String? maintenanceMessage,  bool isAccountBlocked)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppConfig() when $default != null:
return $default(_that.minVersion,_that.storeUrl,_that.support,_that.isMaintenance,_that.maintenanceMessage,_that.isAccountBlocked);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String minVersion,  String storeUrl,  SupportContacts support,  bool isMaintenance,  String? maintenanceMessage,  bool isAccountBlocked)  $default,) {final _that = this;
switch (_that) {
case _AppConfig():
return $default(_that.minVersion,_that.storeUrl,_that.support,_that.isMaintenance,_that.maintenanceMessage,_that.isAccountBlocked);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String minVersion,  String storeUrl,  SupportContacts support,  bool isMaintenance,  String? maintenanceMessage,  bool isAccountBlocked)?  $default,) {final _that = this;
switch (_that) {
case _AppConfig() when $default != null:
return $default(_that.minVersion,_that.storeUrl,_that.support,_that.isMaintenance,_that.maintenanceMessage,_that.isAccountBlocked);case _:
  return null;

}
}

}

/// @nodoc


class _AppConfig extends AppConfig {
  const _AppConfig({required this.minVersion, required this.storeUrl, required this.support, this.isMaintenance = false, this.maintenanceMessage, this.isAccountBlocked = false}): super._();
  

/// Oldest app version the API still serves, e.g. «1.2.0».
@override final  String minVersion;
/// Store page of this app for this platform.
@override final  String storeUrl;
@override final  SupportContacts support;
@override@JsonKey() final  bool isMaintenance;
/// Server text such as «Вернёмся к 14:00»; the app has its own default.
@override final  String? maintenanceMessage;
/// The signed-in customer is blocked (TZ §5.2, §8.1: 403 blocked).
@override@JsonKey() final  bool isAccountBlocked;

/// Create a copy of AppConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppConfigCopyWith<_AppConfig> get copyWith => __$AppConfigCopyWithImpl<_AppConfig>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppConfig&&(identical(other.minVersion, minVersion) || other.minVersion == minVersion)&&(identical(other.storeUrl, storeUrl) || other.storeUrl == storeUrl)&&(identical(other.support, support) || other.support == support)&&(identical(other.isMaintenance, isMaintenance) || other.isMaintenance == isMaintenance)&&(identical(other.maintenanceMessage, maintenanceMessage) || other.maintenanceMessage == maintenanceMessage)&&(identical(other.isAccountBlocked, isAccountBlocked) || other.isAccountBlocked == isAccountBlocked));
}


@override
int get hashCode => Object.hash(runtimeType,minVersion,storeUrl,support,isMaintenance,maintenanceMessage,isAccountBlocked);

@override
String toString() {
  return 'AppConfig(minVersion: $minVersion, storeUrl: $storeUrl, support: $support, isMaintenance: $isMaintenance, maintenanceMessage: $maintenanceMessage, isAccountBlocked: $isAccountBlocked)';
}


}

/// @nodoc
abstract mixin class _$AppConfigCopyWith<$Res> implements $AppConfigCopyWith<$Res> {
  factory _$AppConfigCopyWith(_AppConfig value, $Res Function(_AppConfig) _then) = __$AppConfigCopyWithImpl;
@override @useResult
$Res call({
 String minVersion, String storeUrl, SupportContacts support, bool isMaintenance, String? maintenanceMessage, bool isAccountBlocked
});


@override $SupportContactsCopyWith<$Res> get support;

}
/// @nodoc
class __$AppConfigCopyWithImpl<$Res>
    implements _$AppConfigCopyWith<$Res> {
  __$AppConfigCopyWithImpl(this._self, this._then);

  final _AppConfig _self;
  final $Res Function(_AppConfig) _then;

/// Create a copy of AppConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? minVersion = null,Object? storeUrl = null,Object? support = null,Object? isMaintenance = null,Object? maintenanceMessage = freezed,Object? isAccountBlocked = null,}) {
  return _then(_AppConfig(
minVersion: null == minVersion ? _self.minVersion : minVersion // ignore: cast_nullable_to_non_nullable
as String,storeUrl: null == storeUrl ? _self.storeUrl : storeUrl // ignore: cast_nullable_to_non_nullable
as String,support: null == support ? _self.support : support // ignore: cast_nullable_to_non_nullable
as SupportContacts,isMaintenance: null == isMaintenance ? _self.isMaintenance : isMaintenance // ignore: cast_nullable_to_non_nullable
as bool,maintenanceMessage: freezed == maintenanceMessage ? _self.maintenanceMessage : maintenanceMessage // ignore: cast_nullable_to_non_nullable
as String?,isAccountBlocked: null == isAccountBlocked ? _self.isAccountBlocked : isAccountBlocked // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of AppConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SupportContactsCopyWith<$Res> get support {
  
  return $SupportContactsCopyWith<$Res>(_self.support, (value) {
    return _then(_self.copyWith(support: value));
  });
}
}

// dart format on
