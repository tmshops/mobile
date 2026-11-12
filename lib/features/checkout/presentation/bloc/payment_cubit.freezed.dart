// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PaymentState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PaymentState()';
}


}

/// @nodoc
class $PaymentStateCopyWith<$Res>  {
$PaymentStateCopyWith(PaymentState _, $Res Function(PaymentState) __);
}


/// Adds pattern-matching-related methods to [PaymentState].
extension PaymentStatePatterns on PaymentState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( PaymentChecking value)?  checking,TResult Function( PaymentPaid value)?  paid,TResult Function( PaymentFailed value)?  failed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case PaymentChecking() when checking != null:
return checking(_that);case PaymentPaid() when paid != null:
return paid(_that);case PaymentFailed() when failed != null:
return failed(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( PaymentChecking value)  checking,required TResult Function( PaymentPaid value)  paid,required TResult Function( PaymentFailed value)  failed,}){
final _that = this;
switch (_that) {
case PaymentChecking():
return checking(_that);case PaymentPaid():
return paid(_that);case PaymentFailed():
return failed(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( PaymentChecking value)?  checking,TResult? Function( PaymentPaid value)?  paid,TResult? Function( PaymentFailed value)?  failed,}){
final _that = this;
switch (_that) {
case PaymentChecking() when checking != null:
return checking(_that);case PaymentPaid() when paid != null:
return paid(_that);case PaymentFailed() when failed != null:
return failed(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  checking,TResult Function()?  paid,TResult Function( String? reason,  Failure? failure)?  failed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case PaymentChecking() when checking != null:
return checking();case PaymentPaid() when paid != null:
return paid();case PaymentFailed() when failed != null:
return failed(_that.reason,_that.failure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  checking,required TResult Function()  paid,required TResult Function( String? reason,  Failure? failure)  failed,}) {final _that = this;
switch (_that) {
case PaymentChecking():
return checking();case PaymentPaid():
return paid();case PaymentFailed():
return failed(_that.reason,_that.failure);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  checking,TResult? Function()?  paid,TResult? Function( String? reason,  Failure? failure)?  failed,}) {final _that = this;
switch (_that) {
case PaymentChecking() when checking != null:
return checking();case PaymentPaid() when paid != null:
return paid();case PaymentFailed() when failed != null:
return failed(_that.reason,_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class PaymentChecking implements PaymentState {
  const PaymentChecking();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentChecking);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PaymentState.checking()';
}


}




/// @nodoc


class PaymentPaid implements PaymentState {
  const PaymentPaid();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentPaid);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PaymentState.paid()';
}


}




/// @nodoc


class PaymentFailed implements PaymentState {
  const PaymentFailed({this.reason, this.failure});
  

 final  String? reason;
 final  Failure? failure;

/// Create a copy of PaymentState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentFailedCopyWith<PaymentFailed> get copyWith => _$PaymentFailedCopyWithImpl<PaymentFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentFailed&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,reason,failure);

@override
String toString() {
  return 'PaymentState.failed(reason: $reason, failure: $failure)';
}


}

/// @nodoc
abstract mixin class $PaymentFailedCopyWith<$Res> implements $PaymentStateCopyWith<$Res> {
  factory $PaymentFailedCopyWith(PaymentFailed value, $Res Function(PaymentFailed) _then) = _$PaymentFailedCopyWithImpl;
@useResult
$Res call({
 String? reason, Failure? failure
});




}
/// @nodoc
class _$PaymentFailedCopyWithImpl<$Res>
    implements $PaymentFailedCopyWith<$Res> {
  _$PaymentFailedCopyWithImpl(this._self, this._then);

  final PaymentFailed _self;
  final $Res Function(PaymentFailed) _then;

/// Create a copy of PaymentState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? reason = freezed,Object? failure = freezed,}) {
  return _then(PaymentFailed(
reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,
  ));
}


}

// dart format on
