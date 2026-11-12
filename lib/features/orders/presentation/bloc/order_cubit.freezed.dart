// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OrderState {

 Loadable<OrderDetails> get order;/// Running change; its buttons show a spinner, the rest are disabled.
 OrderAction? get busy;/// Problem action being sent (to spin the right button).
 String? get busyActionId; Failure? get actionFailure;/// The last change that succeeded, for a confirming toast.
 OrderAction? get done; RepeatedOrder? get repeated;
/// Create a copy of OrderState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderStateCopyWith<OrderState> get copyWith => _$OrderStateCopyWithImpl<OrderState>(this as OrderState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderState&&(identical(other.order, order) || other.order == order)&&(identical(other.busy, busy) || other.busy == busy)&&(identical(other.busyActionId, busyActionId) || other.busyActionId == busyActionId)&&(identical(other.actionFailure, actionFailure) || other.actionFailure == actionFailure)&&(identical(other.done, done) || other.done == done)&&(identical(other.repeated, repeated) || other.repeated == repeated));
}


@override
int get hashCode => Object.hash(runtimeType,order,busy,busyActionId,actionFailure,done,repeated);

@override
String toString() {
  return 'OrderState(order: $order, busy: $busy, busyActionId: $busyActionId, actionFailure: $actionFailure, done: $done, repeated: $repeated)';
}


}

/// @nodoc
abstract mixin class $OrderStateCopyWith<$Res>  {
  factory $OrderStateCopyWith(OrderState value, $Res Function(OrderState) _then) = _$OrderStateCopyWithImpl;
@useResult
$Res call({
 Loadable<OrderDetails> order, OrderAction? busy, String? busyActionId, Failure? actionFailure, OrderAction? done, RepeatedOrder? repeated
});


$LoadableCopyWith<OrderDetails, $Res> get order;$RepeatedOrderCopyWith<$Res>? get repeated;

}
/// @nodoc
class _$OrderStateCopyWithImpl<$Res>
    implements $OrderStateCopyWith<$Res> {
  _$OrderStateCopyWithImpl(this._self, this._then);

  final OrderState _self;
  final $Res Function(OrderState) _then;

/// Create a copy of OrderState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? order = null,Object? busy = freezed,Object? busyActionId = freezed,Object? actionFailure = freezed,Object? done = freezed,Object? repeated = freezed,}) {
  return _then(_self.copyWith(
order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as Loadable<OrderDetails>,busy: freezed == busy ? _self.busy : busy // ignore: cast_nullable_to_non_nullable
as OrderAction?,busyActionId: freezed == busyActionId ? _self.busyActionId : busyActionId // ignore: cast_nullable_to_non_nullable
as String?,actionFailure: freezed == actionFailure ? _self.actionFailure : actionFailure // ignore: cast_nullable_to_non_nullable
as Failure?,done: freezed == done ? _self.done : done // ignore: cast_nullable_to_non_nullable
as OrderAction?,repeated: freezed == repeated ? _self.repeated : repeated // ignore: cast_nullable_to_non_nullable
as RepeatedOrder?,
  ));
}
/// Create a copy of OrderState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoadableCopyWith<OrderDetails, $Res> get order {
  
  return $LoadableCopyWith<OrderDetails, $Res>(_self.order, (value) {
    return _then(_self.copyWith(order: value));
  });
}/// Create a copy of OrderState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RepeatedOrderCopyWith<$Res>? get repeated {
    if (_self.repeated == null) {
    return null;
  }

  return $RepeatedOrderCopyWith<$Res>(_self.repeated!, (value) {
    return _then(_self.copyWith(repeated: value));
  });
}
}


/// Adds pattern-matching-related methods to [OrderState].
extension OrderStatePatterns on OrderState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderState value)  $default,){
final _that = this;
switch (_that) {
case _OrderState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderState value)?  $default,){
final _that = this;
switch (_that) {
case _OrderState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Loadable<OrderDetails> order,  OrderAction? busy,  String? busyActionId,  Failure? actionFailure,  OrderAction? done,  RepeatedOrder? repeated)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderState() when $default != null:
return $default(_that.order,_that.busy,_that.busyActionId,_that.actionFailure,_that.done,_that.repeated);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Loadable<OrderDetails> order,  OrderAction? busy,  String? busyActionId,  Failure? actionFailure,  OrderAction? done,  RepeatedOrder? repeated)  $default,) {final _that = this;
switch (_that) {
case _OrderState():
return $default(_that.order,_that.busy,_that.busyActionId,_that.actionFailure,_that.done,_that.repeated);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Loadable<OrderDetails> order,  OrderAction? busy,  String? busyActionId,  Failure? actionFailure,  OrderAction? done,  RepeatedOrder? repeated)?  $default,) {final _that = this;
switch (_that) {
case _OrderState() when $default != null:
return $default(_that.order,_that.busy,_that.busyActionId,_that.actionFailure,_that.done,_that.repeated);case _:
  return null;

}
}

}

