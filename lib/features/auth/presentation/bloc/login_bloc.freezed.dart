// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoginEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginEvent()';
}


}

/// @nodoc
class $LoginEventCopyWith<$Res>  {
$LoginEventCopyWith(LoginEvent _, $Res Function(LoginEvent) __);
}


/// Adds pattern-matching-related methods to [LoginEvent].
extension LoginEventPatterns on LoginEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoginPhoneChanged value)?  phoneChanged,TResult Function( LoginConsentChanged value)?  consentChanged,TResult Function( LoginCodeRequested value)?  codeRequested,TResult Function( LoginResendRequested value)?  resendRequested,TResult Function( LoginCodeEdited value)?  codeEdited,TResult Function( LoginCodeSubmitted value)?  codeSubmitted,TResult Function( LoginPhoneEditRequested value)?  phoneEditRequested,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoginPhoneChanged() when phoneChanged != null:
return phoneChanged(_that);case LoginConsentChanged() when consentChanged != null:
return consentChanged(_that);case LoginCodeRequested() when codeRequested != null:
return codeRequested(_that);case LoginResendRequested() when resendRequested != null:
return resendRequested(_that);case LoginCodeEdited() when codeEdited != null:
return codeEdited(_that);case LoginCodeSubmitted() when codeSubmitted != null:
return codeSubmitted(_that);case LoginPhoneEditRequested() when phoneEditRequested != null:
return phoneEditRequested(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoginPhoneChanged value)  phoneChanged,required TResult Function( LoginConsentChanged value)  consentChanged,required TResult Function( LoginCodeRequested value)  codeRequested,required TResult Function( LoginResendRequested value)  resendRequested,required TResult Function( LoginCodeEdited value)  codeEdited,required TResult Function( LoginCodeSubmitted value)  codeSubmitted,required TResult Function( LoginPhoneEditRequested value)  phoneEditRequested,}){
final _that = this;
switch (_that) {
case LoginPhoneChanged():
return phoneChanged(_that);case LoginConsentChanged():
return consentChanged(_that);case LoginCodeRequested():
return codeRequested(_that);case LoginResendRequested():
return resendRequested(_that);case LoginCodeEdited():
return codeEdited(_that);case LoginCodeSubmitted():
return codeSubmitted(_that);case LoginPhoneEditRequested():
return phoneEditRequested(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoginPhoneChanged value)?  phoneChanged,TResult? Function( LoginConsentChanged value)?  consentChanged,TResult? Function( LoginCodeRequested value)?  codeRequested,TResult? Function( LoginResendRequested value)?  resendRequested,TResult? Function( LoginCodeEdited value)?  codeEdited,TResult? Function( LoginCodeSubmitted value)?  codeSubmitted,TResult? Function( LoginPhoneEditRequested value)?  phoneEditRequested,}){
final _that = this;
switch (_that) {
case LoginPhoneChanged() when phoneChanged != null:
return phoneChanged(_that);case LoginConsentChanged() when consentChanged != null:
return consentChanged(_that);case LoginCodeRequested() when codeRequested != null:
return codeRequested(_that);case LoginResendRequested() when resendRequested != null:
return resendRequested(_that);case LoginCodeEdited() when codeEdited != null:
return codeEdited(_that);case LoginCodeSubmitted() when codeSubmitted != null:
return codeSubmitted(_that);case LoginPhoneEditRequested() when phoneEditRequested != null:
return phoneEditRequested(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String phone)?  phoneChanged,TResult Function( bool hasConsent)?  consentChanged,TResult Function( String languageCode)?  codeRequested,TResult Function( String languageCode)?  resendRequested,TResult Function()?  codeEdited,TResult Function( String languageCode,  String code)?  codeSubmitted,TResult Function()?  phoneEditRequested,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoginPhoneChanged() when phoneChanged != null:
return phoneChanged(_that.phone);case LoginConsentChanged() when consentChanged != null:
return consentChanged(_that.hasConsent);case LoginCodeRequested() when codeRequested != null:
return codeRequested(_that.languageCode);case LoginResendRequested() when resendRequested != null:
return resendRequested(_that.languageCode);case LoginCodeEdited() when codeEdited != null:
return codeEdited();case LoginCodeSubmitted() when codeSubmitted != null:
return codeSubmitted(_that.languageCode,_that.code);case LoginPhoneEditRequested() when phoneEditRequested != null:
return phoneEditRequested();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String phone)  phoneChanged,required TResult Function( bool hasConsent)  consentChanged,required TResult Function( String languageCode)  codeRequested,required TResult Function( String languageCode)  resendRequested,required TResult Function()  codeEdited,required TResult Function( String languageCode,  String code)  codeSubmitted,required TResult Function()  phoneEditRequested,}) {final _that = this;
switch (_that) {
case LoginPhoneChanged():
return phoneChanged(_that.phone);case LoginConsentChanged():
return consentChanged(_that.hasConsent);case LoginCodeRequested():
return codeRequested(_that.languageCode);case LoginResendRequested():
return resendRequested(_that.languageCode);case LoginCodeEdited():
return codeEdited();case LoginCodeSubmitted():
return codeSubmitted(_that.languageCode,_that.code);case LoginPhoneEditRequested():
return phoneEditRequested();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String phone)?  phoneChanged,TResult? Function( bool hasConsent)?  consentChanged,TResult? Function( String languageCode)?  codeRequested,TResult? Function( String languageCode)?  resendRequested,TResult? Function()?  codeEdited,TResult? Function( String languageCode,  String code)?  codeSubmitted,TResult? Function()?  phoneEditRequested,}) {final _that = this;
switch (_that) {
case LoginPhoneChanged() when phoneChanged != null:
return phoneChanged(_that.phone);case LoginConsentChanged() when consentChanged != null:
return consentChanged(_that.hasConsent);case LoginCodeRequested() when codeRequested != null:
return codeRequested(_that.languageCode);case LoginResendRequested() when resendRequested != null:
return resendRequested(_that.languageCode);case LoginCodeEdited() when codeEdited != null:
return codeEdited();case LoginCodeSubmitted() when codeSubmitted != null:
return codeSubmitted(_that.languageCode,_that.code);case LoginPhoneEditRequested() when phoneEditRequested != null:
return phoneEditRequested();case _:
  return null;

}
}

}

