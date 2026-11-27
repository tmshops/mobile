// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wholesale_application_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WholesaleApplicationState {

 bool get isLoading;/// `null` until loaded.
 WholesaleApplication? get application;/// Loading failed: nothing to show but «Повторить».
 Failure? get loadFailure; WholesaleForm get form;/// «Подать снова» after a rejection: the form instead of the status.
 bool get isReapplying; bool get isSending; Failure? get sendFailure;
/// Create a copy of WholesaleApplicationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WholesaleApplicationStateCopyWith<WholesaleApplicationState> get copyWith => _$WholesaleApplicationStateCopyWithImpl<WholesaleApplicationState>(this as WholesaleApplicationState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WholesaleApplicationState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.application, application) || other.application == application)&&(identical(other.loadFailure, loadFailure) || other.loadFailure == loadFailure)&&(identical(other.form, form) || other.form == form)&&(identical(other.isReapplying, isReapplying) || other.isReapplying == isReapplying)&&(identical(other.isSending, isSending) || other.isSending == isSending)&&(identical(other.sendFailure, sendFailure) || other.sendFailure == sendFailure));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,application,loadFailure,form,isReapplying,isSending,sendFailure);

@override
String toString() {
  return 'WholesaleApplicationState(isLoading: $isLoading, application: $application, loadFailure: $loadFailure, form: $form, isReapplying: $isReapplying, isSending: $isSending, sendFailure: $sendFailure)';
}


}

/// @nodoc
abstract mixin class $WholesaleApplicationStateCopyWith<$Res>  {
  factory $WholesaleApplicationStateCopyWith(WholesaleApplicationState value, $Res Function(WholesaleApplicationState) _then) = _$WholesaleApplicationStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, WholesaleApplication? application, Failure? loadFailure, WholesaleForm form, bool isReapplying, bool isSending, Failure? sendFailure
});


$WholesaleApplicationCopyWith<$Res>? get application;$WholesaleFormCopyWith<$Res> get form;

}
/// @nodoc
class _$WholesaleApplicationStateCopyWithImpl<$Res>
    implements $WholesaleApplicationStateCopyWith<$Res> {
  _$WholesaleApplicationStateCopyWithImpl(this._self, this._then);

  final WholesaleApplicationState _self;
  final $Res Function(WholesaleApplicationState) _then;

/// Create a copy of WholesaleApplicationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? application = freezed,Object? loadFailure = freezed,Object? form = null,Object? isReapplying = null,Object? isSending = null,Object? sendFailure = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,application: freezed == application ? _self.application : application // ignore: cast_nullable_to_non_nullable
as WholesaleApplication?,loadFailure: freezed == loadFailure ? _self.loadFailure : loadFailure // ignore: cast_nullable_to_non_nullable
as Failure?,form: null == form ? _self.form : form // ignore: cast_nullable_to_non_nullable
as WholesaleForm,isReapplying: null == isReapplying ? _self.isReapplying : isReapplying // ignore: cast_nullable_to_non_nullable
as bool,isSending: null == isSending ? _self.isSending : isSending // ignore: cast_nullable_to_non_nullable
as bool,sendFailure: freezed == sendFailure ? _self.sendFailure : sendFailure // ignore: cast_nullable_to_non_nullable
as Failure?,
  ));
}
/// Create a copy of WholesaleApplicationState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WholesaleApplicationCopyWith<$Res>? get application {
    if (_self.application == null) {
    return null;
  }

  return $WholesaleApplicationCopyWith<$Res>(_self.application!, (value) {
    return _then(_self.copyWith(application: value));
  });
}/// Create a copy of WholesaleApplicationState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WholesaleFormCopyWith<$Res> get form {
  
  return $WholesaleFormCopyWith<$Res>(_self.form, (value) {
    return _then(_self.copyWith(form: value));
  });
}
}


/// Adds pattern-matching-related methods to [WholesaleApplicationState].
extension WholesaleApplicationStatePatterns on WholesaleApplicationState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WholesaleApplicationState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WholesaleApplicationState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WholesaleApplicationState value)  $default,){
final _that = this;
switch (_that) {
case _WholesaleApplicationState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WholesaleApplicationState value)?  $default,){
final _that = this;
switch (_that) {
case _WholesaleApplicationState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  WholesaleApplication? application,  Failure? loadFailure,  WholesaleForm form,  bool isReapplying,  bool isSending,  Failure? sendFailure)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WholesaleApplicationState() when $default != null:
return $default(_that.isLoading,_that.application,_that.loadFailure,_that.form,_that.isReapplying,_that.isSending,_that.sendFailure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  WholesaleApplication? application,  Failure? loadFailure,  WholesaleForm form,  bool isReapplying,  bool isSending,  Failure? sendFailure)  $default,) {final _that = this;
switch (_that) {
case _WholesaleApplicationState():
return $default(_that.isLoading,_that.application,_that.loadFailure,_that.form,_that.isReapplying,_that.isSending,_that.sendFailure);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  WholesaleApplication? application,  Failure? loadFailure,  WholesaleForm form,  bool isReapplying,  bool isSending,  Failure? sendFailure)?  $default,) {final _that = this;
switch (_that) {
case _WholesaleApplicationState() when $default != null:
return $default(_that.isLoading,_that.application,_that.loadFailure,_that.form,_that.isReapplying,_that.isSending,_that.sendFailure);case _:
  return null;

}
}

}

