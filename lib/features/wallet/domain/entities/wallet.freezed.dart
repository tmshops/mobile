// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WalletSummary {

 int get balance;/// Unpaid surcharges; a parcel with debt is not handed over (TZ §6.3).
 int get debt;
/// Create a copy of WalletSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WalletSummaryCopyWith<WalletSummary> get copyWith => _$WalletSummaryCopyWithImpl<WalletSummary>(this as WalletSummary, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletSummary&&(identical(other.balance, balance) || other.balance == balance)&&(identical(other.debt, debt) || other.debt == debt));
}


@override
int get hashCode => Object.hash(runtimeType,balance,debt);

@override
String toString() {
  return 'WalletSummary(balance: $balance, debt: $debt)';
}


}

/// @nodoc
abstract mixin class $WalletSummaryCopyWith<$Res>  {
  factory $WalletSummaryCopyWith(WalletSummary value, $Res Function(WalletSummary) _then) = _$WalletSummaryCopyWithImpl;
@useResult
$Res call({
 int balance, int debt
});




}
/// @nodoc
class _$WalletSummaryCopyWithImpl<$Res>
    implements $WalletSummaryCopyWith<$Res> {
  _$WalletSummaryCopyWithImpl(this._self, this._then);

  final WalletSummary _self;
  final $Res Function(WalletSummary) _then;

/// Create a copy of WalletSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? balance = null,Object? debt = null,}) {
  return _then(_self.copyWith(
balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as int,debt: null == debt ? _self.debt : debt // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [WalletSummary].
extension WalletSummaryPatterns on WalletSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WalletSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WalletSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WalletSummary value)  $default,){
final _that = this;
switch (_that) {
case _WalletSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WalletSummary value)?  $default,){
final _that = this;
switch (_that) {
case _WalletSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int balance,  int debt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WalletSummary() when $default != null:
return $default(_that.balance,_that.debt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int balance,  int debt)  $default,) {final _that = this;
switch (_that) {
case _WalletSummary():
return $default(_that.balance,_that.debt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int balance,  int debt)?  $default,) {final _that = this;
switch (_that) {
case _WalletSummary() when $default != null:
return $default(_that.balance,_that.debt);case _:
  return null;

}
}

}

/// @nodoc


class _WalletSummary implements WalletSummary {
  const _WalletSummary({required this.balance, required this.debt});
  

@override final  int balance;
/// Unpaid surcharges; a parcel with debt is not handed over (TZ §6.3).
@override final  int debt;

/// Create a copy of WalletSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WalletSummaryCopyWith<_WalletSummary> get copyWith => __$WalletSummaryCopyWithImpl<_WalletSummary>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WalletSummary&&(identical(other.balance, balance) || other.balance == balance)&&(identical(other.debt, debt) || other.debt == debt));
}


@override
int get hashCode => Object.hash(runtimeType,balance,debt);

@override
String toString() {
  return 'WalletSummary(balance: $balance, debt: $debt)';
}


}

/// @nodoc
abstract mixin class _$WalletSummaryCopyWith<$Res> implements $WalletSummaryCopyWith<$Res> {
  factory _$WalletSummaryCopyWith(_WalletSummary value, $Res Function(_WalletSummary) _then) = __$WalletSummaryCopyWithImpl;
@override @useResult
$Res call({
 int balance, int debt
});




}
/// @nodoc
class __$WalletSummaryCopyWithImpl<$Res>
    implements _$WalletSummaryCopyWith<$Res> {
  __$WalletSummaryCopyWithImpl(this._self, this._then);

  final _WalletSummary _self;
  final $Res Function(_WalletSummary) _then;

/// Create a copy of WalletSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? balance = null,Object? debt = null,}) {
  return _then(_WalletSummary(
balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as int,debt: null == debt ? _self.debt : debt // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$WalletOperation {

 String get id; OperationType get type;/// Server text in the request language, e.g. «Возврат за заказ №10212».
 String get title; int get amount; DateTime get at; String? get orderNumber;
/// Create a copy of WalletOperation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WalletOperationCopyWith<WalletOperation> get copyWith => _$WalletOperationCopyWithImpl<WalletOperation>(this as WalletOperation, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletOperation&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.at, at) || other.at == at)&&(identical(other.orderNumber, orderNumber) || other.orderNumber == orderNumber));
}


@override
int get hashCode => Object.hash(runtimeType,id,type,title,amount,at,orderNumber);

@override
String toString() {
  return 'WalletOperation(id: $id, type: $type, title: $title, amount: $amount, at: $at, orderNumber: $orderNumber)';
}


}

/// @nodoc
abstract mixin class $WalletOperationCopyWith<$Res>  {
  factory $WalletOperationCopyWith(WalletOperation value, $Res Function(WalletOperation) _then) = _$WalletOperationCopyWithImpl;
@useResult
$Res call({
 String id, OperationType type, String title, int amount, DateTime at, String? orderNumber
});




}
/// @nodoc
class _$WalletOperationCopyWithImpl<$Res>
    implements $WalletOperationCopyWith<$Res> {
  _$WalletOperationCopyWithImpl(this._self, this._then);

  final WalletOperation _self;
  final $Res Function(WalletOperation) _then;

/// Create a copy of WalletOperation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = null,Object? title = null,Object? amount = null,Object? at = null,Object? orderNumber = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as OperationType,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,at: null == at ? _self.at : at // ignore: cast_nullable_to_non_nullable
as DateTime,orderNumber: freezed == orderNumber ? _self.orderNumber : orderNumber // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [WalletOperation].
extension WalletOperationPatterns on WalletOperation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WalletOperation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WalletOperation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WalletOperation value)  $default,){
final _that = this;
switch (_that) {
case _WalletOperation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WalletOperation value)?  $default,){
final _that = this;
switch (_that) {
case _WalletOperation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  OperationType type,  String title,  int amount,  DateTime at,  String? orderNumber)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WalletOperation() when $default != null:
return $default(_that.id,_that.type,_that.title,_that.amount,_that.at,_that.orderNumber);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  OperationType type,  String title,  int amount,  DateTime at,  String? orderNumber)  $default,) {final _that = this;
switch (_that) {
case _WalletOperation():
return $default(_that.id,_that.type,_that.title,_that.amount,_that.at,_that.orderNumber);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  OperationType type,  String title,  int amount,  DateTime at,  String? orderNumber)?  $default,) {final _that = this;
switch (_that) {
case _WalletOperation() when $default != null:
return $default(_that.id,_that.type,_that.title,_that.amount,_that.at,_that.orderNumber);case _:
  return null;

}
}

}

