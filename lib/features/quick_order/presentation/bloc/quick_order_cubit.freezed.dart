// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quick_order_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$QuickOrderState {

 QuickOrderStep get step;/// A request is on its way: buttons show a spinner, taps are ignored.
 bool get isBusy; QuickOrderCode? get code; Failure? get failure;/// Set once the order is placed.
 String? get orderNumber;
/// Create a copy of QuickOrderState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuickOrderStateCopyWith<QuickOrderState> get copyWith => _$QuickOrderStateCopyWithImpl<QuickOrderState>(this as QuickOrderState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuickOrderState&&(identical(other.step, step) || other.step == step)&&(identical(other.isBusy, isBusy) || other.isBusy == isBusy)&&(identical(other.code, code) || other.code == code)&&(identical(other.failure, failure) || other.failure == failure)&&(identical(other.orderNumber, orderNumber) || other.orderNumber == orderNumber));
}


@override
int get hashCode => Object.hash(runtimeType,step,isBusy,code,failure,orderNumber);

@override
String toString() {
  return 'QuickOrderState(step: $step, isBusy: $isBusy, code: $code, failure: $failure, orderNumber: $orderNumber)';
}


}

/// @nodoc
abstract mixin class $QuickOrderStateCopyWith<$Res>  {
  factory $QuickOrderStateCopyWith(QuickOrderState value, $Res Function(QuickOrderState) _then) = _$QuickOrderStateCopyWithImpl;
@useResult
$Res call({
 QuickOrderStep step, bool isBusy, QuickOrderCode? code, Failure? failure, String? orderNumber
});


$QuickOrderCodeCopyWith<$Res>? get code;

}
/// @nodoc
class _$QuickOrderStateCopyWithImpl<$Res>
    implements $QuickOrderStateCopyWith<$Res> {
  _$QuickOrderStateCopyWithImpl(this._self, this._then);

  final QuickOrderState _self;
  final $Res Function(QuickOrderState) _then;

/// Create a copy of QuickOrderState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? step = null,Object? isBusy = null,Object? code = freezed,Object? failure = freezed,Object? orderNumber = freezed,}) {
  return _then(_self.copyWith(
step: null == step ? _self.step : step // ignore: cast_nullable_to_non_nullable
as QuickOrderStep,isBusy: null == isBusy ? _self.isBusy : isBusy // ignore: cast_nullable_to_non_nullable
as bool,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as QuickOrderCode?,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,orderNumber: freezed == orderNumber ? _self.orderNumber : orderNumber // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of QuickOrderState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$QuickOrderCodeCopyWith<$Res>? get code {
    if (_self.code == null) {
    return null;
  }

  return $QuickOrderCodeCopyWith<$Res>(_self.code!, (value) {
    return _then(_self.copyWith(code: value));
  });
}
}


/// Adds pattern-matching-related methods to [QuickOrderState].
extension QuickOrderStatePatterns on QuickOrderState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QuickOrderState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QuickOrderState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QuickOrderState value)  $default,){
final _that = this;
switch (_that) {
case _QuickOrderState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QuickOrderState value)?  $default,){
final _that = this;
switch (_that) {
case _QuickOrderState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( QuickOrderStep step,  bool isBusy,  QuickOrderCode? code,  Failure? failure,  String? orderNumber)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QuickOrderState() when $default != null:
return $default(_that.step,_that.isBusy,_that.code,_that.failure,_that.orderNumber);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( QuickOrderStep step,  bool isBusy,  QuickOrderCode? code,  Failure? failure,  String? orderNumber)  $default,) {final _that = this;
switch (_that) {
case _QuickOrderState():
return $default(_that.step,_that.isBusy,_that.code,_that.failure,_that.orderNumber);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( QuickOrderStep step,  bool isBusy,  QuickOrderCode? code,  Failure? failure,  String? orderNumber)?  $default,) {final _that = this;
switch (_that) {
case _QuickOrderState() when $default != null:
return $default(_that.step,_that.isBusy,_that.code,_that.failure,_that.orderNumber);case _:
  return null;

}
}

}

/// @nodoc


class _QuickOrderState implements QuickOrderState {
  const _QuickOrderState({this.step = QuickOrderStep.phone, this.isBusy = false, this.code, this.failure, this.orderNumber});
  

@override@JsonKey() final  QuickOrderStep step;
/// A request is on its way: buttons show a spinner, taps are ignored.
@override@JsonKey() final  bool isBusy;
@override final  QuickOrderCode? code;
@override final  Failure? failure;
/// Set once the order is placed.
@override final  String? orderNumber;

/// Create a copy of QuickOrderState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuickOrderStateCopyWith<_QuickOrderState> get copyWith => __$QuickOrderStateCopyWithImpl<_QuickOrderState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuickOrderState&&(identical(other.step, step) || other.step == step)&&(identical(other.isBusy, isBusy) || other.isBusy == isBusy)&&(identical(other.code, code) || other.code == code)&&(identical(other.failure, failure) || other.failure == failure)&&(identical(other.orderNumber, orderNumber) || other.orderNumber == orderNumber));
}


@override
int get hashCode => Object.hash(runtimeType,step,isBusy,code,failure,orderNumber);

@override
String toString() {
  return 'QuickOrderState(step: $step, isBusy: $isBusy, code: $code, failure: $failure, orderNumber: $orderNumber)';
}


}

/// @nodoc
abstract mixin class _$QuickOrderStateCopyWith<$Res> implements $QuickOrderStateCopyWith<$Res> {
  factory _$QuickOrderStateCopyWith(_QuickOrderState value, $Res Function(_QuickOrderState) _then) = __$QuickOrderStateCopyWithImpl;
@override @useResult
$Res call({
 QuickOrderStep step, bool isBusy, QuickOrderCode? code, Failure? failure, String? orderNumber
});


@override $QuickOrderCodeCopyWith<$Res>? get code;

}
/// @nodoc
class __$QuickOrderStateCopyWithImpl<$Res>
    implements _$QuickOrderStateCopyWith<$Res> {
  __$QuickOrderStateCopyWithImpl(this._self, this._then);

  final _QuickOrderState _self;
  final $Res Function(_QuickOrderState) _then;

/// Create a copy of QuickOrderState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? step = null,Object? isBusy = null,Object? code = freezed,Object? failure = freezed,Object? orderNumber = freezed,}) {
  return _then(_QuickOrderState(
step: null == step ? _self.step : step // ignore: cast_nullable_to_non_nullable
as QuickOrderStep,isBusy: null == isBusy ? _self.isBusy : isBusy // ignore: cast_nullable_to_non_nullable
as bool,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as QuickOrderCode?,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,orderNumber: freezed == orderNumber ? _self.orderNumber : orderNumber // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of QuickOrderState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$QuickOrderCodeCopyWith<$Res>? get code {
    if (_self.code == null) {
    return null;
  }

  return $QuickOrderCodeCopyWith<$Res>(_self.code!, (value) {
    return _then(_self.copyWith(code: value));
  });
}
}

// dart format on
