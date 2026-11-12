// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OrderSummary {

 String get number; DateTime get createdAt; Status get status; int get total; int get itemCount;/// Up to four product photos for the overlapping thumbnails.
 List<String> get previews; bool get canRepeat;
/// Create a copy of OrderSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderSummaryCopyWith<OrderSummary> get copyWith => _$OrderSummaryCopyWithImpl<OrderSummary>(this as OrderSummary, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderSummary&&(identical(other.number, number) || other.number == number)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.status, status) || other.status == status)&&(identical(other.total, total) || other.total == total)&&(identical(other.itemCount, itemCount) || other.itemCount == itemCount)&&const DeepCollectionEquality().equals(other.previews, previews)&&(identical(other.canRepeat, canRepeat) || other.canRepeat == canRepeat));
}


@override
int get hashCode => Object.hash(runtimeType,number,createdAt,status,total,itemCount,const DeepCollectionEquality().hash(previews),canRepeat);

@override
String toString() {
  return 'OrderSummary(number: $number, createdAt: $createdAt, status: $status, total: $total, itemCount: $itemCount, previews: $previews, canRepeat: $canRepeat)';
}


}

/// @nodoc
abstract mixin class $OrderSummaryCopyWith<$Res>  {
  factory $OrderSummaryCopyWith(OrderSummary value, $Res Function(OrderSummary) _then) = _$OrderSummaryCopyWithImpl;
@useResult
$Res call({
 String number, DateTime createdAt, Status status, int total, int itemCount, List<String> previews, bool canRepeat
});


$StatusCopyWith<$Res> get status;

}
/// @nodoc
class _$OrderSummaryCopyWithImpl<$Res>
    implements $OrderSummaryCopyWith<$Res> {
  _$OrderSummaryCopyWithImpl(this._self, this._then);

  final OrderSummary _self;
  final $Res Function(OrderSummary) _then;

/// Create a copy of OrderSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? number = null,Object? createdAt = null,Object? status = null,Object? total = null,Object? itemCount = null,Object? previews = null,Object? canRepeat = null,}) {
  return _then(_self.copyWith(
number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,itemCount: null == itemCount ? _self.itemCount : itemCount // ignore: cast_nullable_to_non_nullable
as int,previews: null == previews ? _self.previews : previews // ignore: cast_nullable_to_non_nullable
as List<String>,canRepeat: null == canRepeat ? _self.canRepeat : canRepeat // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of OrderSummary
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatusCopyWith<$Res> get status {
  
  return $StatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}


/// Adds pattern-matching-related methods to [OrderSummary].
extension OrderSummaryPatterns on OrderSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderSummary value)  $default,){
final _that = this;
switch (_that) {
case _OrderSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderSummary value)?  $default,){
final _that = this;
switch (_that) {
case _OrderSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String number,  DateTime createdAt,  Status status,  int total,  int itemCount,  List<String> previews,  bool canRepeat)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderSummary() when $default != null:
return $default(_that.number,_that.createdAt,_that.status,_that.total,_that.itemCount,_that.previews,_that.canRepeat);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String number,  DateTime createdAt,  Status status,  int total,  int itemCount,  List<String> previews,  bool canRepeat)  $default,) {final _that = this;
switch (_that) {
case _OrderSummary():
return $default(_that.number,_that.createdAt,_that.status,_that.total,_that.itemCount,_that.previews,_that.canRepeat);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String number,  DateTime createdAt,  Status status,  int total,  int itemCount,  List<String> previews,  bool canRepeat)?  $default,) {final _that = this;
switch (_that) {
case _OrderSummary() when $default != null:
return $default(_that.number,_that.createdAt,_that.status,_that.total,_that.itemCount,_that.previews,_that.canRepeat);case _:
  return null;

}
}

}

/// @nodoc


class _OrderSummary implements OrderSummary {
  const _OrderSummary({required this.number, required this.createdAt, required this.status, required this.total, required this.itemCount, required final  List<String> previews, this.canRepeat = false}): _previews = previews;
  

@override final  String number;
@override final  DateTime createdAt;
@override final  Status status;
@override final  int total;
@override final  int itemCount;
/// Up to four product photos for the overlapping thumbnails.
 final  List<String> _previews;
/// Up to four product photos for the overlapping thumbnails.
@override List<String> get previews {
  if (_previews is EqualUnmodifiableListView) return _previews;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_previews);
}

@override@JsonKey() final  bool canRepeat;

/// Create a copy of OrderSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderSummaryCopyWith<_OrderSummary> get copyWith => __$OrderSummaryCopyWithImpl<_OrderSummary>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderSummary&&(identical(other.number, number) || other.number == number)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.status, status) || other.status == status)&&(identical(other.total, total) || other.total == total)&&(identical(other.itemCount, itemCount) || other.itemCount == itemCount)&&const DeepCollectionEquality().equals(other._previews, _previews)&&(identical(other.canRepeat, canRepeat) || other.canRepeat == canRepeat));
}


@override
int get hashCode => Object.hash(runtimeType,number,createdAt,status,total,itemCount,const DeepCollectionEquality().hash(_previews),canRepeat);

@override
String toString() {
  return 'OrderSummary(number: $number, createdAt: $createdAt, status: $status, total: $total, itemCount: $itemCount, previews: $previews, canRepeat: $canRepeat)';
}


}