/// @nodoc


class _WalletOperation implements WalletOperation {
  const _WalletOperation({required this.id, required this.type, required this.title, required this.amount, required this.at, this.orderNumber});
  

@override final  String id;
@override final  OperationType type;
/// Server text in the request language, e.g. «Возврат за заказ №10212».
@override final  String title;
@override final  int amount;
@override final  DateTime at;
@override final  String? orderNumber;

/// Create a copy of WalletOperation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WalletOperationCopyWith<_WalletOperation> get copyWith => __$WalletOperationCopyWithImpl<_WalletOperation>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WalletOperation&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.at, at) || other.at == at)&&(identical(other.orderNumber, orderNumber) || other.orderNumber == orderNumber));
}


@override
int get hashCode => Object.hash(runtimeType,id,type,title,amount,at,orderNumber);

@override
String toString() {
  return 'WalletOperation(id: $id, type: $type, title: $title, amount: $amount, at: $at, orderNumber: $orderNumber)';
}


}

/// @nodoc
abstract mixin class _$WalletOperationCopyWith<$Res> implements $WalletOperationCopyWith<$Res> {
  factory _$WalletOperationCopyWith(_WalletOperation value, $Res Function(_WalletOperation) _then) = __$WalletOperationCopyWithImpl;
@override @useResult
$Res call({
 String id, OperationType type, String title, int amount, DateTime at, String? orderNumber
});




}
/// @nodoc
class __$WalletOperationCopyWithImpl<$Res>
    implements _$WalletOperationCopyWith<$Res> {
  __$WalletOperationCopyWithImpl(this._self, this._then);

  final _WalletOperation _self;
  final $Res Function(_WalletOperation) _then;

/// Create a copy of WalletOperation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = null,Object? title = null,Object? amount = null,Object? at = null,Object? orderNumber = freezed,}) {
  return _then(_WalletOperation(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as OperationType,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,at: null == at ? _self.at : at // ignore: cast_nullable_to_non_nullable
as DateTime,orderNumber: freezed == orderNumber ? _self.orderNumber : orderNumber // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$OperationsPage {

 List<WalletOperation> get items; String? get nextCursor;
/// Create a copy of OperationsPage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OperationsPageCopyWith<OperationsPage> get copyWith => _$OperationsPageCopyWithImpl<OperationsPage>(this as OperationsPage, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OperationsPage&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),nextCursor);

@override
String toString() {
  return 'OperationsPage(items: $items, nextCursor: $nextCursor)';
}


}

/// @nodoc
abstract mixin class $OperationsPageCopyWith<$Res>  {
  factory $OperationsPageCopyWith(OperationsPage value, $Res Function(OperationsPage) _then) = _$OperationsPageCopyWithImpl;
@useResult
$Res call({
 List<WalletOperation> items, String? nextCursor
});




}
/// @nodoc
class _$OperationsPageCopyWithImpl<$Res>
    implements $OperationsPageCopyWith<$Res> {
  _$OperationsPageCopyWithImpl(this._self, this._then);

  final OperationsPage _self;
  final $Res Function(OperationsPage) _then;

/// Create a copy of OperationsPage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? nextCursor = freezed,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<WalletOperation>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [OperationsPage].
extension OperationsPagePatterns on OperationsPage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OperationsPage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OperationsPage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OperationsPage value)  $default,){
final _that = this;
switch (_that) {
case _OperationsPage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OperationsPage value)?  $default,){
final _that = this;
switch (_that) {
case _OperationsPage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<WalletOperation> items,  String? nextCursor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OperationsPage() when $default != null:
return $default(_that.items,_that.nextCursor);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<WalletOperation> items,  String? nextCursor)  $default,) {final _that = this;
switch (_that) {
case _OperationsPage():
return $default(_that.items,_that.nextCursor);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<WalletOperation> items,  String? nextCursor)?  $default,) {final _that = this;
switch (_that) {
case _OperationsPage() when $default != null:
return $default(_that.items,_that.nextCursor);case _:
  return null;

}
}

}

