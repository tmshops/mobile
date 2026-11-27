// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_feed_cubits.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OrdersFeedState {

 OrdersFilter get filter; Map<OrdersFilter, Loadable<List<FeedCard>>> get slots;
/// Create a copy of OrdersFeedState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrdersFeedStateCopyWith<OrdersFeedState> get copyWith => _$OrdersFeedStateCopyWithImpl<OrdersFeedState>(this as OrdersFeedState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrdersFeedState&&(identical(other.filter, filter) || other.filter == filter)&&const DeepCollectionEquality().equals(other.slots, slots));
}


@override
int get hashCode => Object.hash(runtimeType,filter,const DeepCollectionEquality().hash(slots));

@override
String toString() {
  return 'OrdersFeedState(filter: $filter, slots: $slots)';
}


}

/// @nodoc
abstract mixin class $OrdersFeedStateCopyWith<$Res>  {
  factory $OrdersFeedStateCopyWith(OrdersFeedState value, $Res Function(OrdersFeedState) _then) = _$OrdersFeedStateCopyWithImpl;
@useResult
$Res call({
 OrdersFilter filter, Map<OrdersFilter, Loadable<List<FeedCard>>> slots
});




}
/// @nodoc
class _$OrdersFeedStateCopyWithImpl<$Res>
    implements $OrdersFeedStateCopyWith<$Res> {
  _$OrdersFeedStateCopyWithImpl(this._self, this._then);

  final OrdersFeedState _self;
  final $Res Function(OrdersFeedState) _then;

/// Create a copy of OrdersFeedState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? filter = null,Object? slots = null,}) {
  return _then(_self.copyWith(
filter: null == filter ? _self.filter : filter // ignore: cast_nullable_to_non_nullable
as OrdersFilter,slots: null == slots ? _self.slots : slots // ignore: cast_nullable_to_non_nullable
as Map<OrdersFilter, Loadable<List<FeedCard>>>,
  ));
}

}


/// Adds pattern-matching-related methods to [OrdersFeedState].
extension OrdersFeedStatePatterns on OrdersFeedState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrdersFeedState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrdersFeedState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrdersFeedState value)  $default,){
final _that = this;
switch (_that) {
case _OrdersFeedState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrdersFeedState value)?  $default,){
final _that = this;
switch (_that) {
case _OrdersFeedState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( OrdersFilter filter,  Map<OrdersFilter, Loadable<List<FeedCard>>> slots)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrdersFeedState() when $default != null:
return $default(_that.filter,_that.slots);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( OrdersFilter filter,  Map<OrdersFilter, Loadable<List<FeedCard>>> slots)  $default,) {final _that = this;
switch (_that) {
case _OrdersFeedState():
return $default(_that.filter,_that.slots);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( OrdersFilter filter,  Map<OrdersFilter, Loadable<List<FeedCard>>> slots)?  $default,) {final _that = this;
switch (_that) {
case _OrdersFeedState() when $default != null:
return $default(_that.filter,_that.slots);case _:
  return null;

}
}

}

/// @nodoc


class _OrdersFeedState extends OrdersFeedState {
  const _OrdersFeedState({required this.filter, final  Map<OrdersFilter, Loadable<List<FeedCard>>> slots = const <OrdersFilter, Loadable<List<FeedCard>>>{}}): _slots = slots,super._();
  

@override final  OrdersFilter filter;
 final  Map<OrdersFilter, Loadable<List<FeedCard>>> _slots;
@override@JsonKey() Map<OrdersFilter, Loadable<List<FeedCard>>> get slots {
  if (_slots is EqualUnmodifiableMapView) return _slots;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_slots);
}


/// Create a copy of OrdersFeedState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrdersFeedStateCopyWith<_OrdersFeedState> get copyWith => __$OrdersFeedStateCopyWithImpl<_OrdersFeedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrdersFeedState&&(identical(other.filter, filter) || other.filter == filter)&&const DeepCollectionEquality().equals(other._slots, _slots));
}


@override
int get hashCode => Object.hash(runtimeType,filter,const DeepCollectionEquality().hash(_slots));

@override
String toString() {
  return 'OrdersFeedState(filter: $filter, slots: $slots)';
}


}

/// @nodoc
abstract mixin class _$OrdersFeedStateCopyWith<$Res> implements $OrdersFeedStateCopyWith<$Res> {
  factory _$OrdersFeedStateCopyWith(_OrdersFeedState value, $Res Function(_OrdersFeedState) _then) = __$OrdersFeedStateCopyWithImpl;
@override @useResult
$Res call({
 OrdersFilter filter, Map<OrdersFilter, Loadable<List<FeedCard>>> slots
});




}
/// @nodoc
class __$OrdersFeedStateCopyWithImpl<$Res>
    implements _$OrdersFeedStateCopyWith<$Res> {
  __$OrdersFeedStateCopyWithImpl(this._self, this._then);

  final _OrdersFeedState _self;
  final $Res Function(_OrdersFeedState) _then;

/// Create a copy of OrdersFeedState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? filter = null,Object? slots = null,}) {
  return _then(_OrdersFeedState(
filter: null == filter ? _self.filter : filter // ignore: cast_nullable_to_non_nullable
as OrdersFilter,slots: null == slots ? _self._slots : slots // ignore: cast_nullable_to_non_nullable
as Map<OrdersFilter, Loadable<List<FeedCard>>>,
  ));
}


}

// dart format on