/// @nodoc
abstract mixin class _$OrderSummaryCopyWith<$Res> implements $OrderSummaryCopyWith<$Res> {
  factory _$OrderSummaryCopyWith(_OrderSummary value, $Res Function(_OrderSummary) _then) = __$OrderSummaryCopyWithImpl;
@override @useResult
$Res call({
 String number, DateTime createdAt, Status status, int total, int itemCount, List<String> previews, bool canRepeat
});


@override $StatusCopyWith<$Res> get status;

}
/// @nodoc
class __$OrderSummaryCopyWithImpl<$Res>
    implements _$OrderSummaryCopyWith<$Res> {
  __$OrderSummaryCopyWithImpl(this._self, this._then);

  final _OrderSummary _self;
  final $Res Function(_OrderSummary) _then;

/// Create a copy of OrderSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? number = null,Object? createdAt = null,Object? status = null,Object? total = null,Object? itemCount = null,Object? previews = null,Object? canRepeat = null,}) {
  return _then(_OrderSummary(
number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,itemCount: null == itemCount ? _self.itemCount : itemCount // ignore: cast_nullable_to_non_nullable
as int,previews: null == previews ? _self._previews : previews // ignore: cast_nullable_to_non_nullable
as List<String>,canRepeat: null == canRepeat ? _self.canRepeat : canRepeat // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of OrderSummary
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatusCopyWith<$Res> get status {
  
  return $StatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}

/// @nodoc
mixin _$OrderDetails {

 String get number; DateTime get createdAt; Status get status;/// One or two sentences under the status title.
 String get statusText; List<OrderItem> get items; List<StatusEvent> get history; OrderMoney get money;/// «Курьер: ул. Магтымгулы, 10» or the pickup point.
 String get receiving; String get deliveryTypeName;/// «Оплатить» for an order awaiting payment, until [payDeadline].
 bool get canPay; DateTime? get payDeadline;/// From the server (TZ §6.3): the app never decides on its own.
 bool get canCancel;/// Why it can no longer be cancelled («товар уже выкуплен под вас»).
 String? get cancelNote;/// Where a cancelled order's money goes, e.g. «на баланс».
 String? get refundTo; List<CancelReason> get cancelReasons; List<ParcelLink> get parcels; bool get canRepeat;
/// Create a copy of OrderDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderDetailsCopyWith<OrderDetails> get copyWith => _$OrderDetailsCopyWithImpl<OrderDetails>(this as OrderDetails, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderDetails&&(identical(other.number, number) || other.number == number)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.status, status) || other.status == status)&&(identical(other.statusText, statusText) || other.statusText == statusText)&&const DeepCollectionEquality().equals(other.items, items)&&const DeepCollectionEquality().equals(other.history, history)&&(identical(other.money, money) || other.money == money)&&(identical(other.receiving, receiving) || other.receiving == receiving)&&(identical(other.deliveryTypeName, deliveryTypeName) || other.deliveryTypeName == deliveryTypeName)&&(identical(other.canPay, canPay) || other.canPay == canPay)&&(identical(other.payDeadline, payDeadline) || other.payDeadline == payDeadline)&&(identical(other.canCancel, canCancel) || other.canCancel == canCancel)&&(identical(other.cancelNote, cancelNote) || other.cancelNote == cancelNote)&&(identical(other.refundTo, refundTo) || other.refundTo == refundTo)&&const DeepCollectionEquality().equals(other.cancelReasons, cancelReasons)&&const DeepCollectionEquality().equals(other.parcels, parcels)&&(identical(other.canRepeat, canRepeat) || other.canRepeat == canRepeat));
}


@override
int get hashCode => Object.hash(runtimeType,number,createdAt,status,statusText,const DeepCollectionEquality().hash(items),const DeepCollectionEquality().hash(history),money,receiving,deliveryTypeName,canPay,payDeadline,canCancel,cancelNote,refundTo,const DeepCollectionEquality().hash(cancelReasons),const DeepCollectionEquality().hash(parcels),canRepeat);

@override
String toString() {
  return 'OrderDetails(number: $number, createdAt: $createdAt, status: $status, statusText: $statusText, items: $items, history: $history, money: $money, receiving: $receiving, deliveryTypeName: $deliveryTypeName, canPay: $canPay, payDeadline: $payDeadline, canCancel: $canCancel, cancelNote: $cancelNote, refundTo: $refundTo, cancelReasons: $cancelReasons, parcels: $parcels, canRepeat: $canRepeat)';
}


}

/// @nodoc
abstract mixin class $OrderDetailsCopyWith<$Res>  {
  factory $OrderDetailsCopyWith(OrderDetails value, $Res Function(OrderDetails) _then) = _$OrderDetailsCopyWithImpl;
@useResult
$Res call({
 String number, DateTime createdAt, Status status, String statusText, List<OrderItem> items, List<StatusEvent> history, OrderMoney money, String receiving, String deliveryTypeName, bool canPay, DateTime? payDeadline, bool canCancel, String? cancelNote, String? refundTo, List<CancelReason> cancelReasons, List<ParcelLink> parcels, bool canRepeat
});


$StatusCopyWith<$Res> get status;$OrderMoneyCopyWith<$Res> get money;

}
/// @nodoc
class _$OrderDetailsCopyWithImpl<$Res>
    implements $OrderDetailsCopyWith<$Res> {
  _$OrderDetailsCopyWithImpl(this._self, this._then);

  final OrderDetails _self;
  final $Res Function(OrderDetails) _then;

/// Create a copy of OrderDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? number = null,Object? createdAt = null,Object? status = null,Object? statusText = null,Object? items = null,Object? history = null,Object? money = null,Object? receiving = null,Object? deliveryTypeName = null,Object? canPay = null,Object? payDeadline = freezed,Object? canCancel = null,Object? cancelNote = freezed,Object? refundTo = freezed,Object? cancelReasons = null,Object? parcels = null,Object? canRepeat = null,}) {
  return _then(_self.copyWith(
number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status,statusText: null == statusText ? _self.statusText : statusText // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<OrderItem>,history: null == history ? _self.history : history // ignore: cast_nullable_to_non_nullable
as List<StatusEvent>,money: null == money ? _self.money : money // ignore: cast_nullable_to_non_nullable
as OrderMoney,receiving: null == receiving ? _self.receiving : receiving // ignore: cast_nullable_to_non_nullable
as String,deliveryTypeName: null == deliveryTypeName ? _self.deliveryTypeName : deliveryTypeName // ignore: cast_nullable_to_non_nullable
as String,canPay: null == canPay ? _self.canPay : canPay // ignore: cast_nullable_to_non_nullable
as bool,payDeadline: freezed == payDeadline ? _self.payDeadline : payDeadline // ignore: cast_nullable_to_non_nullable
as DateTime?,canCancel: null == canCancel ? _self.canCancel : canCancel // ignore: cast_nullable_to_non_nullable
as bool,cancelNote: freezed == cancelNote ? _self.cancelNote : cancelNote // ignore: cast_nullable_to_non_nullable
as String?,refundTo: freezed == refundTo ? _self.refundTo : refundTo // ignore: cast_nullable_to_non_nullable
as String?,cancelReasons: null == cancelReasons ? _self.cancelReasons : cancelReasons // ignore: cast_nullable_to_non_nullable
as List<CancelReason>,parcels: null == parcels ? _self.parcels : parcels // ignore: cast_nullable_to_non_nullable
as List<ParcelLink>,canRepeat: null == canRepeat ? _self.canRepeat : canRepeat // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of OrderDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatusCopyWith<$Res> get status {
  
  return $StatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of OrderDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderMoneyCopyWith<$Res> get money {
  
  return $OrderMoneyCopyWith<$Res>(_self.money, (value) {
    return _then(_self.copyWith(money: value));
  });
}
}


/// Adds pattern-matching-related methods to [OrderDetails].
extension OrderDetailsPatterns on OrderDetails {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderDetails value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderDetails() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderDetails value)  $default,){
final _that = this;
switch (_that) {
case _OrderDetails():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderDetails value)?  $default,){
final _that = this;
switch (_that) {
case _OrderDetails() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String number,  DateTime createdAt,  Status status,  String statusText,  List<OrderItem> items,  List<StatusEvent> history,  OrderMoney money,  String receiving,  String deliveryTypeName,  bool canPay,  DateTime? payDeadline,  bool canCancel,  String? cancelNote,  String? refundTo,  List<CancelReason> cancelReasons,  List<ParcelLink> parcels,  bool canRepeat)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderDetails() when $default != null:
return $default(_that.number,_that.createdAt,_that.status,_that.statusText,_that.items,_that.history,_that.money,_that.receiving,_that.deliveryTypeName,_that.canPay,_that.payDeadline,_that.canCancel,_that.cancelNote,_that.refundTo,_that.cancelReasons,_that.parcels,_that.canRepeat);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String number,  DateTime createdAt,  Status status,  String statusText,  List<OrderItem> items,  List<StatusEvent> history,  OrderMoney money,  String receiving,  String deliveryTypeName,  bool canPay,  DateTime? payDeadline,  bool canCancel,  String? cancelNote,  String? refundTo,  List<CancelReason> cancelReasons,  List<ParcelLink> parcels,  bool canRepeat)  $default,) {final _that = this;
switch (_that) {
case _OrderDetails():
return $default(_that.number,_that.createdAt,_that.status,_that.statusText,_that.items,_that.history,_that.money,_that.receiving,_that.deliveryTypeName,_that.canPay,_that.payDeadline,_that.canCancel,_that.cancelNote,_that.refundTo,_that.cancelReasons,_that.parcels,_that.canRepeat);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String number,  DateTime createdAt,  Status status,  String statusText,  List<OrderItem> items,  List<StatusEvent> history,  OrderMoney money,  String receiving,  String deliveryTypeName,  bool canPay,  DateTime? payDeadline,  bool canCancel,  String? cancelNote,  String? refundTo,  List<CancelReason> cancelReasons,  List<ParcelLink> parcels,  bool canRepeat)?  $default,) {final _that = this;
switch (_that) {
case _OrderDetails() when $default != null:
return $default(_that.number,_that.createdAt,_that.status,_that.statusText,_that.items,_that.history,_that.money,_that.receiving,_that.deliveryTypeName,_that.canPay,_that.payDeadline,_that.canCancel,_that.cancelNote,_that.refundTo,_that.cancelReasons,_that.parcels,_that.canRepeat);case _:
  return null;

}
}

}

/// @nodoc


class _OrderDetails extends OrderDetails {
  const _OrderDetails({required this.number, required this.createdAt, required this.status, required this.statusText, required final  List<OrderItem> items, required final  List<StatusEvent> history, required this.money, required this.receiving, required this.deliveryTypeName, this.canPay = false, this.payDeadline, this.canCancel = false, this.cancelNote, this.refundTo, final  List<CancelReason> cancelReasons = const <CancelReason>[], final  List<ParcelLink> parcels = const <ParcelLink>[], this.canRepeat = false}): _items = items,_history = history,_cancelReasons = cancelReasons,_parcels = parcels,super._();
  

@override final  String number;
@override final  DateTime createdAt;
@override final  Status status;
/// One or two sentences under the status title.
@override final  String statusText;
 final  List<OrderItem> _items;
@override List<OrderItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

 final  List<StatusEvent> _history;
@override List<StatusEvent> get history {
  if (_history is EqualUnmodifiableListView) return _history;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_history);
}

@override final  OrderMoney money;
/// «Курьер: ул. Магтымгулы, 10» or the pickup point.
@override final  String receiving;
@override final  String deliveryTypeName;
/// «Оплатить» for an order awaiting payment, until [payDeadline].
@override@JsonKey() final  bool canPay;
@override final  DateTime? payDeadline;
/// From the server (TZ §6.3): the app never decides on its own.
@override@JsonKey() final  bool canCancel;
/// Why it can no longer be cancelled («товар уже выкуплен под вас»).
@override final  String? cancelNote;
/// Where a cancelled order's money goes, e.g. «на баланс».
@override final  String? refundTo;
 final  List<CancelReason> _cancelReasons;
@override@JsonKey() List<CancelReason> get cancelReasons {
  if (_cancelReasons is EqualUnmodifiableListView) return _cancelReasons;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cancelReasons);
}

 final  List<ParcelLink> _parcels;