/// @nodoc


class _OrderState extends OrderState {
  const _OrderState({this.order = const Loadable<OrderDetails>(), this.busy, this.busyActionId, this.actionFailure, this.done, this.repeated}): super._();
  

@override@JsonKey() final  Loadable<OrderDetails> order;
/// Running change; its buttons show a spinner, the rest are disabled.
@override final  OrderAction? busy;
/// Problem action being sent (to spin the right button).
@override final  String? busyActionId;
@override final  Failure? actionFailure;
/// The last change that succeeded, for a confirming toast.
@override final  OrderAction? done;
@override final  RepeatedOrder? repeated;

/// Create a copy of OrderState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderStateCopyWith<_OrderState> get copyWith => __$OrderStateCopyWithImpl<_OrderState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderState&&(identical(other.order, order) || other.order == order)&&(identical(other.busy, busy) || other.busy == busy)&&(identical(other.busyActionId, busyActionId) || other.busyActionId == busyActionId)&&(identical(other.actionFailure, actionFailure) || other.actionFailure == actionFailure)&&(identical(other.done, done) || other.done == done)&&(identical(other.repeated, repeated) || other.repeated == repeated));
}


@override
int get hashCode => Object.hash(runtimeType,order,busy,busyActionId,actionFailure,done,repeated);

@override
String toString() {
  return 'OrderState(order: $order, busy: $busy, busyActionId: $busyActionId, actionFailure: $actionFailure, done: $done, repeated: $repeated)';
}


}

/// @nodoc
abstract mixin class _$OrderStateCopyWith<$Res> implements $OrderStateCopyWith<$Res> {
  factory _$OrderStateCopyWith(_OrderState value, $Res Function(_OrderState) _then) = __$OrderStateCopyWithImpl;
@override @useResult
$Res call({
 Loadable<OrderDetails> order, OrderAction? busy, String? busyActionId, Failure? actionFailure, OrderAction? done, RepeatedOrder? repeated
});


@override $LoadableCopyWith<OrderDetails, $Res> get order;@override $RepeatedOrderCopyWith<$Res>? get repeated;

}
/// @nodoc
class __$OrderStateCopyWithImpl<$Res>
    implements _$OrderStateCopyWith<$Res> {
  __$OrderStateCopyWithImpl(this._self, this._then);

  final _OrderState _self;
  final $Res Function(_OrderState) _then;

/// Create a copy of OrderState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? order = null,Object? busy = freezed,Object? busyActionId = freezed,Object? actionFailure = freezed,Object? done = freezed,Object? repeated = freezed,}) {
  return _then(_OrderState(
order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as Loadable<OrderDetails>,busy: freezed == busy ? _self.busy : busy // ignore: cast_nullable_to_non_nullable
as OrderAction?,busyActionId: freezed == busyActionId ? _self.busyActionId : busyActionId // ignore: cast_nullable_to_non_nullable
as String?,actionFailure: freezed == actionFailure ? _self.actionFailure : actionFailure // ignore: cast_nullable_to_non_nullable
as Failure?,done: freezed == done ? _self.done : done // ignore: cast_nullable_to_non_nullable
as OrderAction?,repeated: freezed == repeated ? _self.repeated : repeated // ignore: cast_nullable_to_non_nullable
as RepeatedOrder?,
  ));
}

/// Create a copy of OrderState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoadableCopyWith<OrderDetails, $Res> get order {
  
  return $LoadableCopyWith<OrderDetails, $Res>(_self.order, (value) {
    return _then(_self.copyWith(order: value));
  });
}/// Create a copy of OrderState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RepeatedOrderCopyWith<$Res>? get repeated {
    if (_self.repeated == null) {
    return null;
  }

  return $RepeatedOrderCopyWith<$Res>(_self.repeated!, (value) {
    return _then(_self.copyWith(repeated: value));
  });
}
}

// dart format on
