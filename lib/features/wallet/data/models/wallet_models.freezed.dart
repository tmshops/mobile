// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WalletSummaryModel {

 int get balance; int get debt;
/// Create a copy of WalletSummaryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WalletSummaryModelCopyWith<WalletSummaryModel> get copyWith => _$WalletSummaryModelCopyWithImpl<WalletSummaryModel>(this as WalletSummaryModel, _$identity);

  /// Serializes this WalletSummaryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletSummaryModel&&(identical(other.balance, balance) || other.balance == balance)&&(identical(other.debt, debt) || other.debt == debt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,balance,debt);

@override
String toString() {
  return 'WalletSummaryModel(balance: $balance, debt: $debt)';
}


}

/// @nodoc
abstract mixin class $WalletSummaryModelCopyWith<$Res>  {
  factory $WalletSummaryModelCopyWith(WalletSummaryModel value, $Res Function(WalletSummaryModel) _then) = _$WalletSummaryModelCopyWithImpl;
@useResult
$Res call({
 int balance, int debt
});




}
/// @nodoc
class _$WalletSummaryModelCopyWithImpl<$Res>
    implements $WalletSummaryModelCopyWith<$Res> {
  _$WalletSummaryModelCopyWithImpl(this._self, this._then);

  final WalletSummaryModel _self;
  final $Res Function(WalletSummaryModel) _then;

/// Create a copy of WalletSummaryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? balance = null,Object? debt = null,}) {
  return _then(_self.copyWith(
balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as int,debt: null == debt ? _self.debt : debt // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [WalletSummaryModel].
extension WalletSummaryModelPatterns on WalletSummaryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WalletSummaryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WalletSummaryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WalletSummaryModel value)  $default,){
final _that = this;
switch (_that) {
case _WalletSummaryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WalletSummaryModel value)?  $default,){
final _that = this;
switch (_that) {
case _WalletSummaryModel() when $default != null:
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
case _WalletSummaryModel() when $default != null:
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
case _WalletSummaryModel():
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
case _WalletSummaryModel() when $default != null:
return $default(_that.balance,_that.debt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WalletSummaryModel implements WalletSummaryModel {
  const _WalletSummaryModel({required this.balance, required this.debt});
  factory _WalletSummaryModel.fromJson(Map<String, dynamic> json) => _$WalletSummaryModelFromJson(json);

@override final  int balance;
@override final  int debt;

/// Create a copy of WalletSummaryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WalletSummaryModelCopyWith<_WalletSummaryModel> get copyWith => __$WalletSummaryModelCopyWithImpl<_WalletSummaryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WalletSummaryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WalletSummaryModel&&(identical(other.balance, balance) || other.balance == balance)&&(identical(other.debt, debt) || other.debt == debt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,balance,debt);

@override
String toString() {
  return 'WalletSummaryModel(balance: $balance, debt: $debt)';
}


}

/// @nodoc
abstract mixin class _$WalletSummaryModelCopyWith<$Res> implements $WalletSummaryModelCopyWith<$Res> {
  factory _$WalletSummaryModelCopyWith(_WalletSummaryModel value, $Res Function(_WalletSummaryModel) _then) = __$WalletSummaryModelCopyWithImpl;
@override @useResult
$Res call({
 int balance, int debt
});




}
/// @nodoc
class __$WalletSummaryModelCopyWithImpl<$Res>
    implements _$WalletSummaryModelCopyWith<$Res> {
  __$WalletSummaryModelCopyWithImpl(this._self, this._then);

  final _WalletSummaryModel _self;
  final $Res Function(_WalletSummaryModel) _then;

/// Create a copy of WalletSummaryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? balance = null,Object? debt = null,}) {
  return _then(_WalletSummaryModel(
balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as int,debt: null == debt ? _self.debt : debt // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$OperationsPageModel {

 List<OperationModel> get items; String? get nextCursor;
/// Create a copy of OperationsPageModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OperationsPageModelCopyWith<OperationsPageModel> get copyWith => _$OperationsPageModelCopyWithImpl<OperationsPageModel>(this as OperationsPageModel, _$identity);

  /// Serializes this OperationsPageModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OperationsPageModel&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),nextCursor);

@override
String toString() {
  return 'OperationsPageModel(items: $items, nextCursor: $nextCursor)';
}


}

/// @nodoc
abstract mixin class $OperationsPageModelCopyWith<$Res>  {
  factory $OperationsPageModelCopyWith(OperationsPageModel value, $Res Function(OperationsPageModel) _then) = _$OperationsPageModelCopyWithImpl;
@useResult
$Res call({
 List<OperationModel> items, String? nextCursor
});




}
/// @nodoc
class _$OperationsPageModelCopyWithImpl<$Res>
    implements $OperationsPageModelCopyWith<$Res> {
  _$OperationsPageModelCopyWithImpl(this._self, this._then);

  final OperationsPageModel _self;
  final $Res Function(OperationsPageModel) _then;

/// Create a copy of OperationsPageModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? nextCursor = freezed,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<OperationModel>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [OperationsPageModel].
extension OperationsPageModelPatterns on OperationsPageModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OperationsPageModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OperationsPageModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OperationsPageModel value)  $default,){
final _that = this;
switch (_that) {
case _OperationsPageModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OperationsPageModel value)?  $default,){
final _that = this;
switch (_that) {
case _OperationsPageModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<OperationModel> items,  String? nextCursor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OperationsPageModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<OperationModel> items,  String? nextCursor)  $default,) {final _that = this;
switch (_that) {
case _OperationsPageModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<OperationModel> items,  String? nextCursor)?  $default,) {final _that = this;
switch (_that) {
case _OperationsPageModel() when $default != null:
return $default(_that.items,_that.nextCursor);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OperationsPageModel implements OperationsPageModel {
  const _OperationsPageModel({required final  List<OperationModel> items, this.nextCursor}): _items = items;
  factory _OperationsPageModel.fromJson(Map<String, dynamic> json) => _$OperationsPageModelFromJson(json);

 final  List<OperationModel> _items;
@override List<OperationModel> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  String? nextCursor;

/// Create a copy of OperationsPageModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OperationsPageModelCopyWith<_OperationsPageModel> get copyWith => __$OperationsPageModelCopyWithImpl<_OperationsPageModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OperationsPageModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OperationsPageModel&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),nextCursor);

@override
String toString() {
  return 'OperationsPageModel(items: $items, nextCursor: $nextCursor)';
}


}

/// @nodoc
abstract mixin class _$OperationsPageModelCopyWith<$Res> implements $OperationsPageModelCopyWith<$Res> {
  factory _$OperationsPageModelCopyWith(_OperationsPageModel value, $Res Function(_OperationsPageModel) _then) = __$OperationsPageModelCopyWithImpl;
@override @useResult
$Res call({
 List<OperationModel> items, String? nextCursor
});




}
/// @nodoc
class __$OperationsPageModelCopyWithImpl<$Res>
    implements _$OperationsPageModelCopyWith<$Res> {
  __$OperationsPageModelCopyWithImpl(this._self, this._then);

  final _OperationsPageModel _self;
  final $Res Function(_OperationsPageModel) _then;

/// Create a copy of OperationsPageModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? nextCursor = freezed,}) {
  return _then(_OperationsPageModel(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<OperationModel>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$OperationModel {

 String get id;/// top_up, payment, refund, surcharge; anything else is shown as a
/// correction.
 String get type; String get title; int get amount; DateTime get createdAt; String? get orderNumber;
/// Create a copy of OperationModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OperationModelCopyWith<OperationModel> get copyWith => _$OperationModelCopyWithImpl<OperationModel>(this as OperationModel, _$identity);

  /// Serializes this OperationModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OperationModel&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.orderNumber, orderNumber) || other.orderNumber == orderNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,title,amount,createdAt,orderNumber);

@override
String toString() {
  return 'OperationModel(id: $id, type: $type, title: $title, amount: $amount, createdAt: $createdAt, orderNumber: $orderNumber)';
}


}

/// @nodoc
abstract mixin class $OperationModelCopyWith<$Res>  {
  factory $OperationModelCopyWith(OperationModel value, $Res Function(OperationModel) _then) = _$OperationModelCopyWithImpl;
@useResult
$Res call({
 String id, String type, String title, int amount, DateTime createdAt, String? orderNumber
});




}
/// @nodoc
class _$OperationModelCopyWithImpl<$Res>
    implements $OperationModelCopyWith<$Res> {
  _$OperationModelCopyWithImpl(this._self, this._then);

  final OperationModel _self;
  final $Res Function(OperationModel) _then;

/// Create a copy of OperationModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = null,Object? title = null,Object? amount = null,Object? createdAt = null,Object? orderNumber = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,orderNumber: freezed == orderNumber ? _self.orderNumber : orderNumber // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [OperationModel].
extension OperationModelPatterns on OperationModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OperationModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OperationModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OperationModel value)  $default,){
final _that = this;
switch (_that) {
case _OperationModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OperationModel value)?  $default,){
final _that = this;
switch (_that) {
case _OperationModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String type,  String title,  int amount,  DateTime createdAt,  String? orderNumber)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OperationModel() when $default != null:
return $default(_that.id,_that.type,_that.title,_that.amount,_that.createdAt,_that.orderNumber);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String type,  String title,  int amount,  DateTime createdAt,  String? orderNumber)  $default,) {final _that = this;
switch (_that) {
case _OperationModel():
return $default(_that.id,_that.type,_that.title,_that.amount,_that.createdAt,_that.orderNumber);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String type,  String title,  int amount,  DateTime createdAt,  String? orderNumber)?  $default,) {final _that = this;
switch (_that) {
case _OperationModel() when $default != null:
return $default(_that.id,_that.type,_that.title,_that.amount,_that.createdAt,_that.orderNumber);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OperationModel implements OperationModel {
  const _OperationModel({required this.id, required this.type, required this.title, required this.amount, required this.createdAt, this.orderNumber});
  factory _OperationModel.fromJson(Map<String, dynamic> json) => _$OperationModelFromJson(json);

@override final  String id;
/// top_up, payment, refund, surcharge; anything else is shown as a
/// correction.
@override final  String type;
@override final  String title;
@override final  int amount;
@override final  DateTime createdAt;
@override final  String? orderNumber;

/// Create a copy of OperationModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OperationModelCopyWith<_OperationModel> get copyWith => __$OperationModelCopyWithImpl<_OperationModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OperationModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OperationModel&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.orderNumber, orderNumber) || other.orderNumber == orderNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,title,amount,createdAt,orderNumber);

@override
String toString() {
  return 'OperationModel(id: $id, type: $type, title: $title, amount: $amount, createdAt: $createdAt, orderNumber: $orderNumber)';
}


}

/// @nodoc
abstract mixin class _$OperationModelCopyWith<$Res> implements $OperationModelCopyWith<$Res> {
  factory _$OperationModelCopyWith(_OperationModel value, $Res Function(_OperationModel) _then) = __$OperationModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String type, String title, int amount, DateTime createdAt, String? orderNumber
});




}
/// @nodoc
class __$OperationModelCopyWithImpl<$Res>
    implements _$OperationModelCopyWith<$Res> {
  __$OperationModelCopyWithImpl(this._self, this._then);

  final _OperationModel _self;
  final $Res Function(_OperationModel) _then;

/// Create a copy of OperationModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = null,Object? title = null,Object? amount = null,Object? createdAt = null,Object? orderNumber = freezed,}) {
  return _then(_OperationModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,orderNumber: freezed == orderNumber ? _self.orderNumber : orderNumber // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$SurchargeModel {

 String get id;/// weight, price_increase; others get a generic icon.
 String get reason; String get title; int get amount; DateTime get createdAt; List<BillLineModel> get lines; String? get orderNumber; String? get parcelNumber; DateTime? get deadline;
/// Create a copy of SurchargeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SurchargeModelCopyWith<SurchargeModel> get copyWith => _$SurchargeModelCopyWithImpl<SurchargeModel>(this as SurchargeModel, _$identity);

  /// Serializes this SurchargeModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SurchargeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.title, title) || other.title == title)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&const DeepCollectionEquality().equals(other.lines, lines)&&(identical(other.orderNumber, orderNumber) || other.orderNumber == orderNumber)&&(identical(other.parcelNumber, parcelNumber) || other.parcelNumber == parcelNumber)&&(identical(other.deadline, deadline) || other.deadline == deadline));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,reason,title,amount,createdAt,const DeepCollectionEquality().hash(lines),orderNumber,parcelNumber,deadline);

@override
String toString() {
  return 'SurchargeModel(id: $id, reason: $reason, title: $title, amount: $amount, createdAt: $createdAt, lines: $lines, orderNumber: $orderNumber, parcelNumber: $parcelNumber, deadline: $deadline)';
}


}

/// @nodoc
abstract mixin class $SurchargeModelCopyWith<$Res>  {
  factory $SurchargeModelCopyWith(SurchargeModel value, $Res Function(SurchargeModel) _then) = _$SurchargeModelCopyWithImpl;
@useResult
$Res call({
 String id, String reason, String title, int amount, DateTime createdAt, List<BillLineModel> lines, String? orderNumber, String? parcelNumber, DateTime? deadline
});




}
/// @nodoc
class _$SurchargeModelCopyWithImpl<$Res>
    implements $SurchargeModelCopyWith<$Res> {
  _$SurchargeModelCopyWithImpl(this._self, this._then);

  final SurchargeModel _self;
  final $Res Function(SurchargeModel) _then;

/// Create a copy of SurchargeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? reason = null,Object? title = null,Object? amount = null,Object? createdAt = null,Object? lines = null,Object? orderNumber = freezed,Object? parcelNumber = freezed,Object? deadline = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,lines: null == lines ? _self.lines : lines // ignore: cast_nullable_to_non_nullable
as List<BillLineModel>,orderNumber: freezed == orderNumber ? _self.orderNumber : orderNumber // ignore: cast_nullable_to_non_nullable
as String?,parcelNumber: freezed == parcelNumber ? _self.parcelNumber : parcelNumber // ignore: cast_nullable_to_non_nullable
as String?,deadline: freezed == deadline ? _self.deadline : deadline // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [SurchargeModel].
extension SurchargeModelPatterns on SurchargeModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SurchargeModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SurchargeModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SurchargeModel value)  $default,){
final _that = this;
switch (_that) {
case _SurchargeModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SurchargeModel value)?  $default,){
final _that = this;
switch (_that) {
case _SurchargeModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String reason,  String title,  int amount,  DateTime createdAt,  List<BillLineModel> lines,  String? orderNumber,  String? parcelNumber,  DateTime? deadline)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SurchargeModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String reason,  String title,  int amount,  DateTime createdAt,  List<BillLineModel> lines,  String? orderNumber,  String? parcelNumber,  DateTime? deadline)  $default,) {final _that = this;
switch (_that) {
case _SurchargeModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String reason,  String title,  int amount,  DateTime createdAt,  List<BillLineModel> lines,  String? orderNumber,  String? parcelNumber,  DateTime? deadline)?  $default,) {final _that = this;
switch (_that) {
case _SurchargeModel() when $default != null:
return $default(_that.id,_that.reason,_that.title,_that.amount,_that.createdAt,_that.lines,_that.orderNumber,_that.parcelNumber,_that.deadline);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SurchargeModel implements SurchargeModel {
  const _SurchargeModel({required this.id, required this.reason, required this.title, required this.amount, required this.createdAt, final  List<BillLineModel> lines = const <BillLineModel>[], this.orderNumber, this.parcelNumber, this.deadline}): _lines = lines;
  factory _SurchargeModel.fromJson(Map<String, dynamic> json) => _$SurchargeModelFromJson(json);

@override final  String id;
/// weight, price_increase; others get a generic icon.
@override final  String reason;
@override final  String title;
@override final  int amount;
@override final  DateTime createdAt;
 final  List<BillLineModel> _lines;
@override@JsonKey() List<BillLineModel> get lines {
  if (_lines is EqualUnmodifiableListView) return _lines;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lines);
}

@override final  String? orderNumber;
@override final  String? parcelNumber;
@override final  DateTime? deadline;

/// Create a copy of SurchargeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SurchargeModelCopyWith<_SurchargeModel> get copyWith => __$SurchargeModelCopyWithImpl<_SurchargeModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SurchargeModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SurchargeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.title, title) || other.title == title)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&const DeepCollectionEquality().equals(other._lines, _lines)&&(identical(other.orderNumber, orderNumber) || other.orderNumber == orderNumber)&&(identical(other.parcelNumber, parcelNumber) || other.parcelNumber == parcelNumber)&&(identical(other.deadline, deadline) || other.deadline == deadline));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,reason,title,amount,createdAt,const DeepCollectionEquality().hash(_lines),orderNumber,parcelNumber,deadline);

@override
String toString() {
  return 'SurchargeModel(id: $id, reason: $reason, title: $title, amount: $amount, createdAt: $createdAt, lines: $lines, orderNumber: $orderNumber, parcelNumber: $parcelNumber, deadline: $deadline)';
}


}

/// @nodoc
abstract mixin class _$SurchargeModelCopyWith<$Res> implements $SurchargeModelCopyWith<$Res> {
  factory _$SurchargeModelCopyWith(_SurchargeModel value, $Res Function(_SurchargeModel) _then) = __$SurchargeModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String reason, String title, int amount, DateTime createdAt, List<BillLineModel> lines, String? orderNumber, String? parcelNumber, DateTime? deadline
});




}
/// @nodoc
class __$SurchargeModelCopyWithImpl<$Res>
    implements _$SurchargeModelCopyWith<$Res> {
  __$SurchargeModelCopyWithImpl(this._self, this._then);

  final _SurchargeModel _self;
  final $Res Function(_SurchargeModel) _then;

/// Create a copy of SurchargeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? reason = null,Object? title = null,Object? amount = null,Object? createdAt = null,Object? lines = null,Object? orderNumber = freezed,Object? parcelNumber = freezed,Object? deadline = freezed,}) {
  return _then(_SurchargeModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,lines: null == lines ? _self._lines : lines // ignore: cast_nullable_to_non_nullable
as List<BillLineModel>,orderNumber: freezed == orderNumber ? _self.orderNumber : orderNumber // ignore: cast_nullable_to_non_nullable
as String?,parcelNumber: freezed == parcelNumber ? _self.parcelNumber : parcelNumber // ignore: cast_nullable_to_non_nullable
as String?,deadline: freezed == deadline ? _self.deadline : deadline // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$BillLineModel {

 String get label; String get value;
/// Create a copy of BillLineModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BillLineModelCopyWith<BillLineModel> get copyWith => _$BillLineModelCopyWithImpl<BillLineModel>(this as BillLineModel, _$identity);

  /// Serializes this BillLineModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BillLineModel&&(identical(other.label, label) || other.label == label)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,label,value);

@override
String toString() {
  return 'BillLineModel(label: $label, value: $value)';
}


}

/// @nodoc
abstract mixin class $BillLineModelCopyWith<$Res>  {
  factory $BillLineModelCopyWith(BillLineModel value, $Res Function(BillLineModel) _then) = _$BillLineModelCopyWithImpl;
@useResult
$Res call({
 String label, String value
});




}
/// @nodoc
class _$BillLineModelCopyWithImpl<$Res>
    implements $BillLineModelCopyWith<$Res> {
  _$BillLineModelCopyWithImpl(this._self, this._then);

  final BillLineModel _self;
  final $Res Function(BillLineModel) _then;

/// Create a copy of BillLineModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? label = null,Object? value = null,}) {
  return _then(_self.copyWith(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [BillLineModel].
extension BillLineModelPatterns on BillLineModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BillLineModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BillLineModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BillLineModel value)  $default,){
final _that = this;
switch (_that) {
case _BillLineModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BillLineModel value)?  $default,){
final _that = this;
switch (_that) {
case _BillLineModel() when $default != null:
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
case _BillLineModel() when $default != null:
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
case _BillLineModel():
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
case _BillLineModel() when $default != null:
return $default(_that.label,_that.value);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BillLineModel implements BillLineModel {
  const _BillLineModel({required this.label, required this.value});
  factory _BillLineModel.fromJson(Map<String, dynamic> json) => _$BillLineModelFromJson(json);

@override final  String label;
@override final  String value;

/// Create a copy of BillLineModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BillLineModelCopyWith<_BillLineModel> get copyWith => __$BillLineModelCopyWithImpl<_BillLineModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BillLineModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BillLineModel&&(identical(other.label, label) || other.label == label)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,label,value);

@override
String toString() {
  return 'BillLineModel(label: $label, value: $value)';
}


}

/// @nodoc
abstract mixin class _$BillLineModelCopyWith<$Res> implements $BillLineModelCopyWith<$Res> {
  factory _$BillLineModelCopyWith(_BillLineModel value, $Res Function(_BillLineModel) _then) = __$BillLineModelCopyWithImpl;
@override @useResult
$Res call({
 String label, String value
});




}
/// @nodoc
class __$BillLineModelCopyWithImpl<$Res>
    implements _$BillLineModelCopyWith<$Res> {
  __$BillLineModelCopyWithImpl(this._self, this._then);

  final _BillLineModel _self;
  final $Res Function(_BillLineModel) _then;

/// Create a copy of BillLineModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? label = null,Object? value = null,}) {
  return _then(_BillLineModel(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$RefundModel {

 String get id; String get title; int get amount;/// balance, card, cash.
 String get destination;/// created, approved, paid.
 String get status; DateTime get createdAt; String? get orderNumber;
/// Create a copy of RefundModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RefundModelCopyWith<RefundModel> get copyWith => _$RefundModelCopyWithImpl<RefundModel>(this as RefundModel, _$identity);

  /// Serializes this RefundModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefundModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.destination, destination) || other.destination == destination)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.orderNumber, orderNumber) || other.orderNumber == orderNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,amount,destination,status,createdAt,orderNumber);

@override
String toString() {
  return 'RefundModel(id: $id, title: $title, amount: $amount, destination: $destination, status: $status, createdAt: $createdAt, orderNumber: $orderNumber)';
}


}

/// @nodoc
abstract mixin class $RefundModelCopyWith<$Res>  {
  factory $RefundModelCopyWith(RefundModel value, $Res Function(RefundModel) _then) = _$RefundModelCopyWithImpl;
@useResult
$Res call({
 String id, String title, int amount, String destination, String status, DateTime createdAt, String? orderNumber
});




}
/// @nodoc
class _$RefundModelCopyWithImpl<$Res>
    implements $RefundModelCopyWith<$Res> {
  _$RefundModelCopyWithImpl(this._self, this._then);

  final RefundModel _self;
  final $Res Function(RefundModel) _then;

/// Create a copy of RefundModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? amount = null,Object? destination = null,Object? status = null,Object? createdAt = null,Object? orderNumber = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,destination: null == destination ? _self.destination : destination // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,orderNumber: freezed == orderNumber ? _self.orderNumber : orderNumber // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RefundModel].
extension RefundModelPatterns on RefundModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RefundModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RefundModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RefundModel value)  $default,){
final _that = this;
switch (_that) {
case _RefundModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RefundModel value)?  $default,){
final _that = this;
switch (_that) {
case _RefundModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  int amount,  String destination,  String status,  DateTime createdAt,  String? orderNumber)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RefundModel() when $default != null:
return $default(_that.id,_that.title,_that.amount,_that.destination,_that.status,_that.createdAt,_that.orderNumber);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  int amount,  String destination,  String status,  DateTime createdAt,  String? orderNumber)  $default,) {final _that = this;
switch (_that) {
case _RefundModel():
return $default(_that.id,_that.title,_that.amount,_that.destination,_that.status,_that.createdAt,_that.orderNumber);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  int amount,  String destination,  String status,  DateTime createdAt,  String? orderNumber)?  $default,) {final _that = this;
switch (_that) {
case _RefundModel() when $default != null:
return $default(_that.id,_that.title,_that.amount,_that.destination,_that.status,_that.createdAt,_that.orderNumber);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RefundModel implements RefundModel {
  const _RefundModel({required this.id, required this.title, required this.amount, required this.destination, required this.status, required this.createdAt, this.orderNumber});
  factory _RefundModel.fromJson(Map<String, dynamic> json) => _$RefundModelFromJson(json);

@override final  String id;
@override final  String title;
@override final  int amount;
/// balance, card, cash.
@override final  String destination;
/// created, approved, paid.
@override final  String status;
@override final  DateTime createdAt;
@override final  String? orderNumber;

/// Create a copy of RefundModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RefundModelCopyWith<_RefundModel> get copyWith => __$RefundModelCopyWithImpl<_RefundModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RefundModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RefundModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.destination, destination) || other.destination == destination)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.orderNumber, orderNumber) || other.orderNumber == orderNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,amount,destination,status,createdAt,orderNumber);

@override
String toString() {
  return 'RefundModel(id: $id, title: $title, amount: $amount, destination: $destination, status: $status, createdAt: $createdAt, orderNumber: $orderNumber)';
}


}

/// @nodoc
abstract mixin class _$RefundModelCopyWith<$Res> implements $RefundModelCopyWith<$Res> {
  factory _$RefundModelCopyWith(_RefundModel value, $Res Function(_RefundModel) _then) = __$RefundModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, int amount, String destination, String status, DateTime createdAt, String? orderNumber
});




}
/// @nodoc
class __$RefundModelCopyWithImpl<$Res>
    implements _$RefundModelCopyWith<$Res> {
  __$RefundModelCopyWithImpl(this._self, this._then);

  final _RefundModel _self;
  final $Res Function(_RefundModel) _then;

/// Create a copy of RefundModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? amount = null,Object? destination = null,Object? status = null,Object? createdAt = null,Object? orderNumber = freezed,}) {
  return _then(_RefundModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,destination: null == destination ? _self.destination : destination // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,orderNumber: freezed == orderNumber ? _self.orderNumber : orderNumber // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