@override@JsonKey() List<ParcelLink> get parcels {
  if (_parcels is EqualUnmodifiableListView) return _parcels;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_parcels);
}

@override@JsonKey() final  bool canRepeat;

/// Create a copy of OrderDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderDetailsCopyWith<_OrderDetails> get copyWith => __$OrderDetailsCopyWithImpl<_OrderDetails>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderDetails&&(identical(other.number, number) || other.number == number)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.status, status) || other.status == status)&&(identical(other.statusText, statusText) || other.statusText == statusText)&&const DeepCollectionEquality().equals(other._items, _items)&&const DeepCollectionEquality().equals(other._history, _history)&&(identical(other.money, money) || other.money == money)&&(identical(other.receiving, receiving) || other.receiving == receiving)&&(identical(other.deliveryTypeName, deliveryTypeName) || other.deliveryTypeName == deliveryTypeName)&&(identical(other.canPay, canPay) || other.canPay == canPay)&&(identical(other.payDeadline, payDeadline) || other.payDeadline == payDeadline)&&(identical(other.canCancel, canCancel) || other.canCancel == canCancel)&&(identical(other.cancelNote, cancelNote) || other.cancelNote == cancelNote)&&(identical(other.refundTo, refundTo) || other.refundTo == refundTo)&&const DeepCollectionEquality().equals(other._cancelReasons, _cancelReasons)&&const DeepCollectionEquality().equals(other._parcels, _parcels)&&(identical(other.canRepeat, canRepeat) || other.canRepeat == canRepeat));
}


@override
int get hashCode => Object.hash(runtimeType,number,createdAt,status,statusText,const DeepCollectionEquality().hash(_items),const DeepCollectionEquality().hash(_history),money,receiving,deliveryTypeName,canPay,payDeadline,canCancel,cancelNote,refundTo,const DeepCollectionEquality().hash(_cancelReasons),const DeepCollectionEquality().hash(_parcels),canRepeat);

@override
String toString() {
  return 'OrderDetails(number: $number, createdAt: $createdAt, status: $status, statusText: $statusText, items: $items, history: $history, money: $money, receiving: $receiving, deliveryTypeName: $deliveryTypeName, canPay: $canPay, payDeadline: $payDeadline, canCancel: $canCancel, cancelNote: $cancelNote, refundTo: $refundTo, cancelReasons: $cancelReasons, parcels: $parcels, canRepeat: $canRepeat)';
}


}

/// @nodoc
abstract mixin class _$OrderDetailsCopyWith<$Res> implements $OrderDetailsCopyWith<$Res> {
  factory _$OrderDetailsCopyWith(_OrderDetails value, $Res Function(_OrderDetails) _then) = __$OrderDetailsCopyWithImpl;
@override @useResult
$Res call({
 String number, DateTime createdAt, Status status, String statusText, List<OrderItem> items, List<StatusEvent> history, OrderMoney money, String receiving, String deliveryTypeName, bool canPay, DateTime? payDeadline, bool canCancel, String? cancelNote, String? refundTo, List<CancelReason> cancelReasons, List<ParcelLink> parcels, bool canRepeat
});


@override $StatusCopyWith<$Res> get status;@override $OrderMoneyCopyWith<$Res> get money;

}
/// @nodoc
class __$OrderDetailsCopyWithImpl<$Res>
    implements _$OrderDetailsCopyWith<$Res> {
  __$OrderDetailsCopyWithImpl(this._self, this._then);

  final _OrderDetails _self;
  final $Res Function(_OrderDetails) _then;

/// Create a copy of OrderDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? number = null,Object? createdAt = null,Object? status = null,Object? statusText = null,Object? items = null,Object? history = null,Object? money = null,Object? receiving = null,Object? deliveryTypeName = null,Object? canPay = null,Object? payDeadline = freezed,Object? canCancel = null,Object? cancelNote = freezed,Object? refundTo = freezed,Object? cancelReasons = null,Object? parcels = null,Object? canRepeat = null,}) {
  return _then(_OrderDetails(
number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status,statusText: null == statusText ? _self.statusText : statusText // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<OrderItem>,history: null == history ? _self._history : history // ignore: cast_nullable_to_non_nullable
as List<StatusEvent>,money: null == money ? _self.money : money // ignore: cast_nullable_to_non_nullable
as OrderMoney,receiving: null == receiving ? _self.receiving : receiving // ignore: cast_nullable_to_non_nullable
as String,deliveryTypeName: null == deliveryTypeName ? _self.deliveryTypeName : deliveryTypeName // ignore: cast_nullable_to_non_nullable
as String,canPay: null == canPay ? _self.canPay : canPay // ignore: cast_nullable_to_non_nullable
as bool,payDeadline: freezed == payDeadline ? _self.payDeadline : payDeadline // ignore: cast_nullable_to_non_nullable
as DateTime?,canCancel: null == canCancel ? _self.canCancel : canCancel // ignore: cast_nullable_to_non_nullable
as bool,cancelNote: freezed == cancelNote ? _self.cancelNote : cancelNote // ignore: cast_nullable_to_non_nullable
as String?,refundTo: freezed == refundTo ? _self.refundTo : refundTo // ignore: cast_nullable_to_non_nullable
as String?,cancelReasons: null == cancelReasons ? _self._cancelReasons : cancelReasons // ignore: cast_nullable_to_non_nullable
as List<CancelReason>,parcels: null == parcels ? _self._parcels : parcels // ignore: cast_nullable_to_non_nullable
as List<ParcelLink>,canRepeat: null == canRepeat ? _self.canRepeat : canRepeat // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of OrderDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatusCopyWith<$Res> get status {
  
  return $StatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of OrderDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderMoneyCopyWith<$Res> get money {
  
  return $OrderMoneyCopyWith<$Res>(_self.money, (value) {
    return _then(_self.copyWith(money: value));
  });
}
}

/// @nodoc
mixin _$OrderItem {

 String get id; String get productId; String get title; String get imageUrl; int get quantity; int get price; Status get status;/// «Чёрный, M».
 String? get options; List<String> get warehousePhotos;/// Seller's track number inside China (copyable).
 String? get chinaTrack; ItemProblem? get problem;
/// Create a copy of OrderItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderItemCopyWith<OrderItem> get copyWith => _$OrderItemCopyWithImpl<OrderItem>(this as OrderItem, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderItem&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.title, title) || other.title == title)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.price, price) || other.price == price)&&(identical(other.status, status) || other.status == status)&&(identical(other.options, options) || other.options == options)&&const DeepCollectionEquality().equals(other.warehousePhotos, warehousePhotos)&&(identical(other.chinaTrack, chinaTrack) || other.chinaTrack == chinaTrack)&&(identical(other.problem, problem) || other.problem == problem));
}


@override
int get hashCode => Object.hash(runtimeType,id,productId,title,imageUrl,quantity,price,status,options,const DeepCollectionEquality().hash(warehousePhotos),chinaTrack,problem);

@override
String toString() {
  return 'OrderItem(id: $id, productId: $productId, title: $title, imageUrl: $imageUrl, quantity: $quantity, price: $price, status: $status, options: $options, warehousePhotos: $warehousePhotos, chinaTrack: $chinaTrack, problem: $problem)';
}


}

/// @nodoc
abstract mixin class $OrderItemCopyWith<$Res>  {
  factory $OrderItemCopyWith(OrderItem value, $Res Function(OrderItem) _then) = _$OrderItemCopyWithImpl;
@useResult
$Res call({
 String id, String productId, String title, String imageUrl, int quantity, int price, Status status, String? options, List<String> warehousePhotos, String? chinaTrack, ItemProblem? problem
});


$StatusCopyWith<$Res> get status;$ItemProblemCopyWith<$Res>? get problem;

}
/// @nodoc
class _$OrderItemCopyWithImpl<$Res>
    implements $OrderItemCopyWith<$Res> {
  _$OrderItemCopyWithImpl(this._self, this._then);

  final OrderItem _self;
  final $Res Function(OrderItem) _then;

/// Create a copy of OrderItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? productId = null,Object? title = null,Object? imageUrl = null,Object? quantity = null,Object? price = null,Object? status = null,Object? options = freezed,Object? warehousePhotos = null,Object? chinaTrack = freezed,Object? problem = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status,options: freezed == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as String?,warehousePhotos: null == warehousePhotos ? _self.warehousePhotos : warehousePhotos // ignore: cast_nullable_to_non_nullable
as List<String>,chinaTrack: freezed == chinaTrack ? _self.chinaTrack : chinaTrack // ignore: cast_nullable_to_non_nullable
as String?,problem: freezed == problem ? _self.problem : problem // ignore: cast_nullable_to_non_nullable
as ItemProblem?,
  ));
}
/// Create a copy of OrderItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatusCopyWith<$Res> get status {
  
  return $StatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of OrderItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ItemProblemCopyWith<$Res>? get problem {
    if (_self.problem == null) {
    return null;
  }

  return $ItemProblemCopyWith<$Res>(_self.problem!, (value) {
    return _then(_self.copyWith(problem: value));
  });
}
}