/// @nodoc


class LoginPhoneChanged implements LoginEvent {
  const LoginPhoneChanged(this.phone);
  

 final  String phone;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginPhoneChangedCopyWith<LoginPhoneChanged> get copyWith => _$LoginPhoneChangedCopyWithImpl<LoginPhoneChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginPhoneChanged&&(identical(other.phone, phone) || other.phone == phone));
}


@override
int get hashCode => Object.hash(runtimeType,phone);

@override
String toString() {
  return 'LoginEvent.phoneChanged(phone: $phone)';
}


}

/// @nodoc
abstract mixin class $LoginPhoneChangedCopyWith<$Res> implements $LoginEventCopyWith<$Res> {
  factory $LoginPhoneChangedCopyWith(LoginPhoneChanged value, $Res Function(LoginPhoneChanged) _then) = _$LoginPhoneChangedCopyWithImpl;
@useResult
$Res call({
 String phone
});




}
/// @nodoc
class _$LoginPhoneChangedCopyWithImpl<$Res>
    implements $LoginPhoneChangedCopyWith<$Res> {
  _$LoginPhoneChangedCopyWithImpl(this._self, this._then);

  final LoginPhoneChanged _self;
  final $Res Function(LoginPhoneChanged) _then;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? phone = null,}) {
  return _then(LoginPhoneChanged(
null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class LoginConsentChanged implements LoginEvent {
  const LoginConsentChanged({required this.hasConsent});
  

 final  bool hasConsent;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginConsentChangedCopyWith<LoginConsentChanged> get copyWith => _$LoginConsentChangedCopyWithImpl<LoginConsentChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginConsentChanged&&(identical(other.hasConsent, hasConsent) || other.hasConsent == hasConsent));
}


@override
int get hashCode => Object.hash(runtimeType,hasConsent);

@override
String toString() {
  return 'LoginEvent.consentChanged(hasConsent: $hasConsent)';
}


}

/// @nodoc
abstract mixin class $LoginConsentChangedCopyWith<$Res> implements $LoginEventCopyWith<$Res> {
  factory $LoginConsentChangedCopyWith(LoginConsentChanged value, $Res Function(LoginConsentChanged) _then) = _$LoginConsentChangedCopyWithImpl;
@useResult
$Res call({
 bool hasConsent
});




}
/// @nodoc
class _$LoginConsentChangedCopyWithImpl<$Res>
    implements $LoginConsentChangedCopyWith<$Res> {
  _$LoginConsentChangedCopyWithImpl(this._self, this._then);

  final LoginConsentChanged _self;
  final $Res Function(LoginConsentChanged) _then;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? hasConsent = null,}) {
  return _then(LoginConsentChanged(
hasConsent: null == hasConsent ? _self.hasConsent : hasConsent // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class LoginCodeRequested implements LoginEvent {
  const LoginCodeRequested({required this.languageCode});
  

 final  String languageCode;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginCodeRequestedCopyWith<LoginCodeRequested> get copyWith => _$LoginCodeRequestedCopyWithImpl<LoginCodeRequested>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginCodeRequested&&(identical(other.languageCode, languageCode) || other.languageCode == languageCode));
}


@override
int get hashCode => Object.hash(runtimeType,languageCode);

@override
String toString() {
  return 'LoginEvent.codeRequested(languageCode: $languageCode)';
}


}