/// @nodoc


class _OperationsPage implements OperationsPage {
  const _OperationsPage({required final  List<WalletOperation> items, this.nextCursor}): _items = items;
  

 final  List<WalletOperation> _items;
@override List<WalletOperation> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  String? nextCursor;

/// Create a copy of OperationsPage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OperationsPageCopyWith<_OperationsPage> get copyWith => __$OperationsPageCopyWithImpl<_OperationsPage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OperationsPage&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),nextCursor);

@override
String toString() {
  return 'OperationsPage(items: $items, nextCursor: $nextCursor)';
}


}

/// @nodoc
abstract mixin class _$OperationsPageCopyWith<$Res> implements $OperationsPageCopyWith<$Res> {
  factory _$OperationsPageCopyWith(_OperationsPage value, $Res Function(_OperationsPage) _then) = __$OperationsPageCopyWithImpl;
@override @useResult
$Res call({
 List<WalletOperation> items, String? nextCursor
});




}
/// @nodoc
class __$OperationsPageCopyWithImpl<$Res>
    implements _$OperationsPageCopyWith<$Res> {
  __$OperationsPageCopyWithImpl(this._self, this._then);

  final _OperationsPage _self;
  final $Res Function(_OperationsPage) _then;

/// Create a copy of OperationsPage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? nextCursor = freezed,}) {
  return _then(_OperationsPage(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<WalletOperation>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$SurchargeBill {

 String get id; SurchargeReason get reason; String get title; int get amount; DateTime get createdAt;/// Calculation, as the server words it: «Вес посылки — 2,35 кг».
 List<BillLine> get lines; String? get orderNumber; String? get parcelNumber; DateTime? get deadline;
/// Create a copy of SurchargeBill
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SurchargeBillCopyWith<SurchargeBill> get copyWith => _$SurchargeBillCopyWithImpl<SurchargeBill>(this as SurchargeBill, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SurchargeBill&&(identical(other.id, id) || other.id == id)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.title, title) || other.title == title)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&const DeepCollectionEquality().equals(other.lines, lines)&&(identical(other.orderNumber, orderNumber) || other.orderNumber == orderNumber)&&(identical(other.parcelNumber, parcelNumber) || other.parcelNumber == parcelNumber)&&(identical(other.deadline, deadline) || other.deadline == deadline));
}


@override
int get hashCode => Object.hash(runtimeType,id,reason,title,amount,createdAt,const DeepCollectionEquality().hash(lines),orderNumber,parcelNumber,deadline);

@override
String toString() {
  return 'SurchargeBill(id: $id, reason: $reason, title: $title, amount: $amount, createdAt: $createdAt, lines: $lines, orderNumber: $orderNumber, parcelNumber: $parcelNumber, deadline: $deadline)';
}


}

