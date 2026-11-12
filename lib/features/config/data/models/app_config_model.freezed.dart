// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_config_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppConfigModel {

 String get minVersion; String get storeUrl; SupportContactsModel get support; bool get isMaintenance; String? get maintenanceMessage; bool get isAccountBlocked;
/// Create a copy of AppConfigModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppConfigModelCopyWith<AppConfigModel> get copyWith => _$AppConfigModelCopyWithImpl<AppConfigModel>(this as AppConfigModel, _$identity);

  /// Serializes this AppConfigModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppConfigModel&&(identical(other.minVersion, minVersion) || other.minVersion == minVersion)&&(identical(other.storeUrl, storeUrl) || other.storeUrl == storeUrl)&&(identical(other.support, support) || other.support == support)&&(identical(other.isMaintenance, isMaintenance) || other.isMaintenance == isMaintenance)&&(identical(other.maintenanceMessage, maintenanceMessage) || other.maintenanceMessage == maintenanceMessage)&&(identical(other.isAccountBlocked, isAccountBlocked) || other.isAccountBlocked == isAccountBlocked));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,minVersion,storeUrl,support,isMaintenance,maintenanceMessage,isAccountBlocked);

@override
String toString() {
  return 'AppConfigModel(minVersion: $minVersion, storeUrl: $storeUrl, support: $support, isMaintenance: $isMaintenance, maintenanceMessage: $maintenanceMessage, isAccountBlocked: $isAccountBlocked)';
}


}