/// Adds pattern-matching-related methods to [OrderItem].
extension OrderItemPatterns on OrderItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderItem value)  $default,){
final _that = this;
switch (_that) {
case _OrderItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderItem value)?  $default,){
final _that = this;
switch (_that) {
case _OrderItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String productId,  String title,  String imageUrl,  int quantity,  int price,  Status status,  String? options,  List<String> warehousePhotos,  String? chinaTrack,  ItemProblem? problem)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderItem() when $default != null:
return $default(_that.id,_that.productId,_that.title,_that.imageUrl,_that.quantity,_that.price,_that.status,_that.options,_that.warehousePhotos,_that.chinaTrack,_that.problem);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String productId,  String title,  String imageUrl,  int quantity,  int price,  Status status,  String? options,  List<String> warehousePhotos,  String? chinaTrack,  ItemProblem? problem)  $default,) {final _that = this;
switch (_that) {
case _OrderItem():
return $default(_that.id,_that.productId,_that.title,_that.imageUrl,_that.quantity,_that.price,_that.status,_that.options,_that.warehousePhotos,_that.chinaTrack,_that.problem);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String productId,  String title,  String imageUrl,  int quantity,  int price,  Status status,  String? options,  List<String> warehousePhotos,  String? chinaTrack,  ItemProblem? problem)?  $default,) {final _that = this;
switch (_that) {
case _OrderItem() when $default != null:
return $default(_that.id,_that.productId,_that.title,_that.imageUrl,_that.quantity,_that.price,_that.status,_that.options,_that.warehousePhotos,_that.chinaTrack,_that.problem);case _:
  return null;

}
}

}

/// @nodoc


class _OrderItem implements OrderItem {
  const _OrderItem({required this.id, required this.productId, required this.title, required this.imageUrl, required this.quantity, required this.price, required this.status, this.options, final  List<String> warehousePhotos = const <String>[], this.chinaTrack, this.problem}): _warehousePhotos = warehousePhotos;
  

@override final  String id;
@override final  String productId;
@override final  String title;
@override final  String imageUrl;
@override final  int quantity;
@override final  int price;
@override final  Status status;
/// «Чёрный, M».
@override final  String? options;
 final  List<String> _warehousePhotos;
@override@JsonKey() List<String> get warehousePhotos {
  if (_warehousePhotos is EqualUnmodifiableListView) return _warehousePhotos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_warehousePhotos);
}

/// Seller's track number inside China (copyable).
@override final  String? chinaTrack;
@override final  ItemProblem? problem;

/// Create a copy of OrderItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderItemCopyWith<_OrderItem> get copyWith => __$OrderItemCopyWithImpl<_OrderItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderItem&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.title, title) || other.title == title)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.price, price) || other.price == price)&&(identical(other.status, status) || other.status == status)&&(identical(other.options, options) || other.options == options)&&const DeepCollectionEquality().equals(other._warehousePhotos, _warehousePhotos)&&(identical(other.chinaTrack, chinaTrack) || other.chinaTrack == chinaTrack)&&(identical(other.problem, problem) || other.problem == problem));
}


@override
int get hashCode => Object.hash(runtimeType,id,productId,title,imageUrl,quantity,price,status,options,const DeepCollectionEquality().hash(_warehousePhotos),chinaTrack,problem);

@override
String toString() {
  return 'OrderItem(id: $id, productId: $productId, title: $title, imageUrl: $imageUrl, quantity: $quantity, price: $price, status: $status, options: $options, warehousePhotos: $warehousePhotos, chinaTrack: $chinaTrack, problem: $problem)';
}


}

/// @nodoc
abstract mixin class _$OrderItemCopyWith<$Res> implements $OrderItemCopyWith<$Res> {
  factory _$OrderItemCopyWith(_OrderItem value, $Res Function(_OrderItem) _then) = __$OrderItemCopyWithImpl;
@override @useResult
$Res call({
 String id, String productId, String title, String imageUrl, int quantity, int price, Status status, String? options, List<String> warehousePhotos, String? chinaTrack, ItemProblem? problem
});


@override $StatusCopyWith<$Res> get status;@override $ItemProblemCopyWith<$Res>? get problem;

}
/// @nodoc
class __$OrderItemCopyWithImpl<$Res>
    implements _$OrderItemCopyWith<$Res> {
  __$OrderItemCopyWithImpl(this._self, this._then);

  final _OrderItem _self;
  final $Res Function(_OrderItem) _then;

/// Create a copy of OrderItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? productId = null,Object? title = null,Object? imageUrl = null,Object? quantity = null,Object? price = null,Object? status = null,Object? options = freezed,Object? warehousePhotos = null,Object? chinaTrack = freezed,Object? problem = freezed,}) {
  return _then(_OrderItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status,options: freezed == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as String?,warehousePhotos: null == warehousePhotos ? _self._warehousePhotos : warehousePhotos // ignore: cast_nullable_to_non_nullable
as List<String>,chinaTrack: freezed == chinaTrack ? _self.chinaTrack : chinaTrack // ignore: cast_nullable_to_non_nullable
as String?,problem: freezed == problem ? _self.problem : problem // ignore: cast_nullable_to_non_nullable
as ItemProblem?,
  ));
}