/// @nodoc


class _WholesaleApplicationState extends WholesaleApplicationState {
  const _WholesaleApplicationState({this.isLoading = true, this.application, this.loadFailure, this.form = const WholesaleForm(), this.isReapplying = false, this.isSending = false, this.sendFailure}): super._();
  

@override@JsonKey() final  bool isLoading;
/// `null` until loaded.
@override final  WholesaleApplication? application;
/// Loading failed: nothing to show but «Повторить».
@override final  Failure? loadFailure;
@override@JsonKey() final  WholesaleForm form;
/// «Подать снова» after a rejection: the form instead of the status.
@override@JsonKey() final  bool isReapplying;
@override@JsonKey() final  bool isSending;
@override final  Failure? sendFailure;

/// Create a copy of WholesaleApplicationState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WholesaleApplicationStateCopyWith<_WholesaleApplicationState> get copyWith => __$WholesaleApplicationStateCopyWithImpl<_WholesaleApplicationState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WholesaleApplicationState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.application, application) || other.application == application)&&(identical(other.loadFailure, loadFailure) || other.loadFailure == loadFailure)&&(identical(other.form, form) || other.form == form)&&(identical(other.isReapplying, isReapplying) || other.isReapplying == isReapplying)&&(identical(other.isSending, isSending) || other.isSending == isSending)&&(identical(other.sendFailure, sendFailure) || other.sendFailure == sendFailure));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,application,loadFailure,form,isReapplying,isSending,sendFailure);

@override
String toString() {
  return 'WholesaleApplicationState(isLoading: $isLoading, application: $application, loadFailure: $loadFailure, form: $form, isReapplying: $isReapplying, isSending: $isSending, sendFailure: $sendFailure)';
}


}

/// @nodoc
abstract mixin class _$WholesaleApplicationStateCopyWith<$Res> implements $WholesaleApplicationStateCopyWith<$Res> {
  factory _$WholesaleApplicationStateCopyWith(_WholesaleApplicationState value, $Res Function(_WholesaleApplicationState) _then) = __$WholesaleApplicationStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, WholesaleApplication? application, Failure? loadFailure, WholesaleForm form, bool isReapplying, bool isSending, Failure? sendFailure
});


@override $WholesaleApplicationCopyWith<$Res>? get application;@override $WholesaleFormCopyWith<$Res> get form;

}
/// @nodoc
class __$WholesaleApplicationStateCopyWithImpl<$Res>
    implements _$WholesaleApplicationStateCopyWith<$Res> {
  __$WholesaleApplicationStateCopyWithImpl(this._self, this._then);

  final _WholesaleApplicationState _self;
  final $Res Function(_WholesaleApplicationState) _then;

/// Create a copy of WholesaleApplicationState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? application = freezed,Object? loadFailure = freezed,Object? form = null,Object? isReapplying = null,Object? isSending = null,Object? sendFailure = freezed,}) {
  return _then(_WholesaleApplicationState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,application: freezed == application ? _self.application : application // ignore: cast_nullable_to_non_nullable
as WholesaleApplication?,loadFailure: freezed == loadFailure ? _self.loadFailure : loadFailure // ignore: cast_nullable_to_non_nullable
as Failure?,form: null == form ? _self.form : form // ignore: cast_nullable_to_non_nullable
as WholesaleForm,isReapplying: null == isReapplying ? _self.isReapplying : isReapplying // ignore: cast_nullable_to_non_nullable
as bool,isSending: null == isSending ? _self.isSending : isSending // ignore: cast_nullable_to_non_nullable
as bool,sendFailure: freezed == sendFailure ? _self.sendFailure : sendFailure // ignore: cast_nullable_to_non_nullable
as Failure?,
  ));
}

/// Create a copy of WholesaleApplicationState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WholesaleApplicationCopyWith<$Res>? get application {
    if (_self.application == null) {
    return null;
  }

  return $WholesaleApplicationCopyWith<$Res>(_self.application!, (value) {
    return _then(_self.copyWith(application: value));
  });
}/// Create a copy of WholesaleApplicationState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WholesaleFormCopyWith<$Res> get form {
  
  return $WholesaleFormCopyWith<$Res>(_self.form, (value) {
    return _then(_self.copyWith(form: value));
  });
}
}

// dart format on