/// @nodoc
abstract mixin class $SurchargeBillCopyWith<$Res>  {
  factory $SurchargeBillCopyWith(SurchargeBill value, $Res Function(SurchargeBill) _then) = _$SurchargeBillCopyWithImpl;
@useResult
$Res call({
 String id, SurchargeReason reason, String title, int amount, DateTime createdAt, List<BillLine> lines, String? orderNumber, String? parcelNumber, DateTime? deadline
});




}
/// @nodoc
class _$SurchargeBillCopyWithImpl<$Res>
    implements $SurchargeBillCopyWith<$Res> {
  _$SurchargeBillCopyWithImpl(this._self, this._then);

  final SurchargeBill _self;
  final $Res Function(SurchargeBill) _then;

/// Create a copy of SurchargeBill
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? reason = null,Object? title = null,Object? amount = null,Object? createdAt = null,Object? lines = null,Object? orderNumber = freezed,Object? parcelNumber = freezed,Object? deadline = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as SurchargeReason,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,lines: null == lines ? _self.lines : lines // ignore: cast_nullable_to_non_nullable
as List<BillLine>,orderNumber: freezed == orderNumber ? _self.orderNumber : orderNumber // ignore: cast_nullable_to_non_nullable
as String?,parcelNumber: freezed == parcelNumber ? _self.parcelNumber : parcelNumber // ignore: cast_nullable_to_non_nullable
as String?,deadline: freezed == deadline ? _self.deadline : deadline // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [SurchargeBill].
extension SurchargeBillPatterns on SurchargeBill {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SurchargeBill value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SurchargeBill() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SurchargeBill value)  $default,){
final _that = this;
switch (_that) {
case _SurchargeBill():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SurchargeBill value)?  $default,){
final _that = this;
switch (_that) {
case _SurchargeBill() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  SurchargeReason reason,  String title,  int amount,  DateTime createdAt,  List<BillLine> lines,  String? orderNumber,  String? parcelNumber,  DateTime? deadline)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SurchargeBill() when $default != null:
return $default(_that.id,_that.reason,_that.title,_that.amount,_that.createdAt,_that.lines,_that.orderNumber,_that.parcelNumber,_that.deadline);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  SurchargeReason reason,  String title,  int amount,  DateTime createdAt,  List<BillLine> lines,  String? orderNumber,  String? parcelNumber,  DateTime? deadline)  $default,) {final _that = this;
switch (_that) {
case _SurchargeBill():
return $default(_that.id,_that.reason,_that.title,_that.amount,_that.createdAt,_that.lines,_that.orderNumber,_that.parcelNumber,_that.deadline);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  SurchargeReason reason,  String title,  int amount,  DateTime createdAt,  List<BillLine> lines,  String? orderNumber,  String? parcelNumber,  DateTime? deadline)?  $default,) {final _that = this;
switch (_that) {
case _SurchargeBill() when $default != null:
return $default(_that.id,_that.reason,_that.title,_that.amount,_that.createdAt,_that.lines,_that.orderNumber,_that.parcelNumber,_that.deadline);case _:
  return null;

}
}

}

/// @nodoc


class _SurchargeBill implements SurchargeBill {
  const _SurchargeBill({required this.id, required this.reason, required this.title, required this.amount, required this.createdAt, final  List<BillLine> lines = const <BillLine>[], this.orderNumber, this.parcelNumber, this.deadline}): _lines = lines;
  

@override final  String id;
@override final  SurchargeReason reason;
@override final  String title;
@override final  int amount;
@override final  DateTime createdAt;
/// Calculation, as the server words it: «Вес посылки — 2,35 кг».
 final  List<BillLine> _lines;
/// Calculation, as the server words it: «Вес посылки — 2,35 кг».
@override@JsonKey() List<BillLine> get lines {
  if (_lines is EqualUnmodifiableListView) return _lines;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lines);
}

@override final  String? orderNumber;
@override final  String? parcelNumber;
@override final  DateTime? deadline;

