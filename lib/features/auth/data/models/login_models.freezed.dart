// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CodeRequestModel {

 String get requestId; int get codeLength; String get channel; String get destination;/// Seconds until a new code may be requested.
 int get resendAfter;
/// Create a copy of CodeRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CodeRequestModelCopyWith<CodeRequestModel> get copyWith => _$CodeRequestModelCopyWithImpl<CodeRequestModel>(this as CodeRequestModel, _$identity);

  /// Serializes this CodeRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CodeRequestModel&&(identical(other.requestId, requestId) || other.requestId == requestId)&&(identical(other.codeLength, codeLength) || other.codeLength == codeLength)&&(identical(other.channel, channel) || other.channel == channel)&&(identical(other.destination, destination) || other.destination == destination)&&(identical(other.resendAfter, resendAfter) || other.resendAfter == resendAfter));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,requestId,codeLength,channel,destination,resendAfter);

@override
String toString() {
  return 'CodeRequestModel(requestId: $requestId, codeLength: $codeLength, channel: $channel, destination: $destination, resendAfter: $resendAfter)';
}


}

/// @nodoc
abstract mixin class $CodeRequestModelCopyWith<$Res>  {
  factory $CodeRequestModelCopyWith(CodeRequestModel value, $Res Function(CodeRequestModel) _then) = _$CodeRequestModelCopyWithImpl;
@useResult
$Res call({
 String requestId, int codeLength, String channel, String destination, int resendAfter
});




}
/// @nodoc
class _$CodeRequestModelCopyWithImpl<$Res>
    implements $CodeRequestModelCopyWith<$Res> {
  _$CodeRequestModelCopyWithImpl(this._self, this._then);

  final CodeRequestModel _self;
  final $Res Function(CodeRequestModel) _then;

/// Create a copy of CodeRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? requestId = null,Object? codeLength = null,Object? channel = null,Object? destination = null,Object? resendAfter = null,}) {
  return _then(_self.copyWith(
requestId: null == requestId ? _self.requestId : requestId // ignore: cast_nullable_to_non_nullable
as String,codeLength: null == codeLength ? _self.codeLength : codeLength // ignore: cast_nullable_to_non_nullable
as int,channel: null == channel ? _self.channel : channel // ignore: cast_nullable_to_non_nullable
as String,destination: null == destination ? _self.destination : destination // ignore: cast_nullable_to_non_nullable
as String,resendAfter: null == resendAfter ? _self.resendAfter : resendAfter // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CodeRequestModel].
extension CodeRequestModelPatterns on CodeRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CodeRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CodeRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CodeRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _CodeRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CodeRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _CodeRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String requestId,  int codeLength,  String channel,  String destination,  int resendAfter)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CodeRequestModel() when $default != null:
return $default(_that.requestId,_that.codeLength,_that.channel,_that.destination,_that.resendAfter);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String requestId,  int codeLength,  String channel,  String destination,  int resendAfter)  $default,) {final _that = this;
switch (_that) {
case _CodeRequestModel():
return $default(_that.requestId,_that.codeLength,_that.channel,_that.destination,_that.resendAfter);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String requestId,  int codeLength,  String channel,  String destination,  int resendAfter)?  $default,) {final _that = this;
switch (_that) {
case _CodeRequestModel() when $default != null:
return $default(_that.requestId,_that.codeLength,_that.channel,_that.destination,_that.resendAfter);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CodeRequestModel extends CodeRequestModel {
  const _CodeRequestModel({required this.requestId, required this.codeLength, required this.channel, required this.destination, required this.resendAfter}): super._();
  factory _CodeRequestModel.fromJson(Map<String, dynamic> json) => _$CodeRequestModelFromJson(json);

@override final  String requestId;
@override final  int codeLength;
@override final  String channel;
@override final  String destination;
/// Seconds until a new code may be requested.
@override final  int resendAfter;

/// Create a copy of CodeRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CodeRequestModelCopyWith<_CodeRequestModel> get copyWith => __$CodeRequestModelCopyWithImpl<_CodeRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CodeRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CodeRequestModel&&(identical(other.requestId, requestId) || other.requestId == requestId)&&(identical(other.codeLength, codeLength) || other.codeLength == codeLength)&&(identical(other.channel, channel) || other.channel == channel)&&(identical(other.destination, destination) || other.destination == destination)&&(identical(other.resendAfter, resendAfter) || other.resendAfter == resendAfter));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,requestId,codeLength,channel,destination,resendAfter);

@override
String toString() {
  return 'CodeRequestModel(requestId: $requestId, codeLength: $codeLength, channel: $channel, destination: $destination, resendAfter: $resendAfter)';
}


}

/// @nodoc
abstract mixin class _$CodeRequestModelCopyWith<$Res> implements $CodeRequestModelCopyWith<$Res> {
  factory _$CodeRequestModelCopyWith(_CodeRequestModel value, $Res Function(_CodeRequestModel) _then) = __$CodeRequestModelCopyWithImpl;
@override @useResult
$Res call({
 String requestId, int codeLength, String channel, String destination, int resendAfter
});




}
/// @nodoc
class __$CodeRequestModelCopyWithImpl<$Res>
    implements _$CodeRequestModelCopyWith<$Res> {
  __$CodeRequestModelCopyWithImpl(this._self, this._then);

  final _CodeRequestModel _self;
  final $Res Function(_CodeRequestModel) _then;

/// Create a copy of CodeRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? requestId = null,Object? codeLength = null,Object? channel = null,Object? destination = null,Object? resendAfter = null,}) {
  return _then(_CodeRequestModel(
requestId: null == requestId ? _self.requestId : requestId // ignore: cast_nullable_to_non_nullable
as String,codeLength: null == codeLength ? _self.codeLength : codeLength // ignore: cast_nullable_to_non_nullable
as int,channel: null == channel ? _self.channel : channel // ignore: cast_nullable_to_non_nullable
as String,destination: null == destination ? _self.destination : destination // ignore: cast_nullable_to_non_nullable
as String,resendAfter: null == resendAfter ? _self.resendAfter : resendAfter // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$LoginResponseModel {

 String get accessToken; String get refreshToken; UserProfileModel get profile;
/// Create a copy of LoginResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginResponseModelCopyWith<LoginResponseModel> get copyWith => _$LoginResponseModelCopyWithImpl<LoginResponseModel>(this as LoginResponseModel, _$identity);

  /// Serializes this LoginResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginResponseModel&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.profile, profile) || other.profile == profile));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accessToken,refreshToken,profile);

@override
String toString() {
  return 'LoginResponseModel(accessToken: $accessToken, refreshToken: $refreshToken, profile: $profile)';
}


}

/// @nodoc
abstract mixin class $LoginResponseModelCopyWith<$Res>  {
  factory $LoginResponseModelCopyWith(LoginResponseModel value, $Res Function(LoginResponseModel) _then) = _$LoginResponseModelCopyWithImpl;
@useResult
$Res call({
 String accessToken, String refreshToken, UserProfileModel profile
});


$UserProfileModelCopyWith<$Res> get profile;

}
/// @nodoc
class _$LoginResponseModelCopyWithImpl<$Res>
    implements $LoginResponseModelCopyWith<$Res> {
  _$LoginResponseModelCopyWithImpl(this._self, this._then);

  final LoginResponseModel _self;
  final $Res Function(LoginResponseModel) _then;

/// Create a copy of LoginResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? accessToken = null,Object? refreshToken = null,Object? profile = null,}) {
  return _then(_self.copyWith(
accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,refreshToken: null == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String,profile: null == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as UserProfileModel,
  ));
}
/// Create a copy of LoginResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserProfileModelCopyWith<$Res> get profile {
  
  return $UserProfileModelCopyWith<$Res>(_self.profile, (value) {
    return _then(_self.copyWith(profile: value));
  });
}
}


/// Adds pattern-matching-related methods to [LoginResponseModel].
extension LoginResponseModelPatterns on LoginResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _LoginResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _LoginResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String accessToken,  String refreshToken,  UserProfileModel profile)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginResponseModel() when $default != null:
return $default(_that.accessToken,_that.refreshToken,_that.profile);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String accessToken,  String refreshToken,  UserProfileModel profile)  $default,) {final _that = this;
switch (_that) {
case _LoginResponseModel():
return $default(_that.accessToken,_that.refreshToken,_that.profile);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String accessToken,  String refreshToken,  UserProfileModel profile)?  $default,) {final _that = this;
switch (_that) {
case _LoginResponseModel() when $default != null:
return $default(_that.accessToken,_that.refreshToken,_that.profile);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LoginResponseModel implements LoginResponseModel {
  const _LoginResponseModel({required this.accessToken, required this.refreshToken, required this.profile});
  factory _LoginResponseModel.fromJson(Map<String, dynamic> json) => _$LoginResponseModelFromJson(json);

@override final  String accessToken;
@override final  String refreshToken;
@override final  UserProfileModel profile;

/// Create a copy of LoginResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginResponseModelCopyWith<_LoginResponseModel> get copyWith => __$LoginResponseModelCopyWithImpl<_LoginResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LoginResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginResponseModel&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.profile, profile) || other.profile == profile));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accessToken,refreshToken,profile);

@override
String toString() {
  return 'LoginResponseModel(accessToken: $accessToken, refreshToken: $refreshToken, profile: $profile)';
}


}

/// @nodoc
abstract mixin class _$LoginResponseModelCopyWith<$Res> implements $LoginResponseModelCopyWith<$Res> {
  factory _$LoginResponseModelCopyWith(_LoginResponseModel value, $Res Function(_LoginResponseModel) _then) = __$LoginResponseModelCopyWithImpl;
@override @useResult
$Res call({
 String accessToken, String refreshToken, UserProfileModel profile
});


@override $UserProfileModelCopyWith<$Res> get profile;

}
/// @nodoc
class __$LoginResponseModelCopyWithImpl<$Res>
    implements _$LoginResponseModelCopyWith<$Res> {
  __$LoginResponseModelCopyWithImpl(this._self, this._then);

  final _LoginResponseModel _self;
  final $Res Function(_LoginResponseModel) _then;

/// Create a copy of LoginResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? accessToken = null,Object? refreshToken = null,Object? profile = null,}) {
  return _then(_LoginResponseModel(
accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,refreshToken: null == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String,profile: null == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as UserProfileModel,
  ));
}

/// Create a copy of LoginResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserProfileModelCopyWith<$Res> get profile {
  
  return $UserProfileModelCopyWith<$Res>(_self.profile, (value) {
    return _then(_self.copyWith(profile: value));
  });
}
}

// dart format on
