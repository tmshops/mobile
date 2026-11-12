// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'surcharges_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SurchargesState {

 bool get isLoading; List<SurchargeBill> get surcharges; List<Refund> get refunds;/// Balance available for «С баланса».
 int get balance; Failure? get failure;/// The surcharge whose payment is being started.
 String? get payingId;
/// Create a copy of SurchargesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SurchargesStateCopyWith<SurchargesState> get copyWith => _$SurchargesStateCopyWithImpl<SurchargesState>(this as SurchargesState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SurchargesState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other.surcharges, surcharges)&&const DeepCollectionEquality().equals(other.refunds, refunds)&&(identical(other.balance, balance) || other.balance == balance)&&(identical(other.failure, failure) || other.failure == failure)&&(identical(other.payingId, payingId) || other.payingId == payingId));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(surcharges),const DeepCollectionEquality().hash(refunds),balance,failure,payingId);

@override
String toString() {
  return 'SurchargesState(isLoading: $isLoading, surcharges: $surcharges, refunds: $refunds, balance: $balance, failure: $failure, payingId: $payingId)';
}


}

/// @nodoc
abstract mixin class $SurchargesStateCopyWith<$Res>  {
  factory $SurchargesStateCopyWith(SurchargesState value, $Res Function(SurchargesState) _then) = _$SurchargesStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, List<SurchargeBill> surcharges, List<Refund> refunds, int balance, Failure? failure, String? payingId
});




}
/// @nodoc
class _$SurchargesStateCopyWithImpl<$Res>
    implements $SurchargesStateCopyWith<$Res> {
  _$SurchargesStateCopyWithImpl(this._self, this._then);

  final SurchargesState _self;
  final $Res Function(SurchargesState) _then;

/// Create a copy of SurchargesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? surcharges = null,Object? refunds = null,Object? balance = null,Object? failure = freezed,Object? payingId = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,surcharges: null == surcharges ? _self.surcharges : surcharges // ignore: cast_nullable_to_non_nullable
as List<SurchargeBill>,refunds: null == refunds ? _self.refunds : refunds // ignore: cast_nullable_to_non_nullable
as List<Refund>,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as int,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,payingId: freezed == payingId ? _self.payingId : payingId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SurchargesState].
extension SurchargesStatePatterns on SurchargesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SurchargesState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SurchargesState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SurchargesState value)  $default,){
final _that = this;
switch (_that) {
case _SurchargesState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SurchargesState value)?  $default,){
final _that = this;
switch (_that) {
case _SurchargesState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  List<SurchargeBill> surcharges,  List<Refund> refunds,  int balance,  Failure? failure,  String? payingId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SurchargesState() when $default != null:
return $default(_that.isLoading,_that.surcharges,_that.refunds,_that.balance,_that.failure,_that.payingId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  List<SurchargeBill> surcharges,  List<Refund> refunds,  int balance,  Failure? failure,  String? payingId)  $default,) {final _that = this;
switch (_that) {
case _SurchargesState():
return $default(_that.isLoading,_that.surcharges,_that.refunds,_that.balance,_that.failure,_that.payingId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  List<SurchargeBill> surcharges,  List<Refund> refunds,  int balance,  Failure? failure,  String? payingId)?  $default,) {final _that = this;
switch (_that) {
case _SurchargesState() when $default != null:
return $default(_that.isLoading,_that.surcharges,_that.refunds,_that.balance,_that.failure,_that.payingId);case _:
  return null;

}
}

}

/// @nodoc


class _SurchargesState implements SurchargesState {
  const _SurchargesState({this.isLoading = true, final  List<SurchargeBill> surcharges = const <SurchargeBill>[], final  List<Refund> refunds = const <Refund>[], this.balance = 0, this.failure, this.payingId}): _surcharges = surcharges,_refunds = refunds;
  

@override@JsonKey() final  bool isLoading;
 final  List<SurchargeBill> _surcharges;
@override@JsonKey() List<SurchargeBill> get surcharges {
  if (_surcharges is EqualUnmodifiableListView) return _surcharges;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_surcharges);
}

 final  List<Refund> _refunds;
@override@JsonKey() List<Refund> get refunds {
  if (_refunds is EqualUnmodifiableListView) return _refunds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_refunds);
}

/// Balance available for «С баланса».
@override@JsonKey() final  int balance;
@override final  Failure? failure;
/// The surcharge whose payment is being started.
@override final  String? payingId;

/// Create a copy of SurchargesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SurchargesStateCopyWith<_SurchargesState> get copyWith => __$SurchargesStateCopyWithImpl<_SurchargesState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SurchargesState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other._surcharges, _surcharges)&&const DeepCollectionEquality().equals(other._refunds, _refunds)&&(identical(other.balance, balance) || other.balance == balance)&&(identical(other.failure, failure) || other.failure == failure)&&(identical(other.payingId, payingId) || other.payingId == payingId));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(_surcharges),const DeepCollectionEquality().hash(_refunds),balance,failure,payingId);

@override
String toString() {
  return 'SurchargesState(isLoading: $isLoading, surcharges: $surcharges, refunds: $refunds, balance: $balance, failure: $failure, payingId: $payingId)';
}


}

/// @nodoc
abstract mixin class _$SurchargesStateCopyWith<$Res> implements $SurchargesStateCopyWith<$Res> {
  factory _$SurchargesStateCopyWith(_SurchargesState value, $Res Function(_SurchargesState) _then) = __$SurchargesStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, List<SurchargeBill> surcharges, List<Refund> refunds, int balance, Failure? failure, String? payingId
});




}
/// @nodoc
class __$SurchargesStateCopyWithImpl<$Res>
    implements _$SurchargesStateCopyWith<$Res> {
  __$SurchargesStateCopyWithImpl(this._self, this._then);

  final _SurchargesState _self;
  final $Res Function(_SurchargesState) _then;

/// Create a copy of SurchargesState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? surcharges = null,Object? refunds = null,Object? balance = null,Object? failure = freezed,Object? payingId = freezed,}) {
  return _then(_SurchargesState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,surcharges: null == surcharges ? _self._surcharges : surcharges // ignore: cast_nullable_to_non_nullable
as List<SurchargeBill>,refunds: null == refunds ? _self._refunds : refunds // ignore: cast_nullable_to_non_nullable
as List<Refund>,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as int,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,payingId: freezed == payingId ? _self.payingId : payingId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
