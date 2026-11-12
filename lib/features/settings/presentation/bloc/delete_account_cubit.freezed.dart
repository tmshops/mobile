// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_account_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DeleteAccountState {

 DeleteStep get step; DeletionCheck? get check; CodeRequest? get request; bool get isBusy; Failure? get failure;
/// Create a copy of DeleteAccountState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteAccountStateCopyWith<DeleteAccountState> get copyWith => _$DeleteAccountStateCopyWithImpl<DeleteAccountState>(this as DeleteAccountState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteAccountState&&(identical(other.step, step) || other.step == step)&&(identical(other.check, check) || other.check == check)&&(identical(other.request, request) || other.request == request)&&(identical(other.isBusy, isBusy) || other.isBusy == isBusy)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,step,check,request,isBusy,failure);

@override
String toString() {
  return 'DeleteAccountState(step: $step, check: $check, request: $request, isBusy: $isBusy, failure: $failure)';
}


}

/// @nodoc
abstract mixin class $DeleteAccountStateCopyWith<$Res>  {
  factory $DeleteAccountStateCopyWith(DeleteAccountState value, $Res Function(DeleteAccountState) _then) = _$DeleteAccountStateCopyWithImpl;
@useResult
$Res call({
 DeleteStep step, DeletionCheck? check, CodeRequest? request, bool isBusy, Failure? failure
});


$DeletionCheckCopyWith<$Res>? get check;$CodeRequestCopyWith<$Res>? get request;

}
/// @nodoc
class _$DeleteAccountStateCopyWithImpl<$Res>
    implements $DeleteAccountStateCopyWith<$Res> {
  _$DeleteAccountStateCopyWithImpl(this._self, this._then);

  final DeleteAccountState _self;
  final $Res Function(DeleteAccountState) _then;

/// Create a copy of DeleteAccountState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? step = null,Object? check = freezed,Object? request = freezed,Object? isBusy = null,Object? failure = freezed,}) {
  return _then(_self.copyWith(
step: null == step ? _self.step : step // ignore: cast_nullable_to_non_nullable
as DeleteStep,check: freezed == check ? _self.check : check // ignore: cast_nullable_to_non_nullable
as DeletionCheck?,request: freezed == request ? _self.request : request // ignore: cast_nullable_to_non_nullable
as CodeRequest?,isBusy: null == isBusy ? _self.isBusy : isBusy // ignore: cast_nullable_to_non_nullable
as bool,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,
  ));
}
/// Create a copy of DeleteAccountState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeletionCheckCopyWith<$Res>? get check {
    if (_self.check == null) {
    return null;
  }

  return $DeletionCheckCopyWith<$Res>(_self.check!, (value) {
    return _then(_self.copyWith(check: value));
  });
}/// Create a copy of DeleteAccountState
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
}
}


/// Adds pattern-matching-related methods to [DeleteAccountState].
extension DeleteAccountStatePatterns on DeleteAccountState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeleteAccountState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeleteAccountState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeleteAccountState value)  $default,){
final _that = this;
switch (_that) {
case _DeleteAccountState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeleteAccountState value)?  $default,){
final _that = this;
switch (_that) {
case _DeleteAccountState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DeleteStep step,  DeletionCheck? check,  CodeRequest? request,  bool isBusy,  Failure? failure)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeleteAccountState() when $default != null:
return $default(_that.step,_that.check,_that.request,_that.isBusy,_that.failure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DeleteStep step,  DeletionCheck? check,  CodeRequest? request,  bool isBusy,  Failure? failure)  $default,) {final _that = this;
switch (_that) {
case _DeleteAccountState():
return $default(_that.step,_that.check,_that.request,_that.isBusy,_that.failure);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DeleteStep step,  DeletionCheck? check,  CodeRequest? request,  bool isBusy,  Failure? failure)?  $default,) {final _that = this;
switch (_that) {
case _DeleteAccountState() when $default != null:
return $default(_that.step,_that.check,_that.request,_that.isBusy,_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class _DeleteAccountState implements DeleteAccountState {
  const _DeleteAccountState({this.step = DeleteStep.checking, this.check, this.request, this.isBusy = false, this.failure});
  

@override@JsonKey() final  DeleteStep step;
@override final  DeletionCheck? check;
@override final  CodeRequest? request;
@override@JsonKey() final  bool isBusy;
@override final  Failure? failure;

/// Create a copy of DeleteAccountState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteAccountStateCopyWith<_DeleteAccountState> get copyWith => __$DeleteAccountStateCopyWithImpl<_DeleteAccountState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteAccountState&&(identical(other.step, step) || other.step == step)&&(identical(other.check, check) || other.check == check)&&(identical(other.request, request) || other.request == request)&&(identical(other.isBusy, isBusy) || other.isBusy == isBusy)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,step,check,request,isBusy,failure);

@override
String toString() {
  return 'DeleteAccountState(step: $step, check: $check, request: $request, isBusy: $isBusy, failure: $failure)';
}


}

/// @nodoc
abstract mixin class _$DeleteAccountStateCopyWith<$Res> implements $DeleteAccountStateCopyWith<$Res> {
  factory _$DeleteAccountStateCopyWith(_DeleteAccountState value, $Res Function(_DeleteAccountState) _then) = __$DeleteAccountStateCopyWithImpl;
@override @useResult
$Res call({
 DeleteStep step, DeletionCheck? check, CodeRequest? request, bool isBusy, Failure? failure
});


@override $DeletionCheckCopyWith<$Res>? get check;@override $CodeRequestCopyWith<$Res>? get request;

}
/// @nodoc
class __$DeleteAccountStateCopyWithImpl<$Res>
    implements _$DeleteAccountStateCopyWith<$Res> {
  __$DeleteAccountStateCopyWithImpl(this._self, this._then);

  final _DeleteAccountState _self;
  final $Res Function(_DeleteAccountState) _then;

/// Create a copy of DeleteAccountState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? step = null,Object? check = freezed,Object? request = freezed,Object? isBusy = null,Object? failure = freezed,}) {
  return _then(_DeleteAccountState(
step: null == step ? _self.step : step // ignore: cast_nullable_to_non_nullable
as DeleteStep,check: freezed == check ? _self.check : check // ignore: cast_nullable_to_non_nullable
as DeletionCheck?,request: freezed == request ? _self.request : request // ignore: cast_nullable_to_non_nullable
as CodeRequest?,isBusy: null == isBusy ? _self.isBusy : isBusy // ignore: cast_nullable_to_non_nullable
as bool,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,
  ));
}

/// Create a copy of DeleteAccountState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeletionCheckCopyWith<$Res>? get check {
    if (_self.check == null) {
    return null;
  }

  return $DeletionCheckCopyWith<$Res>(_self.check!, (value) {
    return _then(_self.copyWith(check: value));
  });
}/// Create a copy of DeleteAccountState
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
}
}

// dart format on