/// @nodoc
abstract mixin class $LoginCodeRequestedCopyWith<$Res> implements $LoginEventCopyWith<$Res> {
  factory $LoginCodeRequestedCopyWith(LoginCodeRequested value, $Res Function(LoginCodeRequested) _then) = _$LoginCodeRequestedCopyWithImpl;
@useResult
$Res call({
 String languageCode
});




}
/// @nodoc
class _$LoginCodeRequestedCopyWithImpl<$Res>
    implements $LoginCodeRequestedCopyWith<$Res> {
  _$LoginCodeRequestedCopyWithImpl(this._self, this._then);

  final LoginCodeRequested _self;
  final $Res Function(LoginCodeRequested) _then;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? languageCode = null,}) {
  return _then(LoginCodeRequested(
languageCode: null == languageCode ? _self.languageCode : languageCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class LoginResendRequested implements LoginEvent {
  const LoginResendRequested({required this.languageCode});
  

 final  String languageCode;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginResendRequestedCopyWith<LoginResendRequested> get copyWith => _$LoginResendRequestedCopyWithImpl<LoginResendRequested>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginResendRequested&&(identical(other.languageCode, languageCode) || other.languageCode == languageCode));
}


@override
int get hashCode => Object.hash(runtimeType,languageCode);

@override
String toString() {
  return 'LoginEvent.resendRequested(languageCode: $languageCode)';
}


}

/// @nodoc
abstract mixin class $LoginResendRequestedCopyWith<$Res> implements $LoginEventCopyWith<$Res> {
  factory $LoginResendRequestedCopyWith(LoginResendRequested value, $Res Function(LoginResendRequested) _then) = _$LoginResendRequestedCopyWithImpl;
@useResult
$Res call({
 String languageCode
});




}
/// @nodoc
class _$LoginResendRequestedCopyWithImpl<$Res>
    implements $LoginResendRequestedCopyWith<$Res> {
  _$LoginResendRequestedCopyWithImpl(this._self, this._then);

  final LoginResendRequested _self;
  final $Res Function(LoginResendRequested) _then;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? languageCode = null,}) {
  return _then(LoginResendRequested(
languageCode: null == languageCode ? _self.languageCode : languageCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class LoginCodeEdited implements LoginEvent {
  const LoginCodeEdited();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginCodeEdited);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginEvent.codeEdited()';
}


}




/// @nodoc


class LoginCodeSubmitted implements LoginEvent {
  const LoginCodeSubmitted({required this.languageCode, required this.code});
  

 final  String languageCode;
 final  String code;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginCodeSubmittedCopyWith<LoginCodeSubmitted> get copyWith => _$LoginCodeSubmittedCopyWithImpl<LoginCodeSubmitted>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginCodeSubmitted&&(identical(other.languageCode, languageCode) || other.languageCode == languageCode)&&(identical(other.code, code) || other.code == code));
}


@override
int get hashCode => Object.hash(runtimeType,languageCode,code);

@override
String toString() {
  return 'LoginEvent.codeSubmitted(languageCode: $languageCode, code: $code)';
}


}

/// @nodoc
abstract mixin class $LoginCodeSubmittedCopyWith<$Res> implements $LoginEventCopyWith<$Res> {
  factory $LoginCodeSubmittedCopyWith(LoginCodeSubmitted value, $Res Function(LoginCodeSubmitted) _then) = _$LoginCodeSubmittedCopyWithImpl;
@useResult
$Res call({
 String languageCode, String code
});




}
/// @nodoc
class _$LoginCodeSubmittedCopyWithImpl<$Res>
    implements $LoginCodeSubmittedCopyWith<$Res> {
  _$LoginCodeSubmittedCopyWithImpl(this._self, this._then);

  final LoginCodeSubmitted _self;
  final $Res Function(LoginCodeSubmitted) _then;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? languageCode = null,Object? code = null,}) {
  return _then(LoginCodeSubmitted(
languageCode: null == languageCode ? _self.languageCode : languageCode // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class LoginPhoneEditRequested implements LoginEvent {
  const LoginPhoneEditRequested();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginPhoneEditRequested);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginEvent.phoneEditRequested()';
}


}