/// Create a copy of SurchargeBill
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SurchargeBillCopyWith<_SurchargeBill> get copyWith => __$SurchargeBillCopyWithImpl<_SurchargeBill>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SurchargeBill&&(identical(other.id, id) || other.id == id)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.title, title) || other.title == title)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&const DeepCollectionEquality().equals(other._lines, _lines)&&(identical(other.orderNumber, orderNumber) || other.orderNumber == orderNumber)&&(identical(other.parcelNumber, parcelNumber) || other.parcelNumber == parcelNumber)&&(identical(other.deadline, deadline) || other.deadline == deadline));
}


@override
int get hashCode => Object.hash(runtimeType,id,reason,title,amount,createdAt,const DeepCollectionEquality().hash(_lines),orderNumber,parcelNumber,deadline);

@override
String toString() {
  return 'SurchargeBill(id: $id, reason: $reason, title: $title, amount: $amount, createdAt: $createdAt, lines: $lines, orderNumber: $orderNumber, parcelNumber: $parcelNumber, deadline: $deadline)';
}


}

/// @nodoc
abstract mixin class _$SurchargeBillCopyWith<$Res> implements $SurchargeBillCopyWith<$Res> {
  factory _$SurchargeBillCopyWith(_SurchargeBill value, $Res Function(_SurchargeBill) _then) = __$SurchargeBillCopyWithImpl;
@override @useResult
$Res call({
 String id, SurchargeReason reason, String title, int amount, DateTime createdAt, List<BillLine> lines, String? orderNumber, String? parcelNumber, DateTime? deadline
});




}
/// @nodoc
class __$SurchargeBillCopyWithImpl<$Res>
    implements _$SurchargeBillCopyWith<$Res> {
  __$SurchargeBillCopyWithImpl(this._self, this._then);

  final _SurchargeBill _self;
  final $Res Function(_SurchargeBill) _then;

/// Create a copy of SurchargeBill
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? reason = null,Object? title = null,Object? amount = null,Object? createdAt = null,Object? lines = null,Object? orderNumber = freezed,Object? parcelNumber = freezed,Object? deadline = freezed,}) {
  return _then(_SurchargeBill(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as SurchargeReason,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,lines: null == lines ? _self._lines : lines // ignore: cast_nullable_to_non_nullable
as List<BillLine>,orderNumber: freezed == orderNumber ? _self.orderNumber : orderNumber // ignore: cast_nullable_to_non_nullable
as String?,parcelNumber: freezed == parcelNumber ? _self.parcelNumber : parcelNumber // ignore: cast_nullable_to_non_nullable
as String?,deadline: freezed == deadline ? _self.deadline : deadline // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

/// @nodoc
mixin _$BillLine {

 String get label; String get value;
/// Create a copy of BillLine
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BillLineCopyWith<BillLine> get copyWith => _$BillLineCopyWithImpl<BillLine>(this as BillLine, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BillLine&&(identical(other.label, label) || other.label == label)&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,label,value);

@override
String toString() {
  return 'BillLine(label: $label, value: $value)';
}


}

/// @nodoc
abstract mixin class $BillLineCopyWith<$Res>  {
  factory $BillLineCopyWith(BillLine value, $Res Function(BillLine) _then) = _$BillLineCopyWithImpl;
@useResult
$Res call({
 String label, String value
});




}
/// @nodoc
class _$BillLineCopyWithImpl<$Res>
    implements $BillLineCopyWith<$Res> {
  _$BillLineCopyWithImpl(this._self, this._then);

  final BillLine _self;
  final $Res Function(BillLine) _then;

/// Create a copy of BillLine
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? label = null,Object? value = null,}) {
  return _then(_self.copyWith(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [BillLine].
extension BillLinePatterns on BillLine {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BillLine value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BillLine() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BillLine value)  $default,){
final _that = this;
switch (_that) {
case _BillLine():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BillLine value)?  $default,){
final _that = this;
switch (_that) {
case _BillLine() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String label,  String value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BillLine() when $default != null:
return $default(_that.label,_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String label,  String value)  $default,) {final _that = this;
switch (_that) {
case _BillLine():
return $default(_that.label,_that.value);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String label,  String value)?  $default,) {final _that = this;
switch (_that) {
case _BillLine() when $default != null:
return $default(_that.label,_that.value);case _:
  return null;

}
}

}

/// @nodoc


class _BillLine implements BillLine {
  const _BillLine({required this.label, required this.value});
  

@override final  String label;
@override final  String value;

/// Create a copy of BillLine
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BillLineCopyWith<_BillLine> get copyWith => __$BillLineCopyWithImpl<_BillLine>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BillLine&&(identical(other.label, label) || other.label == label)&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,label,value);

@override
String toString() {
  return 'BillLine(label: $label, value: $value)';
}


}

/// @nodoc
abstract mixin class _$BillLineCopyWith<$Res> implements $BillLineCopyWith<$Res> {
  factory _$BillLineCopyWith(_BillLine value, $Res Function(_BillLine) _then) = __$BillLineCopyWithImpl;
@override @useResult
$Res call({
 String label, String value
});




}
/// @nodoc
class __$BillLineCopyWithImpl<$Res>
    implements _$BillLineCopyWith<$Res> {
  __$BillLineCopyWithImpl(this._self, this._then);

  final _BillLine _self;
  final $Res Function(_BillLine) _then;

/// Create a copy of BillLine
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? label = null,Object? value = null,}) {
  return _then(_BillLine(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$Refund {

 String get id; String get title; int get amount; RefundDestination get destination; RefundStatus get status; DateTime get at; String? get orderNumber;
/// Create a copy of Refund
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RefundCopyWith<Refund> get copyWith => _$RefundCopyWithImpl<Refund>(this as Refund, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Refund&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.destination, destination) || other.destination == destination)&&(identical(other.status, status) || other.status == status)&&(identical(other.at, at) || other.at == at)&&(identical(other.orderNumber, orderNumber) || other.orderNumber == orderNumber));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,amount,destination,status,at,orderNumber);

@override
String toString() {
  return 'Refund(id: $id, title: $title, amount: $amount, destination: $destination, status: $status, at: $at, orderNumber: $orderNumber)';
}


}

/// @nodoc
abstract mixin class $RefundCopyWith<$Res>  {
  factory $RefundCopyWith(Refund value, $Res Function(Refund) _then) = _$RefundCopyWithImpl;
@useResult
$Res call({
 String id, String title, int amount, RefundDestination destination, RefundStatus status, DateTime at, String? orderNumber
});




}
/// @nodoc
class _$RefundCopyWithImpl<$Res>
    implements $RefundCopyWith<$Res> {
  _$RefundCopyWithImpl(this._self, this._then);

  final Refund _self;
  final $Res Function(Refund) _then;

/// Create a copy of Refund
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? amount = null,Object? destination = null,Object? status = null,Object? at = null,Object? orderNumber = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,destination: null == destination ? _self.destination : destination // ignore: cast_nullable_to_non_nullable
as RefundDestination,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as RefundStatus,at: null == at ? _self.at : at // ignore: cast_nullable_to_non_nullable
as DateTime,orderNumber: freezed == orderNumber ? _self.orderNumber : orderNumber // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Refund].
extension RefundPatterns on Refund {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Refund value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Refund() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Refund value)  $default,){
final _that = this;
switch (_that) {
case _Refund():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Refund value)?  $default,){
final _that = this;
switch (_that) {
case _Refund() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  int amount,  RefundDestination destination,  RefundStatus status,  DateTime at,  String? orderNumber)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Refund() when $default != null:
return $default(_that.id,_that.title,_that.amount,_that.destination,_that.status,_that.at,_that.orderNumber);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  int amount,  RefundDestination destination,  RefundStatus status,  DateTime at,  String? orderNumber)  $default,) {final _that = this;
switch (_that) {
case _Refund():
return $default(_that.id,_that.title,_that.amount,_that.destination,_that.status,_that.at,_that.orderNumber);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  int amount,  RefundDestination destination,  RefundStatus status,  DateTime at,  String? orderNumber)?  $default,) {final _that = this;
switch (_that) {
case _Refund() when $default != null:
return $default(_that.id,_that.title,_that.amount,_that.destination,_that.status,_that.at,_that.orderNumber);case _:
  return null;

}
}

}

