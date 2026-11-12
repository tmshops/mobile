// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_payment_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WalletPayment {

 String get paymentId; int get amount;
/// Create a copy of WalletPayment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WalletPaymentCopyWith<WalletPayment> get copyWith => _$WalletPaymentCopyWithImpl<WalletPayment>(this as WalletPayment, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletPayment&&(identical(other.paymentId, paymentId) || other.paymentId == paymentId)&&(identical(other.amount, amount) || other.amount == amount));
}


@override
int get hashCode => Object.hash(runtimeType,paymentId,amount);

@override
String toString() {
  return 'WalletPayment(paymentId: $paymentId, amount: $amount)';
}


}

/// @nodoc
abstract mixin class $WalletPaymentCopyWith<$Res>  {
  factory $WalletPaymentCopyWith(WalletPayment value, $Res Function(WalletPayment) _then) = _$WalletPaymentCopyWithImpl;
@useResult
$Res call({
 String paymentId, int amount
});




}
/// @nodoc
class _$WalletPaymentCopyWithImpl<$Res>
    implements $WalletPaymentCopyWith<$Res> {
  _$WalletPaymentCopyWithImpl(this._self, this._then);

  final WalletPayment _self;
  final $Res Function(WalletPayment) _then;

/// Create a copy of WalletPayment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? paymentId = null,Object? amount = null,}) {
  return _then(_self.copyWith(
paymentId: null == paymentId ? _self.paymentId : paymentId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [WalletPayment].
extension WalletPaymentPatterns on WalletPayment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( WalletTopUp value)?  topUp,TResult Function( WalletSurchargePayment value)?  surcharge,required TResult orElse(),}){
final _that = this;
switch (_that) {
case WalletTopUp() when topUp != null:
return topUp(_that);case WalletSurchargePayment() when surcharge != null:
return surcharge(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( WalletTopUp value)  topUp,required TResult Function( WalletSurchargePayment value)  surcharge,}){
final _that = this;
switch (_that) {
case WalletTopUp():
return topUp(_that);case WalletSurchargePayment():
return surcharge(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( WalletTopUp value)?  topUp,TResult? Function( WalletSurchargePayment value)?  surcharge,}){
final _that = this;
switch (_that) {
case WalletTopUp() when topUp != null:
return topUp(_that);case WalletSurchargePayment() when surcharge != null:
return surcharge(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String paymentId,  int amount)?  topUp,TResult Function( String paymentId,  int amount,  String surchargeId)?  surcharge,required TResult orElse(),}) {final _that = this;
switch (_that) {
case WalletTopUp() when topUp != null:
return topUp(_that.paymentId,_that.amount);case WalletSurchargePayment() when surcharge != null:
return surcharge(_that.paymentId,_that.amount,_that.surchargeId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String paymentId,  int amount)  topUp,required TResult Function( String paymentId,  int amount,  String surchargeId)  surcharge,}) {final _that = this;
switch (_that) {
case WalletTopUp():
return topUp(_that.paymentId,_that.amount);case WalletSurchargePayment():
return surcharge(_that.paymentId,_that.amount,_that.surchargeId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String paymentId,  int amount)?  topUp,TResult? Function( String paymentId,  int amount,  String surchargeId)?  surcharge,}) {final _that = this;
switch (_that) {
case WalletTopUp() when topUp != null:
return topUp(_that.paymentId,_that.amount);case WalletSurchargePayment() when surcharge != null:
return surcharge(_that.paymentId,_that.amount,_that.surchargeId);case _:
  return null;

}
}

}

/// @nodoc


class WalletTopUp implements WalletPayment {
  const WalletTopUp({required this.paymentId, required this.amount});
  

@override final  String paymentId;
@override final  int amount;

/// Create a copy of WalletPayment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WalletTopUpCopyWith<WalletTopUp> get copyWith => _$WalletTopUpCopyWithImpl<WalletTopUp>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletTopUp&&(identical(other.paymentId, paymentId) || other.paymentId == paymentId)&&(identical(other.amount, amount) || other.amount == amount));
}


@override
int get hashCode => Object.hash(runtimeType,paymentId,amount);

@override
String toString() {
  return 'WalletPayment.topUp(paymentId: $paymentId, amount: $amount)';
}


}

/// @nodoc
abstract mixin class $WalletTopUpCopyWith<$Res> implements $WalletPaymentCopyWith<$Res> {
  factory $WalletTopUpCopyWith(WalletTopUp value, $Res Function(WalletTopUp) _then) = _$WalletTopUpCopyWithImpl;
@override @useResult
$Res call({
 String paymentId, int amount
});




}
/// @nodoc
class _$WalletTopUpCopyWithImpl<$Res>
    implements $WalletTopUpCopyWith<$Res> {
  _$WalletTopUpCopyWithImpl(this._self, this._then);

  final WalletTopUp _self;
  final $Res Function(WalletTopUp) _then;

/// Create a copy of WalletPayment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? paymentId = null,Object? amount = null,}) {
  return _then(WalletTopUp(
paymentId: null == paymentId ? _self.paymentId : paymentId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class WalletSurchargePayment implements WalletPayment {
  const WalletSurchargePayment({required this.paymentId, required this.amount, required this.surchargeId});
  

@override final  String paymentId;
@override final  int amount;
 final  String surchargeId;

/// Create a copy of WalletPayment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WalletSurchargePaymentCopyWith<WalletSurchargePayment> get copyWith => _$WalletSurchargePaymentCopyWithImpl<WalletSurchargePayment>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletSurchargePayment&&(identical(other.paymentId, paymentId) || other.paymentId == paymentId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.surchargeId, surchargeId) || other.surchargeId == surchargeId));
}


@override
int get hashCode => Object.hash(runtimeType,paymentId,amount,surchargeId);

@override
String toString() {
  return 'WalletPayment.surcharge(paymentId: $paymentId, amount: $amount, surchargeId: $surchargeId)';
}


}

/// @nodoc
abstract mixin class $WalletSurchargePaymentCopyWith<$Res> implements $WalletPaymentCopyWith<$Res> {
  factory $WalletSurchargePaymentCopyWith(WalletSurchargePayment value, $Res Function(WalletSurchargePayment) _then) = _$WalletSurchargePaymentCopyWithImpl;
@override @useResult
$Res call({
 String paymentId, int amount, String surchargeId
});




}
/// @nodoc
class _$WalletSurchargePaymentCopyWithImpl<$Res>
    implements $WalletSurchargePaymentCopyWith<$Res> {
  _$WalletSurchargePaymentCopyWithImpl(this._self, this._then);

  final WalletSurchargePayment _self;
  final $Res Function(WalletSurchargePayment) _then;

/// Create a copy of WalletPayment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? paymentId = null,Object? amount = null,Object? surchargeId = null,}) {
  return _then(WalletSurchargePayment(
paymentId: null == paymentId ? _self.paymentId : paymentId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,surchargeId: null == surchargeId ? _self.surchargeId : surchargeId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$WalletPaymentState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletPaymentState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WalletPaymentState()';
}


}

/// @nodoc
class $WalletPaymentStateCopyWith<$Res>  {
$WalletPaymentStateCopyWith(WalletPaymentState _, $Res Function(WalletPaymentState) __);
}


/// Adds pattern-matching-related methods to [WalletPaymentState].
extension WalletPaymentStatePatterns on WalletPaymentState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( WalletPaymentChecking value)?  checking,TResult Function( WalletPaymentPaid value)?  paid,TResult Function( WalletPaymentFailed value)?  failed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case WalletPaymentChecking() when checking != null:
return checking(_that);case WalletPaymentPaid() when paid != null:
return paid(_that);case WalletPaymentFailed() when failed != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( WalletPaymentChecking value)  checking,required TResult Function( WalletPaymentPaid value)  paid,required TResult Function( WalletPaymentFailed value)  failed,}){
final _that = this;
switch (_that) {
case WalletPaymentChecking():
return checking(_that);case WalletPaymentPaid():
return paid(_that);case WalletPaymentFailed():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( WalletPaymentChecking value)?  checking,TResult? Function( WalletPaymentPaid value)?  paid,TResult? Function( WalletPaymentFailed value)?  failed,}){
final _that = this;
switch (_that) {
case WalletPaymentChecking() when checking != null:
return checking(_that);case WalletPaymentPaid() when paid != null:
return paid(_that);case WalletPaymentFailed() when failed != null:
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
case WalletPaymentChecking() when checking != null:
return checking();case WalletPaymentPaid() when paid != null:
return paid();case WalletPaymentFailed() when failed != null:
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
case WalletPaymentChecking():
return checking();case WalletPaymentPaid():
return paid();case WalletPaymentFailed():
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
case WalletPaymentChecking() when checking != null:
return checking();case WalletPaymentPaid() when paid != null:
return paid();case WalletPaymentFailed() when failed != null:
return failed(_that.reason,_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class WalletPaymentChecking implements WalletPaymentState {
  const WalletPaymentChecking();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletPaymentChecking);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WalletPaymentState.checking()';
}


}




/// @nodoc


class WalletPaymentPaid implements WalletPaymentState {
  const WalletPaymentPaid();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletPaymentPaid);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WalletPaymentState.paid()';
}


}




/// @nodoc


class WalletPaymentFailed implements WalletPaymentState {
  const WalletPaymentFailed({this.reason, this.failure});
  

 final  String? reason;
 final  Failure? failure;

/// Create a copy of WalletPaymentState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WalletPaymentFailedCopyWith<WalletPaymentFailed> get copyWith => _$WalletPaymentFailedCopyWithImpl<WalletPaymentFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletPaymentFailed&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,reason,failure);

@override
String toString() {
  return 'WalletPaymentState.failed(reason: $reason, failure: $failure)';
}


}

/// @nodoc
abstract mixin class $WalletPaymentFailedCopyWith<$Res> implements $WalletPaymentStateCopyWith<$Res> {
  factory $WalletPaymentFailedCopyWith(WalletPaymentFailed value, $Res Function(WalletPaymentFailed) _then) = _$WalletPaymentFailedCopyWithImpl;
@useResult
$Res call({
 String? reason, Failure? failure
});




}
/// @nodoc
class _$WalletPaymentFailedCopyWithImpl<$Res>
    implements $WalletPaymentFailedCopyWith<$Res> {
  _$WalletPaymentFailedCopyWithImpl(this._self, this._then);

  final WalletPaymentFailed _self;
  final $Res Function(WalletPaymentFailed) _then;

/// Create a copy of WalletPaymentState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? reason = freezed,Object? failure = freezed,}) {
  return _then(WalletPaymentFailed(
reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,
  ));
}


}

// dart format on