/// @nodoc
abstract mixin class $AppConfigModelCopyWith<$Res>  {
  factory $AppConfigModelCopyWith(AppConfigModel value, $Res Function(AppConfigModel) _then) = _$AppConfigModelCopyWithImpl;
@useResult
$Res call({
 String minVersion, String storeUrl, SupportContactsModel support, bool isMaintenance, String? maintenanceMessage, bool isAccountBlocked
});


$SupportContactsModelCopyWith<$Res> get support;

}
/// @nodoc
class _$AppConfigModelCopyWithImpl<$Res>
    implements $AppConfigModelCopyWith<$Res> {
  _$AppConfigModelCopyWithImpl(this._self, this._then);

  final AppConfigModel _self;
  final $Res Function(AppConfigModel) _then;

/// Create a copy of AppConfigModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? minVersion = null,Object? storeUrl = null,Object? support = null,Object? isMaintenance = null,Object? maintenanceMessage = freezed,Object? isAccountBlocked = null,}) {
  return _then(_self.copyWith(
minVersion: null == minVersion ? _self.minVersion : minVersion // ignore: cast_nullable_to_non_nullable
as String,storeUrl: null == storeUrl ? _self.storeUrl : storeUrl // ignore: cast_nullable_to_non_nullable
as String,support: null == support ? _self.support : support // ignore: cast_nullable_to_non_nullable
as SupportContactsModel,isMaintenance: null == isMaintenance ? _self.isMaintenance : isMaintenance // ignore: cast_nullable_to_non_nullable
as bool,maintenanceMessage: freezed == maintenanceMessage ? _self.maintenanceMessage : maintenanceMessage // ignore: cast_nullable_to_non_nullable
as String?,isAccountBlocked: null == isAccountBlocked ? _self.isAccountBlocked : isAccountBlocked // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of AppConfigModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SupportContactsModelCopyWith<$Res> get support {
  
  return $SupportContactsModelCopyWith<$Res>(_self.support, (value) {
    return _then(_self.copyWith(support: value));
  });
}
}


/// Adds pattern-matching-related methods to [AppConfigModel].
extension AppConfigModelPatterns on AppConfigModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppConfigModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppConfigModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppConfigModel value)  $default,){
final _that = this;
switch (_that) {
case _AppConfigModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppConfigModel value)?  $default,){
final _that = this;
switch (_that) {
case _AppConfigModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String minVersion,  String storeUrl,  SupportContactsModel support,  bool isMaintenance,  String? maintenanceMessage,  bool isAccountBlocked)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppConfigModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String minVersion,  String storeUrl,  SupportContactsModel support,  bool isMaintenance,  String? maintenanceMessage,  bool isAccountBlocked)  $default,) {final _that = this;
switch (_that) {
case _AppConfigModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String minVersion,  String storeUrl,  SupportContactsModel support,  bool isMaintenance,  String? maintenanceMessage,  bool isAccountBlocked)?  $default,) {final _that = this;
switch (_that) {
case _AppConfigModel() when $default != null:
return $default(_that.minVersion,_that.storeUrl,_that.support,_that.isMaintenance,_that.maintenanceMessage,_that.isAccountBlocked);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AppConfigModel implements AppConfigModel {
  const _AppConfigModel({required this.minVersion, required this.storeUrl, required this.support, this.isMaintenance = false, this.maintenanceMessage, this.isAccountBlocked = false});
  factory _AppConfigModel.fromJson(Map<String, dynamic> json) => _$AppConfigModelFromJson(json);

@override final  String minVersion;
@override final  String storeUrl;
@override final  SupportContactsModel support;
@override@JsonKey() final  bool isMaintenance;
@override final  String? maintenanceMessage;
@override@JsonKey() final  bool isAccountBlocked;

/// Create a copy of AppConfigModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppConfigModelCopyWith<_AppConfigModel> get copyWith => __$AppConfigModelCopyWithImpl<_AppConfigModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AppConfigModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppConfigModel&&(identical(other.minVersion, minVersion) || other.minVersion == minVersion)&&(identical(other.storeUrl, storeUrl) || other.storeUrl == storeUrl)&&(identical(other.support, support) || other.support == support)&&(identical(other.isMaintenance, isMaintenance) || other.isMaintenance == isMaintenance)&&(identical(other.maintenanceMessage, maintenanceMessage) || other.maintenanceMessage == maintenanceMessage)&&(identical(other.isAccountBlocked, isAccountBlocked) || other.isAccountBlocked == isAccountBlocked));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,minVersion,storeUrl,support,isMaintenance,maintenanceMessage,isAccountBlocked);

@override
String toString() {
  return 'AppConfigModel(minVersion: $minVersion, storeUrl: $storeUrl, support: $support, isMaintenance: $isMaintenance, maintenanceMessage: $maintenanceMessage, isAccountBlocked: $isAccountBlocked)';
}


}

/// @nodoc
abstract mixin class _$AppConfigModelCopyWith<$Res> implements $AppConfigModelCopyWith<$Res> {
  factory _$AppConfigModelCopyWith(_AppConfigModel value, $Res Function(_AppConfigModel) _then) = __$AppConfigModelCopyWithImpl;
@override @useResult
$Res call({
 String minVersion, String storeUrl, SupportContactsModel support, bool isMaintenance, String? maintenanceMessage, bool isAccountBlocked
});


@override $SupportContactsModelCopyWith<$Res> get support;

}
/// @nodoc
class __$AppConfigModelCopyWithImpl<$Res>
    implements _$AppConfigModelCopyWith<$Res> {
  __$AppConfigModelCopyWithImpl(this._self, this._then);

  final _AppConfigModel _self;
  final $Res Function(_AppConfigModel) _then;

/// Create a copy of AppConfigModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? minVersion = null,Object? storeUrl = null,Object? support = null,Object? isMaintenance = null,Object? maintenanceMessage = freezed,Object? isAccountBlocked = null,}) {
  return _then(_AppConfigModel(
minVersion: null == minVersion ? _self.minVersion : minVersion // ignore: cast_nullable_to_non_nullable
as String,storeUrl: null == storeUrl ? _self.storeUrl : storeUrl // ignore: cast_nullable_to_non_nullable
as String,support: null == support ? _self.support : support // ignore: cast_nullable_to_non_nullable
as SupportContactsModel,isMaintenance: null == isMaintenance ? _self.isMaintenance : isMaintenance // ignore: cast_nullable_to_non_nullable
as bool,maintenanceMessage: freezed == maintenanceMessage ? _self.maintenanceMessage : maintenanceMessage // ignore: cast_nullable_to_non_nullable
as String?,isAccountBlocked: null == isAccountBlocked ? _self.isAccountBlocked : isAccountBlocked // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of AppConfigModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SupportContactsModelCopyWith<$Res> get support {
  
  return $SupportContactsModelCopyWith<$Res>(_self.support, (value) {
    return _then(_self.copyWith(support: value));
  });
}
}


/// @nodoc
mixin _$SupportContactsModel {

 String get phone; String? get telegram; String? get whatsapp;
/// Create a copy of SupportContactsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SupportContactsModelCopyWith<SupportContactsModel> get copyWith => _$SupportContactsModelCopyWithImpl<SupportContactsModel>(this as SupportContactsModel, _$identity);

  /// Serializes this SupportContactsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SupportContactsModel&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.telegram, telegram) || other.telegram == telegram)&&(identical(other.whatsapp, whatsapp) || other.whatsapp == whatsapp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,phone,telegram,whatsapp);

@override
String toString() {
  return 'SupportContactsModel(phone: $phone, telegram: $telegram, whatsapp: $whatsapp)';
}


}

/// @nodoc
abstract mixin class $SupportContactsModelCopyWith<$Res>  {
  factory $SupportContactsModelCopyWith(SupportContactsModel value, $Res Function(SupportContactsModel) _then) = _$SupportContactsModelCopyWithImpl;
@useResult
$Res call({
 String phone, String? telegram, String? whatsapp
});




}
/// @nodoc
class _$SupportContactsModelCopyWithImpl<$Res>
    implements $SupportContactsModelCopyWith<$Res> {
  _$SupportContactsModelCopyWithImpl(this._self, this._then);

  final SupportContactsModel _self;
  final $Res Function(SupportContactsModel) _then;

/// Create a copy of SupportContactsModel
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


/// Adds pattern-matching-related methods to [SupportContactsModel].
extension SupportContactsModelPatterns on SupportContactsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SupportContactsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SupportContactsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SupportContactsModel value)  $default,){
final _that = this;
switch (_that) {
case _SupportContactsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SupportContactsModel value)?  $default,){
final _that = this;
switch (_that) {
case _SupportContactsModel() when $default != null:
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
case _SupportContactsModel() when $default != null:
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
case _SupportContactsModel():
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
case _SupportContactsModel() when $default != null:
return $default(_that.phone,_that.telegram,_that.whatsapp);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SupportContactsModel implements SupportContactsModel {
  const _SupportContactsModel({required this.phone, this.telegram, this.whatsapp});
  factory _SupportContactsModel.fromJson(Map<String, dynamic> json) => _$SupportContactsModelFromJson(json);

@override final  String phone;
@override final  String? telegram;
@override final  String? whatsapp;

/// Create a copy of SupportContactsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SupportContactsModelCopyWith<_SupportContactsModel> get copyWith => __$SupportContactsModelCopyWithImpl<_SupportContactsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SupportContactsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SupportContactsModel&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.telegram, telegram) || other.telegram == telegram)&&(identical(other.whatsapp, whatsapp) || other.whatsapp == whatsapp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,phone,telegram,whatsapp);

@override
String toString() {
  return 'SupportContactsModel(phone: $phone, telegram: $telegram, whatsapp: $whatsapp)';
}


}

/// @nodoc
abstract mixin class _$SupportContactsModelCopyWith<$Res> implements $SupportContactsModelCopyWith<$Res> {
  factory _$SupportContactsModelCopyWith(_SupportContactsModel value, $Res Function(_SupportContactsModel) _then) = __$SupportContactsModelCopyWithImpl;
@override @useResult
$Res call({
 String phone, String? telegram, String? whatsapp
});




}
/// @nodoc
class __$SupportContactsModelCopyWithImpl<$Res>
    implements _$SupportContactsModelCopyWith<$Res> {
  __$SupportContactsModelCopyWithImpl(this._self, this._then);

  final _SupportContactsModel _self;
  final $Res Function(_SupportContactsModel) _then;

/// Create a copy of SupportContactsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? phone = null,Object? telegram = freezed,Object? whatsapp = freezed,}) {
  return _then(_SupportContactsModel(
phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,telegram: freezed == telegram ? _self.telegram : telegram // ignore: cast_nullable_to_non_nullable
as String?,whatsapp: freezed == whatsapp ? _self.whatsapp : whatsapp // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
