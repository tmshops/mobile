// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'channel_link_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChannelLinkState {

 LinkStep get step; CodeRequest? get request; TelegramLink? get telegram; bool get isBusy; Failure? get failure;/// «Проверить» found no message from the customer yet.
 bool get isNotYet;
/// Create a copy of ChannelLinkState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChannelLinkStateCopyWith<ChannelLinkState> get copyWith => _$ChannelLinkStateCopyWithImpl<ChannelLinkState>(this as ChannelLinkState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChannelLinkState&&(identical(other.step, step) || other.step == step)&&(identical(other.request, request) || other.request == request)&&(identical(other.telegram, telegram) || other.telegram == telegram)&&(identical(other.isBusy, isBusy) || other.isBusy == isBusy)&&(identical(other.failure, failure) || other.failure == failure)&&(identical(other.isNotYet, isNotYet) || other.isNotYet == isNotYet));
}


@override
int get hashCode => Object.hash(runtimeType,step,request,telegram,isBusy,failure,isNotYet);

@override
String toString() {
  return 'ChannelLinkState(step: $step, request: $request, telegram: $telegram, isBusy: $isBusy, failure: $failure, isNotYet: $isNotYet)';
}


}

/// @nodoc
abstract mixin class $ChannelLinkStateCopyWith<$Res>  {
  factory $ChannelLinkStateCopyWith(ChannelLinkState value, $Res Function(ChannelLinkState) _then) = _$ChannelLinkStateCopyWithImpl;
@useResult
$Res call({
 LinkStep step, CodeRequest? request, TelegramLink? telegram, bool isBusy, Failure? failure, bool isNotYet
});


$CodeRequestCopyWith<$Res>? get request;$TelegramLinkCopyWith<$Res>? get telegram;

}
/// @nodoc
class _$ChannelLinkStateCopyWithImpl<$Res>
    implements $ChannelLinkStateCopyWith<$Res> {
  _$ChannelLinkStateCopyWithImpl(this._self, this._then);

  final ChannelLinkState _self;
  final $Res Function(ChannelLinkState) _then;

/// Create a copy of ChannelLinkState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? step = null,Object? request = freezed,Object? telegram = freezed,Object? isBusy = null,Object? failure = freezed,Object? isNotYet = null,}) {
  return _then(_self.copyWith(
step: null == step ? _self.step : step // ignore: cast_nullable_to_non_nullable
as LinkStep,request: freezed == request ? _self.request : request // ignore: cast_nullable_to_non_nullable
as CodeRequest?,telegram: freezed == telegram ? _self.telegram : telegram // ignore: cast_nullable_to_non_nullable
as TelegramLink?,isBusy: null == isBusy ? _self.isBusy : isBusy // ignore: cast_nullable_to_non_nullable
as bool,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,isNotYet: null == isNotYet ? _self.isNotYet : isNotYet // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of ChannelLinkState
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
}/// Create a copy of ChannelLinkState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TelegramLinkCopyWith<$Res>? get telegram {
    if (_self.telegram == null) {
    return null;
  }

  return $TelegramLinkCopyWith<$Res>(_self.telegram!, (value) {
    return _then(_self.copyWith(telegram: value));
  });
}
}