/// @nodoc
mixin _$LoginState {

 String get phone; bool get hasConsent; LoginStep get step;/// A request is on its way: buttons show a spinner, taps are ignored.
 bool get isBusy; CodeRequest? get request; Failure? get failure;/// Set by the first «Получить код», so field errors show only once
/// asked.
 bool get showErrors; UserProfile? get profile;
/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginStateCopyWith<LoginState> get copyWith => _$LoginStateCopyWithImpl<LoginState>(this as LoginState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginState&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.hasConsent, hasConsent) || other.hasConsent == hasConsent)&&(identical(other.step, step) || other.step == step)&&(identical(other.isBusy, isBusy) || other.isBusy == isBusy)&&(identical(other.request, request) || other.request == request)&&(identical(other.failure, failure) || other.failure == failure)&&(identical(other.showErrors, showErrors) || other.showErrors == showErrors)&&(identical(other.profile, profile) || other.profile == profile));
}


@override
int get hashCode => Object.hash(runtimeType,phone,hasConsent,step,isBusy,request,failure,showErrors,profile);

@override
String toString() {
  return 'LoginState(phone: $phone, hasConsent: $hasConsent, step: $step, isBusy: $isBusy, request: $request, failure: $failure, showErrors: $showErrors, profile: $profile)';
}


}

/// @nodoc
abstract mixin class $LoginStateCopyWith<$Res>  {
  factory $LoginStateCopyWith(LoginState value, $Res Function(LoginState) _then) = _$LoginStateCopyWithImpl;
@useResult
$Res call({
 String phone, bool hasConsent, LoginStep step, bool isBusy, CodeRequest? request, Failure? failure, bool showErrors, UserProfile? profile
});


$CodeRequestCopyWith<$Res>? get request;$UserProfileCopyWith<$Res>? get profile;

}
/// @nodoc
class _$LoginStateCopyWithImpl<$Res>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._self, this._then);

  final LoginState _self;
  final $Res Function(LoginState) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? phone = null,Object? hasConsent = null,Object? step = null,Object? isBusy = null,Object? request = freezed,Object? failure = freezed,Object? showErrors = null,Object? profile = freezed,}) {
  return _then(_self.copyWith(
phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,hasConsent: null == hasConsent ? _self.hasConsent : hasConsent // ignore: cast_nullable_to_non_nullable
as bool,step: null == step ? _self.step : step // ignore: cast_nullable_to_non_nullable
as LoginStep,isBusy: null == isBusy ? _self.isBusy : isBusy // ignore: cast_nullable_to_non_nullable
as bool,request: freezed == request ? _self.request : request // ignore: cast_nullable_to_non_nullable
as CodeRequest?,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,showErrors: null == showErrors ? _self.showErrors : showErrors // ignore: cast_nullable_to_non_nullable
as bool,profile: freezed == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as UserProfile?,
  ));
}
/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CodeRequestCopyWith<$Res>? get request {
    if (_self.request == null) {
    return null;
  }

  return $CodeRequestCopyWith<$Res>(_self.request!, (value) {
    return _then(_self.copyWith(request: value));
  });
}/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserProfileCopyWith<$Res>? get profile {
    if (_self.profile == null) {
    return null;
  }

  return $UserProfileCopyWith<$Res>(_self.profile!, (value) {
    return _then(_self.copyWith(profile: value));
  });
}
}


/// Adds pattern-matching-related methods to [LoginState].
extension LoginStatePatterns on LoginState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginState value)  $default,){
final _that = this;
switch (_that) {
case _LoginState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginState value)?  $default,){
final _that = this;
switch (_that) {
case _LoginState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String phone,  bool hasConsent,  LoginStep step,  bool isBusy,  CodeRequest? request,  Failure? failure,  bool showErrors,  UserProfile? profile)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginState() when $default != null:
return $default(_that.phone,_that.hasConsent,_that.step,_that.isBusy,_that.request,_that.failure,_that.showErrors,_that.profile);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String phone,  bool hasConsent,  LoginStep step,  bool isBusy,  CodeRequest? request,  Failure? failure,  bool showErrors,  UserProfile? profile)  $default,) {final _that = this;
switch (_that) {
case _LoginState():
return $default(_that.phone,_that.hasConsent,_that.step,_that.isBusy,_that.request,_that.failure,_that.showErrors,_that.profile);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String phone,  bool hasConsent,  LoginStep step,  bool isBusy,  CodeRequest? request,  Failure? failure,  bool showErrors,  UserProfile? profile)?  $default,) {final _that = this;
switch (_that) {
case _LoginState() when $default != null:
return $default(_that.phone,_that.hasConsent,_that.step,_that.isBusy,_that.request,_that.failure,_that.showErrors,_that.profile);case _:
  return null;

}
}

}

