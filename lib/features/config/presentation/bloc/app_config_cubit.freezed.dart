// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_config_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppConfigState {

 AppConfig? get config; AppAccess get access;/// A request is running («Проверить снова» shows a spinner).
 bool get isChecking;/// The last request failed: retried when the network comes back.
 bool get hasFailed;
/// Create a copy of AppConfigState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppConfigStateCopyWith<AppConfigState> get copyWith => _$AppConfigStateCopyWithImpl<AppConfigState>(this as AppConfigState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppConfigState&&(identical(other.config, config) || other.config == config)&&(identical(other.access, access) || other.access == access)&&(identical(other.isChecking, isChecking) || other.isChecking == isChecking)&&(identical(other.hasFailed, hasFailed) || other.hasFailed == hasFailed));
}


@override
int get hashCode => Object.hash(runtimeType,config,access,isChecking,hasFailed);

@override
String toString() {
  return 'AppConfigState(config: $config, access: $access, isChecking: $isChecking, hasFailed: $hasFailed)';
}


}

/// @nodoc
abstract mixin class $AppConfigStateCopyWith<$Res>  {
  factory $AppConfigStateCopyWith(AppConfigState value, $Res Function(AppConfigState) _then) = _$AppConfigStateCopyWithImpl;
@useResult
$Res call({
 AppConfig? config, AppAccess access, bool isChecking, bool hasFailed
});


$AppConfigCopyWith<$Res>? get config;

}
/// @nodoc
class _$AppConfigStateCopyWithImpl<$Res>
    implements $AppConfigStateCopyWith<$Res> {
  _$AppConfigStateCopyWithImpl(this._self, this._then);

  final AppConfigState _self;
  final $Res Function(AppConfigState) _then;

/// Create a copy of AppConfigState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? config = freezed,Object? access = null,Object? isChecking = null,Object? hasFailed = null,}) {
  return _then(_self.copyWith(
config: freezed == config ? _self.config : config // ignore: cast_nullable_to_non_nullable
as AppConfig?,access: null == access ? _self.access : access // ignore: cast_nullable_to_non_nullable
as AppAccess,isChecking: null == isChecking ? _self.isChecking : isChecking // ignore: cast_nullable_to_non_nullable
as bool,hasFailed: null == hasFailed ? _self.hasFailed : hasFailed // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of AppConfigState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppConfigCopyWith<$Res>? get config {
    if (_self.config == null) {
    return null;
  }

  return $AppConfigCopyWith<$Res>(_self.config!, (value) {
    return _then(_self.copyWith(config: value));
  });
}
}


/// Adds pattern-matching-related methods to [AppConfigState].
extension AppConfigStatePatterns on AppConfigState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppConfigState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppConfigState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppConfigState value)  $default,){
final _that = this;
switch (_that) {
case _AppConfigState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppConfigState value)?  $default,){
final _that = this;
switch (_that) {
case _AppConfigState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AppConfig? config,  AppAccess access,  bool isChecking,  bool hasFailed)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppConfigState() when $default != null:
return $default(_that.config,_that.access,_that.isChecking,_that.hasFailed);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AppConfig? config,  AppAccess access,  bool isChecking,  bool hasFailed)  $default,) {final _that = this;
switch (_that) {
case _AppConfigState():
return $default(_that.config,_that.access,_that.isChecking,_that.hasFailed);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AppConfig? config,  AppAccess access,  bool isChecking,  bool hasFailed)?  $default,) {final _that = this;
switch (_that) {
case _AppConfigState() when $default != null:
return $default(_that.config,_that.access,_that.isChecking,_that.hasFailed);case _:
  return null;

}
}

}

/// @nodoc


class _AppConfigState implements AppConfigState {
  const _AppConfigState({this.config, this.access = AppAccess.open, this.isChecking = false, this.hasFailed = false});
  

@override final  AppConfig? config;
@override@JsonKey() final  AppAccess access;
/// A request is running («Проверить снова» shows a spinner).
@override@JsonKey() final  bool isChecking;
/// The last request failed: retried when the network comes back.
@override@JsonKey() final  bool hasFailed;

/// Create a copy of AppConfigState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppConfigStateCopyWith<_AppConfigState> get copyWith => __$AppConfigStateCopyWithImpl<_AppConfigState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppConfigState&&(identical(other.config, config) || other.config == config)&&(identical(other.access, access) || other.access == access)&&(identical(other.isChecking, isChecking) || other.isChecking == isChecking)&&(identical(other.hasFailed, hasFailed) || other.hasFailed == hasFailed));
}


@override
int get hashCode => Object.hash(runtimeType,config,access,isChecking,hasFailed);

@override
String toString() {
  return 'AppConfigState(config: $config, access: $access, isChecking: $isChecking, hasFailed: $hasFailed)';
}


}

/// @nodoc
abstract mixin class _$AppConfigStateCopyWith<$Res> implements $AppConfigStateCopyWith<$Res> {
  factory _$AppConfigStateCopyWith(_AppConfigState value, $Res Function(_AppConfigState) _then) = __$AppConfigStateCopyWithImpl;
@override @useResult
$Res call({
 AppConfig? config, AppAccess access, bool isChecking, bool hasFailed
});


@override $AppConfigCopyWith<$Res>? get config;

}
/// @nodoc
class __$AppConfigStateCopyWithImpl<$Res>
    implements _$AppConfigStateCopyWith<$Res> {
  __$AppConfigStateCopyWithImpl(this._self, this._then);

  final _AppConfigState _self;
  final $Res Function(_AppConfigState) _then;

/// Create a copy of AppConfigState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? config = freezed,Object? access = null,Object? isChecking = null,Object? hasFailed = null,}) {
  return _then(_AppConfigState(
config: freezed == config ? _self.config : config // ignore: cast_nullable_to_non_nullable
as AppConfig?,access: null == access ? _self.access : access // ignore: cast_nullable_to_non_nullable
as AppAccess,isChecking: null == isChecking ? _self.isChecking : isChecking // ignore: cast_nullable_to_non_nullable
as bool,hasFailed: null == hasFailed ? _self.hasFailed : hasFailed // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of AppConfigState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppConfigCopyWith<$Res>? get config {
    if (_self.config == null) {
    return null;
  }

  return $AppConfigCopyWith<$Res>(_self.config!, (value) {
    return _then(_self.copyWith(config: value));
  });
}
}

// dart format on
