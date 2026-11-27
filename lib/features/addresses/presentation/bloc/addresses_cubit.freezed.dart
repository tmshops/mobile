// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'addresses_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddressesState {

 bool get isLoading; List<DeliveryAddress> get addresses;/// Loading failed with nothing to show.
 Failure? get failure;/// «Сделать основным» or «Удалить» failed: a toast, the list stays.
 Failure? get actionFailure;
/// Create a copy of AddressesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddressesStateCopyWith<AddressesState> get copyWith => _$AddressesStateCopyWithImpl<AddressesState>(this as AddressesState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddressesState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other.addresses, addresses)&&(identical(other.failure, failure) || other.failure == failure)&&(identical(other.actionFailure, actionFailure) || other.actionFailure == actionFailure));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(addresses),failure,actionFailure);

@override
String toString() {
  return 'AddressesState(isLoading: $isLoading, addresses: $addresses, failure: $failure, actionFailure: $actionFailure)';
}


}

/// @nodoc
abstract mixin class $AddressesStateCopyWith<$Res>  {
  factory $AddressesStateCopyWith(AddressesState value, $Res Function(AddressesState) _then) = _$AddressesStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, List<DeliveryAddress> addresses, Failure? failure, Failure? actionFailure
});




}
/// @nodoc
class _$AddressesStateCopyWithImpl<$Res>
    implements $AddressesStateCopyWith<$Res> {
  _$AddressesStateCopyWithImpl(this._self, this._then);

  final AddressesState _self;
  final $Res Function(AddressesState) _then;

/// Create a copy of AddressesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? addresses = null,Object? failure = freezed,Object? actionFailure = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,addresses: null == addresses ? _self.addresses : addresses // ignore: cast_nullable_to_non_nullable
as List<DeliveryAddress>,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,actionFailure: freezed == actionFailure ? _self.actionFailure : actionFailure // ignore: cast_nullable_to_non_nullable
as Failure?,
  ));
}

}


/// Adds pattern-matching-related methods to [AddressesState].
extension AddressesStatePatterns on AddressesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddressesState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddressesState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddressesState value)  $default,){
final _that = this;
switch (_that) {
case _AddressesState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddressesState value)?  $default,){
final _that = this;
switch (_that) {
case _AddressesState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  List<DeliveryAddress> addresses,  Failure? failure,  Failure? actionFailure)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddressesState() when $default != null:
return $default(_that.isLoading,_that.addresses,_that.failure,_that.actionFailure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  List<DeliveryAddress> addresses,  Failure? failure,  Failure? actionFailure)  $default,) {final _that = this;
switch (_that) {
case _AddressesState():
return $default(_that.isLoading,_that.addresses,_that.failure,_that.actionFailure);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  List<DeliveryAddress> addresses,  Failure? failure,  Failure? actionFailure)?  $default,) {final _that = this;
switch (_that) {
case _AddressesState() when $default != null:
return $default(_that.isLoading,_that.addresses,_that.failure,_that.actionFailure);case _:
  return null;

}
}

}

/// @nodoc


class _AddressesState implements AddressesState {
  const _AddressesState({this.isLoading = true, final  List<DeliveryAddress> addresses = const <DeliveryAddress>[], this.failure, this.actionFailure}): _addresses = addresses;
  

@override@JsonKey() final  bool isLoading;
 final  List<DeliveryAddress> _addresses;
@override@JsonKey() List<DeliveryAddress> get addresses {
  if (_addresses is EqualUnmodifiableListView) return _addresses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_addresses);
}

/// Loading failed with nothing to show.
@override final  Failure? failure;
/// «Сделать основным» or «Удалить» failed: a toast, the list stays.
@override final  Failure? actionFailure;

/// Create a copy of AddressesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddressesStateCopyWith<_AddressesState> get copyWith => __$AddressesStateCopyWithImpl<_AddressesState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddressesState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other._addresses, _addresses)&&(identical(other.failure, failure) || other.failure == failure)&&(identical(other.actionFailure, actionFailure) || other.actionFailure == actionFailure));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(_addresses),failure,actionFailure);

@override
String toString() {
  return 'AddressesState(isLoading: $isLoading, addresses: $addresses, failure: $failure, actionFailure: $actionFailure)';
}


}

/// @nodoc
abstract mixin class _$AddressesStateCopyWith<$Res> implements $AddressesStateCopyWith<$Res> {
  factory _$AddressesStateCopyWith(_AddressesState value, $Res Function(_AddressesState) _then) = __$AddressesStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, List<DeliveryAddress> addresses, Failure? failure, Failure? actionFailure
});




}
/// @nodoc
class __$AddressesStateCopyWithImpl<$Res>
    implements _$AddressesStateCopyWith<$Res> {
  __$AddressesStateCopyWithImpl(this._self, this._then);

  final _AddressesState _self;
  final $Res Function(_AddressesState) _then;

/// Create a copy of AddressesState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? addresses = null,Object? failure = freezed,Object? actionFailure = freezed,}) {
  return _then(_AddressesState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,addresses: null == addresses ? _self._addresses : addresses // ignore: cast_nullable_to_non_nullable
as List<DeliveryAddress>,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,actionFailure: freezed == actionFailure ? _self.actionFailure : actionFailure // ignore: cast_nullable_to_non_nullable
as Failure?,
  ));
}


}

// dart format on