/// @nodoc


class _Refund implements Refund {
  const _Refund({required this.id, required this.title, required this.amount, required this.destination, required this.status, required this.at, this.orderNumber});
  

@override final  String id;
@override final  String title;
@override final  int amount;
@override final  RefundDestination destination;
@override final  RefundStatus status;
@override final  DateTime at;
@override final  String? orderNumber;

/// Create a copy of Refund
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RefundCopyWith<_Refund> get copyWith => __$RefundCopyWithImpl<_Refund>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Refund&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.destination, destination) || other.destination == destination)&&(identical(other.status, status) || other.status == status)&&(identical(other.at, at) || other.at == at)&&(identical(other.orderNumber, orderNumber) || other.orderNumber == orderNumber));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,amount,destination,status,at,orderNumber);

@override
String toString() {
  return 'Refund(id: $id, title: $title, amount: $amount, destination: $destination, status: $status, at: $at, orderNumber: $orderNumber)';
}


}

/// @nodoc
abstract mixin class _$RefundCopyWith<$Res> implements $RefundCopyWith<$Res> {
  factory _$RefundCopyWith(_Refund value, $Res Function(_Refund) _then) = __$RefundCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, int amount, RefundDestination destination, RefundStatus status, DateTime at, String? orderNumber
});




}
/// @nodoc
class __$RefundCopyWithImpl<$Res>
    implements _$RefundCopyWith<$Res> {
  __$RefundCopyWithImpl(this._self, this._then);

  final _Refund _self;
  final $Res Function(_Refund) _then;

/// Create a copy of Refund
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? amount = null,Object? destination = null,Object? status = null,Object? at = null,Object? orderNumber = freezed,}) {
  return _then(_Refund(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,destination: null == destination ? _self.destination : destination // ignore: cast_nullable_to_non_nullable
as RefundDestination,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as RefundStatus,at: null == at ? _self.at : at // ignore: cast_nullable_to_non_nullable
as DateTime,orderNumber: freezed == orderNumber ? _self.orderNumber : orderNumber // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$PaymentStart {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentStart);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PaymentStart()';
}


}

/// @nodoc
class $PaymentStartCopyWith<$Res>  {
$PaymentStartCopyWith(PaymentStart _, $Res Function(PaymentStart) __);
}


/// Adds pattern-matching-related methods to [PaymentStart].
extension PaymentStartPatterns on PaymentStart {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( PaymentStartPaid value)?  paid,TResult Function( PaymentStartCard value)?  card,required TResult orElse(),}){
final _that = this;
switch (_that) {
case PaymentStartPaid() when paid != null:
return paid(_that);case PaymentStartCard() when card != null:
return card(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( PaymentStartPaid value)  paid,required TResult Function( PaymentStartCard value)  card,}){
final _that = this;
switch (_that) {
case PaymentStartPaid():
return paid(_that);case PaymentStartCard():
return card(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( PaymentStartPaid value)?  paid,TResult? Function( PaymentStartCard value)?  card,}){
final _that = this;
switch (_that) {
case PaymentStartPaid() when paid != null:
return paid(_that);case PaymentStartCard() when card != null:
return card(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  paid,TResult Function( String paymentId)?  card,required TResult orElse(),}) {final _that = this;
switch (_that) {
case PaymentStartPaid() when paid != null:
return paid();case PaymentStartCard() when card != null:
return card(_that.paymentId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  paid,required TResult Function( String paymentId)  card,}) {final _that = this;
switch (_that) {
case PaymentStartPaid():
return paid();case PaymentStartCard():
return card(_that.paymentId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  paid,TResult? Function( String paymentId)?  card,}) {final _that = this;
switch (_that) {
case PaymentStartPaid() when paid != null:
return paid();case PaymentStartCard() when card != null:
return card(_that.paymentId);case _:
  return null;

}
}

}

/// @nodoc


class PaymentStartPaid implements PaymentStart {
  const PaymentStartPaid();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentStartPaid);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PaymentStart.paid()';
}


}




/// @nodoc


class PaymentStartCard implements PaymentStart {
  const PaymentStartCard(this.paymentId);
  

 final  String paymentId;

/// Create a copy of PaymentStart
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentStartCardCopyWith<PaymentStartCard> get copyWith => _$PaymentStartCardCopyWithImpl<PaymentStartCard>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentStartCard&&(identical(other.paymentId, paymentId) || other.paymentId == paymentId));
}


@override
int get hashCode => Object.hash(runtimeType,paymentId);

@override
String toString() {
  return 'PaymentStart.card(paymentId: $paymentId)';
}


}