/// Create a copy of OrderItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatusCopyWith<$Res> get status {
  
  return $StatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of OrderItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ItemProblemCopyWith<$Res>? get problem {
    if (_self.problem == null) {
    return null;
  }

  return $ItemProblemCopyWith<$Res>(_self.problem!, (value) {
    return _then(_self.copyWith(problem: value));
  });
}
}

/// @nodoc
mixin _$ItemProblem {

 String get title; String get description; List<ProblemAction> get actions; List<String> get photos; DateTime? get deadline;
/// Create a copy of ItemProblem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemProblemCopyWith<ItemProblem> get copyWith => _$ItemProblemCopyWithImpl<ItemProblem>(this as ItemProblem, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemProblem&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.actions, actions)&&const DeepCollectionEquality().equals(other.photos, photos)&&(identical(other.deadline, deadline) || other.deadline == deadline));
}


@override
int get hashCode => Object.hash(runtimeType,title,description,const DeepCollectionEquality().hash(actions),const DeepCollectionEquality().hash(photos),deadline);

@override
String toString() {
  return 'ItemProblem(title: $title, description: $description, actions: $actions, photos: $photos, deadline: $deadline)';
}


}

/// @nodoc
abstract mixin class $ItemProblemCopyWith<$Res>  {
  factory $ItemProblemCopyWith(ItemProblem value, $Res Function(ItemProblem) _then) = _$ItemProblemCopyWithImpl;
@useResult
$Res call({
 String title, String description, List<ProblemAction> actions, List<String> photos, DateTime? deadline
});




}
/// @nodoc
class _$ItemProblemCopyWithImpl<$Res>
    implements $ItemProblemCopyWith<$Res> {
  _$ItemProblemCopyWithImpl(this._self, this._then);

  final ItemProblem _self;
  final $Res Function(ItemProblem) _then;

/// Create a copy of ItemProblem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? description = null,Object? actions = null,Object? photos = null,Object? deadline = freezed,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,actions: null == actions ? _self.actions : actions // ignore: cast_nullable_to_non_nullable
as List<ProblemAction>,photos: null == photos ? _self.photos : photos // ignore: cast_nullable_to_non_nullable
as List<String>,deadline: freezed == deadline ? _self.deadline : deadline // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [ItemProblem].
extension ItemProblemPatterns on ItemProblem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ItemProblem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ItemProblem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ItemProblem value)  $default,){
final _that = this;
switch (_that) {
case _ItemProblem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ItemProblem value)?  $default,){
final _that = this;
switch (_that) {
case _ItemProblem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String description,  List<ProblemAction> actions,  List<String> photos,  DateTime? deadline)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ItemProblem() when $default != null:
return $default(_that.title,_that.description,_that.actions,_that.photos,_that.deadline);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String description,  List<ProblemAction> actions,  List<String> photos,  DateTime? deadline)  $default,) {final _that = this;
switch (_that) {
case _ItemProblem():
return $default(_that.title,_that.description,_that.actions,_that.photos,_that.deadline);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String description,  List<ProblemAction> actions,  List<String> photos,  DateTime? deadline)?  $default,) {final _that = this;
switch (_that) {
case _ItemProblem() when $default != null:
return $default(_that.title,_that.description,_that.actions,_that.photos,_that.deadline);case _:
  return null;

}
}

}

/// @nodoc


class _ItemProblem implements ItemProblem {
  const _ItemProblem({required this.title, required this.description, required final  List<ProblemAction> actions, final  List<String> photos = const <String>[], this.deadline}): _actions = actions,_photos = photos;
  

@override final  String title;
@override final  String description;
 final  List<ProblemAction> _actions;
@override List<ProblemAction> get actions {
  if (_actions is EqualUnmodifiableListView) return _actions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_actions);
}

 final  List<String> _photos;
@override@JsonKey() List<String> get photos {
  if (_photos is EqualUnmodifiableListView) return _photos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_photos);
}

@override final  DateTime? deadline;

/// Create a copy of ItemProblem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ItemProblemCopyWith<_ItemProblem> get copyWith => __$ItemProblemCopyWithImpl<_ItemProblem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ItemProblem&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._actions, _actions)&&const DeepCollectionEquality().equals(other._photos, _photos)&&(identical(other.deadline, deadline) || other.deadline == deadline));
}


@override
int get hashCode => Object.hash(runtimeType,title,description,const DeepCollectionEquality().hash(_actions),const DeepCollectionEquality().hash(_photos),deadline);

@override
String toString() {
  return 'ItemProblem(title: $title, description: $description, actions: $actions, photos: $photos, deadline: $deadline)';
}


}