/// @nodoc


class _LoginState extends LoginState {
  const _LoginState({this.phone = '', this.hasConsent = false, this.step = LoginStep.phone, this.isBusy = false, this.request, this.failure, this.showErrors = false, this.profile}): super._();
  

@override@JsonKey() final  String phone;
@override@JsonKey() final  bool hasConsent;
@override@JsonKey() final  LoginStep step;
/// A request is on its way: buttons show a spinner, taps are ignored.
@override@JsonKey() final  bool isBusy;
@override final  CodeRequest? request;
@override final  Failure? failure;
/// Set by the first «Получить код», so field errors show only once
/// asked.
@override@JsonKey() final  bool showErrors;
@override final  UserProfile? profile;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginStateCopyWith<_LoginState> get copyWith => __$LoginStateCopyWithImpl<_LoginState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginState&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.hasConsent, hasConsent) || other.hasConsent == hasConsent)&&(identical(other.step, step) || other.step == step)&&(identical(other.isBusy, isBusy) || other.isBusy == isBusy)&&(identical(other.request, request) || other.request == request)&&(identical(other.failure, failure) || other.failure == failure)&&(identical(other.showErrors, showErrors) || other.showErrors == showErrors)&&(identical(other.profile, profile) || other.profile == profile));
}


@override
int get hashCode => Object.hash(runtimeType,phone,hasConsent,step,isBusy,request,failure,showErrors,profile);

@override
String toString() {
  return 'LoginState(phone: $phone, hasConsent: $hasConsent, step: $step, isBusy: $isBusy, request: $request, failure: $failure, showErrors: $showErrors, profile: $profile)';
}


}

/// @nodoc
abstract mixin class _$LoginStateCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$LoginStateCopyWith(_LoginState value, $Res Function(_LoginState) _then) = __$LoginStateCopyWithImpl;
@override @useResult
$Res call({
 String phone, bool hasConsent, LoginStep step, bool isBusy, CodeRequest? request, Failure? failure, bool showErrors, UserProfile? profile
});


@override $CodeRequestCopyWith<$Res>? get request;@override $UserProfileCopyWith<$Res>? get profile;

}
/// @nodoc
class __$LoginStateCopyWithImpl<$Res>
    implements _$LoginStateCopyWith<$Res> {
  __$LoginStateCopyWithImpl(this._self, this._then);

  final _LoginState _self;
  final $Res Function(_LoginState) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? phone = null,Object? hasConsent = null,Object? step = null,Object? isBusy = null,Object? request = freezed,Object? failure = freezed,Object? showErrors = null,Object? profile = freezed,}) {
  return _then(_LoginState(
phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,hasConsent: null == hasConsent ? _self.hasConsent : hasConsent // ignore: cast_nullable_to_non_nullable
as bool,step: null == step ? _self.step : step // ignore: cast_nullable_to_non_nullable
as LoginStep,isBusy: null == isBusy ? _self.isBusy : isBusy // ignore: cast_nullable_to_non_nullable
as bool,request: freezed == request ? _self.request : request // ignore: cast_nullable_to_non_nullable
as CodeRequest?,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,showErrors: null == showErrors ? _self.showErrors : showErrors // ignore: cast_nullable_to_non_nullable
as bool,profile: freezed == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as UserProfile?,
  ));
}

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CodeRequestCopyWith<$Res>? get request {
    if (_self.request == null) {
    return null;
  }

  return $CodeRequestCopyWith<$Res>(_self.request!, (value) {
    return _then(_self.copyWith(request: value));
  });
}/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserProfileCopyWith<$Res>? get profile {
    if (_self.profile == null) {
    return null;
  }

  return $UserProfileCopyWith<$Res>(_self.profile!, (value) {
    return _then(_self.copyWith(profile: value));
  });
}
}

// dart format on