/// Adds pattern-matching-related methods to [ChannelLinkState].
extension ChannelLinkStatePatterns on ChannelLinkState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChannelLinkState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChannelLinkState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChannelLinkState value)  $default,){
final _that = this;
switch (_that) {
case _ChannelLinkState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChannelLinkState value)?  $default,){
final _that = this;
switch (_that) {
case _ChannelLinkState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( LinkStep step,  CodeRequest? request,  TelegramLink? telegram,  bool isBusy,  Failure? failure,  bool isNotYet)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChannelLinkState() when $default != null:
return $default(_that.step,_that.request,_that.telegram,_that.isBusy,_that.failure,_that.isNotYet);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( LinkStep step,  CodeRequest? request,  TelegramLink? telegram,  bool isBusy,  Failure? failure,  bool isNotYet)  $default,) {final _that = this;
switch (_that) {
case _ChannelLinkState():
return $default(_that.step,_that.request,_that.telegram,_that.isBusy,_that.failure,_that.isNotYet);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( LinkStep step,  CodeRequest? request,  TelegramLink? telegram,  bool isBusy,  Failure? failure,  bool isNotYet)?  $default,) {final _that = this;
switch (_that) {
case _ChannelLinkState() when $default != null:
return $default(_that.step,_that.request,_that.telegram,_that.isBusy,_that.failure,_that.isNotYet);case _:
  return null;

}
}

}

/// @nodoc


class _ChannelLinkState implements ChannelLinkState {
  const _ChannelLinkState({required this.step, this.request, this.telegram, this.isBusy = false, this.failure, this.isNotYet = false});
  

@override final  LinkStep step;
@override final  CodeRequest? request;
@override final  TelegramLink? telegram;
@override@JsonKey() final  bool isBusy;
@override final  Failure? failure;
/// «Проверить» found no message from the customer yet.
@override@JsonKey() final  bool isNotYet;

/// Create a copy of ChannelLinkState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChannelLinkStateCopyWith<_ChannelLinkState> get copyWith => __$ChannelLinkStateCopyWithImpl<_ChannelLinkState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChannelLinkState&&(identical(other.step, step) || other.step == step)&&(identical(other.request, request) || other.request == request)&&(identical(other.telegram, telegram) || other.telegram == telegram)&&(identical(other.isBusy, isBusy) || other.isBusy == isBusy)&&(identical(other.failure, failure) || other.failure == failure)&&(identical(other.isNotYet, isNotYet) || other.isNotYet == isNotYet));
}


@override
int get hashCode => Object.hash(runtimeType,step,request,telegram,isBusy,failure,isNotYet);

@override
String toString() {
  return 'ChannelLinkState(step: $step, request: $request, telegram: $telegram, isBusy: $isBusy, failure: $failure, isNotYet: $isNotYet)';
}


}

/// @nodoc
abstract mixin class _$ChannelLinkStateCopyWith<$Res> implements $ChannelLinkStateCopyWith<$Res> {
  factory _$ChannelLinkStateCopyWith(_ChannelLinkState value, $Res Function(_ChannelLinkState) _then) = __$ChannelLinkStateCopyWithImpl;
@override @useResult
$Res call({
 LinkStep step, CodeRequest? request, TelegramLink? telegram, bool isBusy, Failure? failure, bool isNotYet
});


@override $CodeRequestCopyWith<$Res>? get request;@override $TelegramLinkCopyWith<$Res>? get telegram;

}
/// @nodoc
class __$ChannelLinkStateCopyWithImpl<$Res>
    implements _$ChannelLinkStateCopyWith<$Res> {
  __$ChannelLinkStateCopyWithImpl(this._self, this._then);

  final _ChannelLinkState _self;
  final $Res Function(_ChannelLinkState) _then;

/// Create a copy of ChannelLinkState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? step = null,Object? request = freezed,Object? telegram = freezed,Object? isBusy = null,Object? failure = freezed,Object? isNotYet = null,}) {
  return _then(_ChannelLinkState(
step: null == step ? _self.step : step // ignore: cast_nullable_to_non_nullable
as LinkStep,request: freezed == request ? _self.request : request // ignore: cast_nullable_to_non_nullable
as CodeRequest?,telegram: freezed == telegram ? _self.telegram : telegram // ignore: cast_nullable_to_non_nullable
as TelegramLink?,isBusy: null == isBusy ? _self.isBusy : isBusy // ignore: cast_nullable_to_non_nullable
as bool,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,isNotYet: null == isNotYet ? _self.isNotYet : isNotYet // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of ChannelLinkState
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
}/// Create a copy of ChannelLinkState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TelegramLinkCopyWith<$Res>? get telegram {
    if (_self.telegram == null) {
    return null;
  }

  return $TelegramLinkCopyWith<$Res>(_self.telegram!, (value) {
    return _then(_self.copyWith(telegram: value));
  });
}
}

// dart format on
