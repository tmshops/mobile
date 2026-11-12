// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parcel_cubits.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ParcelState {

 Loadable<ParcelDetails> get parcel;/// «Отправить сейчас» is on its way.
 bool get isSending; Failure? get actionFailure;/// Set once the parcel was sent, for a confirming toast.
 bool get wasSent;
/// Create a copy of ParcelState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParcelStateCopyWith<ParcelState> get copyWith => _$ParcelStateCopyWithImpl<ParcelState>(this as ParcelState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParcelState&&(identical(other.parcel, parcel) || other.parcel == parcel)&&(identical(other.isSending, isSending) || other.isSending == isSending)&&(identical(other.actionFailure, actionFailure) || other.actionFailure == actionFailure)&&(identical(other.wasSent, wasSent) || other.wasSent == wasSent));
}


@override
int get hashCode => Object.hash(runtimeType,parcel,isSending,actionFailure,wasSent);

@override
String toString() {
  return 'ParcelState(parcel: $parcel, isSending: $isSending, actionFailure: $actionFailure, wasSent: $wasSent)';
}


}

/// @nodoc
abstract mixin class $ParcelStateCopyWith<$Res>  {
  factory $ParcelStateCopyWith(ParcelState value, $Res Function(ParcelState) _then) = _$ParcelStateCopyWithImpl;
@useResult
$Res call({
 Loadable<ParcelDetails> parcel, bool isSending, Failure? actionFailure, bool wasSent
});


$LoadableCopyWith<ParcelDetails, $Res> get parcel;

}
/// @nodoc
class _$ParcelStateCopyWithImpl<$Res>
    implements $ParcelStateCopyWith<$Res> {
  _$ParcelStateCopyWithImpl(this._self, this._then);

  final ParcelState _self;
  final $Res Function(ParcelState) _then;

/// Create a copy of ParcelState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? parcel = null,Object? isSending = null,Object? actionFailure = freezed,Object? wasSent = null,}) {
  return _then(_self.copyWith(
parcel: null == parcel ? _self.parcel : parcel // ignore: cast_nullable_to_non_nullable
as Loadable<ParcelDetails>,isSending: null == isSending ? _self.isSending : isSending // ignore: cast_nullable_to_non_nullable
as bool,actionFailure: freezed == actionFailure ? _self.actionFailure : actionFailure // ignore: cast_nullable_to_non_nullable
as Failure?,wasSent: null == wasSent ? _self.wasSent : wasSent // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of ParcelState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoadableCopyWith<ParcelDetails, $Res> get parcel {
  
  return $LoadableCopyWith<ParcelDetails, $Res>(_self.parcel, (value) {
    return _then(_self.copyWith(parcel: value));
  });
}
}


/// Adds pattern-matching-related methods to [ParcelState].
extension ParcelStatePatterns on ParcelState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ParcelState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ParcelState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ParcelState value)  $default,){
final _that = this;
switch (_that) {
case _ParcelState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ParcelState value)?  $default,){
final _that = this;
switch (_that) {
case _ParcelState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Loadable<ParcelDetails> parcel,  bool isSending,  Failure? actionFailure,  bool wasSent)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ParcelState() when $default != null:
return $default(_that.parcel,_that.isSending,_that.actionFailure,_that.wasSent);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Loadable<ParcelDetails> parcel,  bool isSending,  Failure? actionFailure,  bool wasSent)  $default,) {final _that = this;
switch (_that) {
case _ParcelState():
return $default(_that.parcel,_that.isSending,_that.actionFailure,_that.wasSent);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Loadable<ParcelDetails> parcel,  bool isSending,  Failure? actionFailure,  bool wasSent)?  $default,) {final _that = this;
switch (_that) {
case _ParcelState() when $default != null:
return $default(_that.parcel,_that.isSending,_that.actionFailure,_that.wasSent);case _:
  return null;

}
}

}

/// @nodoc


class _ParcelState extends ParcelState {
  const _ParcelState({this.parcel = const Loadable<ParcelDetails>(), this.isSending = false, this.actionFailure, this.wasSent = false}): super._();
  

@override@JsonKey() final  Loadable<ParcelDetails> parcel;
/// «Отправить сейчас» is on its way.
@override@JsonKey() final  bool isSending;
@override final  Failure? actionFailure;
/// Set once the parcel was sent, for a confirming toast.
@override@JsonKey() final  bool wasSent;

/// Create a copy of ParcelState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ParcelStateCopyWith<_ParcelState> get copyWith => __$ParcelStateCopyWithImpl<_ParcelState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ParcelState&&(identical(other.parcel, parcel) || other.parcel == parcel)&&(identical(other.isSending, isSending) || other.isSending == isSending)&&(identical(other.actionFailure, actionFailure) || other.actionFailure == actionFailure)&&(identical(other.wasSent, wasSent) || other.wasSent == wasSent));
}


@override
int get hashCode => Object.hash(runtimeType,parcel,isSending,actionFailure,wasSent);

@override
String toString() {
  return 'ParcelState(parcel: $parcel, isSending: $isSending, actionFailure: $actionFailure, wasSent: $wasSent)';
}


}

/// @nodoc
abstract mixin class _$ParcelStateCopyWith<$Res> implements $ParcelStateCopyWith<$Res> {
  factory _$ParcelStateCopyWith(_ParcelState value, $Res Function(_ParcelState) _then) = __$ParcelStateCopyWithImpl;
@override @useResult
$Res call({
 Loadable<ParcelDetails> parcel, bool isSending, Failure? actionFailure, bool wasSent
});


@override $LoadableCopyWith<ParcelDetails, $Res> get parcel;

}
/// @nodoc
class __$ParcelStateCopyWithImpl<$Res>
    implements _$ParcelStateCopyWith<$Res> {
  __$ParcelStateCopyWithImpl(this._self, this._then);

  final _ParcelState _self;
  final $Res Function(_ParcelState) _then;

/// Create a copy of ParcelState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? parcel = null,Object? isSending = null,Object? actionFailure = freezed,Object? wasSent = null,}) {
  return _then(_ParcelState(
parcel: null == parcel ? _self.parcel : parcel // ignore: cast_nullable_to_non_nullable
as Loadable<ParcelDetails>,isSending: null == isSending ? _self.isSending : isSending // ignore: cast_nullable_to_non_nullable
as bool,actionFailure: freezed == actionFailure ? _self.actionFailure : actionFailure // ignore: cast_nullable_to_non_nullable
as Failure?,wasSent: null == wasSent ? _self.wasSent : wasSent // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of ParcelState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoadableCopyWith<ParcelDetails, $Res> get parcel {
  
  return $LoadableCopyWith<ParcelDetails, $Res>(_self.parcel, (value) {
    return _then(_self.copyWith(parcel: value));
  });
}
}

// dart format on