/// @nodoc
abstract mixin class $PaymentStartCardCopyWith<$Res> implements $PaymentStartCopyWith<$Res> {
  factory $PaymentStartCardCopyWith(PaymentStartCard value, $Res Function(PaymentStartCard) _then) = _$PaymentStartCardCopyWithImpl;
@useResult
$Res call({
 String paymentId
});




}
/// @nodoc
class _$PaymentStartCardCopyWithImpl<$Res>
    implements $PaymentStartCardCopyWith<$Res> {
  _$PaymentStartCardCopyWithImpl(this._self, this._then);

  final PaymentStartCard _self;
  final $Res Function(PaymentStartCard) _then;

/// Create a copy of PaymentStart
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? paymentId = null,}) {
  return _then(PaymentStartCard(
null == paymentId ? _self.paymentId : paymentId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$WalletPaymentCheck {

 WalletPaymentStatus get status;/// Server text for a failed payment.
 String? get reason;
/// Create a copy of WalletPaymentCheck
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WalletPaymentCheckCopyWith<WalletPaymentCheck> get copyWith => _$WalletPaymentCheckCopyWithImpl<WalletPaymentCheck>(this as WalletPaymentCheck, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletPaymentCheck&&(identical(other.status, status) || other.status == status)&&(identical(other.reason, reason) || other.reason == reason));
}


@override
int get hashCode => Object.hash(runtimeType,status,reason);

@override
String toString() {
  return 'WalletPaymentCheck(status: $status, reason: $reason)';
}


}

/// @nodoc
abstract mixin class $WalletPaymentCheckCopyWith<$Res>  {
  factory $WalletPaymentCheckCopyWith(WalletPaymentCheck value, $Res Function(WalletPaymentCheck) _then) = _$WalletPaymentCheckCopyWithImpl;
@useResult
$Res call({
 WalletPaymentStatus status, String? reason
});




}
/// @nodoc
class _$WalletPaymentCheckCopyWithImpl<$Res>
    implements $WalletPaymentCheckCopyWith<$Res> {
  _$WalletPaymentCheckCopyWithImpl(this._self, this._then);

  final WalletPaymentCheck _self;
  final $Res Function(WalletPaymentCheck) _then;

/// Create a copy of WalletPaymentCheck
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? reason = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as WalletPaymentStatus,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [WalletPaymentCheck].
extension WalletPaymentCheckPatterns on WalletPaymentCheck {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WalletPaymentCheck value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WalletPaymentCheck() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WalletPaymentCheck value)  $default,){
final _that = this;
switch (_that) {
case _WalletPaymentCheck():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WalletPaymentCheck value)?  $default,){
final _that = this;
switch (_that) {
case _WalletPaymentCheck() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( WalletPaymentStatus status,  String? reason)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WalletPaymentCheck() when $default != null:
return $default(_that.status,_that.reason);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( WalletPaymentStatus status,  String? reason)  $default,) {final _that = this;
switch (_that) {
case _WalletPaymentCheck():
return $default(_that.status,_that.reason);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( WalletPaymentStatus status,  String? reason)?  $default,) {final _that = this;
switch (_that) {
case _WalletPaymentCheck() when $default != null:
return $default(_that.status,_that.reason);case _:
  return null;

}
}

}

/// @nodoc


class _WalletPaymentCheck implements WalletPaymentCheck {
  const _WalletPaymentCheck({required this.status, this.reason});
  

@override final  WalletPaymentStatus status;
/// Server text for a failed payment.
@override final  String? reason;

/// Create a copy of WalletPaymentCheck
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WalletPaymentCheckCopyWith<_WalletPaymentCheck> get copyWith => __$WalletPaymentCheckCopyWithImpl<_WalletPaymentCheck>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WalletPaymentCheck&&(identical(other.status, status) || other.status == status)&&(identical(other.reason, reason) || other.reason == reason));
}


@override
int get hashCode => Object.hash(runtimeType,status,reason);

@override
String toString() {
  return 'WalletPaymentCheck(status: $status, reason: $reason)';
}


}

/// @nodoc
abstract mixin class _$WalletPaymentCheckCopyWith<$Res> implements $WalletPaymentCheckCopyWith<$Res> {
  factory _$WalletPaymentCheckCopyWith(_WalletPaymentCheck value, $Res Function(_WalletPaymentCheck) _then) = __$WalletPaymentCheckCopyWithImpl;
@override @useResult
$Res call({
 WalletPaymentStatus status, String? reason
});




}
/// @nodoc
class __$WalletPaymentCheckCopyWithImpl<$Res>
    implements _$WalletPaymentCheckCopyWith<$Res> {
  __$WalletPaymentCheckCopyWithImpl(this._self, this._then);

  final _WalletPaymentCheck _self;
  final $Res Function(_WalletPaymentCheck) _then;

/// Create a copy of WalletPaymentCheck
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? reason = freezed,}) {
  return _then(_WalletPaymentCheck(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as WalletPaymentStatus,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
