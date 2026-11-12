// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StatusModel {

 String get code; String get title;
/// Create a copy of StatusModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StatusModelCopyWith<StatusModel> get copyWith => _$StatusModelCopyWithImpl<StatusModel>(this as StatusModel, _$identity);

  /// Serializes this StatusModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StatusModel&&(identical(other.code, code) || other.code == code)&&(identical(other.title, title) || other.title == title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,title);

@override
String toString() {
  return 'StatusModel(code: $code, title: $title)';
}


}

/// @nodoc
abstract mixin class $StatusModelCopyWith<$Res>  {
  factory $StatusModelCopyWith(StatusModel value, $Res Function(StatusModel) _then) = _$StatusModelCopyWithImpl;
@useResult
$Res call({
 String code, String title
});




}
/// @nodoc
class _$StatusModelCopyWithImpl<$Res>
    implements $StatusModelCopyWith<$Res> {
  _$StatusModelCopyWithImpl(this._self, this._then);

  final StatusModel _self;
  final $Res Function(StatusModel) _then;

/// Create a copy of StatusModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,Object? title = null,}) {
  return _then(_self.copyWith(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [StatusModel].
extension StatusModelPatterns on StatusModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StatusModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StatusModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StatusModel value)  $default,){
final _that = this;
switch (_that) {
case _StatusModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StatusModel value)?  $default,){
final _that = this;
switch (_that) {
case _StatusModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String code,  String title)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StatusModel() when $default != null:
return $default(_that.code,_that.title);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String code,  String title)  $default,) {final _that = this;
switch (_that) {
case _StatusModel():
return $default(_that.code,_that.title);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String code,  String title)?  $default,) {final _that = this;
switch (_that) {
case _StatusModel() when $default != null:
return $default(_that.code,_that.title);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StatusModel implements StatusModel {
  const _StatusModel({required this.code, required this.title});
  factory _StatusModel.fromJson(Map<String, dynamic> json) => _$StatusModelFromJson(json);

@override final  String code;
@override final  String title;

/// Create a copy of StatusModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StatusModelCopyWith<_StatusModel> get copyWith => __$StatusModelCopyWithImpl<_StatusModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StatusModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StatusModel&&(identical(other.code, code) || other.code == code)&&(identical(other.title, title) || other.title == title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,title);

@override
String toString() {
  return 'StatusModel(code: $code, title: $title)';
}


}

/// @nodoc
abstract mixin class _$StatusModelCopyWith<$Res> implements $StatusModelCopyWith<$Res> {
  factory _$StatusModelCopyWith(_StatusModel value, $Res Function(_StatusModel) _then) = __$StatusModelCopyWithImpl;
@override @useResult
$Res call({
 String code, String title
});




}
/// @nodoc
class __$StatusModelCopyWithImpl<$Res>
    implements _$StatusModelCopyWith<$Res> {
  __$StatusModelCopyWithImpl(this._self, this._then);

  final _StatusModel _self;
  final $Res Function(_StatusModel) _then;

/// Create a copy of StatusModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? title = null,}) {
  return _then(_StatusModel(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$OrdersResponseModel {

 List<OrderSummaryModel> get orders;
/// Create a copy of OrdersResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrdersResponseModelCopyWith<OrdersResponseModel> get copyWith => _$OrdersResponseModelCopyWithImpl<OrdersResponseModel>(this as OrdersResponseModel, _$identity);

  /// Serializes this OrdersResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrdersResponseModel&&const DeepCollectionEquality().equals(other.orders, orders));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(orders));

@override
String toString() {
  return 'OrdersResponseModel(orders: $orders)';
}


}

/// @nodoc
abstract mixin class $OrdersResponseModelCopyWith<$Res>  {
  factory $OrdersResponseModelCopyWith(OrdersResponseModel value, $Res Function(OrdersResponseModel) _then) = _$OrdersResponseModelCopyWithImpl;
@useResult
$Res call({
 List<OrderSummaryModel> orders
});




}
/// @nodoc
class _$OrdersResponseModelCopyWithImpl<$Res>
    implements $OrdersResponseModelCopyWith<$Res> {
  _$OrdersResponseModelCopyWithImpl(this._self, this._then);

  final OrdersResponseModel _self;
  final $Res Function(OrdersResponseModel) _then;

/// Create a copy of OrdersResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? orders = null,}) {
  return _then(_self.copyWith(
orders: null == orders ? _self.orders : orders // ignore: cast_nullable_to_non_nullable
as List<OrderSummaryModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [OrdersResponseModel].
extension OrdersResponseModelPatterns on OrdersResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrdersResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrdersResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrdersResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _OrdersResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrdersResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _OrdersResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<OrderSummaryModel> orders)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrdersResponseModel() when $default != null:
return $default(_that.orders);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<OrderSummaryModel> orders)  $default,) {final _that = this;
switch (_that) {
case _OrdersResponseModel():
return $default(_that.orders);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<OrderSummaryModel> orders)?  $default,) {final _that = this;
switch (_that) {
case _OrdersResponseModel() when $default != null:
return $default(_that.orders);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrdersResponseModel implements OrdersResponseModel {
  const _OrdersResponseModel({required final  List<OrderSummaryModel> orders}): _orders = orders;
  factory _OrdersResponseModel.fromJson(Map<String, dynamic> json) => _$OrdersResponseModelFromJson(json);

 final  List<OrderSummaryModel> _orders;
@override List<OrderSummaryModel> get orders {
  if (_orders is EqualUnmodifiableListView) return _orders;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_orders);
}


/// Create a copy of OrdersResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrdersResponseModelCopyWith<_OrdersResponseModel> get copyWith => __$OrdersResponseModelCopyWithImpl<_OrdersResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrdersResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrdersResponseModel&&const DeepCollectionEquality().equals(other._orders, _orders));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_orders));

@override
String toString() {
  return 'OrdersResponseModel(orders: $orders)';
}


}

/// @nodoc
abstract mixin class _$OrdersResponseModelCopyWith<$Res> implements $OrdersResponseModelCopyWith<$Res> {
  factory _$OrdersResponseModelCopyWith(_OrdersResponseModel value, $Res Function(_OrdersResponseModel) _then) = __$OrdersResponseModelCopyWithImpl;
@override @useResult
$Res call({
 List<OrderSummaryModel> orders
});




}
/// @nodoc
class __$OrdersResponseModelCopyWithImpl<$Res>
    implements _$OrdersResponseModelCopyWith<$Res> {
  __$OrdersResponseModelCopyWithImpl(this._self, this._then);

  final _OrdersResponseModel _self;
  final $Res Function(_OrdersResponseModel) _then;

/// Create a copy of OrdersResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? orders = null,}) {
  return _then(_OrdersResponseModel(
orders: null == orders ? _self._orders : orders // ignore: cast_nullable_to_non_nullable
as List<OrderSummaryModel>,
  ));
}


}


/// @nodoc
mixin _$OrderSummaryModel {

 String get number; String get createdAt; StatusModel get status; int get total; int get itemCount; List<String> get previews; bool get canRepeat;
/// Create a copy of OrderSummaryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderSummaryModelCopyWith<OrderSummaryModel> get copyWith => _$OrderSummaryModelCopyWithImpl<OrderSummaryModel>(this as OrderSummaryModel, _$identity);

  /// Serializes this OrderSummaryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderSummaryModel&&(identical(other.number, number) || other.number == number)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.status, status) || other.status == status)&&(identical(other.total, total) || other.total == total)&&(identical(other.itemCount, itemCount) || other.itemCount == itemCount)&&const DeepCollectionEquality().equals(other.previews, previews)&&(identical(other.canRepeat, canRepeat) || other.canRepeat == canRepeat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,number,createdAt,status,total,itemCount,const DeepCollectionEquality().hash(previews),canRepeat);

@override
String toString() {
  return 'OrderSummaryModel(number: $number, createdAt: $createdAt, status: $status, total: $total, itemCount: $itemCount, previews: $previews, canRepeat: $canRepeat)';
}


}

/// @nodoc
abstract mixin class $OrderSummaryModelCopyWith<$Res>  {
  factory $OrderSummaryModelCopyWith(OrderSummaryModel value, $Res Function(OrderSummaryModel) _then) = _$OrderSummaryModelCopyWithImpl;
@useResult
$Res call({
 String number, String createdAt, StatusModel status, int total, int itemCount, List<String> previews, bool canRepeat
});


$StatusModelCopyWith<$Res> get status;

}
/// @nodoc
class _$OrderSummaryModelCopyWithImpl<$Res>
    implements $OrderSummaryModelCopyWith<$Res> {
  _$OrderSummaryModelCopyWithImpl(this._self, this._then);

  final OrderSummaryModel _self;
  final $Res Function(OrderSummaryModel) _then;

/// Create a copy of OrderSummaryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? number = null,Object? createdAt = null,Object? status = null,Object? total = null,Object? itemCount = null,Object? previews = null,Object? canRepeat = null,}) {
  return _then(_self.copyWith(
number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StatusModel,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,itemCount: null == itemCount ? _self.itemCount : itemCount // ignore: cast_nullable_to_non_nullable
as int,previews: null == previews ? _self.previews : previews // ignore: cast_nullable_to_non_nullable
as List<String>,canRepeat: null == canRepeat ? _self.canRepeat : canRepeat // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of OrderSummaryModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatusModelCopyWith<$Res> get status {
  
  return $StatusModelCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}


/// Adds pattern-matching-related methods to [OrderSummaryModel].
extension OrderSummaryModelPatterns on OrderSummaryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderSummaryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderSummaryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderSummaryModel value)  $default,){
final _that = this;
switch (_that) {
case _OrderSummaryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderSummaryModel value)?  $default,){
final _that = this;
switch (_that) {
case _OrderSummaryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String number,  String createdAt,  StatusModel status,  int total,  int itemCount,  List<String> previews,  bool canRepeat)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderSummaryModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String number,  String createdAt,  StatusModel status,  int total,  int itemCount,  List<String> previews,  bool canRepeat)  $default,) {final _that = this;
switch (_that) {
case _OrderSummaryModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String number,  String createdAt,  StatusModel status,  int total,  int itemCount,  List<String> previews,  bool canRepeat)?  $default,) {final _that = this;
switch (_that) {
case _OrderSummaryModel() when $default != null:
return $default(_that.number,_that.createdAt,_that.status,_that.total,_that.itemCount,_that.previews,_that.canRepeat);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderSummaryModel implements OrderSummaryModel {
  const _OrderSummaryModel({required this.number, required this.createdAt, required this.status, required this.total, required this.itemCount, final  List<String> previews = const <String>[], this.canRepeat = false}): _previews = previews;
  factory _OrderSummaryModel.fromJson(Map<String, dynamic> json) => _$OrderSummaryModelFromJson(json);

@override final  String number;
@override final  String createdAt;
@override final  StatusModel status;
@override final  int total;
@override final  int itemCount;
 final  List<String> _previews;
@override@JsonKey() List<String> get previews {
  if (_previews is EqualUnmodifiableListView) return _previews;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_previews);
}

@override@JsonKey() final  bool canRepeat;

/// Create a copy of OrderSummaryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderSummaryModelCopyWith<_OrderSummaryModel> get copyWith => __$OrderSummaryModelCopyWithImpl<_OrderSummaryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderSummaryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderSummaryModel&&(identical(other.number, number) || other.number == number)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.status, status) || other.status == status)&&(identical(other.total, total) || other.total == total)&&(identical(other.itemCount, itemCount) || other.itemCount == itemCount)&&const DeepCollectionEquality().equals(other._previews, _previews)&&(identical(other.canRepeat, canRepeat) || other.canRepeat == canRepeat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,number,createdAt,status,total,itemCount,const DeepCollectionEquality().hash(_previews),canRepeat);

@override
String toString() {
  return 'OrderSummaryModel(number: $number, createdAt: $createdAt, status: $status, total: $total, itemCount: $itemCount, previews: $previews, canRepeat: $canRepeat)';
}


}

/// @nodoc
abstract mixin class _$OrderSummaryModelCopyWith<$Res> implements $OrderSummaryModelCopyWith<$Res> {
  factory _$OrderSummaryModelCopyWith(_OrderSummaryModel value, $Res Function(_OrderSummaryModel) _then) = __$OrderSummaryModelCopyWithImpl;
@override @useResult
$Res call({
 String number, String createdAt, StatusModel status, int total, int itemCount, List<String> previews, bool canRepeat
});


@override $StatusModelCopyWith<$Res> get status;

}
/// @nodoc
class __$OrderSummaryModelCopyWithImpl<$Res>
    implements _$OrderSummaryModelCopyWith<$Res> {
  __$OrderSummaryModelCopyWithImpl(this._self, this._then);

  final _OrderSummaryModel _self;
  final $Res Function(_OrderSummaryModel) _then;

/// Create a copy of OrderSummaryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? number = null,Object? createdAt = null,Object? status = null,Object? total = null,Object? itemCount = null,Object? previews = null,Object? canRepeat = null,}) {
  return _then(_OrderSummaryModel(
number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StatusModel,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,itemCount: null == itemCount ? _self.itemCount : itemCount // ignore: cast_nullable_to_non_nullable
as int,previews: null == previews ? _self._previews : previews // ignore: cast_nullable_to_non_nullable
as List<String>,canRepeat: null == canRepeat ? _self.canRepeat : canRepeat // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of OrderSummaryModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatusModelCopyWith<$Res> get status {
  
  return $StatusModelCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}


/// @nodoc
mixin _$OrderDetailsModel {

 String get number; String get createdAt; StatusModel get status; String get statusText; List<OrderItemModel> get items; List<StatusEventModel> get history; OrderMoneyModel get money; String get receiving; String get deliveryTypeName; bool get canPay; String? get payDeadline; bool get canCancel; String? get cancelNote; String? get refundTo; List<CancelReasonModel> get cancelReasons; List<ParcelLinkModel> get parcels; bool get canRepeat;
/// Create a copy of OrderDetailsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderDetailsModelCopyWith<OrderDetailsModel> get copyWith => _$OrderDetailsModelCopyWithImpl<OrderDetailsModel>(this as OrderDetailsModel, _$identity);

  /// Serializes this OrderDetailsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderDetailsModel&&(identical(other.number, number) || other.number == number)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.status, status) || other.status == status)&&(identical(other.statusText, statusText) || other.statusText == statusText)&&const DeepCollectionEquality().equals(other.items, items)&&const DeepCollectionEquality().equals(other.history, history)&&(identical(other.money, money) || other.money == money)&&(identical(other.receiving, receiving) || other.receiving == receiving)&&(identical(other.deliveryTypeName, deliveryTypeName) || other.deliveryTypeName == deliveryTypeName)&&(identical(other.canPay, canPay) || other.canPay == canPay)&&(identical(other.payDeadline, payDeadline) || other.payDeadline == payDeadline)&&(identical(other.canCancel, canCancel) || other.canCancel == canCancel)&&(identical(other.cancelNote, cancelNote) || other.cancelNote == cancelNote)&&(identical(other.refundTo, refundTo) || other.refundTo == refundTo)&&const DeepCollectionEquality().equals(other.cancelReasons, cancelReasons)&&const DeepCollectionEquality().equals(other.parcels, parcels)&&(identical(other.canRepeat, canRepeat) || other.canRepeat == canRepeat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,number,createdAt,status,statusText,const DeepCollectionEquality().hash(items),const DeepCollectionEquality().hash(history),money,receiving,deliveryTypeName,canPay,payDeadline,canCancel,cancelNote,refundTo,const DeepCollectionEquality().hash(cancelReasons),const DeepCollectionEquality().hash(parcels),canRepeat);

@override
String toString() {
  return 'OrderDetailsModel(number: $number, createdAt: $createdAt, status: $status, statusText: $statusText, items: $items, history: $history, money: $money, receiving: $receiving, deliveryTypeName: $deliveryTypeName, canPay: $canPay, payDeadline: $payDeadline, canCancel: $canCancel, cancelNote: $cancelNote, refundTo: $refundTo, cancelReasons: $cancelReasons, parcels: $parcels, canRepeat: $canRepeat)';
}


}

/// @nodoc
abstract mixin class $OrderDetailsModelCopyWith<$Res>  {
  factory $OrderDetailsModelCopyWith(OrderDetailsModel value, $Res Function(OrderDetailsModel) _then) = _$OrderDetailsModelCopyWithImpl;
@useResult
$Res call({
 String number, String createdAt, StatusModel status, String statusText, List<OrderItemModel> items, List<StatusEventModel> history, OrderMoneyModel money, String receiving, String deliveryTypeName, bool canPay, String? payDeadline, bool canCancel, String? cancelNote, String? refundTo, List<CancelReasonModel> cancelReasons, List<ParcelLinkModel> parcels, bool canRepeat
});


$StatusModelCopyWith<$Res> get status;$OrderMoneyModelCopyWith<$Res> get money;

}
/// @nodoc
class _$OrderDetailsModelCopyWithImpl<$Res>
    implements $OrderDetailsModelCopyWith<$Res> {
  _$OrderDetailsModelCopyWithImpl(this._self, this._then);

  final OrderDetailsModel _self;
  final $Res Function(OrderDetailsModel) _then;

/// Create a copy of OrderDetailsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? number = null,Object? createdAt = null,Object? status = null,Object? statusText = null,Object? items = null,Object? history = null,Object? money = null,Object? receiving = null,Object? deliveryTypeName = null,Object? canPay = null,Object? payDeadline = freezed,Object? canCancel = null,Object? cancelNote = freezed,Object? refundTo = freezed,Object? cancelReasons = null,Object? parcels = null,Object? canRepeat = null,}) {
  return _then(_self.copyWith(
number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StatusModel,statusText: null == statusText ? _self.statusText : statusText // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<OrderItemModel>,history: null == history ? _self.history : history // ignore: cast_nullable_to_non_nullable
as List<StatusEventModel>,money: null == money ? _self.money : money // ignore: cast_nullable_to_non_nullable
as OrderMoneyModel,receiving: null == receiving ? _self.receiving : receiving // ignore: cast_nullable_to_non_nullable
as String,deliveryTypeName: null == deliveryTypeName ? _self.deliveryTypeName : deliveryTypeName // ignore: cast_nullable_to_non_nullable
as String,canPay: null == canPay ? _self.canPay : canPay // ignore: cast_nullable_to_non_nullable
as bool,payDeadline: freezed == payDeadline ? _self.payDeadline : payDeadline // ignore: cast_nullable_to_non_nullable
as String?,canCancel: null == canCancel ? _self.canCancel : canCancel // ignore: cast_nullable_to_non_nullable
as bool,cancelNote: freezed == cancelNote ? _self.cancelNote : cancelNote // ignore: cast_nullable_to_non_nullable
as String?,refundTo: freezed == refundTo ? _self.refundTo : refundTo // ignore: cast_nullable_to_non_nullable
as String?,cancelReasons: null == cancelReasons ? _self.cancelReasons : cancelReasons // ignore: cast_nullable_to_non_nullable
as List<CancelReasonModel>,parcels: null == parcels ? _self.parcels : parcels // ignore: cast_nullable_to_non_nullable
as List<ParcelLinkModel>,canRepeat: null == canRepeat ? _self.canRepeat : canRepeat // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of OrderDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatusModelCopyWith<$Res> get status {
  
  return $StatusModelCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of OrderDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderMoneyModelCopyWith<$Res> get money {
  
  return $OrderMoneyModelCopyWith<$Res>(_self.money, (value) {
    return _then(_self.copyWith(money: value));
  });
}
}


/// Adds pattern-matching-related methods to [OrderDetailsModel].
extension OrderDetailsModelPatterns on OrderDetailsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderDetailsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderDetailsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderDetailsModel value)  $default,){
final _that = this;
switch (_that) {
case _OrderDetailsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderDetailsModel value)?  $default,){
final _that = this;
switch (_that) {
case _OrderDetailsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String number,  String createdAt,  StatusModel status,  String statusText,  List<OrderItemModel> items,  List<StatusEventModel> history,  OrderMoneyModel money,  String receiving,  String deliveryTypeName,  bool canPay,  String? payDeadline,  bool canCancel,  String? cancelNote,  String? refundTo,  List<CancelReasonModel> cancelReasons,  List<ParcelLinkModel> parcels,  bool canRepeat)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderDetailsModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String number,  String createdAt,  StatusModel status,  String statusText,  List<OrderItemModel> items,  List<StatusEventModel> history,  OrderMoneyModel money,  String receiving,  String deliveryTypeName,  bool canPay,  String? payDeadline,  bool canCancel,  String? cancelNote,  String? refundTo,  List<CancelReasonModel> cancelReasons,  List<ParcelLinkModel> parcels,  bool canRepeat)  $default,) {final _that = this;
switch (_that) {
case _OrderDetailsModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String number,  String createdAt,  StatusModel status,  String statusText,  List<OrderItemModel> items,  List<StatusEventModel> history,  OrderMoneyModel money,  String receiving,  String deliveryTypeName,  bool canPay,  String? payDeadline,  bool canCancel,  String? cancelNote,  String? refundTo,  List<CancelReasonModel> cancelReasons,  List<ParcelLinkModel> parcels,  bool canRepeat)?  $default,) {final _that = this;
switch (_that) {
case _OrderDetailsModel() when $default != null:
return $default(_that.number,_that.createdAt,_that.status,_that.statusText,_that.items,_that.history,_that.money,_that.receiving,_that.deliveryTypeName,_that.canPay,_that.payDeadline,_that.canCancel,_that.cancelNote,_that.refundTo,_that.cancelReasons,_that.parcels,_that.canRepeat);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderDetailsModel implements OrderDetailsModel {
  const _OrderDetailsModel({required this.number, required this.createdAt, required this.status, this.statusText = '', required final  List<OrderItemModel> items, final  List<StatusEventModel> history = const <StatusEventModel>[], required this.money, this.receiving = '', this.deliveryTypeName = '', this.canPay = false, this.payDeadline, this.canCancel = false, this.cancelNote, this.refundTo, final  List<CancelReasonModel> cancelReasons = const <CancelReasonModel>[], final  List<ParcelLinkModel> parcels = const <ParcelLinkModel>[], this.canRepeat = false}): _items = items,_history = history,_cancelReasons = cancelReasons,_parcels = parcels;
  factory _OrderDetailsModel.fromJson(Map<String, dynamic> json) => _$OrderDetailsModelFromJson(json);

@override final  String number;
@override final  String createdAt;
@override final  StatusModel status;
@override@JsonKey() final  String statusText;
 final  List<OrderItemModel> _items;
@override List<OrderItemModel> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

 final  List<StatusEventModel> _history;
@override@JsonKey() List<StatusEventModel> get history {
  if (_history is EqualUnmodifiableListView) return _history;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_history);
}

@override final  OrderMoneyModel money;
@override@JsonKey() final  String receiving;
@override@JsonKey() final  String deliveryTypeName;
@override@JsonKey() final  bool canPay;
@override final  String? payDeadline;
@override@JsonKey() final  bool canCancel;
@override final  String? cancelNote;
@override final  String? refundTo;
 final  List<CancelReasonModel> _cancelReasons;
@override@JsonKey() List<CancelReasonModel> get cancelReasons {
  if (_cancelReasons is EqualUnmodifiableListView) return _cancelReasons;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cancelReasons);
}

 final  List<ParcelLinkModel> _parcels;
@override@JsonKey() List<ParcelLinkModel> get parcels {
  if (_parcels is EqualUnmodifiableListView) return _parcels;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_parcels);
}

@override@JsonKey() final  bool canRepeat;

/// Create a copy of OrderDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderDetailsModelCopyWith<_OrderDetailsModel> get copyWith => __$OrderDetailsModelCopyWithImpl<_OrderDetailsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderDetailsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderDetailsModel&&(identical(other.number, number) || other.number == number)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.status, status) || other.status == status)&&(identical(other.statusText, statusText) || other.statusText == statusText)&&const DeepCollectionEquality().equals(other._items, _items)&&const DeepCollectionEquality().equals(other._history, _history)&&(identical(other.money, money) || other.money == money)&&(identical(other.receiving, receiving) || other.receiving == receiving)&&(identical(other.deliveryTypeName, deliveryTypeName) || other.deliveryTypeName == deliveryTypeName)&&(identical(other.canPay, canPay) || other.canPay == canPay)&&(identical(other.payDeadline, payDeadline) || other.payDeadline == payDeadline)&&(identical(other.canCancel, canCancel) || other.canCancel == canCancel)&&(identical(other.cancelNote, cancelNote) || other.cancelNote == cancelNote)&&(identical(other.refundTo, refundTo) || other.refundTo == refundTo)&&const DeepCollectionEquality().equals(other._cancelReasons, _cancelReasons)&&const DeepCollectionEquality().equals(other._parcels, _parcels)&&(identical(other.canRepeat, canRepeat) || other.canRepeat == canRepeat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,number,createdAt,status,statusText,const DeepCollectionEquality().hash(_items),const DeepCollectionEquality().hash(_history),money,receiving,deliveryTypeName,canPay,payDeadline,canCancel,cancelNote,refundTo,const DeepCollectionEquality().hash(_cancelReasons),const DeepCollectionEquality().hash(_parcels),canRepeat);

@override
String toString() {
  return 'OrderDetailsModel(number: $number, createdAt: $createdAt, status: $status, statusText: $statusText, items: $items, history: $history, money: $money, receiving: $receiving, deliveryTypeName: $deliveryTypeName, canPay: $canPay, payDeadline: $payDeadline, canCancel: $canCancel, cancelNote: $cancelNote, refundTo: $refundTo, cancelReasons: $cancelReasons, parcels: $parcels, canRepeat: $canRepeat)';
}


}

/// @nodoc
abstract mixin class _$OrderDetailsModelCopyWith<$Res> implements $OrderDetailsModelCopyWith<$Res> {
  factory _$OrderDetailsModelCopyWith(_OrderDetailsModel value, $Res Function(_OrderDetailsModel) _then) = __$OrderDetailsModelCopyWithImpl;
@override @useResult
$Res call({
 String number, String createdAt, StatusModel status, String statusText, List<OrderItemModel> items, List<StatusEventModel> history, OrderMoneyModel money, String receiving, String deliveryTypeName, bool canPay, String? payDeadline, bool canCancel, String? cancelNote, String? refundTo, List<CancelReasonModel> cancelReasons, List<ParcelLinkModel> parcels, bool canRepeat
});


@override $StatusModelCopyWith<$Res> get status;@override $OrderMoneyModelCopyWith<$Res> get money;

}
/// @nodoc
class __$OrderDetailsModelCopyWithImpl<$Res>
    implements _$OrderDetailsModelCopyWith<$Res> {
  __$OrderDetailsModelCopyWithImpl(this._self, this._then);

  final _OrderDetailsModel _self;
  final $Res Function(_OrderDetailsModel) _then;

/// Create a copy of OrderDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? number = null,Object? createdAt = null,Object? status = null,Object? statusText = null,Object? items = null,Object? history = null,Object? money = null,Object? receiving = null,Object? deliveryTypeName = null,Object? canPay = null,Object? payDeadline = freezed,Object? canCancel = null,Object? cancelNote = freezed,Object? refundTo = freezed,Object? cancelReasons = null,Object? parcels = null,Object? canRepeat = null,}) {
  return _then(_OrderDetailsModel(
number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StatusModel,statusText: null == statusText ? _self.statusText : statusText // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<OrderItemModel>,history: null == history ? _self._history : history // ignore: cast_nullable_to_non_nullable
as List<StatusEventModel>,money: null == money ? _self.money : money // ignore: cast_nullable_to_non_nullable
as OrderMoneyModel,receiving: null == receiving ? _self.receiving : receiving // ignore: cast_nullable_to_non_nullable
as String,deliveryTypeName: null == deliveryTypeName ? _self.deliveryTypeName : deliveryTypeName // ignore: cast_nullable_to_non_nullable
as String,canPay: null == canPay ? _self.canPay : canPay // ignore: cast_nullable_to_non_nullable
as bool,payDeadline: freezed == payDeadline ? _self.payDeadline : payDeadline // ignore: cast_nullable_to_non_nullable
as String?,canCancel: null == canCancel ? _self.canCancel : canCancel // ignore: cast_nullable_to_non_nullable
as bool,cancelNote: freezed == cancelNote ? _self.cancelNote : cancelNote // ignore: cast_nullable_to_non_nullable
as String?,refundTo: freezed == refundTo ? _self.refundTo : refundTo // ignore: cast_nullable_to_non_nullable
as String?,cancelReasons: null == cancelReasons ? _self._cancelReasons : cancelReasons // ignore: cast_nullable_to_non_nullable
as List<CancelReasonModel>,parcels: null == parcels ? _self._parcels : parcels // ignore: cast_nullable_to_non_nullable
as List<ParcelLinkModel>,canRepeat: null == canRepeat ? _self.canRepeat : canRepeat // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of OrderDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatusModelCopyWith<$Res> get status {
  
  return $StatusModelCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of OrderDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderMoneyModelCopyWith<$Res> get money {
  
  return $OrderMoneyModelCopyWith<$Res>(_self.money, (value) {
    return _then(_self.copyWith(money: value));
  });
}
}


/// @nodoc
mixin _$OrderItemModel {

 String get id; String get productId; String get title; String get imageUrl; int get quantity; int get price; StatusModel get status; String? get options; List<String> get warehousePhotos; String? get chinaTrack; ItemProblemModel? get problem;
/// Create a copy of OrderItemModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderItemModelCopyWith<OrderItemModel> get copyWith => _$OrderItemModelCopyWithImpl<OrderItemModel>(this as OrderItemModel, _$identity);

  /// Serializes this OrderItemModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderItemModel&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.title, title) || other.title == title)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.price, price) || other.price == price)&&(identical(other.status, status) || other.status == status)&&(identical(other.options, options) || other.options == options)&&const DeepCollectionEquality().equals(other.warehousePhotos, warehousePhotos)&&(identical(other.chinaTrack, chinaTrack) || other.chinaTrack == chinaTrack)&&(identical(other.problem, problem) || other.problem == problem));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,productId,title,imageUrl,quantity,price,status,options,const DeepCollectionEquality().hash(warehousePhotos),chinaTrack,problem);

@override
String toString() {
  return 'OrderItemModel(id: $id, productId: $productId, title: $title, imageUrl: $imageUrl, quantity: $quantity, price: $price, status: $status, options: $options, warehousePhotos: $warehousePhotos, chinaTrack: $chinaTrack, problem: $problem)';
}


}

/// @nodoc
abstract mixin class $OrderItemModelCopyWith<$Res>  {
  factory $OrderItemModelCopyWith(OrderItemModel value, $Res Function(OrderItemModel) _then) = _$OrderItemModelCopyWithImpl;
@useResult
$Res call({
 String id, String productId, String title, String imageUrl, int quantity, int price, StatusModel status, String? options, List<String> warehousePhotos, String? chinaTrack, ItemProblemModel? problem
});


$StatusModelCopyWith<$Res> get status;$ItemProblemModelCopyWith<$Res>? get problem;

}
/// @nodoc
class _$OrderItemModelCopyWithImpl<$Res>
    implements $OrderItemModelCopyWith<$Res> {
  _$OrderItemModelCopyWithImpl(this._self, this._then);

  final OrderItemModel _self;
  final $Res Function(OrderItemModel) _then;

/// Create a copy of OrderItemModel
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
as StatusModel,options: freezed == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as String?,warehousePhotos: null == warehousePhotos ? _self.warehousePhotos : warehousePhotos // ignore: cast_nullable_to_non_nullable
as List<String>,chinaTrack: freezed == chinaTrack ? _self.chinaTrack : chinaTrack // ignore: cast_nullable_to_non_nullable
as String?,problem: freezed == problem ? _self.problem : problem // ignore: cast_nullable_to_non_nullable
as ItemProblemModel?,
  ));
}
/// Create a copy of OrderItemModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatusModelCopyWith<$Res> get status {
  
  return $StatusModelCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of OrderItemModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ItemProblemModelCopyWith<$Res>? get problem {
    if (_self.problem == null) {
    return null;
  }

  return $ItemProblemModelCopyWith<$Res>(_self.problem!, (value) {
    return _then(_self.copyWith(problem: value));
  });
}
}


/// Adds pattern-matching-related methods to [OrderItemModel].
extension OrderItemModelPatterns on OrderItemModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderItemModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderItemModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderItemModel value)  $default,){
final _that = this;
switch (_that) {
case _OrderItemModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderItemModel value)?  $default,){
final _that = this;
switch (_that) {
case _OrderItemModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String productId,  String title,  String imageUrl,  int quantity,  int price,  StatusModel status,  String? options,  List<String> warehousePhotos,  String? chinaTrack,  ItemProblemModel? problem)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderItemModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String productId,  String title,  String imageUrl,  int quantity,  int price,  StatusModel status,  String? options,  List<String> warehousePhotos,  String? chinaTrack,  ItemProblemModel? problem)  $default,) {final _that = this;
switch (_that) {
case _OrderItemModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String productId,  String title,  String imageUrl,  int quantity,  int price,  StatusModel status,  String? options,  List<String> warehousePhotos,  String? chinaTrack,  ItemProblemModel? problem)?  $default,) {final _that = this;
switch (_that) {
case _OrderItemModel() when $default != null:
return $default(_that.id,_that.productId,_that.title,_that.imageUrl,_that.quantity,_that.price,_that.status,_that.options,_that.warehousePhotos,_that.chinaTrack,_that.problem);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderItemModel implements OrderItemModel {
  const _OrderItemModel({required this.id, required this.productId, required this.title, this.imageUrl = '', required this.quantity, required this.price, required this.status, this.options, final  List<String> warehousePhotos = const <String>[], this.chinaTrack, this.problem}): _warehousePhotos = warehousePhotos;
  factory _OrderItemModel.fromJson(Map<String, dynamic> json) => _$OrderItemModelFromJson(json);

@override final  String id;
@override final  String productId;
@override final  String title;
@override@JsonKey() final  String imageUrl;
@override final  int quantity;
@override final  int price;
@override final  StatusModel status;
@override final  String? options;
 final  List<String> _warehousePhotos;
@override@JsonKey() List<String> get warehousePhotos {
  if (_warehousePhotos is EqualUnmodifiableListView) return _warehousePhotos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_warehousePhotos);
}

@override final  String? chinaTrack;
@override final  ItemProblemModel? problem;

/// Create a copy of OrderItemModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderItemModelCopyWith<_OrderItemModel> get copyWith => __$OrderItemModelCopyWithImpl<_OrderItemModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderItemModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderItemModel&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.title, title) || other.title == title)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.price, price) || other.price == price)&&(identical(other.status, status) || other.status == status)&&(identical(other.options, options) || other.options == options)&&const DeepCollectionEquality().equals(other._warehousePhotos, _warehousePhotos)&&(identical(other.chinaTrack, chinaTrack) || other.chinaTrack == chinaTrack)&&(identical(other.problem, problem) || other.problem == problem));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,productId,title,imageUrl,quantity,price,status,options,const DeepCollectionEquality().hash(_warehousePhotos),chinaTrack,problem);

@override
String toString() {
  return 'OrderItemModel(id: $id, productId: $productId, title: $title, imageUrl: $imageUrl, quantity: $quantity, price: $price, status: $status, options: $options, warehousePhotos: $warehousePhotos, chinaTrack: $chinaTrack, problem: $problem)';
}


}

/// @nodoc
abstract mixin class _$OrderItemModelCopyWith<$Res> implements $OrderItemModelCopyWith<$Res> {
  factory _$OrderItemModelCopyWith(_OrderItemModel value, $Res Function(_OrderItemModel) _then) = __$OrderItemModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String productId, String title, String imageUrl, int quantity, int price, StatusModel status, String? options, List<String> warehousePhotos, String? chinaTrack, ItemProblemModel? problem
});


@override $StatusModelCopyWith<$Res> get status;@override $ItemProblemModelCopyWith<$Res>? get problem;

}
/// @nodoc
class __$OrderItemModelCopyWithImpl<$Res>
    implements _$OrderItemModelCopyWith<$Res> {
  __$OrderItemModelCopyWithImpl(this._self, this._then);

  final _OrderItemModel _self;
  final $Res Function(_OrderItemModel) _then;

/// Create a copy of OrderItemModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? productId = null,Object? title = null,Object? imageUrl = null,Object? quantity = null,Object? price = null,Object? status = null,Object? options = freezed,Object? warehousePhotos = null,Object? chinaTrack = freezed,Object? problem = freezed,}) {
  return _then(_OrderItemModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StatusModel,options: freezed == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as String?,warehousePhotos: null == warehousePhotos ? _self._warehousePhotos : warehousePhotos // ignore: cast_nullable_to_non_nullable
as List<String>,chinaTrack: freezed == chinaTrack ? _self.chinaTrack : chinaTrack // ignore: cast_nullable_to_non_nullable
as String?,problem: freezed == problem ? _self.problem : problem // ignore: cast_nullable_to_non_nullable
as ItemProblemModel?,
  ));
}

