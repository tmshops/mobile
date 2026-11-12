// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_edit_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfileEditState {

/// What the form shows.
 ProfileDraft get draft;/// What the server has; «Сохранить» needs a difference.
 ProfileDraft get saved; bool get isSaving; Failure? get failure;
/// Create a copy of ProfileEditState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileEditStateCopyWith<ProfileEditState> get copyWith => _$ProfileEditStateCopyWithImpl<ProfileEditState>(this as ProfileEditState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileEditState&&(identical(other.draft, draft) || other.draft == draft)&&(identical(other.saved, saved) || other.saved == saved)&&(identical(other.isSaving, isSaving) || other.isSaving == isSaving)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,draft,saved,isSaving,failure);

@override
String toString() {
  return 'ProfileEditState(draft: $draft, saved: $saved, isSaving: $isSaving, failure: $failure)';
}


}

/// @nodoc
abstract mixin class $ProfileEditStateCopyWith<$Res>  {
  factory $ProfileEditStateCopyWith(ProfileEditState value, $Res Function(ProfileEditState) _then) = _$ProfileEditStateCopyWithImpl;
@useResult
$Res call({
 ProfileDraft draft, ProfileDraft saved, bool isSaving, Failure? failure
});


$ProfileDraftCopyWith<$Res> get draft;$ProfileDraftCopyWith<$Res> get saved;

}
/// @nodoc
class _$ProfileEditStateCopyWithImpl<$Res>
    implements $ProfileEditStateCopyWith<$Res> {
  _$ProfileEditStateCopyWithImpl(this._self, this._then);

  final ProfileEditState _self;
  final $Res Function(ProfileEditState) _then;

/// Create a copy of ProfileEditState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? draft = null,Object? saved = null,Object? isSaving = null,Object? failure = freezed,}) {
  return _then(_self.copyWith(
draft: null == draft ? _self.draft : draft // ignore: cast_nullable_to_non_nullable
as ProfileDraft,saved: null == saved ? _self.saved : saved // ignore: cast_nullable_to_non_nullable
as ProfileDraft,isSaving: null == isSaving ? _self.isSaving : isSaving // ignore: cast_nullable_to_non_nullable
as bool,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,
  ));
}
/// Create a copy of ProfileEditState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileDraftCopyWith<$Res> get draft {
  
  return $ProfileDraftCopyWith<$Res>(_self.draft, (value) {
    return _then(_self.copyWith(draft: value));
  });
}/// Create a copy of ProfileEditState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileDraftCopyWith<$Res> get saved {
  
  return $ProfileDraftCopyWith<$Res>(_self.saved, (value) {
    return _then(_self.copyWith(saved: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProfileEditState].
extension ProfileEditStatePatterns on ProfileEditState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileEditState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileEditState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileEditState value)  $default,){
final _that = this;
switch (_that) {
case _ProfileEditState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileEditState value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileEditState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ProfileDraft draft,  ProfileDraft saved,  bool isSaving,  Failure? failure)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileEditState() when $default != null:
return $default(_that.draft,_that.saved,_that.isSaving,_that.failure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ProfileDraft draft,  ProfileDraft saved,  bool isSaving,  Failure? failure)  $default,) {final _that = this;
switch (_that) {
case _ProfileEditState():
return $default(_that.draft,_that.saved,_that.isSaving,_that.failure);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ProfileDraft draft,  ProfileDraft saved,  bool isSaving,  Failure? failure)?  $default,) {final _that = this;
switch (_that) {
case _ProfileEditState() when $default != null:
return $default(_that.draft,_that.saved,_that.isSaving,_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class _ProfileEditState extends ProfileEditState {
  const _ProfileEditState({this.draft = const ProfileDraft(), this.saved = const ProfileDraft(), this.isSaving = false, this.failure}): super._();
  

/// What the form shows.
@override@JsonKey() final  ProfileDraft draft;
/// What the server has; «Сохранить» needs a difference.
@override@JsonKey() final  ProfileDraft saved;
@override@JsonKey() final  bool isSaving;
@override final  Failure? failure;

/// Create a copy of ProfileEditState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileEditStateCopyWith<_ProfileEditState> get copyWith => __$ProfileEditStateCopyWithImpl<_ProfileEditState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileEditState&&(identical(other.draft, draft) || other.draft == draft)&&(identical(other.saved, saved) || other.saved == saved)&&(identical(other.isSaving, isSaving) || other.isSaving == isSaving)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,draft,saved,isSaving,failure);

@override
String toString() {
  return 'ProfileEditState(draft: $draft, saved: $saved, isSaving: $isSaving, failure: $failure)';
}


}

/// @nodoc
abstract mixin class _$ProfileEditStateCopyWith<$Res> implements $ProfileEditStateCopyWith<$Res> {
  factory _$ProfileEditStateCopyWith(_ProfileEditState value, $Res Function(_ProfileEditState) _then) = __$ProfileEditStateCopyWithImpl;
@override @useResult
$Res call({
 ProfileDraft draft, ProfileDraft saved, bool isSaving, Failure? failure
});


@override $ProfileDraftCopyWith<$Res> get draft;@override $ProfileDraftCopyWith<$Res> get saved;

}
/// @nodoc
class __$ProfileEditStateCopyWithImpl<$Res>
    implements _$ProfileEditStateCopyWith<$Res> {
  __$ProfileEditStateCopyWithImpl(this._self, this._then);

  final _ProfileEditState _self;
  final $Res Function(_ProfileEditState) _then;

/// Create a copy of ProfileEditState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? draft = null,Object? saved = null,Object? isSaving = null,Object? failure = freezed,}) {
  return _then(_ProfileEditState(
draft: null == draft ? _self.draft : draft // ignore: cast_nullable_to_non_nullable
as ProfileDraft,saved: null == saved ? _self.saved : saved // ignore: cast_nullable_to_non_nullable
as ProfileDraft,isSaving: null == isSaving ? _self.isSaving : isSaving // ignore: cast_nullable_to_non_nullable
as bool,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,
  ));
}

/// Create a copy of ProfileEditState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileDraftCopyWith<$Res> get draft {
  
  return $ProfileDraftCopyWith<$Res>(_self.draft, (value) {
    return _then(_self.copyWith(draft: value));
  });
}/// Create a copy of ProfileEditState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileDraftCopyWith<$Res> get saved {
  
  return $ProfileDraftCopyWith<$Res>(_self.saved, (value) {
    return _then(_self.copyWith(saved: value));
  });
}
}

// dart format on
