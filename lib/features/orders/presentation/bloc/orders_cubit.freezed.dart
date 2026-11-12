// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OrdersState {

 OrderTab get tab; Map<OrderTab, Loadable<List<OrderSummary>>> get tabs;/// «Повторить» in progress for this order.
 String? get repeating;/// Result of the last «Повторить», for the screen to put in the cart.
 RepeatedOrder? get repeated; Failure? get repeatFailure;
/// Create a copy of OrdersState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrdersStateCopyWith<OrdersState> get copyWith => _$OrdersStateCopyWithImpl<OrdersState>(this as OrdersState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrdersState&&(identical(other.tab, tab) || other.tab == tab)&&const DeepCollectionEquality().equals(other.tabs, tabs)&&(identical(other.repeating, repeating) || other.repeating == repeating)&&(identical(other.repeated, repeated) || other.repeated == repeated)&&(identical(other.repeatFailure, repeatFailure) || other.repeatFailure == repeatFailure));
}


@override
int get hashCode => Object.hash(runtimeType,tab,const DeepCollectionEquality().hash(tabs),repeating,repeated,repeatFailure);

@override
String toString() {
  return 'OrdersState(tab: $tab, tabs: $tabs, repeating: $repeating, repeated: $repeated, repeatFailure: $repeatFailure)';
}


}

/// @nodoc
abstract mixin class $OrdersStateCopyWith<$Res>  {
  factory $OrdersStateCopyWith(OrdersState value, $Res Function(OrdersState) _then) = _$OrdersStateCopyWithImpl;
@useResult
$Res call({
 OrderTab tab, Map<OrderTab, Loadable<List<OrderSummary>>> tabs, String? repeating, RepeatedOrder? repeated, Failure? repeatFailure
});


$RepeatedOrderCopyWith<$Res>? get repeated;

}
/// @nodoc
class _$OrdersStateCopyWithImpl<$Res>
    implements $OrdersStateCopyWith<$Res> {
  _$OrdersStateCopyWithImpl(this._self, this._then);

  final OrdersState _self;
  final $Res Function(OrdersState) _then;

/// Create a copy of OrdersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tab = null,Object? tabs = null,Object? repeating = freezed,Object? repeated = freezed,Object? repeatFailure = freezed,}) {
  return _then(_self.copyWith(
tab: null == tab ? _self.tab : tab // ignore: cast_nullable_to_non_nullable
as OrderTab,tabs: null == tabs ? _self.tabs : tabs // ignore: cast_nullable_to_non_nullable
as Map<OrderTab, Loadable<List<OrderSummary>>>,repeating: freezed == repeating ? _self.repeating : repeating // ignore: cast_nullable_to_non_nullable
as String?,repeated: freezed == repeated ? _self.repeated : repeated // ignore: cast_nullable_to_non_nullable
as RepeatedOrder?,repeatFailure: freezed == repeatFailure ? _self.repeatFailure : repeatFailure // ignore: cast_nullable_to_non_nullable
as Failure?,
  ));
}
/// Create a copy of OrdersState
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


