// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_edit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfileDraft {

 String get firstName; String get lastName; String get email; String? get regionId;
/// Create a copy of ProfileDraft
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileDraftCopyWith<ProfileDraft> get copyWith => _$ProfileDraftCopyWithImpl<ProfileDraft>(this as ProfileDraft, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileDraft&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.email, email) || other.email == email)&&(identical(other.regionId, regionId) || other.regionId == regionId));
}


@override
int get hashCode => Object.hash(runtimeType,firstName,lastName,email,regionId);

@override
String toString() {
  return 'ProfileDraft(firstName: $firstName, lastName: $lastName, email: $email, regionId: $regionId)';
}


}

/// @nodoc
abstract mixin class $ProfileDraftCopyWith<$Res>  {
  factory $ProfileDraftCopyWith(ProfileDraft value, $Res Function(ProfileDraft) _then) = _$ProfileDraftCopyWithImpl;
@useResult
$Res call({
 String firstName, String lastName, String email, String? regionId
});




}
/// @nodoc
class _$ProfileDraftCopyWithImpl<$Res>
    implements $ProfileDraftCopyWith<$Res> {
  _$ProfileDraftCopyWithImpl(this._self, this._then);

  final ProfileDraft _self;
  final $Res Function(ProfileDraft) _then;

/// Create a copy of ProfileDraft
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? firstName = null,Object? lastName = null,Object? email = null,Object? regionId = freezed,}) {
  return _then(_self.copyWith(
firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,regionId: freezed == regionId ? _self.regionId : regionId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProfileDraft].
extension ProfileDraftPatterns on ProfileDraft {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileDraft value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileDraft() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileDraft value)  $default,){
final _that = this;
switch (_that) {
case _ProfileDraft():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileDraft value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileDraft() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String firstName,  String lastName,  String email,  String? regionId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileDraft() when $default != null:
return $default(_that.firstName,_that.lastName,_that.email,_that.regionId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String firstName,  String lastName,  String email,  String? regionId)  $default,) {final _that = this;
switch (_that) {
case _ProfileDraft():
return $default(_that.firstName,_that.lastName,_that.email,_that.regionId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String firstName,  String lastName,  String email,  String? regionId)?  $default,) {final _that = this;
switch (_that) {
case _ProfileDraft() when $default != null:
return $default(_that.firstName,_that.lastName,_that.email,_that.regionId);case _:
  return null;

}
}

}

/// @nodoc


class _ProfileDraft extends ProfileDraft {
  const _ProfileDraft({this.firstName = '', this.lastName = '', this.email = '', this.regionId}): super._();
  

@override@JsonKey() final  String firstName;
@override@JsonKey() final  String lastName;
@override@JsonKey() final  String email;
@override final  String? regionId;

/// Create a copy of ProfileDraft
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileDraftCopyWith<_ProfileDraft> get copyWith => __$ProfileDraftCopyWithImpl<_ProfileDraft>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileDraft&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.email, email) || other.email == email)&&(identical(other.regionId, regionId) || other.regionId == regionId));
}


@override
int get hashCode => Object.hash(runtimeType,firstName,lastName,email,regionId);

@override
String toString() {
  return 'ProfileDraft(firstName: $firstName, lastName: $lastName, email: $email, regionId: $regionId)';
}


}

