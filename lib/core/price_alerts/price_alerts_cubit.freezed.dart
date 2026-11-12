// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'price_alerts_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PriceAlertsState {

 PriceAlertsStatus get status; List<PriceAlert> get items; Failure? get failure;/// Products whose switch is waiting for the server.
 Set<String> get busyIds;
/// Create a copy of PriceAlertsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PriceAlertsStateCopyWith<PriceAlertsState> get copyWith => _$PriceAlertsStateCopyWithImpl<PriceAlertsState>(this as PriceAlertsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PriceAlertsState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.failure, failure) || other.failure == failure)&&const DeepCollectionEquality().equals(other.busyIds, busyIds));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(items),failure,const DeepCollectionEquality().hash(busyIds));

@override
String toString() {
  return 'PriceAlertsState(status: $status, items: $items, failure: $failure, busyIds: $busyIds)';
}


}

/// @nodoc
abstract mixin class $PriceAlertsStateCopyWith<$Res>  {
  factory $PriceAlertsStateCopyWith(PriceAlertsState value, $Res Function(PriceAlertsState) _then) = _$PriceAlertsStateCopyWithImpl;
@useResult
$Res call({
 PriceAlertsStatus status, List<PriceAlert> items, Failure? failure, Set<String> busyIds
});




}
/// @nodoc
class _$PriceAlertsStateCopyWithImpl<$Res>
    implements $PriceAlertsStateCopyWith<$Res> {
  _$PriceAlertsStateCopyWithImpl(this._self, this._then);

  final PriceAlertsState _self;
  final $Res Function(PriceAlertsState) _then;

/// Create a copy of PriceAlertsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? items = null,Object? failure = freezed,Object? busyIds = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PriceAlertsStatus,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<PriceAlert>,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,busyIds: null == busyIds ? _self.busyIds : busyIds // ignore: cast_nullable_to_non_nullable
as Set<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [PriceAlertsState].
extension PriceAlertsStatePatterns on PriceAlertsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PriceAlertsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PriceAlertsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PriceAlertsState value)  $default,){
final _that = this;
switch (_that) {
case _PriceAlertsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PriceAlertsState value)?  $default,){
final _that = this;
switch (_that) {
case _PriceAlertsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PriceAlertsStatus status,  List<PriceAlert> items,  Failure? failure,  Set<String> busyIds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PriceAlertsState() when $default != null:
return $default(_that.status,_that.items,_that.failure,_that.busyIds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PriceAlertsStatus status,  List<PriceAlert> items,  Failure? failure,  Set<String> busyIds)  $default,) {final _that = this;
switch (_that) {
case _PriceAlertsState():
return $default(_that.status,_that.items,_that.failure,_that.busyIds);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PriceAlertsStatus status,  List<PriceAlert> items,  Failure? failure,  Set<String> busyIds)?  $default,) {final _that = this;
switch (_that) {
case _PriceAlertsState() when $default != null:
return $default(_that.status,_that.items,_that.failure,_that.busyIds);case _:
  return null;

}
}

}

/// @nodoc


class _PriceAlertsState extends PriceAlertsState {
  const _PriceAlertsState({this.status = PriceAlertsStatus.initial, final  List<PriceAlert> items = const <PriceAlert>[], this.failure, final  Set<String> busyIds = const <String>{}}): _items = items,_busyIds = busyIds,super._();
  

@override@JsonKey() final  PriceAlertsStatus status;
 final  List<PriceAlert> _items;
@override@JsonKey() List<PriceAlert> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  Failure? failure;
/// Products whose switch is waiting for the server.
 final  Set<String> _busyIds;
/// Products whose switch is waiting for the server.
@override@JsonKey() Set<String> get busyIds {
  if (_busyIds is EqualUnmodifiableSetView) return _busyIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_busyIds);
}


/// Create a copy of PriceAlertsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PriceAlertsStateCopyWith<_PriceAlertsState> get copyWith => __$PriceAlertsStateCopyWithImpl<_PriceAlertsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PriceAlertsState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.failure, failure) || other.failure == failure)&&const DeepCollectionEquality().equals(other._busyIds, _busyIds));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_items),failure,const DeepCollectionEquality().hash(_busyIds));

@override
String toString() {
  return 'PriceAlertsState(status: $status, items: $items, failure: $failure, busyIds: $busyIds)';
}


}

/// @nodoc
abstract mixin class _$PriceAlertsStateCopyWith<$Res> implements $PriceAlertsStateCopyWith<$Res> {
  factory _$PriceAlertsStateCopyWith(_PriceAlertsState value, $Res Function(_PriceAlertsState) _then) = __$PriceAlertsStateCopyWithImpl;
@override @useResult
$Res call({
 PriceAlertsStatus status, List<PriceAlert> items, Failure? failure, Set<String> busyIds
});




}
/// @nodoc
class __$PriceAlertsStateCopyWithImpl<$Res>
    implements _$PriceAlertsStateCopyWith<$Res> {
  __$PriceAlertsStateCopyWithImpl(this._self, this._then);

  final _PriceAlertsState _self;
  final $Res Function(_PriceAlertsState) _then;

/// Create a copy of PriceAlertsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? items = null,Object? failure = freezed,Object? busyIds = null,}) {
  return _then(_PriceAlertsState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PriceAlertsStatus,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<PriceAlert>,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,busyIds: null == busyIds ? _self._busyIds : busyIds // ignore: cast_nullable_to_non_nullable
as Set<String>,
  ));
}


}

// dart format on