/// Adds pattern-matching-related methods to [OrdersState].
extension OrdersStatePatterns on OrdersState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrdersState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrdersState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrdersState value)  $default,){
final _that = this;
switch (_that) {
case _OrdersState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrdersState value)?  $default,){
final _that = this;
switch (_that) {
case _OrdersState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( OrderTab tab,  Map<OrderTab, Loadable<List<OrderSummary>>> tabs,  String? repeating,  RepeatedOrder? repeated,  Failure? repeatFailure)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrdersState() when $default != null:
return $default(_that.tab,_that.tabs,_that.repeating,_that.repeated,_that.repeatFailure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( OrderTab tab,  Map<OrderTab, Loadable<List<OrderSummary>>> tabs,  String? repeating,  RepeatedOrder? repeated,  Failure? repeatFailure)  $default,) {final _that = this;
switch (_that) {
case _OrdersState():
return $default(_that.tab,_that.tabs,_that.repeating,_that.repeated,_that.repeatFailure);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( OrderTab tab,  Map<OrderTab, Loadable<List<OrderSummary>>> tabs,  String? repeating,  RepeatedOrder? repeated,  Failure? repeatFailure)?  $default,) {final _that = this;
switch (_that) {
case _OrdersState() when $default != null:
return $default(_that.tab,_that.tabs,_that.repeating,_that.repeated,_that.repeatFailure);case _:
  return null;

}
}

}

/// @nodoc


class _OrdersState extends OrdersState {
  const _OrdersState({this.tab = OrderTab.active, final  Map<OrderTab, Loadable<List<OrderSummary>>> tabs = const <OrderTab, Loadable<List<OrderSummary>>>{}, this.repeating, this.repeated, this.repeatFailure}): _tabs = tabs,super._();
  

@override@JsonKey() final  OrderTab tab;
 final  Map<OrderTab, Loadable<List<OrderSummary>>> _tabs;
@override@JsonKey() Map<OrderTab, Loadable<List<OrderSummary>>> get tabs {
  if (_tabs is EqualUnmodifiableMapView) return _tabs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_tabs);
}

/// «Повторить» in progress for this order.
@override final  String? repeating;
/// Result of the last «Повторить», for the screen to put in the cart.
@override final  RepeatedOrder? repeated;
@override final  Failure? repeatFailure;

/// Create a copy of OrdersState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrdersStateCopyWith<_OrdersState> get copyWith => __$OrdersStateCopyWithImpl<_OrdersState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrdersState&&(identical(other.tab, tab) || other.tab == tab)&&const DeepCollectionEquality().equals(other._tabs, _tabs)&&(identical(other.repeating, repeating) || other.repeating == repeating)&&(identical(other.repeated, repeated) || other.repeated == repeated)&&(identical(other.repeatFailure, repeatFailure) || other.repeatFailure == repeatFailure));
}


@override
int get hashCode => Object.hash(runtimeType,tab,const DeepCollectionEquality().hash(_tabs),repeating,repeated,repeatFailure);

@override
String toString() {
  return 'OrdersState(tab: $tab, tabs: $tabs, repeating: $repeating, repeated: $repeated, repeatFailure: $repeatFailure)';
}


}

/// @nodoc
abstract mixin class _$OrdersStateCopyWith<$Res> implements $OrdersStateCopyWith<$Res> {
  factory _$OrdersStateCopyWith(_OrdersState value, $Res Function(_OrdersState) _then) = __$OrdersStateCopyWithImpl;
@override @useResult
$Res call({
 OrderTab tab, Map<OrderTab, Loadable<List<OrderSummary>>> tabs, String? repeating, RepeatedOrder? repeated, Failure? repeatFailure
});


@override $RepeatedOrderCopyWith<$Res>? get repeated;

}
/// @nodoc
class __$OrdersStateCopyWithImpl<$Res>
    implements _$OrdersStateCopyWith<$Res> {
  __$OrdersStateCopyWithImpl(this._self, this._then);

  final _OrdersState _self;
  final $Res Function(_OrdersState) _then;

/// Create a copy of OrdersState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tab = null,Object? tabs = null,Object? repeating = freezed,Object? repeated = freezed,Object? repeatFailure = freezed,}) {
  return _then(_OrdersState(
tab: null == tab ? _self.tab : tab // ignore: cast_nullable_to_non_nullable
as OrderTab,tabs: null == tabs ? _self._tabs : tabs // ignore: cast_nullable_to_non_nullable
as Map<OrderTab, Loadable<List<OrderSummary>>>,repeating: freezed == repeating ? _self.repeating : repeating // ignore: cast_nullable_to_non_nullable
as String?,repeated: freezed == repeated ? _self.repeated : repeated // ignore: cast_nullable_to_non_nullable
as RepeatedOrder?,repeatFailure: freezed == repeatFailure ? _self.repeatFailure : repeatFailure // ignore: cast_nullable_to_non_nullable
as Failure?,
  ));
}

/// Create a copy of OrdersState
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