/// @nodoc
abstract mixin class _$ItemProblemCopyWith<$Res> implements $ItemProblemCopyWith<$Res> {
  factory _$ItemProblemCopyWith(_ItemProblem value, $Res Function(_ItemProblem) _then) = __$ItemProblemCopyWithImpl;
@override @useResult
$Res call({
 String title, String description, List<ProblemAction> actions, List<String> photos, DateTime? deadline
});




}
/// @nodoc
class __$ItemProblemCopyWithImpl<$Res>
    implements _$ItemProblemCopyWith<$Res> {
  __$ItemProblemCopyWithImpl(this._self, this._then);

  final _ItemProblem _self;
  final $Res Function(_ItemProblem) _then;

/// Create a copy of ItemProblem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? description = null,Object? actions = null,Object? photos = null,Object? deadline = freezed,}) {
  return _then(_ItemProblem(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,actions: null == actions ? _self._actions : actions // ignore: cast_nullable_to_non_nullable
as List<ProblemAction>,photos: null == photos ? _self._photos : photos // ignore: cast_nullable_to_non_nullable
as List<String>,deadline: freezed == deadline ? _self.deadline : deadline // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

/// @nodoc
mixin _$ProblemAction {

 String get id; String get title;/// The recommended choice is the orange button; the rest are outlined.
 bool get isPrimary;
/// Create a copy of ProblemAction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProblemActionCopyWith<ProblemAction> get copyWith => _$ProblemActionCopyWithImpl<ProblemAction>(this as ProblemAction, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProblemAction&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.isPrimary, isPrimary) || other.isPrimary == isPrimary));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,isPrimary);

@override
String toString() {
  return 'ProblemAction(id: $id, title: $title, isPrimary: $isPrimary)';
}


}

/// @nodoc
abstract mixin class $ProblemActionCopyWith<$Res>  {
  factory $ProblemActionCopyWith(ProblemAction value, $Res Function(ProblemAction) _then) = _$ProblemActionCopyWithImpl;
@useResult
$Res call({
 String id, String title, bool isPrimary
});




}
/// @nodoc
class _$ProblemActionCopyWithImpl<$Res>
    implements $ProblemActionCopyWith<$Res> {
  _$ProblemActionCopyWithImpl(this._self, this._then);

  final ProblemAction _self;
  final $Res Function(ProblemAction) _then;

/// Create a copy of ProblemAction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? isPrimary = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,isPrimary: null == isPrimary ? _self.isPrimary : isPrimary // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ProblemAction].
extension ProblemActionPatterns on ProblemAction {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProblemAction value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProblemAction() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProblemAction value)  $default,){
final _that = this;
switch (_that) {
case _ProblemAction():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProblemAction value)?  $default,){
final _that = this;
switch (_that) {
case _ProblemAction() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  bool isPrimary)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProblemAction() when $default != null:
return $default(_that.id,_that.title,_that.isPrimary);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  bool isPrimary)  $default,) {final _that = this;
switch (_that) {
case _ProblemAction():
return $default(_that.id,_that.title,_that.isPrimary);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  bool isPrimary)?  $default,) {final _that = this;
switch (_that) {
case _ProblemAction() when $default != null:
return $default(_that.id,_that.title,_that.isPrimary);case _:
  return null;

}
}

}

/// @nodoc


class _ProblemAction implements ProblemAction {
  const _ProblemAction({required this.id, required this.title, this.isPrimary = false});
  

@override final  String id;
@override final  String title;
/// The recommended choice is the orange button; the rest are outlined.
@override@JsonKey() final  bool isPrimary;

/// Create a copy of ProblemAction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProblemActionCopyWith<_ProblemAction> get copyWith => __$ProblemActionCopyWithImpl<_ProblemAction>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProblemAction&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.isPrimary, isPrimary) || other.isPrimary == isPrimary));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,isPrimary);

@override
String toString() {
  return 'ProblemAction(id: $id, title: $title, isPrimary: $isPrimary)';
}


}

/// @nodoc
abstract mixin class _$ProblemActionCopyWith<$Res> implements $ProblemActionCopyWith<$Res> {
  factory _$ProblemActionCopyWith(_ProblemAction value, $Res Function(_ProblemAction) _then) = __$ProblemActionCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, bool isPrimary
});




}
/// @nodoc
class __$ProblemActionCopyWithImpl<$Res>
    implements _$ProblemActionCopyWith<$Res> {
  __$ProblemActionCopyWithImpl(this._self, this._then);

  final _ProblemAction _self;
  final $Res Function(_ProblemAction) _then;

/// Create a copy of ProblemAction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? isPrimary = null,}) {
  return _then(_ProblemAction(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,isPrimary: null == isPrimary ? _self.isPrimary : isPrimary // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$StatusEvent {

 String get title; DateTime get at;
/// Create a copy of StatusEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StatusEventCopyWith<StatusEvent> get copyWith => _$StatusEventCopyWithImpl<StatusEvent>(this as StatusEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StatusEvent&&(identical(other.title, title) || other.title == title)&&(identical(other.at, at) || other.at == at));
}


@override
int get hashCode => Object.hash(runtimeType,title,at);

@override
String toString() {
  return 'StatusEvent(title: $title, at: $at)';
}


}

/// @nodoc
abstract mixin class $StatusEventCopyWith<$Res>  {
  factory $StatusEventCopyWith(StatusEvent value, $Res Function(StatusEvent) _then) = _$StatusEventCopyWithImpl;
@useResult
$Res call({
 String title, DateTime at
});




}
/// @nodoc
class _$StatusEventCopyWithImpl<$Res>
    implements $StatusEventCopyWith<$Res> {
  _$StatusEventCopyWithImpl(this._self, this._then);

  final StatusEvent _self;
  final $Res Function(StatusEvent) _then;

/// Create a copy of StatusEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? at = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,at: null == at ? _self.at : at // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [StatusEvent].
extension StatusEventPatterns on StatusEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StatusEvent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StatusEvent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StatusEvent value)  $default,){
final _that = this;
switch (_that) {
case _StatusEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StatusEvent value)?  $default,){
final _that = this;
switch (_that) {
case _StatusEvent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  DateTime at)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StatusEvent() when $default != null:
return $default(_that.title,_that.at);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  DateTime at)  $default,) {final _that = this;
switch (_that) {
case _StatusEvent():
return $default(_that.title,_that.at);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  DateTime at)?  $default,) {final _that = this;
switch (_that) {
case _StatusEvent() when $default != null:
return $default(_that.title,_that.at);case _:
  return null;

}
}

}

/// @nodoc


class _StatusEvent implements StatusEvent {
  const _StatusEvent({required this.title, required this.at});
  

@override final  String title;
@override final  DateTime at;

/// Create a copy of StatusEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StatusEventCopyWith<_StatusEvent> get copyWith => __$StatusEventCopyWithImpl<_StatusEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StatusEvent&&(identical(other.title, title) || other.title == title)&&(identical(other.at, at) || other.at == at));
}


@override
int get hashCode => Object.hash(runtimeType,title,at);

@override
String toString() {
  return 'StatusEvent(title: $title, at: $at)';
}


}

/// @nodoc
abstract mixin class _$StatusEventCopyWith<$Res> implements $StatusEventCopyWith<$Res> {
  factory _$StatusEventCopyWith(_StatusEvent value, $Res Function(_StatusEvent) _then) = __$StatusEventCopyWithImpl;
@override @useResult
$Res call({
 String title, DateTime at
});




}
/// @nodoc
class __$StatusEventCopyWithImpl<$Res>
    implements _$StatusEventCopyWith<$Res> {
  __$StatusEventCopyWithImpl(this._self, this._then);

  final _StatusEvent _self;
  final $Res Function(_StatusEvent) _then;

/// Create a copy of StatusEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? at = null,}) {
  return _then(_StatusEvent(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,at: null == at ? _self.at : at // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

/// @nodoc
mixin _$CancelReason {

 String get id; String get title;
/// Create a copy of CancelReason
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CancelReasonCopyWith<CancelReason> get copyWith => _$CancelReasonCopyWithImpl<CancelReason>(this as CancelReason, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CancelReason&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title));
}


@override
int get hashCode => Object.hash(runtimeType,id,title);

@override
String toString() {
  return 'CancelReason(id: $id, title: $title)';
}


}

/// @nodoc
abstract mixin class $CancelReasonCopyWith<$Res>  {
  factory $CancelReasonCopyWith(CancelReason value, $Res Function(CancelReason) _then) = _$CancelReasonCopyWithImpl;
@useResult
$Res call({
 String id, String title
});




}
/// @nodoc
class _$CancelReasonCopyWithImpl<$Res>
    implements $CancelReasonCopyWith<$Res> {
  _$CancelReasonCopyWithImpl(this._self, this._then);

  final CancelReason _self;
  final $Res Function(CancelReason) _then;

/// Create a copy of CancelReason
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CancelReason].
extension CancelReasonPatterns on CancelReason {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CancelReason value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CancelReason() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CancelReason value)  $default,){
final _that = this;
switch (_that) {
case _CancelReason():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CancelReason value)?  $default,){
final _that = this;
switch (_that) {
case _CancelReason() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CancelReason() when $default != null:
return $default(_that.id,_that.title);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title)  $default,) {final _that = this;
switch (_that) {
case _CancelReason():
return $default(_that.id,_that.title);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title)?  $default,) {final _that = this;
switch (_that) {
case _CancelReason() when $default != null:
return $default(_that.id,_that.title);case _:
  return null;

}
}

}

/// @nodoc


class _CancelReason implements CancelReason {
  const _CancelReason({required this.id, required this.title});
  

@override final  String id;
@override final  String title;

/// Create a copy of CancelReason
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CancelReasonCopyWith<_CancelReason> get copyWith => __$CancelReasonCopyWithImpl<_CancelReason>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CancelReason&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title));
}


@override
int get hashCode => Object.hash(runtimeType,id,title);

@override
String toString() {
  return 'CancelReason(id: $id, title: $title)';
}


}