/// @nodoc
abstract mixin class _$ProfileDraftCopyWith<$Res> implements $ProfileDraftCopyWith<$Res> {
  factory _$ProfileDraftCopyWith(_ProfileDraft value, $Res Function(_ProfileDraft) _then) = __$ProfileDraftCopyWithImpl;
@override @useResult
$Res call({
 String firstName, String lastName, String email, String? regionId
});




}
/// @nodoc
class __$ProfileDraftCopyWithImpl<$Res>
    implements _$ProfileDraftCopyWith<$Res> {
  __$ProfileDraftCopyWithImpl(this._self, this._then);

  final _ProfileDraft _self;
  final $Res Function(_ProfileDraft) _then;

/// Create a copy of ProfileDraft
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? firstName = null,Object? lastName = null,Object? email = null,Object? regionId = freezed,}) {
  return _then(_ProfileDraft(
firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,regionId: freezed == regionId ? _self.regionId : regionId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$PhoneChange {

 String get requestId; int get codeLength;/// Masked new number, ready to show.
 String get destination;
/// Create a copy of PhoneChange
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PhoneChangeCopyWith<PhoneChange> get copyWith => _$PhoneChangeCopyWithImpl<PhoneChange>(this as PhoneChange, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PhoneChange&&(identical(other.requestId, requestId) || other.requestId == requestId)&&(identical(other.codeLength, codeLength) || other.codeLength == codeLength)&&(identical(other.destination, destination) || other.destination == destination));
}


@override
int get hashCode => Object.hash(runtimeType,requestId,codeLength,destination);

@override
String toString() {
  return 'PhoneChange(requestId: $requestId, codeLength: $codeLength, destination: $destination)';
}


}

/// @nodoc
abstract mixin class $PhoneChangeCopyWith<$Res>  {
  factory $PhoneChangeCopyWith(PhoneChange value, $Res Function(PhoneChange) _then) = _$PhoneChangeCopyWithImpl;
@useResult
$Res call({
 String requestId, int codeLength, String destination
});




}
/// @nodoc
class _$PhoneChangeCopyWithImpl<$Res>
    implements $PhoneChangeCopyWith<$Res> {
  _$PhoneChangeCopyWithImpl(this._self, this._then);

  final PhoneChange _self;
  final $Res Function(PhoneChange) _then;

/// Create a copy of PhoneChange
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? requestId = null,Object? codeLength = null,Object? destination = null,}) {
  return _then(_self.copyWith(
requestId: null == requestId ? _self.requestId : requestId // ignore: cast_nullable_to_non_nullable
as String,codeLength: null == codeLength ? _self.codeLength : codeLength // ignore: cast_nullable_to_non_nullable
as int,destination: null == destination ? _self.destination : destination // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PhoneChange].
extension PhoneChangePatterns on PhoneChange {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PhoneChange value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PhoneChange() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PhoneChange value)  $default,){
final _that = this;
switch (_that) {
case _PhoneChange():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PhoneChange value)?  $default,){
final _that = this;
switch (_that) {
case _PhoneChange() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String requestId,  int codeLength,  String destination)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PhoneChange() when $default != null:
return $default(_that.requestId,_that.codeLength,_that.destination);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String requestId,  int codeLength,  String destination)  $default,) {final _that = this;
switch (_that) {
case _PhoneChange():
return $default(_that.requestId,_that.codeLength,_that.destination);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String requestId,  int codeLength,  String destination)?  $default,) {final _that = this;
switch (_that) {
case _PhoneChange() when $default != null:
return $default(_that.requestId,_that.codeLength,_that.destination);case _:
  return null;

}
}

}

/// @nodoc


class _PhoneChange implements PhoneChange {
  const _PhoneChange({required this.requestId, required this.codeLength, required this.destination});
  

@override final  String requestId;
@override final  int codeLength;
/// Masked new number, ready to show.
@override final  String destination;

/// Create a copy of PhoneChange
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PhoneChangeCopyWith<_PhoneChange> get copyWith => __$PhoneChangeCopyWithImpl<_PhoneChange>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PhoneChange&&(identical(other.requestId, requestId) || other.requestId == requestId)&&(identical(other.codeLength, codeLength) || other.codeLength == codeLength)&&(identical(other.destination, destination) || other.destination == destination));
}


@override
int get hashCode => Object.hash(runtimeType,requestId,codeLength,destination);

@override
String toString() {
  return 'PhoneChange(requestId: $requestId, codeLength: $codeLength, destination: $destination)';
}


}

/// @nodoc
abstract mixin class _$PhoneChangeCopyWith<$Res> implements $PhoneChangeCopyWith<$Res> {
  factory _$PhoneChangeCopyWith(_PhoneChange value, $Res Function(_PhoneChange) _then) = __$PhoneChangeCopyWithImpl;
@override @useResult
$Res call({
 String requestId, int codeLength, String destination
});




}
/// @nodoc
class __$PhoneChangeCopyWithImpl<$Res>
    implements _$PhoneChangeCopyWith<$Res> {
  __$PhoneChangeCopyWithImpl(this._self, this._then);

  final _PhoneChange _self;
  final $Res Function(_PhoneChange) _then;

/// Create a copy of PhoneChange
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? requestId = null,Object? codeLength = null,Object? destination = null,}) {
  return _then(_PhoneChange(
requestId: null == requestId ? _self.requestId : requestId // ignore: cast_nullable_to_non_nullable
as String,codeLength: null == codeLength ? _self.codeLength : codeLength // ignore: cast_nullable_to_non_nullable
as int,destination: null == destination ? _self.destination : destination // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