/// Create a copy of OrderItemModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatusModelCopyWith<$Res> get status {
  
  return $StatusModelCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of OrderItemModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ItemProblemModelCopyWith<$Res>? get problem {
    if (_self.problem == null) {
    return null;
  }

  return $ItemProblemModelCopyWith<$Res>(_self.problem!, (value) {
    return _then(_self.copyWith(problem: value));
  });
}
}


/// @nodoc
mixin _$ItemProblemModel {

 String get title; String get description; List<ProblemActionModel> get actions; List<String> get photos; String? get deadline;
/// Create a copy of ItemProblemModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemProblemModelCopyWith<ItemProblemModel> get copyWith => _$ItemProblemModelCopyWithImpl<ItemProblemModel>(this as ItemProblemModel, _$identity);

  /// Serializes this ItemProblemModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemProblemModel&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.actions, actions)&&const DeepCollectionEquality().equals(other.photos, photos)&&(identical(other.deadline, deadline) || other.deadline == deadline));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,description,const DeepCollectionEquality().hash(actions),const DeepCollectionEquality().hash(photos),deadline);

@override
String toString() {
  return 'ItemProblemModel(title: $title, description: $description, actions: $actions, photos: $photos, deadline: $deadline)';
}


}

/// @nodoc
abstract mixin class $ItemProblemModelCopyWith<$Res>  {
  factory $ItemProblemModelCopyWith(ItemProblemModel value, $Res Function(ItemProblemModel) _then) = _$ItemProblemModelCopyWithImpl;
@useResult
$Res call({
 String title, String description, List<ProblemActionModel> actions, List<String> photos, String? deadline
});




}
/// @nodoc
class _$ItemProblemModelCopyWithImpl<$Res>
    implements $ItemProblemModelCopyWith<$Res> {
  _$ItemProblemModelCopyWithImpl(this._self, this._then);

  final ItemProblemModel _self;
  final $Res Function(ItemProblemModel) _then;

/// Create a copy of ItemProblemModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? description = null,Object? actions = null,Object? photos = null,Object? deadline = freezed,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,actions: null == actions ? _self.actions : actions // ignore: cast_nullable_to_non_nullable
as List<ProblemActionModel>,photos: null == photos ? _self.photos : photos // ignore: cast_nullable_to_non_nullable
as List<String>,deadline: freezed == deadline ? _self.deadline : deadline // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ItemProblemModel].
extension ItemProblemModelPatterns on ItemProblemModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ItemProblemModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ItemProblemModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ItemProblemModel value)  $default,){
final _that = this;
switch (_that) {
case _ItemProblemModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ItemProblemModel value)?  $default,){
final _that = this;
switch (_that) {
case _ItemProblemModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String description,  List<ProblemActionModel> actions,  List<String> photos,  String? deadline)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ItemProblemModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String description,  List<ProblemActionModel> actions,  List<String> photos,  String? deadline)  $default,) {final _that = this;
switch (_that) {
case _ItemProblemModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String description,  List<ProblemActionModel> actions,  List<String> photos,  String? deadline)?  $default,) {final _that = this;
switch (_that) {
case _ItemProblemModel() when $default != null:
return $default(_that.title,_that.description,_that.actions,_that.photos,_that.deadline);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ItemProblemModel implements ItemProblemModel {
  const _ItemProblemModel({required this.title, required this.description, final  List<ProblemActionModel> actions = const <ProblemActionModel>[], final  List<String> photos = const <String>[], this.deadline}): _actions = actions,_photos = photos;
  factory _ItemProblemModel.fromJson(Map<String, dynamic> json) => _$ItemProblemModelFromJson(json);

@override final  String title;
@override final  String description;
 final  List<ProblemActionModel> _actions;
@override@JsonKey() List<ProblemActionModel> get actions {
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

@override final  String? deadline;

/// Create a copy of ItemProblemModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ItemProblemModelCopyWith<_ItemProblemModel> get copyWith => __$ItemProblemModelCopyWithImpl<_ItemProblemModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ItemProblemModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ItemProblemModel&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._actions, _actions)&&const DeepCollectionEquality().equals(other._photos, _photos)&&(identical(other.deadline, deadline) || other.deadline == deadline));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,description,const DeepCollectionEquality().hash(_actions),const DeepCollectionEquality().hash(_photos),deadline);

@override
String toString() {
  return 'ItemProblemModel(title: $title, description: $description, actions: $actions, photos: $photos, deadline: $deadline)';
}


}

/// @nodoc
abstract mixin class _$ItemProblemModelCopyWith<$Res> implements $ItemProblemModelCopyWith<$Res> {
  factory _$ItemProblemModelCopyWith(_ItemProblemModel value, $Res Function(_ItemProblemModel) _then) = __$ItemProblemModelCopyWithImpl;
@override @useResult
$Res call({
 String title, String description, List<ProblemActionModel> actions, List<String> photos, String? deadline
});




}
/// @nodoc
class __$ItemProblemModelCopyWithImpl<$Res>
    implements _$ItemProblemModelCopyWith<$Res> {
  __$ItemProblemModelCopyWithImpl(this._self, this._then);

  final _ItemProblemModel _self;
  final $Res Function(_ItemProblemModel) _then;

/// Create a copy of ItemProblemModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? description = null,Object? actions = null,Object? photos = null,Object? deadline = freezed,}) {
  return _then(_ItemProblemModel(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,actions: null == actions ? _self._actions : actions // ignore: cast_nullable_to_non_nullable
as List<ProblemActionModel>,photos: null == photos ? _self._photos : photos // ignore: cast_nullable_to_non_nullable
as List<String>,deadline: freezed == deadline ? _self.deadline : deadline // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ProblemActionModel {

 String get id; String get title; bool get isPrimary;
/// Create a copy of ProblemActionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProblemActionModelCopyWith<ProblemActionModel> get copyWith => _$ProblemActionModelCopyWithImpl<ProblemActionModel>(this as ProblemActionModel, _$identity);

  /// Serializes this ProblemActionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProblemActionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.isPrimary, isPrimary) || other.isPrimary == isPrimary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,isPrimary);

@override
String toString() {
  return 'ProblemActionModel(id: $id, title: $title, isPrimary: $isPrimary)';
}


}

/// @nodoc
abstract mixin class $ProblemActionModelCopyWith<$Res>  {
  factory $ProblemActionModelCopyWith(ProblemActionModel value, $Res Function(ProblemActionModel) _then) = _$ProblemActionModelCopyWithImpl;
@useResult
$Res call({
 String id, String title, bool isPrimary
});




}
/// @nodoc
class _$ProblemActionModelCopyWithImpl<$Res>
    implements $ProblemActionModelCopyWith<$Res> {
  _$ProblemActionModelCopyWithImpl(this._self, this._then);

  final ProblemActionModel _self;
  final $Res Function(ProblemActionModel) _then;

/// Create a copy of ProblemActionModel
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


/// Adds pattern-matching-related methods to [ProblemActionModel].
extension ProblemActionModelPatterns on ProblemActionModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProblemActionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProblemActionModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProblemActionModel value)  $default,){
final _that = this;
switch (_that) {
case _ProblemActionModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProblemActionModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProblemActionModel() when $default != null:
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
case _ProblemActionModel() when $default != null:
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
case _ProblemActionModel():
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
case _ProblemActionModel() when $default != null:
return $default(_that.id,_that.title,_that.isPrimary);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProblemActionModel implements ProblemActionModel {
  const _ProblemActionModel({required this.id, required this.title, this.isPrimary = false});
  factory _ProblemActionModel.fromJson(Map<String, dynamic> json) => _$ProblemActionModelFromJson(json);

@override final  String id;
@override final  String title;
@override@JsonKey() final  bool isPrimary;

/// Create a copy of ProblemActionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProblemActionModelCopyWith<_ProblemActionModel> get copyWith => __$ProblemActionModelCopyWithImpl<_ProblemActionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProblemActionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProblemActionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.isPrimary, isPrimary) || other.isPrimary == isPrimary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,isPrimary);

@override
String toString() {
  return 'ProblemActionModel(id: $id, title: $title, isPrimary: $isPrimary)';
}


}

/// @nodoc
abstract mixin class _$ProblemActionModelCopyWith<$Res> implements $ProblemActionModelCopyWith<$Res> {
  factory _$ProblemActionModelCopyWith(_ProblemActionModel value, $Res Function(_ProblemActionModel) _then) = __$ProblemActionModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, bool isPrimary
});




}
/// @nodoc
class __$ProblemActionModelCopyWithImpl<$Res>
    implements _$ProblemActionModelCopyWith<$Res> {
  __$ProblemActionModelCopyWithImpl(this._self, this._then);

  final _ProblemActionModel _self;
  final $Res Function(_ProblemActionModel) _then;

/// Create a copy of ProblemActionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? isPrimary = null,}) {
  return _then(_ProblemActionModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,isPrimary: null == isPrimary ? _self.isPrimary : isPrimary // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$StatusEventModel {

 String get title; String get at;
/// Create a copy of StatusEventModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StatusEventModelCopyWith<StatusEventModel> get copyWith => _$StatusEventModelCopyWithImpl<StatusEventModel>(this as StatusEventModel, _$identity);

  /// Serializes this StatusEventModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StatusEventModel&&(identical(other.title, title) || other.title == title)&&(identical(other.at, at) || other.at == at));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,at);

@override
String toString() {
  return 'StatusEventModel(title: $title, at: $at)';
}


}

/// @nodoc
abstract mixin class $StatusEventModelCopyWith<$Res>  {
  factory $StatusEventModelCopyWith(StatusEventModel value, $Res Function(StatusEventModel) _then) = _$StatusEventModelCopyWithImpl;
@useResult
$Res call({
 String title, String at
});




}
/// @nodoc
class _$StatusEventModelCopyWithImpl<$Res>
    implements $StatusEventModelCopyWith<$Res> {
  _$StatusEventModelCopyWithImpl(this._self, this._then);

  final StatusEventModel _self;
  final $Res Function(StatusEventModel) _then;

/// Create a copy of StatusEventModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? at = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,at: null == at ? _self.at : at // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [StatusEventModel].
extension StatusEventModelPatterns on StatusEventModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StatusEventModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StatusEventModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StatusEventModel value)  $default,){
final _that = this;
switch (_that) {
case _StatusEventModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StatusEventModel value)?  $default,){
final _that = this;
switch (_that) {
case _StatusEventModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String at)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StatusEventModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String at)  $default,) {final _that = this;
switch (_that) {
case _StatusEventModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String at)?  $default,) {final _that = this;
switch (_that) {
case _StatusEventModel() when $default != null:
return $default(_that.title,_that.at);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StatusEventModel implements StatusEventModel {
  const _StatusEventModel({required this.title, required this.at});
  factory _StatusEventModel.fromJson(Map<String, dynamic> json) => _$StatusEventModelFromJson(json);

@override final  String title;
@override final  String at;

/// Create a copy of StatusEventModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StatusEventModelCopyWith<_StatusEventModel> get copyWith => __$StatusEventModelCopyWithImpl<_StatusEventModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StatusEventModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StatusEventModel&&(identical(other.title, title) || other.title == title)&&(identical(other.at, at) || other.at == at));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,at);

@override
String toString() {
  return 'StatusEventModel(title: $title, at: $at)';
}


}

/// @nodoc
abstract mixin class _$StatusEventModelCopyWith<$Res> implements $StatusEventModelCopyWith<$Res> {
  factory _$StatusEventModelCopyWith(_StatusEventModel value, $Res Function(_StatusEventModel) _then) = __$StatusEventModelCopyWithImpl;
@override @useResult
$Res call({
 String title, String at
});




}
/// @nodoc
class __$StatusEventModelCopyWithImpl<$Res>
    implements _$StatusEventModelCopyWith<$Res> {
  __$StatusEventModelCopyWithImpl(this._self, this._then);

  final _StatusEventModel _self;
  final $Res Function(_StatusEventModel) _then;

/// Create a copy of StatusEventModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? at = null,}) {
  return _then(_StatusEventModel(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,at: null == at ? _self.at : at // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$CancelReasonModel {

 String get id; String get title;
/// Create a copy of CancelReasonModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CancelReasonModelCopyWith<CancelReasonModel> get copyWith => _$CancelReasonModelCopyWithImpl<CancelReasonModel>(this as CancelReasonModel, _$identity);

  /// Serializes this CancelReasonModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CancelReasonModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title);

@override
String toString() {
  return 'CancelReasonModel(id: $id, title: $title)';
}


}

/// @nodoc
abstract mixin class $CancelReasonModelCopyWith<$Res>  {
  factory $CancelReasonModelCopyWith(CancelReasonModel value, $Res Function(CancelReasonModel) _then) = _$CancelReasonModelCopyWithImpl;
@useResult
$Res call({
 String id, String title
});




}
/// @nodoc
class _$CancelReasonModelCopyWithImpl<$Res>
    implements $CancelReasonModelCopyWith<$Res> {
  _$CancelReasonModelCopyWithImpl(this._self, this._then);

  final CancelReasonModel _self;
  final $Res Function(CancelReasonModel) _then;

/// Create a copy of CancelReasonModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CancelReasonModel].
extension CancelReasonModelPatterns on CancelReasonModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CancelReasonModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CancelReasonModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CancelReasonModel value)  $default,){
final _that = this;
switch (_that) {
case _CancelReasonModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CancelReasonModel value)?  $default,){
final _that = this;
switch (_that) {
case _CancelReasonModel() when $default != null:
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
case _CancelReasonModel() when $default != null:
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
case _CancelReasonModel():
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
case _CancelReasonModel() when $default != null:
return $default(_that.id,_that.title);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CancelReasonModel implements CancelReasonModel {
  const _CancelReasonModel({required this.id, required this.title});
  factory _CancelReasonModel.fromJson(Map<String, dynamic> json) => _$CancelReasonModelFromJson(json);

@override final  String id;
@override final  String title;

/// Create a copy of CancelReasonModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CancelReasonModelCopyWith<_CancelReasonModel> get copyWith => __$CancelReasonModelCopyWithImpl<_CancelReasonModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CancelReasonModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CancelReasonModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title);

@override
String toString() {
  return 'CancelReasonModel(id: $id, title: $title)';
}


}

/// @nodoc
abstract mixin class _$CancelReasonModelCopyWith<$Res> implements $CancelReasonModelCopyWith<$Res> {
  factory _$CancelReasonModelCopyWith(_CancelReasonModel value, $Res Function(_CancelReasonModel) _then) = __$CancelReasonModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String title
});




}
/// @nodoc
class __$CancelReasonModelCopyWithImpl<$Res>
    implements _$CancelReasonModelCopyWith<$Res> {
  __$CancelReasonModelCopyWithImpl(this._self, this._then);

  final _CancelReasonModel _self;
  final $Res Function(_CancelReasonModel) _then;

/// Create a copy of CancelReasonModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,}) {
  return _then(_CancelReasonModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ParcelLinkModel {

 String get number; StatusModel get status;
/// Create a copy of ParcelLinkModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParcelLinkModelCopyWith<ParcelLinkModel> get copyWith => _$ParcelLinkModelCopyWithImpl<ParcelLinkModel>(this as ParcelLinkModel, _$identity);

  /// Serializes this ParcelLinkModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParcelLinkModel&&(identical(other.number, number) || other.number == number)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,number,status);

@override
String toString() {
  return 'ParcelLinkModel(number: $number, status: $status)';
}


}

/// @nodoc
abstract mixin class $ParcelLinkModelCopyWith<$Res>  {
  factory $ParcelLinkModelCopyWith(ParcelLinkModel value, $Res Function(ParcelLinkModel) _then) = _$ParcelLinkModelCopyWithImpl;
@useResult
$Res call({
 String number, StatusModel status
});


$StatusModelCopyWith<$Res> get status;

}
/// @nodoc
class _$ParcelLinkModelCopyWithImpl<$Res>
    implements $ParcelLinkModelCopyWith<$Res> {
  _$ParcelLinkModelCopyWithImpl(this._self, this._then);

  final ParcelLinkModel _self;
  final $Res Function(ParcelLinkModel) _then;

/// Create a copy of ParcelLinkModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? number = null,Object? status = null,}) {
  return _then(_self.copyWith(
number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StatusModel,
  ));
}
/// Create a copy of ParcelLinkModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatusModelCopyWith<$Res> get status {
  
  return $StatusModelCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}


/// Adds pattern-matching-related methods to [ParcelLinkModel].
extension ParcelLinkModelPatterns on ParcelLinkModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ParcelLinkModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ParcelLinkModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ParcelLinkModel value)  $default,){
final _that = this;
switch (_that) {
case _ParcelLinkModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ParcelLinkModel value)?  $default,){
final _that = this;
switch (_that) {
case _ParcelLinkModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String number,  StatusModel status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ParcelLinkModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String number,  StatusModel status)  $default,) {final _that = this;
switch (_that) {
case _ParcelLinkModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String number,  StatusModel status)?  $default,) {final _that = this;
switch (_that) {
case _ParcelLinkModel() when $default != null:
return $default(_that.number,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ParcelLinkModel implements ParcelLinkModel {
  const _ParcelLinkModel({required this.number, required this.status});
  factory _ParcelLinkModel.fromJson(Map<String, dynamic> json) => _$ParcelLinkModelFromJson(json);

@override final  String number;
@override final  StatusModel status;

/// Create a copy of ParcelLinkModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ParcelLinkModelCopyWith<_ParcelLinkModel> get copyWith => __$ParcelLinkModelCopyWithImpl<_ParcelLinkModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ParcelLinkModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ParcelLinkModel&&(identical(other.number, number) || other.number == number)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,number,status);

@override
String toString() {
  return 'ParcelLinkModel(number: $number, status: $status)';
}


}

/// @nodoc
abstract mixin class _$ParcelLinkModelCopyWith<$Res> implements $ParcelLinkModelCopyWith<$Res> {
  factory _$ParcelLinkModelCopyWith(_ParcelLinkModel value, $Res Function(_ParcelLinkModel) _then) = __$ParcelLinkModelCopyWithImpl;
@override @useResult
$Res call({
 String number, StatusModel status
});


@override $StatusModelCopyWith<$Res> get status;

}
/// @nodoc
class __$ParcelLinkModelCopyWithImpl<$Res>
    implements _$ParcelLinkModelCopyWith<$Res> {
  __$ParcelLinkModelCopyWithImpl(this._self, this._then);

  final _ParcelLinkModel _self;
  final $Res Function(_ParcelLinkModel) _then;

/// Create a copy of ParcelLinkModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? number = null,Object? status = null,}) {
  return _then(_ParcelLinkModel(
number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StatusModel,
  ));
}

/// Create a copy of ParcelLinkModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatusModelCopyWith<$Res> get status {
  
  return $StatusModelCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}


/// @nodoc
mixin _$OrderMoneyModel {

 int get items; int get chinaDelivery; int get internationalDelivery; bool get isEstimate; int get courier; int get services; int get discount; int get total; int get paid; int get due;
/// Create a copy of OrderMoneyModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderMoneyModelCopyWith<OrderMoneyModel> get copyWith => _$OrderMoneyModelCopyWithImpl<OrderMoneyModel>(this as OrderMoneyModel, _$identity);

  /// Serializes this OrderMoneyModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderMoneyModel&&(identical(other.items, items) || other.items == items)&&(identical(other.chinaDelivery, chinaDelivery) || other.chinaDelivery == chinaDelivery)&&(identical(other.internationalDelivery, internationalDelivery) || other.internationalDelivery == internationalDelivery)&&(identical(other.isEstimate, isEstimate) || other.isEstimate == isEstimate)&&(identical(other.courier, courier) || other.courier == courier)&&(identical(other.services, services) || other.services == services)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.total, total) || other.total == total)&&(identical(other.paid, paid) || other.paid == paid)&&(identical(other.due, due) || other.due == due));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,items,chinaDelivery,internationalDelivery,isEstimate,courier,services,discount,total,paid,due);

@override
String toString() {
  return 'OrderMoneyModel(items: $items, chinaDelivery: $chinaDelivery, internationalDelivery: $internationalDelivery, isEstimate: $isEstimate, courier: $courier, services: $services, discount: $discount, total: $total, paid: $paid, due: $due)';
}


}

/// @nodoc
abstract mixin class $OrderMoneyModelCopyWith<$Res>  {
  factory $OrderMoneyModelCopyWith(OrderMoneyModel value, $Res Function(OrderMoneyModel) _then) = _$OrderMoneyModelCopyWithImpl;
@useResult
$Res call({
 int items, int chinaDelivery, int internationalDelivery, bool isEstimate, int courier, int services, int discount, int total, int paid, int due
});




}
/// @nodoc
class _$OrderMoneyModelCopyWithImpl<$Res>
    implements $OrderMoneyModelCopyWith<$Res> {
  _$OrderMoneyModelCopyWithImpl(this._self, this._then);

  final OrderMoneyModel _self;
  final $Res Function(OrderMoneyModel) _then;

/// Create a copy of OrderMoneyModel
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


/// Adds pattern-matching-related methods to [OrderMoneyModel].
extension OrderMoneyModelPatterns on OrderMoneyModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderMoneyModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderMoneyModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderMoneyModel value)  $default,){
final _that = this;
switch (_that) {
case _OrderMoneyModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderMoneyModel value)?  $default,){
final _that = this;
switch (_that) {
case _OrderMoneyModel() when $default != null:
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
case _OrderMoneyModel() when $default != null:
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
case _OrderMoneyModel():
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
case _OrderMoneyModel() when $default != null:
return $default(_that.items,_that.chinaDelivery,_that.internationalDelivery,_that.isEstimate,_that.courier,_that.services,_that.discount,_that.total,_that.paid,_that.due);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderMoneyModel implements OrderMoneyModel {
  const _OrderMoneyModel({required this.items, this.chinaDelivery = 0, this.internationalDelivery = 0, this.isEstimate = true, this.courier = 0, this.services = 0, this.discount = 0, required this.total, this.paid = 0, this.due = 0});
  factory _OrderMoneyModel.fromJson(Map<String, dynamic> json) => _$OrderMoneyModelFromJson(json);

@override final  int items;
@override@JsonKey() final  int chinaDelivery;
@override@JsonKey() final  int internationalDelivery;
@override@JsonKey() final  bool isEstimate;
@override@JsonKey() final  int courier;
@override@JsonKey() final  int services;
@override@JsonKey() final  int discount;
@override final  int total;
@override@JsonKey() final  int paid;
@override@JsonKey() final  int due;

/// Create a copy of OrderMoneyModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderMoneyModelCopyWith<_OrderMoneyModel> get copyWith => __$OrderMoneyModelCopyWithImpl<_OrderMoneyModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderMoneyModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderMoneyModel&&(identical(other.items, items) || other.items == items)&&(identical(other.chinaDelivery, chinaDelivery) || other.chinaDelivery == chinaDelivery)&&(identical(other.internationalDelivery, internationalDelivery) || other.internationalDelivery == internationalDelivery)&&(identical(other.isEstimate, isEstimate) || other.isEstimate == isEstimate)&&(identical(other.courier, courier) || other.courier == courier)&&(identical(other.services, services) || other.services == services)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.total, total) || other.total == total)&&(identical(other.paid, paid) || other.paid == paid)&&(identical(other.due, due) || other.due == due));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,items,chinaDelivery,internationalDelivery,isEstimate,courier,services,discount,total,paid,due);

@override
String toString() {
  return 'OrderMoneyModel(items: $items, chinaDelivery: $chinaDelivery, internationalDelivery: $internationalDelivery, isEstimate: $isEstimate, courier: $courier, services: $services, discount: $discount, total: $total, paid: $paid, due: $due)';
}


}

/// @nodoc
abstract mixin class _$OrderMoneyModelCopyWith<$Res> implements $OrderMoneyModelCopyWith<$Res> {
  factory _$OrderMoneyModelCopyWith(_OrderMoneyModel value, $Res Function(_OrderMoneyModel) _then) = __$OrderMoneyModelCopyWithImpl;
@override @useResult
$Res call({
 int items, int chinaDelivery, int internationalDelivery, bool isEstimate, int courier, int services, int discount, int total, int paid, int due
});




}
/// @nodoc
class __$OrderMoneyModelCopyWithImpl<$Res>
    implements _$OrderMoneyModelCopyWith<$Res> {
  __$OrderMoneyModelCopyWithImpl(this._self, this._then);

  final _OrderMoneyModel _self;
  final $Res Function(_OrderMoneyModel) _then;

/// Create a copy of OrderMoneyModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? chinaDelivery = null,Object? internationalDelivery = null,Object? isEstimate = null,Object? courier = null,Object? services = null,Object? discount = null,Object? total = null,Object? paid = null,Object? due = null,}) {
  return _then(_OrderMoneyModel(
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
mixin _$RepeatResponseModel {

 List<RepeatLineModel> get lines; int get unavailable;
/// Create a copy of RepeatResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RepeatResponseModelCopyWith<RepeatResponseModel> get copyWith => _$RepeatResponseModelCopyWithImpl<RepeatResponseModel>(this as RepeatResponseModel, _$identity);

  /// Serializes this RepeatResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RepeatResponseModel&&const DeepCollectionEquality().equals(other.lines, lines)&&(identical(other.unavailable, unavailable) || other.unavailable == unavailable));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(lines),unavailable);

@override
String toString() {
  return 'RepeatResponseModel(lines: $lines, unavailable: $unavailable)';
}


}

/// @nodoc
abstract mixin class $RepeatResponseModelCopyWith<$Res>  {
  factory $RepeatResponseModelCopyWith(RepeatResponseModel value, $Res Function(RepeatResponseModel) _then) = _$RepeatResponseModelCopyWithImpl;
@useResult
$Res call({
 List<RepeatLineModel> lines, int unavailable
});




}
/// @nodoc
class _$RepeatResponseModelCopyWithImpl<$Res>
    implements $RepeatResponseModelCopyWith<$Res> {
  _$RepeatResponseModelCopyWithImpl(this._self, this._then);

  final RepeatResponseModel _self;
  final $Res Function(RepeatResponseModel) _then;

/// Create a copy of RepeatResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? lines = null,Object? unavailable = null,}) {
  return _then(_self.copyWith(
lines: null == lines ? _self.lines : lines // ignore: cast_nullable_to_non_nullable
as List<RepeatLineModel>,unavailable: null == unavailable ? _self.unavailable : unavailable // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [RepeatResponseModel].
extension RepeatResponseModelPatterns on RepeatResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RepeatResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RepeatResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RepeatResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _RepeatResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RepeatResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _RepeatResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<RepeatLineModel> lines,  int unavailable)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RepeatResponseModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<RepeatLineModel> lines,  int unavailable)  $default,) {final _that = this;
switch (_that) {
case _RepeatResponseModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<RepeatLineModel> lines,  int unavailable)?  $default,) {final _that = this;
switch (_that) {
case _RepeatResponseModel() when $default != null:
return $default(_that.lines,_that.unavailable);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RepeatResponseModel implements RepeatResponseModel {
  const _RepeatResponseModel({required final  List<RepeatLineModel> lines, this.unavailable = 0}): _lines = lines;
  factory _RepeatResponseModel.fromJson(Map<String, dynamic> json) => _$RepeatResponseModelFromJson(json);

 final  List<RepeatLineModel> _lines;
@override List<RepeatLineModel> get lines {
  if (_lines is EqualUnmodifiableListView) return _lines;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lines);
}

@override@JsonKey() final  int unavailable;

/// Create a copy of RepeatResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RepeatResponseModelCopyWith<_RepeatResponseModel> get copyWith => __$RepeatResponseModelCopyWithImpl<_RepeatResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RepeatResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RepeatResponseModel&&const DeepCollectionEquality().equals(other._lines, _lines)&&(identical(other.unavailable, unavailable) || other.unavailable == unavailable));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_lines),unavailable);

@override
String toString() {
  return 'RepeatResponseModel(lines: $lines, unavailable: $unavailable)';
}


}

/// @nodoc
abstract mixin class _$RepeatResponseModelCopyWith<$Res> implements $RepeatResponseModelCopyWith<$Res> {
  factory _$RepeatResponseModelCopyWith(_RepeatResponseModel value, $Res Function(_RepeatResponseModel) _then) = __$RepeatResponseModelCopyWithImpl;
@override @useResult
$Res call({
 List<RepeatLineModel> lines, int unavailable
});




}
/// @nodoc
class __$RepeatResponseModelCopyWithImpl<$Res>
    implements _$RepeatResponseModelCopyWith<$Res> {
  __$RepeatResponseModelCopyWithImpl(this._self, this._then);

  final _RepeatResponseModel _self;
  final $Res Function(_RepeatResponseModel) _then;

/// Create a copy of RepeatResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? lines = null,Object? unavailable = null,}) {
  return _then(_RepeatResponseModel(
lines: null == lines ? _self._lines : lines // ignore: cast_nullable_to_non_nullable
as List<RepeatLineModel>,unavailable: null == unavailable ? _self.unavailable : unavailable // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$RepeatLineModel {

 String get productId; String get title; String get imageUrl; int get price; int get quantity; String? get skuId; String? get skuLabel; String? get sellerName;
/// Create a copy of RepeatLineModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RepeatLineModelCopyWith<RepeatLineModel> get copyWith => _$RepeatLineModelCopyWithImpl<RepeatLineModel>(this as RepeatLineModel, _$identity);

  /// Serializes this RepeatLineModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RepeatLineModel&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.title, title) || other.title == title)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.price, price) || other.price == price)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.skuId, skuId) || other.skuId == skuId)&&(identical(other.skuLabel, skuLabel) || other.skuLabel == skuLabel)&&(identical(other.sellerName, sellerName) || other.sellerName == sellerName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productId,title,imageUrl,price,quantity,skuId,skuLabel,sellerName);

@override
String toString() {
  return 'RepeatLineModel(productId: $productId, title: $title, imageUrl: $imageUrl, price: $price, quantity: $quantity, skuId: $skuId, skuLabel: $skuLabel, sellerName: $sellerName)';
}


}

/// @nodoc
abstract mixin class $RepeatLineModelCopyWith<$Res>  {
  factory $RepeatLineModelCopyWith(RepeatLineModel value, $Res Function(RepeatLineModel) _then) = _$RepeatLineModelCopyWithImpl;
@useResult
$Res call({
 String productId, String title, String imageUrl, int price, int quantity, String? skuId, String? skuLabel, String? sellerName
});




}
/// @nodoc
class _$RepeatLineModelCopyWithImpl<$Res>
    implements $RepeatLineModelCopyWith<$Res> {
  _$RepeatLineModelCopyWithImpl(this._self, this._then);

  final RepeatLineModel _self;
  final $Res Function(RepeatLineModel) _then;

/// Create a copy of RepeatLineModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productId = null,Object? title = null,Object? imageUrl = null,Object? price = null,Object? quantity = null,Object? skuId = freezed,Object? skuLabel = freezed,Object? sellerName = freezed,}) {
  return _then(_self.copyWith(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,skuId: freezed == skuId ? _self.skuId : skuId // ignore: cast_nullable_to_non_nullable
as String?,skuLabel: freezed == skuLabel ? _self.skuLabel : skuLabel // ignore: cast_nullable_to_non_nullable
as String?,sellerName: freezed == sellerName ? _self.sellerName : sellerName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RepeatLineModel].
extension RepeatLineModelPatterns on RepeatLineModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RepeatLineModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RepeatLineModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RepeatLineModel value)  $default,){
final _that = this;
switch (_that) {
case _RepeatLineModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RepeatLineModel value)?  $default,){
final _that = this;
switch (_that) {
case _RepeatLineModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String productId,  String title,  String imageUrl,  int price,  int quantity,  String? skuId,  String? skuLabel,  String? sellerName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RepeatLineModel() when $default != null:
return $default(_that.productId,_that.title,_that.imageUrl,_that.price,_that.quantity,_that.skuId,_that.skuLabel,_that.sellerName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String productId,  String title,  String imageUrl,  int price,  int quantity,  String? skuId,  String? skuLabel,  String? sellerName)  $default,) {final _that = this;
switch (_that) {
case _RepeatLineModel():
return $default(_that.productId,_that.title,_that.imageUrl,_that.price,_that.quantity,_that.skuId,_that.skuLabel,_that.sellerName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String productId,  String title,  String imageUrl,  int price,  int quantity,  String? skuId,  String? skuLabel,  String? sellerName)?  $default,) {final _that = this;
switch (_that) {
case _RepeatLineModel() when $default != null:
return $default(_that.productId,_that.title,_that.imageUrl,_that.price,_that.quantity,_that.skuId,_that.skuLabel,_that.sellerName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RepeatLineModel implements RepeatLineModel {
  const _RepeatLineModel({required this.productId, required this.title, this.imageUrl = '', required this.price, required this.quantity, this.skuId, this.skuLabel, this.sellerName});
  factory _RepeatLineModel.fromJson(Map<String, dynamic> json) => _$RepeatLineModelFromJson(json);

@override final  String productId;
@override final  String title;
@override@JsonKey() final  String imageUrl;
@override final  int price;
@override final  int quantity;
@override final  String? skuId;
@override final  String? skuLabel;
@override final  String? sellerName;

/// Create a copy of RepeatLineModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RepeatLineModelCopyWith<_RepeatLineModel> get copyWith => __$RepeatLineModelCopyWithImpl<_RepeatLineModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RepeatLineModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RepeatLineModel&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.title, title) || other.title == title)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.price, price) || other.price == price)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.skuId, skuId) || other.skuId == skuId)&&(identical(other.skuLabel, skuLabel) || other.skuLabel == skuLabel)&&(identical(other.sellerName, sellerName) || other.sellerName == sellerName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productId,title,imageUrl,price,quantity,skuId,skuLabel,sellerName);

@override
String toString() {
  return 'RepeatLineModel(productId: $productId, title: $title, imageUrl: $imageUrl, price: $price, quantity: $quantity, skuId: $skuId, skuLabel: $skuLabel, sellerName: $sellerName)';
}


}

/// @nodoc
abstract mixin class _$RepeatLineModelCopyWith<$Res> implements $RepeatLineModelCopyWith<$Res> {
  factory _$RepeatLineModelCopyWith(_RepeatLineModel value, $Res Function(_RepeatLineModel) _then) = __$RepeatLineModelCopyWithImpl;
@override @useResult
$Res call({
 String productId, String title, String imageUrl, int price, int quantity, String? skuId, String? skuLabel, String? sellerName
});




}
/// @nodoc
class __$RepeatLineModelCopyWithImpl<$Res>
    implements _$RepeatLineModelCopyWith<$Res> {
  __$RepeatLineModelCopyWithImpl(this._self, this._then);

  final _RepeatLineModel _self;
  final $Res Function(_RepeatLineModel) _then;

/// Create a copy of RepeatLineModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productId = null,Object? title = null,Object? imageUrl = null,Object? price = null,Object? quantity = null,Object? skuId = freezed,Object? skuLabel = freezed,Object? sellerName = freezed,}) {
  return _then(_RepeatLineModel(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,skuId: freezed == skuId ? _self.skuId : skuId // ignore: cast_nullable_to_non_nullable
as String?,skuLabel: freezed == skuLabel ? _self.skuLabel : skuLabel // ignore: cast_nullable_to_non_nullable
as String?,sellerName: freezed == sellerName ? _self.sellerName : sellerName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ParcelsResponseModel {

 List<ParcelSummaryModel> get parcels;
/// Create a copy of ParcelsResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParcelsResponseModelCopyWith<ParcelsResponseModel> get copyWith => _$ParcelsResponseModelCopyWithImpl<ParcelsResponseModel>(this as ParcelsResponseModel, _$identity);

  /// Serializes this ParcelsResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParcelsResponseModel&&const DeepCollectionEquality().equals(other.parcels, parcels));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(parcels));

@override
String toString() {
  return 'ParcelsResponseModel(parcels: $parcels)';
}


}

/// @nodoc
abstract mixin class $ParcelsResponseModelCopyWith<$Res>  {
  factory $ParcelsResponseModelCopyWith(ParcelsResponseModel value, $Res Function(ParcelsResponseModel) _then) = _$ParcelsResponseModelCopyWithImpl;
@useResult
$Res call({
 List<ParcelSummaryModel> parcels
});




}
/// @nodoc
class _$ParcelsResponseModelCopyWithImpl<$Res>
    implements $ParcelsResponseModelCopyWith<$Res> {
  _$ParcelsResponseModelCopyWithImpl(this._self, this._then);

  final ParcelsResponseModel _self;
  final $Res Function(ParcelsResponseModel) _then;

/// Create a copy of ParcelsResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? parcels = null,}) {
  return _then(_self.copyWith(
parcels: null == parcels ? _self.parcels : parcels // ignore: cast_nullable_to_non_nullable
as List<ParcelSummaryModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [ParcelsResponseModel].
extension ParcelsResponseModelPatterns on ParcelsResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ParcelsResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ParcelsResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ParcelsResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _ParcelsResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ParcelsResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _ParcelsResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ParcelSummaryModel> parcels)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ParcelsResponseModel() when $default != null:
return $default(_that.parcels);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ParcelSummaryModel> parcels)  $default,) {final _that = this;
switch (_that) {
case _ParcelsResponseModel():
return $default(_that.parcels);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ParcelSummaryModel> parcels)?  $default,) {final _that = this;
switch (_that) {
case _ParcelsResponseModel() when $default != null:
return $default(_that.parcels);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ParcelsResponseModel implements ParcelsResponseModel {
  const _ParcelsResponseModel({required final  List<ParcelSummaryModel> parcels}): _parcels = parcels;
  factory _ParcelsResponseModel.fromJson(Map<String, dynamic> json) => _$ParcelsResponseModelFromJson(json);

 final  List<ParcelSummaryModel> _parcels;
@override List<ParcelSummaryModel> get parcels {
  if (_parcels is EqualUnmodifiableListView) return _parcels;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_parcels);
}


/// Create a copy of ParcelsResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ParcelsResponseModelCopyWith<_ParcelsResponseModel> get copyWith => __$ParcelsResponseModelCopyWithImpl<_ParcelsResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ParcelsResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ParcelsResponseModel&&const DeepCollectionEquality().equals(other._parcels, _parcels));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_parcels));

@override
String toString() {
  return 'ParcelsResponseModel(parcels: $parcels)';
}


}

/// @nodoc
abstract mixin class _$ParcelsResponseModelCopyWith<$Res> implements $ParcelsResponseModelCopyWith<$Res> {
  factory _$ParcelsResponseModelCopyWith(_ParcelsResponseModel value, $Res Function(_ParcelsResponseModel) _then) = __$ParcelsResponseModelCopyWithImpl;
@override @useResult
$Res call({
 List<ParcelSummaryModel> parcels
});




}
/// @nodoc
class __$ParcelsResponseModelCopyWithImpl<$Res>
    implements _$ParcelsResponseModelCopyWith<$Res> {
  __$ParcelsResponseModelCopyWithImpl(this._self, this._then);

  final _ParcelsResponseModel _self;
  final $Res Function(_ParcelsResponseModel) _then;

/// Create a copy of ParcelsResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? parcels = null,}) {
  return _then(_ParcelsResponseModel(
parcels: null == parcels ? _self._parcels : parcels // ignore: cast_nullable_to_non_nullable
as List<ParcelSummaryModel>,
  ));
}


}


/// @nodoc
mixin _$ParcelSummaryModel {

 String get number; StatusModel get status; String get stage; int get itemCount; List<String> get previews; String? get etaFrom; String? get etaTo;
/// Create a copy of ParcelSummaryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParcelSummaryModelCopyWith<ParcelSummaryModel> get copyWith => _$ParcelSummaryModelCopyWithImpl<ParcelSummaryModel>(this as ParcelSummaryModel, _$identity);

  /// Serializes this ParcelSummaryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParcelSummaryModel&&(identical(other.number, number) || other.number == number)&&(identical(other.status, status) || other.status == status)&&(identical(other.stage, stage) || other.stage == stage)&&(identical(other.itemCount, itemCount) || other.itemCount == itemCount)&&const DeepCollectionEquality().equals(other.previews, previews)&&(identical(other.etaFrom, etaFrom) || other.etaFrom == etaFrom)&&(identical(other.etaTo, etaTo) || other.etaTo == etaTo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,number,status,stage,itemCount,const DeepCollectionEquality().hash(previews),etaFrom,etaTo);

@override
String toString() {
  return 'ParcelSummaryModel(number: $number, status: $status, stage: $stage, itemCount: $itemCount, previews: $previews, etaFrom: $etaFrom, etaTo: $etaTo)';
}


}

/// @nodoc
abstract mixin class $ParcelSummaryModelCopyWith<$Res>  {
  factory $ParcelSummaryModelCopyWith(ParcelSummaryModel value, $Res Function(ParcelSummaryModel) _then) = _$ParcelSummaryModelCopyWithImpl;
@useResult
$Res call({
 String number, StatusModel status, String stage, int itemCount, List<String> previews, String? etaFrom, String? etaTo
});


$StatusModelCopyWith<$Res> get status;

}
/// @nodoc
class _$ParcelSummaryModelCopyWithImpl<$Res>
    implements $ParcelSummaryModelCopyWith<$Res> {
  _$ParcelSummaryModelCopyWithImpl(this._self, this._then);

  final ParcelSummaryModel _self;
  final $Res Function(ParcelSummaryModel) _then;

/// Create a copy of ParcelSummaryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? number = null,Object? status = null,Object? stage = null,Object? itemCount = null,Object? previews = null,Object? etaFrom = freezed,Object? etaTo = freezed,}) {
  return _then(_self.copyWith(
number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StatusModel,stage: null == stage ? _self.stage : stage // ignore: cast_nullable_to_non_nullable
as String,itemCount: null == itemCount ? _self.itemCount : itemCount // ignore: cast_nullable_to_non_nullable
as int,previews: null == previews ? _self.previews : previews // ignore: cast_nullable_to_non_nullable
as List<String>,etaFrom: freezed == etaFrom ? _self.etaFrom : etaFrom // ignore: cast_nullable_to_non_nullable
as String?,etaTo: freezed == etaTo ? _self.etaTo : etaTo // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of ParcelSummaryModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatusModelCopyWith<$Res> get status {
  
  return $StatusModelCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}


/// Adds pattern-matching-related methods to [ParcelSummaryModel].
extension ParcelSummaryModelPatterns on ParcelSummaryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ParcelSummaryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ParcelSummaryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ParcelSummaryModel value)  $default,){
final _that = this;
switch (_that) {
case _ParcelSummaryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ParcelSummaryModel value)?  $default,){
final _that = this;
switch (_that) {
case _ParcelSummaryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String number,  StatusModel status,  String stage,  int itemCount,  List<String> previews,  String? etaFrom,  String? etaTo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ParcelSummaryModel() when $default != null:
return $default(_that.number,_that.status,_that.stage,_that.itemCount,_that.previews,_that.etaFrom,_that.etaTo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String number,  StatusModel status,  String stage,  int itemCount,  List<String> previews,  String? etaFrom,  String? etaTo)  $default,) {final _that = this;
switch (_that) {
case _ParcelSummaryModel():
return $default(_that.number,_that.status,_that.stage,_that.itemCount,_that.previews,_that.etaFrom,_that.etaTo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String number,  StatusModel status,  String stage,  int itemCount,  List<String> previews,  String? etaFrom,  String? etaTo)?  $default,) {final _that = this;
switch (_that) {
case _ParcelSummaryModel() when $default != null:
return $default(_that.number,_that.status,_that.stage,_that.itemCount,_that.previews,_that.etaFrom,_that.etaTo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ParcelSummaryModel implements ParcelSummaryModel {
  const _ParcelSummaryModel({required this.number, required this.status, required this.stage, required this.itemCount, final  List<String> previews = const <String>[], this.etaFrom, this.etaTo}): _previews = previews;
  factory _ParcelSummaryModel.fromJson(Map<String, dynamic> json) => _$ParcelSummaryModelFromJson(json);

@override final  String number;
@override final  StatusModel status;
@override final  String stage;
@override final  int itemCount;
 final  List<String> _previews;
@override@JsonKey() List<String> get previews {
  if (_previews is EqualUnmodifiableListView) return _previews;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_previews);
}

@override final  String? etaFrom;
@override final  String? etaTo;

/// Create a copy of ParcelSummaryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ParcelSummaryModelCopyWith<_ParcelSummaryModel> get copyWith => __$ParcelSummaryModelCopyWithImpl<_ParcelSummaryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ParcelSummaryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ParcelSummaryModel&&(identical(other.number, number) || other.number == number)&&(identical(other.status, status) || other.status == status)&&(identical(other.stage, stage) || other.stage == stage)&&(identical(other.itemCount, itemCount) || other.itemCount == itemCount)&&const DeepCollectionEquality().equals(other._previews, _previews)&&(identical(other.etaFrom, etaFrom) || other.etaFrom == etaFrom)&&(identical(other.etaTo, etaTo) || other.etaTo == etaTo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,number,status,stage,itemCount,const DeepCollectionEquality().hash(_previews),etaFrom,etaTo);

@override
String toString() {
  return 'ParcelSummaryModel(number: $number, status: $status, stage: $stage, itemCount: $itemCount, previews: $previews, etaFrom: $etaFrom, etaTo: $etaTo)';
}


}

/// @nodoc
abstract mixin class _$ParcelSummaryModelCopyWith<$Res> implements $ParcelSummaryModelCopyWith<$Res> {
  factory _$ParcelSummaryModelCopyWith(_ParcelSummaryModel value, $Res Function(_ParcelSummaryModel) _then) = __$ParcelSummaryModelCopyWithImpl;
@override @useResult
$Res call({
 String number, StatusModel status, String stage, int itemCount, List<String> previews, String? etaFrom, String? etaTo
});


@override $StatusModelCopyWith<$Res> get status;

}
/// @nodoc
class __$ParcelSummaryModelCopyWithImpl<$Res>
    implements _$ParcelSummaryModelCopyWith<$Res> {
  __$ParcelSummaryModelCopyWithImpl(this._self, this._then);

  final _ParcelSummaryModel _self;
  final $Res Function(_ParcelSummaryModel) _then;

/// Create a copy of ParcelSummaryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? number = null,Object? status = null,Object? stage = null,Object? itemCount = null,Object? previews = null,Object? etaFrom = freezed,Object? etaTo = freezed,}) {
  return _then(_ParcelSummaryModel(
number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StatusModel,stage: null == stage ? _self.stage : stage // ignore: cast_nullable_to_non_nullable
as String,itemCount: null == itemCount ? _self.itemCount : itemCount // ignore: cast_nullable_to_non_nullable
as int,previews: null == previews ? _self._previews : previews // ignore: cast_nullable_to_non_nullable
as List<String>,etaFrom: freezed == etaFrom ? _self.etaFrom : etaFrom // ignore: cast_nullable_to_non_nullable
as String?,etaTo: freezed == etaTo ? _self.etaTo : etaTo // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of ParcelSummaryModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatusModelCopyWith<$Res> get status {
  
  return $StatusModelCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}


/// @nodoc
mixin _$ParcelDetailsModel {

 String get number; StatusModel get status; String get stage; Map<String, String> get stageDates; String get deliveryTypeName; List<ParcelItemModel> get items; List<StatusEventModel> get history; String? get etaFrom; String? get etaTo; int? get weightGrams; bool get canSendNow; String? get freeStorageUntil; SurchargeModel? get surcharge; PickupInfoModel? get pickup; CourierInfoModel? get courier; String? get claimUntil;
/// Create a copy of ParcelDetailsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParcelDetailsModelCopyWith<ParcelDetailsModel> get copyWith => _$ParcelDetailsModelCopyWithImpl<ParcelDetailsModel>(this as ParcelDetailsModel, _$identity);

  /// Serializes this ParcelDetailsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParcelDetailsModel&&(identical(other.number, number) || other.number == number)&&(identical(other.status, status) || other.status == status)&&(identical(other.stage, stage) || other.stage == stage)&&const DeepCollectionEquality().equals(other.stageDates, stageDates)&&(identical(other.deliveryTypeName, deliveryTypeName) || other.deliveryTypeName == deliveryTypeName)&&const DeepCollectionEquality().equals(other.items, items)&&const DeepCollectionEquality().equals(other.history, history)&&(identical(other.etaFrom, etaFrom) || other.etaFrom == etaFrom)&&(identical(other.etaTo, etaTo) || other.etaTo == etaTo)&&(identical(other.weightGrams, weightGrams) || other.weightGrams == weightGrams)&&(identical(other.canSendNow, canSendNow) || other.canSendNow == canSendNow)&&(identical(other.freeStorageUntil, freeStorageUntil) || other.freeStorageUntil == freeStorageUntil)&&(identical(other.surcharge, surcharge) || other.surcharge == surcharge)&&(identical(other.pickup, pickup) || other.pickup == pickup)&&(identical(other.courier, courier) || other.courier == courier)&&(identical(other.claimUntil, claimUntil) || other.claimUntil == claimUntil));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,number,status,stage,const DeepCollectionEquality().hash(stageDates),deliveryTypeName,const DeepCollectionEquality().hash(items),const DeepCollectionEquality().hash(history),etaFrom,etaTo,weightGrams,canSendNow,freeStorageUntil,surcharge,pickup,courier,claimUntil);

@override
String toString() {
  return 'ParcelDetailsModel(number: $number, status: $status, stage: $stage, stageDates: $stageDates, deliveryTypeName: $deliveryTypeName, items: $items, history: $history, etaFrom: $etaFrom, etaTo: $etaTo, weightGrams: $weightGrams, canSendNow: $canSendNow, freeStorageUntil: $freeStorageUntil, surcharge: $surcharge, pickup: $pickup, courier: $courier, claimUntil: $claimUntil)';
}


}

/// @nodoc
abstract mixin class $ParcelDetailsModelCopyWith<$Res>  {
  factory $ParcelDetailsModelCopyWith(ParcelDetailsModel value, $Res Function(ParcelDetailsModel) _then) = _$ParcelDetailsModelCopyWithImpl;
@useResult
$Res call({
 String number, StatusModel status, String stage, Map<String, String> stageDates, String deliveryTypeName, List<ParcelItemModel> items, List<StatusEventModel> history, String? etaFrom, String? etaTo, int? weightGrams, bool canSendNow, String? freeStorageUntil, SurchargeModel? surcharge, PickupInfoModel? pickup, CourierInfoModel? courier, String? claimUntil
});


$StatusModelCopyWith<$Res> get status;$SurchargeModelCopyWith<$Res>? get surcharge;$PickupInfoModelCopyWith<$Res>? get pickup;$CourierInfoModelCopyWith<$Res>? get courier;

}
/// @nodoc
class _$ParcelDetailsModelCopyWithImpl<$Res>
    implements $ParcelDetailsModelCopyWith<$Res> {
  _$ParcelDetailsModelCopyWithImpl(this._self, this._then);

  final ParcelDetailsModel _self;
  final $Res Function(ParcelDetailsModel) _then;

/// Create a copy of ParcelDetailsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? number = null,Object? status = null,Object? stage = null,Object? stageDates = null,Object? deliveryTypeName = null,Object? items = null,Object? history = null,Object? etaFrom = freezed,Object? etaTo = freezed,Object? weightGrams = freezed,Object? canSendNow = null,Object? freeStorageUntil = freezed,Object? surcharge = freezed,Object? pickup = freezed,Object? courier = freezed,Object? claimUntil = freezed,}) {
  return _then(_self.copyWith(
number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StatusModel,stage: null == stage ? _self.stage : stage // ignore: cast_nullable_to_non_nullable
as String,stageDates: null == stageDates ? _self.stageDates : stageDates // ignore: cast_nullable_to_non_nullable
as Map<String, String>,deliveryTypeName: null == deliveryTypeName ? _self.deliveryTypeName : deliveryTypeName // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<ParcelItemModel>,history: null == history ? _self.history : history // ignore: cast_nullable_to_non_nullable
as List<StatusEventModel>,etaFrom: freezed == etaFrom ? _self.etaFrom : etaFrom // ignore: cast_nullable_to_non_nullable
as String?,etaTo: freezed == etaTo ? _self.etaTo : etaTo // ignore: cast_nullable_to_non_nullable
as String?,weightGrams: freezed == weightGrams ? _self.weightGrams : weightGrams // ignore: cast_nullable_to_non_nullable
as int?,canSendNow: null == canSendNow ? _self.canSendNow : canSendNow // ignore: cast_nullable_to_non_nullable
as bool,freeStorageUntil: freezed == freeStorageUntil ? _self.freeStorageUntil : freeStorageUntil // ignore: cast_nullable_to_non_nullable
as String?,surcharge: freezed == surcharge ? _self.surcharge : surcharge // ignore: cast_nullable_to_non_nullable
as SurchargeModel?,pickup: freezed == pickup ? _self.pickup : pickup // ignore: cast_nullable_to_non_nullable
as PickupInfoModel?,courier: freezed == courier ? _self.courier : courier // ignore: cast_nullable_to_non_nullable
as CourierInfoModel?,claimUntil: freezed == claimUntil ? _self.claimUntil : claimUntil // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of ParcelDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatusModelCopyWith<$Res> get status {
  
  return $StatusModelCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of ParcelDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SurchargeModelCopyWith<$Res>? get surcharge {
    if (_self.surcharge == null) {
    return null;
  }

  return $SurchargeModelCopyWith<$Res>(_self.surcharge!, (value) {
    return _then(_self.copyWith(surcharge: value));
  });
}/// Create a copy of ParcelDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PickupInfoModelCopyWith<$Res>? get pickup {
    if (_self.pickup == null) {
    return null;
  }

  return $PickupInfoModelCopyWith<$Res>(_self.pickup!, (value) {
    return _then(_self.copyWith(pickup: value));
  });
}/// Create a copy of ParcelDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CourierInfoModelCopyWith<$Res>? get courier {
    if (_self.courier == null) {
    return null;
  }

  return $CourierInfoModelCopyWith<$Res>(_self.courier!, (value) {
    return _then(_self.copyWith(courier: value));
  });
}
}


/// Adds pattern-matching-related methods to [ParcelDetailsModel].
extension ParcelDetailsModelPatterns on ParcelDetailsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ParcelDetailsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ParcelDetailsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ParcelDetailsModel value)  $default,){
final _that = this;
switch (_that) {
case _ParcelDetailsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ParcelDetailsModel value)?  $default,){
final _that = this;
switch (_that) {
case _ParcelDetailsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String number,  StatusModel status,  String stage,  Map<String, String> stageDates,  String deliveryTypeName,  List<ParcelItemModel> items,  List<StatusEventModel> history,  String? etaFrom,  String? etaTo,  int? weightGrams,  bool canSendNow,  String? freeStorageUntil,  SurchargeModel? surcharge,  PickupInfoModel? pickup,  CourierInfoModel? courier,  String? claimUntil)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ParcelDetailsModel() when $default != null:
return $default(_that.number,_that.status,_that.stage,_that.stageDates,_that.deliveryTypeName,_that.items,_that.history,_that.etaFrom,_that.etaTo,_that.weightGrams,_that.canSendNow,_that.freeStorageUntil,_that.surcharge,_that.pickup,_that.courier,_that.claimUntil);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String number,  StatusModel status,  String stage,  Map<String, String> stageDates,  String deliveryTypeName,  List<ParcelItemModel> items,  List<StatusEventModel> history,  String? etaFrom,  String? etaTo,  int? weightGrams,  bool canSendNow,  String? freeStorageUntil,  SurchargeModel? surcharge,  PickupInfoModel? pickup,  CourierInfoModel? courier,  String? claimUntil)  $default,) {final _that = this;
switch (_that) {
case _ParcelDetailsModel():
return $default(_that.number,_that.status,_that.stage,_that.stageDates,_that.deliveryTypeName,_that.items,_that.history,_that.etaFrom,_that.etaTo,_that.weightGrams,_that.canSendNow,_that.freeStorageUntil,_that.surcharge,_that.pickup,_that.courier,_that.claimUntil);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String number,  StatusModel status,  String stage,  Map<String, String> stageDates,  String deliveryTypeName,  List<ParcelItemModel> items,  List<StatusEventModel> history,  String? etaFrom,  String? etaTo,  int? weightGrams,  bool canSendNow,  String? freeStorageUntil,  SurchargeModel? surcharge,  PickupInfoModel? pickup,  CourierInfoModel? courier,  String? claimUntil)?  $default,) {final _that = this;
switch (_that) {
case _ParcelDetailsModel() when $default != null:
return $default(_that.number,_that.status,_that.stage,_that.stageDates,_that.deliveryTypeName,_that.items,_that.history,_that.etaFrom,_that.etaTo,_that.weightGrams,_that.canSendNow,_that.freeStorageUntil,_that.surcharge,_that.pickup,_that.courier,_that.claimUntil);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ParcelDetailsModel implements ParcelDetailsModel {
  const _ParcelDetailsModel({required this.number, required this.status, required this.stage, final  Map<String, String> stageDates = const <String, String>{}, this.deliveryTypeName = '', required final  List<ParcelItemModel> items, final  List<StatusEventModel> history = const <StatusEventModel>[], this.etaFrom, this.etaTo, this.weightGrams, this.canSendNow = false, this.freeStorageUntil, this.surcharge, this.pickup, this.courier, this.claimUntil}): _stageDates = stageDates,_items = items,_history = history;
  factory _ParcelDetailsModel.fromJson(Map<String, dynamic> json) => _$ParcelDetailsModelFromJson(json);

@override final  String number;
@override final  StatusModel status;
@override final  String stage;
 final  Map<String, String> _stageDates;
@override@JsonKey() Map<String, String> get stageDates {
  if (_stageDates is EqualUnmodifiableMapView) return _stageDates;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_stageDates);
}

@override@JsonKey() final  String deliveryTypeName;
 final  List<ParcelItemModel> _items;
@override List<ParcelItemModel> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

 final  List<StatusEventModel> _history;
@override@JsonKey() List<StatusEventModel> get history {
  if (_history is EqualUnmodifiableListView) return _history;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_history);
}

@override final  String? etaFrom;
@override final  String? etaTo;
@override final  int? weightGrams;
@override@JsonKey() final  bool canSendNow;
@override final  String? freeStorageUntil;
@override final  SurchargeModel? surcharge;
@override final  PickupInfoModel? pickup;
@override final  CourierInfoModel? courier;
@override final  String? claimUntil;

/// Create a copy of ParcelDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ParcelDetailsModelCopyWith<_ParcelDetailsModel> get copyWith => __$ParcelDetailsModelCopyWithImpl<_ParcelDetailsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ParcelDetailsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ParcelDetailsModel&&(identical(other.number, number) || other.number == number)&&(identical(other.status, status) || other.status == status)&&(identical(other.stage, stage) || other.stage == stage)&&const DeepCollectionEquality().equals(other._stageDates, _stageDates)&&(identical(other.deliveryTypeName, deliveryTypeName) || other.deliveryTypeName == deliveryTypeName)&&const DeepCollectionEquality().equals(other._items, _items)&&const DeepCollectionEquality().equals(other._history, _history)&&(identical(other.etaFrom, etaFrom) || other.etaFrom == etaFrom)&&(identical(other.etaTo, etaTo) || other.etaTo == etaTo)&&(identical(other.weightGrams, weightGrams) || other.weightGrams == weightGrams)&&(identical(other.canSendNow, canSendNow) || other.canSendNow == canSendNow)&&(identical(other.freeStorageUntil, freeStorageUntil) || other.freeStorageUntil == freeStorageUntil)&&(identical(other.surcharge, surcharge) || other.surcharge == surcharge)&&(identical(other.pickup, pickup) || other.pickup == pickup)&&(identical(other.courier, courier) || other.courier == courier)&&(identical(other.claimUntil, claimUntil) || other.claimUntil == claimUntil));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,number,status,stage,const DeepCollectionEquality().hash(_stageDates),deliveryTypeName,const DeepCollectionEquality().hash(_items),const DeepCollectionEquality().hash(_history),etaFrom,etaTo,weightGrams,canSendNow,freeStorageUntil,surcharge,pickup,courier,claimUntil);

@override
String toString() {
  return 'ParcelDetailsModel(number: $number, status: $status, stage: $stage, stageDates: $stageDates, deliveryTypeName: $deliveryTypeName, items: $items, history: $history, etaFrom: $etaFrom, etaTo: $etaTo, weightGrams: $weightGrams, canSendNow: $canSendNow, freeStorageUntil: $freeStorageUntil, surcharge: $surcharge, pickup: $pickup, courier: $courier, claimUntil: $claimUntil)';
}


}

/// @nodoc
abstract mixin class _$ParcelDetailsModelCopyWith<$Res> implements $ParcelDetailsModelCopyWith<$Res> {
  factory _$ParcelDetailsModelCopyWith(_ParcelDetailsModel value, $Res Function(_ParcelDetailsModel) _then) = __$ParcelDetailsModelCopyWithImpl;
@override @useResult
$Res call({
 String number, StatusModel status, String stage, Map<String, String> stageDates, String deliveryTypeName, List<ParcelItemModel> items, List<StatusEventModel> history, String? etaFrom, String? etaTo, int? weightGrams, bool canSendNow, String? freeStorageUntil, SurchargeModel? surcharge, PickupInfoModel? pickup, CourierInfoModel? courier, String? claimUntil
});


@override $StatusModelCopyWith<$Res> get status;@override $SurchargeModelCopyWith<$Res>? get surcharge;@override $PickupInfoModelCopyWith<$Res>? get pickup;@override $CourierInfoModelCopyWith<$Res>? get courier;

}
/// @nodoc
class __$ParcelDetailsModelCopyWithImpl<$Res>
    implements _$ParcelDetailsModelCopyWith<$Res> {
  __$ParcelDetailsModelCopyWithImpl(this._self, this._then);

  final _ParcelDetailsModel _self;
  final $Res Function(_ParcelDetailsModel) _then;

/// Create a copy of ParcelDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? number = null,Object? status = null,Object? stage = null,Object? stageDates = null,Object? deliveryTypeName = null,Object? items = null,Object? history = null,Object? etaFrom = freezed,Object? etaTo = freezed,Object? weightGrams = freezed,Object? canSendNow = null,Object? freeStorageUntil = freezed,Object? surcharge = freezed,Object? pickup = freezed,Object? courier = freezed,Object? claimUntil = freezed,}) {
  return _then(_ParcelDetailsModel(
number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StatusModel,stage: null == stage ? _self.stage : stage // ignore: cast_nullable_to_non_nullable
as String,stageDates: null == stageDates ? _self._stageDates : stageDates // ignore: cast_nullable_to_non_nullable
as Map<String, String>,deliveryTypeName: null == deliveryTypeName ? _self.deliveryTypeName : deliveryTypeName // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<ParcelItemModel>,history: null == history ? _self._history : history // ignore: cast_nullable_to_non_nullable
as List<StatusEventModel>,etaFrom: freezed == etaFrom ? _self.etaFrom : etaFrom // ignore: cast_nullable_to_non_nullable
as String?,etaTo: freezed == etaTo ? _self.etaTo : etaTo // ignore: cast_nullable_to_non_nullable
as String?,weightGrams: freezed == weightGrams ? _self.weightGrams : weightGrams // ignore: cast_nullable_to_non_nullable
as int?,canSendNow: null == canSendNow ? _self.canSendNow : canSendNow // ignore: cast_nullable_to_non_nullable
as bool,freeStorageUntil: freezed == freeStorageUntil ? _self.freeStorageUntil : freeStorageUntil // ignore: cast_nullable_to_non_nullable
as String?,surcharge: freezed == surcharge ? _self.surcharge : surcharge // ignore: cast_nullable_to_non_nullable
as SurchargeModel?,pickup: freezed == pickup ? _self.pickup : pickup // ignore: cast_nullable_to_non_nullable
as PickupInfoModel?,courier: freezed == courier ? _self.courier : courier // ignore: cast_nullable_to_non_nullable
as CourierInfoModel?,claimUntil: freezed == claimUntil ? _self.claimUntil : claimUntil // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of ParcelDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatusModelCopyWith<$Res> get status {
  
  return $StatusModelCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of ParcelDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SurchargeModelCopyWith<$Res>? get surcharge {
    if (_self.surcharge == null) {
    return null;
  }

  return $SurchargeModelCopyWith<$Res>(_self.surcharge!, (value) {
    return _then(_self.copyWith(surcharge: value));
  });
}/// Create a copy of ParcelDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PickupInfoModelCopyWith<$Res>? get pickup {
    if (_self.pickup == null) {
    return null;
  }

  return $PickupInfoModelCopyWith<$Res>(_self.pickup!, (value) {
    return _then(_self.copyWith(pickup: value));
  });
}/// Create a copy of ParcelDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CourierInfoModelCopyWith<$Res>? get courier {
    if (_self.courier == null) {
    return null;
  }

  return $CourierInfoModelCopyWith<$Res>(_self.courier!, (value) {
    return _then(_self.copyWith(courier: value));
  });
}
}


/// @nodoc
mixin _$ParcelItemModel {

 String get orderNumber; String get title; String get imageUrl; int get quantity;
/// Create a copy of ParcelItemModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParcelItemModelCopyWith<ParcelItemModel> get copyWith => _$ParcelItemModelCopyWithImpl<ParcelItemModel>(this as ParcelItemModel, _$identity);

  /// Serializes this ParcelItemModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParcelItemModel&&(identical(other.orderNumber, orderNumber) || other.orderNumber == orderNumber)&&(identical(other.title, title) || other.title == title)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,orderNumber,title,imageUrl,quantity);

@override
String toString() {
  return 'ParcelItemModel(orderNumber: $orderNumber, title: $title, imageUrl: $imageUrl, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class $ParcelItemModelCopyWith<$Res>  {
  factory $ParcelItemModelCopyWith(ParcelItemModel value, $Res Function(ParcelItemModel) _then) = _$ParcelItemModelCopyWithImpl;
@useResult
$Res call({
 String orderNumber, String title, String imageUrl, int quantity
});




}
/// @nodoc
class _$ParcelItemModelCopyWithImpl<$Res>
    implements $ParcelItemModelCopyWith<$Res> {
  _$ParcelItemModelCopyWithImpl(this._self, this._then);

  final ParcelItemModel _self;
  final $Res Function(ParcelItemModel) _then;

/// Create a copy of ParcelItemModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? orderNumber = null,Object? title = null,Object? imageUrl = null,Object? quantity = null,}) {
  return _then(_self.copyWith(
orderNumber: null == orderNumber ? _self.orderNumber : orderNumber // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ParcelItemModel].
extension ParcelItemModelPatterns on ParcelItemModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ParcelItemModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ParcelItemModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ParcelItemModel value)  $default,){
final _that = this;
switch (_that) {
case _ParcelItemModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ParcelItemModel value)?  $default,){
final _that = this;
switch (_that) {
case _ParcelItemModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String orderNumber,  String title,  String imageUrl,  int quantity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ParcelItemModel() when $default != null:
return $default(_that.orderNumber,_that.title,_that.imageUrl,_that.quantity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String orderNumber,  String title,  String imageUrl,  int quantity)  $default,) {final _that = this;
switch (_that) {
case _ParcelItemModel():
return $default(_that.orderNumber,_that.title,_that.imageUrl,_that.quantity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String orderNumber,  String title,  String imageUrl,  int quantity)?  $default,) {final _that = this;
switch (_that) {
case _ParcelItemModel() when $default != null:
return $default(_that.orderNumber,_that.title,_that.imageUrl,_that.quantity);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ParcelItemModel implements ParcelItemModel {
  const _ParcelItemModel({required this.orderNumber, required this.title, this.imageUrl = '', required this.quantity});
  factory _ParcelItemModel.fromJson(Map<String, dynamic> json) => _$ParcelItemModelFromJson(json);

@override final  String orderNumber;
@override final  String title;
@override@JsonKey() final  String imageUrl;
@override final  int quantity;

/// Create a copy of ParcelItemModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ParcelItemModelCopyWith<_ParcelItemModel> get copyWith => __$ParcelItemModelCopyWithImpl<_ParcelItemModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ParcelItemModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ParcelItemModel&&(identical(other.orderNumber, orderNumber) || other.orderNumber == orderNumber)&&(identical(other.title, title) || other.title == title)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,orderNumber,title,imageUrl,quantity);

@override
String toString() {
  return 'ParcelItemModel(orderNumber: $orderNumber, title: $title, imageUrl: $imageUrl, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class _$ParcelItemModelCopyWith<$Res> implements $ParcelItemModelCopyWith<$Res> {
  factory _$ParcelItemModelCopyWith(_ParcelItemModel value, $Res Function(_ParcelItemModel) _then) = __$ParcelItemModelCopyWithImpl;
@override @useResult
$Res call({
 String orderNumber, String title, String imageUrl, int quantity
});




}
/// @nodoc
class __$ParcelItemModelCopyWithImpl<$Res>
    implements _$ParcelItemModelCopyWith<$Res> {
  __$ParcelItemModelCopyWithImpl(this._self, this._then);

  final _ParcelItemModel _self;
  final $Res Function(_ParcelItemModel) _then;

/// Create a copy of ParcelItemModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? orderNumber = null,Object? title = null,Object? imageUrl = null,Object? quantity = null,}) {
  return _then(_ParcelItemModel(
orderNumber: null == orderNumber ? _self.orderNumber : orderNumber // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$SurchargeModel {

 int get weightGrams; int get ratePerKg; int get deliveryCost; int get paid; int get amount;
/// Create a copy of SurchargeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SurchargeModelCopyWith<SurchargeModel> get copyWith => _$SurchargeModelCopyWithImpl<SurchargeModel>(this as SurchargeModel, _$identity);

  /// Serializes this SurchargeModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SurchargeModel&&(identical(other.weightGrams, weightGrams) || other.weightGrams == weightGrams)&&(identical(other.ratePerKg, ratePerKg) || other.ratePerKg == ratePerKg)&&(identical(other.deliveryCost, deliveryCost) || other.deliveryCost == deliveryCost)&&(identical(other.paid, paid) || other.paid == paid)&&(identical(other.amount, amount) || other.amount == amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,weightGrams,ratePerKg,deliveryCost,paid,amount);

@override
String toString() {
  return 'SurchargeModel(weightGrams: $weightGrams, ratePerKg: $ratePerKg, deliveryCost: $deliveryCost, paid: $paid, amount: $amount)';
}


}

/// @nodoc
abstract mixin class $SurchargeModelCopyWith<$Res>  {
  factory $SurchargeModelCopyWith(SurchargeModel value, $Res Function(SurchargeModel) _then) = _$SurchargeModelCopyWithImpl;
@useResult
$Res call({
 int weightGrams, int ratePerKg, int deliveryCost, int paid, int amount
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
@pragma('vm:prefer-inline') @override $Res call({Object? weightGrams = null,Object? ratePerKg = null,Object? deliveryCost = null,Object? paid = null,Object? amount = null,}) {
  return _then(_self.copyWith(
weightGrams: null == weightGrams ? _self.weightGrams : weightGrams // ignore: cast_nullable_to_non_nullable
as int,ratePerKg: null == ratePerKg ? _self.ratePerKg : ratePerKg // ignore: cast_nullable_to_non_nullable
as int,deliveryCost: null == deliveryCost ? _self.deliveryCost : deliveryCost // ignore: cast_nullable_to_non_nullable
as int,paid: null == paid ? _self.paid : paid // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int weightGrams,  int ratePerKg,  int deliveryCost,  int paid,  int amount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SurchargeModel() when $default != null:
return $default(_that.weightGrams,_that.ratePerKg,_that.deliveryCost,_that.paid,_that.amount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int weightGrams,  int ratePerKg,  int deliveryCost,  int paid,  int amount)  $default,) {final _that = this;
switch (_that) {
case _SurchargeModel():
return $default(_that.weightGrams,_that.ratePerKg,_that.deliveryCost,_that.paid,_that.amount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int weightGrams,  int ratePerKg,  int deliveryCost,  int paid,  int amount)?  $default,) {final _that = this;
switch (_that) {
case _SurchargeModel() when $default != null:
return $default(_that.weightGrams,_that.ratePerKg,_that.deliveryCost,_that.paid,_that.amount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SurchargeModel implements SurchargeModel {
  const _SurchargeModel({required this.weightGrams, required this.ratePerKg, required this.deliveryCost, required this.paid, required this.amount});
  factory _SurchargeModel.fromJson(Map<String, dynamic> json) => _$SurchargeModelFromJson(json);

@override final  int weightGrams;
@override final  int ratePerKg;
@override final  int deliveryCost;
@override final  int paid;
@override final  int amount;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SurchargeModel&&(identical(other.weightGrams, weightGrams) || other.weightGrams == weightGrams)&&(identical(other.ratePerKg, ratePerKg) || other.ratePerKg == ratePerKg)&&(identical(other.deliveryCost, deliveryCost) || other.deliveryCost == deliveryCost)&&(identical(other.paid, paid) || other.paid == paid)&&(identical(other.amount, amount) || other.amount == amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,weightGrams,ratePerKg,deliveryCost,paid,amount);

@override
String toString() {
  return 'SurchargeModel(weightGrams: $weightGrams, ratePerKg: $ratePerKg, deliveryCost: $deliveryCost, paid: $paid, amount: $amount)';
}


}

/// @nodoc
abstract mixin class _$SurchargeModelCopyWith<$Res> implements $SurchargeModelCopyWith<$Res> {
  factory _$SurchargeModelCopyWith(_SurchargeModel value, $Res Function(_SurchargeModel) _then) = __$SurchargeModelCopyWithImpl;
@override @useResult
$Res call({
 int weightGrams, int ratePerKg, int deliveryCost, int paid, int amount
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
@override @pragma('vm:prefer-inline') $Res call({Object? weightGrams = null,Object? ratePerKg = null,Object? deliveryCost = null,Object? paid = null,Object? amount = null,}) {
  return _then(_SurchargeModel(
weightGrams: null == weightGrams ? _self.weightGrams : weightGrams // ignore: cast_nullable_to_non_nullable
as int,ratePerKg: null == ratePerKg ? _self.ratePerKg : ratePerKg // ignore: cast_nullable_to_non_nullable
as int,deliveryCost: null == deliveryCost ? _self.deliveryCost : deliveryCost // ignore: cast_nullable_to_non_nullable
as int,paid: null == paid ? _self.paid : paid // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$PickupInfoModel {

 String get code; String get pointName; String get address; String get hours; String get phone; int get amountDue;
/// Create a copy of PickupInfoModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PickupInfoModelCopyWith<PickupInfoModel> get copyWith => _$PickupInfoModelCopyWithImpl<PickupInfoModel>(this as PickupInfoModel, _$identity);

  /// Serializes this PickupInfoModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PickupInfoModel&&(identical(other.code, code) || other.code == code)&&(identical(other.pointName, pointName) || other.pointName == pointName)&&(identical(other.address, address) || other.address == address)&&(identical(other.hours, hours) || other.hours == hours)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.amountDue, amountDue) || other.amountDue == amountDue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,pointName,address,hours,phone,amountDue);

@override
String toString() {
  return 'PickupInfoModel(code: $code, pointName: $pointName, address: $address, hours: $hours, phone: $phone, amountDue: $amountDue)';
}


}

/// @nodoc
abstract mixin class $PickupInfoModelCopyWith<$Res>  {
  factory $PickupInfoModelCopyWith(PickupInfoModel value, $Res Function(PickupInfoModel) _then) = _$PickupInfoModelCopyWithImpl;
@useResult
$Res call({
 String code, String pointName, String address, String hours, String phone, int amountDue
});




}
/// @nodoc
class _$PickupInfoModelCopyWithImpl<$Res>
    implements $PickupInfoModelCopyWith<$Res> {
  _$PickupInfoModelCopyWithImpl(this._self, this._then);

  final PickupInfoModel _self;
  final $Res Function(PickupInfoModel) _then;

/// Create a copy of PickupInfoModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,Object? pointName = null,Object? address = null,Object? hours = null,Object? phone = null,Object? amountDue = null,}) {
  return _then(_self.copyWith(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,pointName: null == pointName ? _self.pointName : pointName // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,hours: null == hours ? _self.hours : hours // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,amountDue: null == amountDue ? _self.amountDue : amountDue // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PickupInfoModel].
extension PickupInfoModelPatterns on PickupInfoModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PickupInfoModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PickupInfoModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PickupInfoModel value)  $default,){
final _that = this;
switch (_that) {
case _PickupInfoModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PickupInfoModel value)?  $default,){
final _that = this;
switch (_that) {
case _PickupInfoModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String code,  String pointName,  String address,  String hours,  String phone,  int amountDue)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PickupInfoModel() when $default != null:
return $default(_that.code,_that.pointName,_that.address,_that.hours,_that.phone,_that.amountDue);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String code,  String pointName,  String address,  String hours,  String phone,  int amountDue)  $default,) {final _that = this;
switch (_that) {
case _PickupInfoModel():
return $default(_that.code,_that.pointName,_that.address,_that.hours,_that.phone,_that.amountDue);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String code,  String pointName,  String address,  String hours,  String phone,  int amountDue)?  $default,) {final _that = this;
switch (_that) {
case _PickupInfoModel() when $default != null:
return $default(_that.code,_that.pointName,_that.address,_that.hours,_that.phone,_that.amountDue);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PickupInfoModel implements PickupInfoModel {
  const _PickupInfoModel({required this.code, required this.pointName, required this.address, required this.hours, required this.phone, this.amountDue = 0});
  factory _PickupInfoModel.fromJson(Map<String, dynamic> json) => _$PickupInfoModelFromJson(json);

@override final  String code;
@override final  String pointName;
@override final  String address;
@override final  String hours;
@override final  String phone;
@override@JsonKey() final  int amountDue;

/// Create a copy of PickupInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PickupInfoModelCopyWith<_PickupInfoModel> get copyWith => __$PickupInfoModelCopyWithImpl<_PickupInfoModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PickupInfoModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PickupInfoModel&&(identical(other.code, code) || other.code == code)&&(identical(other.pointName, pointName) || other.pointName == pointName)&&(identical(other.address, address) || other.address == address)&&(identical(other.hours, hours) || other.hours == hours)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.amountDue, amountDue) || other.amountDue == amountDue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,pointName,address,hours,phone,amountDue);

@override
String toString() {
  return 'PickupInfoModel(code: $code, pointName: $pointName, address: $address, hours: $hours, phone: $phone, amountDue: $amountDue)';
}


}

/// @nodoc
abstract mixin class _$PickupInfoModelCopyWith<$Res> implements $PickupInfoModelCopyWith<$Res> {
  factory _$PickupInfoModelCopyWith(_PickupInfoModel value, $Res Function(_PickupInfoModel) _then) = __$PickupInfoModelCopyWithImpl;
@override @useResult
$Res call({
 String code, String pointName, String address, String hours, String phone, int amountDue
});




}
/// @nodoc
class __$PickupInfoModelCopyWithImpl<$Res>
    implements _$PickupInfoModelCopyWith<$Res> {
  __$PickupInfoModelCopyWithImpl(this._self, this._then);

  final _PickupInfoModel _self;
  final $Res Function(_PickupInfoModel) _then;

/// Create a copy of PickupInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? pointName = null,Object? address = null,Object? hours = null,Object? phone = null,Object? amountDue = null,}) {
  return _then(_PickupInfoModel(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,pointName: null == pointName ? _self.pointName : pointName // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,hours: null == hours ? _self.hours : hours // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,amountDue: null == amountDue ? _self.amountDue : amountDue // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$CourierInfoModel {

 String get name; String get phone; int get amountDue;
/// Create a copy of CourierInfoModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CourierInfoModelCopyWith<CourierInfoModel> get copyWith => _$CourierInfoModelCopyWithImpl<CourierInfoModel>(this as CourierInfoModel, _$identity);

  /// Serializes this CourierInfoModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CourierInfoModel&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.amountDue, amountDue) || other.amountDue == amountDue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,phone,amountDue);

@override
String toString() {
  return 'CourierInfoModel(name: $name, phone: $phone, amountDue: $amountDue)';
}


}

/// @nodoc
abstract mixin class $CourierInfoModelCopyWith<$Res>  {
  factory $CourierInfoModelCopyWith(CourierInfoModel value, $Res Function(CourierInfoModel) _then) = _$CourierInfoModelCopyWithImpl;
@useResult
$Res call({
 String name, String phone, int amountDue
});




}
/// @nodoc
class _$CourierInfoModelCopyWithImpl<$Res>
    implements $CourierInfoModelCopyWith<$Res> {
  _$CourierInfoModelCopyWithImpl(this._self, this._then);

  final CourierInfoModel _self;
  final $Res Function(CourierInfoModel) _then;

/// Create a copy of CourierInfoModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? phone = null,Object? amountDue = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,amountDue: null == amountDue ? _self.amountDue : amountDue // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CourierInfoModel].
extension CourierInfoModelPatterns on CourierInfoModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CourierInfoModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CourierInfoModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CourierInfoModel value)  $default,){
final _that = this;
switch (_that) {
case _CourierInfoModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CourierInfoModel value)?  $default,){
final _that = this;
switch (_that) {
case _CourierInfoModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String phone,  int amountDue)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CourierInfoModel() when $default != null:
return $default(_that.name,_that.phone,_that.amountDue);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String phone,  int amountDue)  $default,) {final _that = this;
switch (_that) {
case _CourierInfoModel():
return $default(_that.name,_that.phone,_that.amountDue);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String phone,  int amountDue)?  $default,) {final _that = this;
switch (_that) {
case _CourierInfoModel() when $default != null:
return $default(_that.name,_that.phone,_that.amountDue);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CourierInfoModel implements CourierInfoModel {
  const _CourierInfoModel({required this.name, required this.phone, this.amountDue = 0});
  factory _CourierInfoModel.fromJson(Map<String, dynamic> json) => _$CourierInfoModelFromJson(json);

@override final  String name;
@override final  String phone;
@override@JsonKey() final  int amountDue;

/// Create a copy of CourierInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CourierInfoModelCopyWith<_CourierInfoModel> get copyWith => __$CourierInfoModelCopyWithImpl<_CourierInfoModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CourierInfoModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CourierInfoModel&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.amountDue, amountDue) || other.amountDue == amountDue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,phone,amountDue);

@override
String toString() {
  return 'CourierInfoModel(name: $name, phone: $phone, amountDue: $amountDue)';
}


}

/// @nodoc
abstract mixin class _$CourierInfoModelCopyWith<$Res> implements $CourierInfoModelCopyWith<$Res> {
  factory _$CourierInfoModelCopyWith(_CourierInfoModel value, $Res Function(_CourierInfoModel) _then) = __$CourierInfoModelCopyWithImpl;
@override @useResult
$Res call({
 String name, String phone, int amountDue
});




}
/// @nodoc
class __$CourierInfoModelCopyWithImpl<$Res>
    implements _$CourierInfoModelCopyWith<$Res> {
  __$CourierInfoModelCopyWithImpl(this._self, this._then);

  final _CourierInfoModel _self;
  final $Res Function(_CourierInfoModel) _then;

/// Create a copy of CourierInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? phone = null,Object? amountDue = null,}) {
  return _then(_CourierInfoModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,amountDue: null == amountDue ? _self.amountDue : amountDue // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