/// @nodoc
abstract mixin class _$CancelReasonCopyWith<$Res> implements $CancelReasonCopyWith<$Res> {
  factory _$CancelReasonCopyWith(_CancelReason value, $Res Function(_CancelReason) _then) = __$CancelReasonCopyWithImpl;
@override @useResult
$Res call({
 String id, String title
});




}
/// @nodoc
class __$CancelReasonCopyWithImpl<$Res>
    implements _$CancelReasonCopyWith<$Res> {
  __$CancelReasonCopyWithImpl(this._self, this._then);

  final _CancelReason _self;
  final $Res Function(_CancelReason) _then;

/// Create a copy of CancelReason
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,}) {
  return _then(_CancelReason(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$ParcelLink {

 String get number; Status get status;
/// Create a copy of ParcelLink
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParcelLinkCopyWith<ParcelLink> get copyWith => _$ParcelLinkCopyWithImpl<ParcelLink>(this as ParcelLink, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParcelLink&&(identical(other.number, number) || other.number == number)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,number,status);

@override
String toString() {
  return 'ParcelLink(number: $number, status: $status)';
}


}

/// @nodoc
abstract mixin class $ParcelLinkCopyWith<$Res>  {
  factory $ParcelLinkCopyWith(ParcelLink value, $Res Function(ParcelLink) _then) = _$ParcelLinkCopyWithImpl;
@useResult
$Res call({
 String number, Status status
});


$StatusCopyWith<$Res> get status;

}
/// @nodoc
class _$ParcelLinkCopyWithImpl<$Res>
    implements $ParcelLinkCopyWith<$Res> {
  _$ParcelLinkCopyWithImpl(this._self, this._then);

  final ParcelLink _self;
  final $Res Function(ParcelLink) _then;

/// Create a copy of ParcelLink
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? number = null,Object? status = null,}) {
  return _then(_self.copyWith(
number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status,
  ));
}
/// Create a copy of ParcelLink
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatusCopyWith<$Res> get status {
  
  return $StatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}


/// Adds pattern-matching-related methods to [ParcelLink].
extension ParcelLinkPatterns on ParcelLink {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ParcelLink value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ParcelLink() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ParcelLink value)  $default,){
final _that = this;
switch (_that) {
case _ParcelLink():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ParcelLink value)?  $default,){
final _that = this;
switch (_that) {
case _ParcelLink() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String number,  Status status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ParcelLink() when $default != null:
return $default(_that.number,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String number,  Status status)  $default,) {final _that = this;
switch (_that) {
case _ParcelLink():
return $default(_that.number,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String number,  Status status)?  $default,) {final _that = this;
switch (_that) {
case _ParcelLink() when $default != null:
return $default(_that.number,_that.status);case _:
  return null;

}
}

}

/// @nodoc


class _ParcelLink implements ParcelLink {
  const _ParcelLink({required this.number, required this.status});
  

@override final  String number;
@override final  Status status;

/// Create a copy of ParcelLink
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ParcelLinkCopyWith<_ParcelLink> get copyWith => __$ParcelLinkCopyWithImpl<_ParcelLink>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ParcelLink&&(identical(other.number, number) || other.number == number)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,number,status);

@override
String toString() {
  return 'ParcelLink(number: $number, status: $status)';
}


}

/// @nodoc
abstract mixin class _$ParcelLinkCopyWith<$Res> implements $ParcelLinkCopyWith<$Res> {
  factory _$ParcelLinkCopyWith(_ParcelLink value, $Res Function(_ParcelLink) _then) = __$ParcelLinkCopyWithImpl;
@override @useResult
$Res call({
 String number, Status status
});


@override $StatusCopyWith<$Res> get status;

}
/// @nodoc
class __$ParcelLinkCopyWithImpl<$Res>
    implements _$ParcelLinkCopyWith<$Res> {
  __$ParcelLinkCopyWithImpl(this._self, this._then);

  final _ParcelLink _self;
  final $Res Function(_ParcelLink) _then;

/// Create a copy of ParcelLink
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? number = null,Object? status = null,}) {
  return _then(_ParcelLink(
number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status,
  ));
}

/// Create a copy of ParcelLink
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatusCopyWith<$Res> get status {
  
  return $StatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}

/// @nodoc
mixin _$OrderMoney {

 int get items; int get chinaDelivery; int get internationalDelivery;/// Before weighing the international delivery is an estimate.
 bool get isEstimate; int get courier; int get services; int get discount; int get total; int get paid;/// Still to pay: advance, surcharges, courier.
 int get due;
/// Create a copy of OrderMoney
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderMoneyCopyWith<OrderMoney> get copyWith => _$OrderMoneyCopyWithImpl<OrderMoney>(this as OrderMoney, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderMoney&&(identical(other.items, items) || other.items == items)&&(identical(other.chinaDelivery, chinaDelivery) || other.chinaDelivery == chinaDelivery)&&(identical(other.internationalDelivery, internationalDelivery) || other.internationalDelivery == internationalDelivery)&&(identical(other.isEstimate, isEstimate) || other.isEstimate == isEstimate)&&(identical(other.courier, courier) || other.courier == courier)&&(identical(other.services, services) || other.services == services)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.total, total) || other.total == total)&&(identical(other.paid, paid) || other.paid == paid)&&(identical(other.due, due) || other.due == due));
}


@override
int get hashCode => Object.hash(runtimeType,items,chinaDelivery,internationalDelivery,isEstimate,courier,services,discount,total,paid,due);

@override
String toString() {
  return 'OrderMoney(items: $items, chinaDelivery: $chinaDelivery, internationalDelivery: $internationalDelivery, isEstimate: $isEstimate, courier: $courier, services: $services, discount: $discount, total: $total, paid: $paid, due: $due)';
}


}

/// @nodoc
abstract mixin class $OrderMoneyCopyWith<$Res>  {
  factory $OrderMoneyCopyWith(OrderMoney value, $Res Function(OrderMoney) _then) = _$OrderMoneyCopyWithImpl;
@useResult
$Res call({
 int items, int chinaDelivery, int internationalDelivery, bool isEstimate, int courier, int services, int discount, int total, int paid, int due
});




}
/// @nodoc
class _$OrderMoneyCopyWithImpl<$Res>
    implements $OrderMoneyCopyWith<$Res> {
  _$OrderMoneyCopyWithImpl(this._self, this._then);

  final OrderMoney _self;
  final $Res Function(OrderMoney) _then;

/// Create a copy of OrderMoney
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? chinaDelivery = null,Object? internationalDelivery = null,Object? isEstimate = null,Object? courier = null,Object? services = null,Object? discount = null,Object? total = null,Object? paid = null,Object? due = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as int,chinaDelivery: null == chinaDelivery ? _self.chinaDelivery : chinaDelivery // ignore: cast_nullable_to_non_nullable
as int,internationalDelivery: null == internationalDelivery ? _self.internationalDelivery : internationalDelivery // ignore: cast_nullable_to_non_nullable
as int,isEstimate: null == isEstimate ? _self.isEstimate : isEstimate // ignore: cast_nullable_to_non_nullable
as bool,courier: null == courier ? _self.courier : courier // ignore: cast_nullable_to_non_nullable
as int,services: null == services ? _self.services : services // ignore: cast_nullable_to_non_nullable
as int,discount: null == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,paid: null == paid ? _self.paid : paid // ignore: cast_nullable_to_non_nullable
as int,due: null == due ? _self.due : due // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderMoney].
extension OrderMoneyPatterns on OrderMoney {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderMoney value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderMoney() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderMoney value)  $default,){
final _that = this;
switch (_that) {
case _OrderMoney():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderMoney value)?  $default,){
final _that = this;
switch (_that) {
case _OrderMoney() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int items,  int chinaDelivery,  int internationalDelivery,  bool isEstimate,  int courier,  int services,  int discount,  int total,  int paid,  int due)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderMoney() when $default != null:
return $default(_that.items,_that.chinaDelivery,_that.internationalDelivery,_that.isEstimate,_that.courier,_that.services,_that.discount,_that.total,_that.paid,_that.due);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int items,  int chinaDelivery,  int internationalDelivery,  bool isEstimate,  int courier,  int services,  int discount,  int total,  int paid,  int due)  $default,) {final _that = this;
switch (_that) {
case _OrderMoney():
return $default(_that.items,_that.chinaDelivery,_that.internationalDelivery,_that.isEstimate,_that.courier,_that.services,_that.discount,_that.total,_that.paid,_that.due);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int items,  int chinaDelivery,  int internationalDelivery,  bool isEstimate,  int courier,  int services,  int discount,  int total,  int paid,  int due)?  $default,) {final _that = this;
switch (_that) {
case _OrderMoney() when $default != null:
return $default(_that.items,_that.chinaDelivery,_that.internationalDelivery,_that.isEstimate,_that.courier,_that.services,_that.discount,_that.total,_that.paid,_that.due);case _:
  return null;

}
}

}

/// @nodoc


class _OrderMoney implements OrderMoney {
  const _OrderMoney({required this.items, required this.chinaDelivery, required this.internationalDelivery, required this.isEstimate, required this.courier, required this.services, required this.discount, required this.total, required this.paid, required this.due});
  

@override final  int items;
@override final  int chinaDelivery;
@override final  int internationalDelivery;
/// Before weighing the international delivery is an estimate.
@override final  bool isEstimate;
@override final  int courier;
@override final  int services;
@override final  int discount;
@override final  int total;
@override final  int paid;
/// Still to pay: advance, surcharges, courier.
@override final  int due;

/// Create a copy of OrderMoney
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderMoneyCopyWith<_OrderMoney> get copyWith => __$OrderMoneyCopyWithImpl<_OrderMoney>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderMoney&&(identical(other.items, items) || other.items == items)&&(identical(other.chinaDelivery, chinaDelivery) || other.chinaDelivery == chinaDelivery)&&(identical(other.internationalDelivery, internationalDelivery) || other.internationalDelivery == internationalDelivery)&&(identical(other.isEstimate, isEstimate) || other.isEstimate == isEstimate)&&(identical(other.courier, courier) || other.courier == courier)&&(identical(other.services, services) || other.services == services)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.total, total) || other.total == total)&&(identical(other.paid, paid) || other.paid == paid)&&(identical(other.due, due) || other.due == due));
}


@override
int get hashCode => Object.hash(runtimeType,items,chinaDelivery,internationalDelivery,isEstimate,courier,services,discount,total,paid,due);

@override
String toString() {
  return 'OrderMoney(items: $items, chinaDelivery: $chinaDelivery, internationalDelivery: $internationalDelivery, isEstimate: $isEstimate, courier: $courier, services: $services, discount: $discount, total: $total, paid: $paid, due: $due)';
}


}

/// @nodoc
abstract mixin class _$OrderMoneyCopyWith<$Res> implements $OrderMoneyCopyWith<$Res> {
  factory _$OrderMoneyCopyWith(_OrderMoney value, $Res Function(_OrderMoney) _then) = __$OrderMoneyCopyWithImpl;
@override @useResult
$Res call({
 int items, int chinaDelivery, int internationalDelivery, bool isEstimate, int courier, int services, int discount, int total, int paid, int due
});




}
/// @nodoc
class __$OrderMoneyCopyWithImpl<$Res>
    implements _$OrderMoneyCopyWith<$Res> {
  __$OrderMoneyCopyWithImpl(this._self, this._then);

  final _OrderMoney _self;
  final $Res Function(_OrderMoney) _then;

/// Create a copy of OrderMoney
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? chinaDelivery = null,Object? internationalDelivery = null,Object? isEstimate = null,Object? courier = null,Object? services = null,Object? discount = null,Object? total = null,Object? paid = null,Object? due = null,}) {
  return _then(_OrderMoney(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as int,chinaDelivery: null == chinaDelivery ? _self.chinaDelivery : chinaDelivery // ignore: cast_nullable_to_non_nullable
as int,internationalDelivery: null == internationalDelivery ? _self.internationalDelivery : internationalDelivery // ignore: cast_nullable_to_non_nullable
as int,isEstimate: null == isEstimate ? _self.isEstimate : isEstimate // ignore: cast_nullable_to_non_nullable
as bool,courier: null == courier ? _self.courier : courier // ignore: cast_nullable_to_non_nullable
as int,services: null == services ? _self.services : services // ignore: cast_nullable_to_non_nullable
as int,discount: null == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,paid: null == paid ? _self.paid : paid // ignore: cast_nullable_to_non_nullable
as int,due: null == due ? _self.due : due // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$RepeatedOrder {

 List<CartItem> get lines; int get unavailable;
/// Create a copy of RepeatedOrder
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RepeatedOrderCopyWith<RepeatedOrder> get copyWith => _$RepeatedOrderCopyWithImpl<RepeatedOrder>(this as RepeatedOrder, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RepeatedOrder&&const DeepCollectionEquality().equals(other.lines, lines)&&(identical(other.unavailable, unavailable) || other.unavailable == unavailable));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(lines),unavailable);

@override
String toString() {
  return 'RepeatedOrder(lines: $lines, unavailable: $unavailable)';
}


}

/// @nodoc
abstract mixin class $RepeatedOrderCopyWith<$Res>  {
  factory $RepeatedOrderCopyWith(RepeatedOrder value, $Res Function(RepeatedOrder) _then) = _$RepeatedOrderCopyWithImpl;
@useResult
$Res call({
 List<CartItem> lines, int unavailable
});




}
/// @nodoc
class _$RepeatedOrderCopyWithImpl<$Res>
    implements $RepeatedOrderCopyWith<$Res> {
  _$RepeatedOrderCopyWithImpl(this._self, this._then);

  final RepeatedOrder _self;
  final $Res Function(RepeatedOrder) _then;

/// Create a copy of RepeatedOrder
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? lines = null,Object? unavailable = null,}) {
  return _then(_self.copyWith(
lines: null == lines ? _self.lines : lines // ignore: cast_nullable_to_non_nullable
as List<CartItem>,unavailable: null == unavailable ? _self.unavailable : unavailable // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [RepeatedOrder].
extension RepeatedOrderPatterns on RepeatedOrder {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RepeatedOrder value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RepeatedOrder() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RepeatedOrder value)  $default,){
final _that = this;
switch (_that) {
case _RepeatedOrder():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RepeatedOrder value)?  $default,){
final _that = this;
switch (_that) {
case _RepeatedOrder() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CartItem> lines,  int unavailable)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RepeatedOrder() when $default != null:
return $default(_that.lines,_that.unavailable);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CartItem> lines,  int unavailable)  $default,) {final _that = this;
switch (_that) {
case _RepeatedOrder():
return $default(_that.lines,_that.unavailable);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CartItem> lines,  int unavailable)?  $default,) {final _that = this;
switch (_that) {
case _RepeatedOrder() when $default != null:
return $default(_that.lines,_that.unavailable);case _:
  return null;

}
}

}

/// @nodoc


class _RepeatedOrder implements RepeatedOrder {
  const _RepeatedOrder({required final  List<CartItem> lines, required this.unavailable}): _lines = lines;
  

 final  List<CartItem> _lines;
@override List<CartItem> get lines {
  if (_lines is EqualUnmodifiableListView) return _lines;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lines);
}

@override final  int unavailable;

/// Create a copy of RepeatedOrder
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RepeatedOrderCopyWith<_RepeatedOrder> get copyWith => __$RepeatedOrderCopyWithImpl<_RepeatedOrder>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RepeatedOrder&&const DeepCollectionEquality().equals(other._lines, _lines)&&(identical(other.unavailable, unavailable) || other.unavailable == unavailable));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_lines),unavailable);

@override
String toString() {
  return 'RepeatedOrder(lines: $lines, unavailable: $unavailable)';
}


}

/// @nodoc
abstract mixin class _$RepeatedOrderCopyWith<$Res> implements $RepeatedOrderCopyWith<$Res> {
  factory _$RepeatedOrderCopyWith(_RepeatedOrder value, $Res Function(_RepeatedOrder) _then) = __$RepeatedOrderCopyWithImpl;
@override @useResult
$Res call({
 List<CartItem> lines, int unavailable
});




}
/// @nodoc
class __$RepeatedOrderCopyWithImpl<$Res>
    implements _$RepeatedOrderCopyWith<$Res> {
  __$RepeatedOrderCopyWithImpl(this._self, this._then);

  final _RepeatedOrder _self;
  final $Res Function(_RepeatedOrder) _then;

/// Create a copy of RepeatedOrder
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? lines = null,Object? unavailable = null,}) {
  return _then(_RepeatedOrder(
lines: null == lines ? _self._lines : lines // ignore: cast_nullable_to_non_nullable
as List<CartItem>,unavailable: null == unavailable ? _self.unavailable : unavailable // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
