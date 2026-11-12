// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checkout_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CheckoutPreviewModel {

 List<DeliveryChoiceModel> get deliveryOptions; String? get deliveryType; List<PickupPointModel> get pickupPoints; List<ExtraServiceModel> get services; int get courierPrice; int? get courierFreeFrom; CheckoutSummaryModel get summary;
/// Create a copy of CheckoutPreviewModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckoutPreviewModelCopyWith<CheckoutPreviewModel> get copyWith => _$CheckoutPreviewModelCopyWithImpl<CheckoutPreviewModel>(this as CheckoutPreviewModel, _$identity);

  /// Serializes this CheckoutPreviewModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckoutPreviewModel&&const DeepCollectionEquality().equals(other.deliveryOptions, deliveryOptions)&&(identical(other.deliveryType, deliveryType) || other.deliveryType == deliveryType)&&const DeepCollectionEquality().equals(other.pickupPoints, pickupPoints)&&const DeepCollectionEquality().equals(other.services, services)&&(identical(other.courierPrice, courierPrice) || other.courierPrice == courierPrice)&&(identical(other.courierFreeFrom, courierFreeFrom) || other.courierFreeFrom == courierFreeFrom)&&(identical(other.summary, summary) || other.summary == summary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(deliveryOptions),deliveryType,const DeepCollectionEquality().hash(pickupPoints),const DeepCollectionEquality().hash(services),courierPrice,courierFreeFrom,summary);

@override
String toString() {
  return 'CheckoutPreviewModel(deliveryOptions: $deliveryOptions, deliveryType: $deliveryType, pickupPoints: $pickupPoints, services: $services, courierPrice: $courierPrice, courierFreeFrom: $courierFreeFrom, summary: $summary)';
}


}

/// @nodoc
abstract mixin class $CheckoutPreviewModelCopyWith<$Res>  {
  factory $CheckoutPreviewModelCopyWith(CheckoutPreviewModel value, $Res Function(CheckoutPreviewModel) _then) = _$CheckoutPreviewModelCopyWithImpl;
@useResult
$Res call({
 List<DeliveryChoiceModel> deliveryOptions, String? deliveryType, List<PickupPointModel> pickupPoints, List<ExtraServiceModel> services, int courierPrice, int? courierFreeFrom, CheckoutSummaryModel summary
});


$CheckoutSummaryModelCopyWith<$Res> get summary;

}
/// @nodoc
class _$CheckoutPreviewModelCopyWithImpl<$Res>
    implements $CheckoutPreviewModelCopyWith<$Res> {
  _$CheckoutPreviewModelCopyWithImpl(this._self, this._then);

  final CheckoutPreviewModel _self;
  final $Res Function(CheckoutPreviewModel) _then;

/// Create a copy of CheckoutPreviewModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? deliveryOptions = null,Object? deliveryType = freezed,Object? pickupPoints = null,Object? services = null,Object? courierPrice = null,Object? courierFreeFrom = freezed,Object? summary = null,}) {
  return _then(_self.copyWith(
deliveryOptions: null == deliveryOptions ? _self.deliveryOptions : deliveryOptions // ignore: cast_nullable_to_non_nullable
as List<DeliveryChoiceModel>,deliveryType: freezed == deliveryType ? _self.deliveryType : deliveryType // ignore: cast_nullable_to_non_nullable
as String?,pickupPoints: null == pickupPoints ? _self.pickupPoints : pickupPoints // ignore: cast_nullable_to_non_nullable
as List<PickupPointModel>,services: null == services ? _self.services : services // ignore: cast_nullable_to_non_nullable
as List<ExtraServiceModel>,courierPrice: null == courierPrice ? _self.courierPrice : courierPrice // ignore: cast_nullable_to_non_nullable
as int,courierFreeFrom: freezed == courierFreeFrom ? _self.courierFreeFrom : courierFreeFrom // ignore: cast_nullable_to_non_nullable
as int?,summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as CheckoutSummaryModel,
  ));
}
/// Create a copy of CheckoutPreviewModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CheckoutSummaryModelCopyWith<$Res> get summary {
  
  return $CheckoutSummaryModelCopyWith<$Res>(_self.summary, (value) {
    return _then(_self.copyWith(summary: value));
  });
}
}


/// Adds pattern-matching-related methods to [CheckoutPreviewModel].
extension CheckoutPreviewModelPatterns on CheckoutPreviewModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CheckoutPreviewModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckoutPreviewModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CheckoutPreviewModel value)  $default,){
final _that = this;
switch (_that) {
case _CheckoutPreviewModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CheckoutPreviewModel value)?  $default,){
final _that = this;
switch (_that) {
case _CheckoutPreviewModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<DeliveryChoiceModel> deliveryOptions,  String? deliveryType,  List<PickupPointModel> pickupPoints,  List<ExtraServiceModel> services,  int courierPrice,  int? courierFreeFrom,  CheckoutSummaryModel summary)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CheckoutPreviewModel() when $default != null:
return $default(_that.deliveryOptions,_that.deliveryType,_that.pickupPoints,_that.services,_that.courierPrice,_that.courierFreeFrom,_that.summary);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<DeliveryChoiceModel> deliveryOptions,  String? deliveryType,  List<PickupPointModel> pickupPoints,  List<ExtraServiceModel> services,  int courierPrice,  int? courierFreeFrom,  CheckoutSummaryModel summary)  $default,) {final _that = this;
switch (_that) {
case _CheckoutPreviewModel():
return $default(_that.deliveryOptions,_that.deliveryType,_that.pickupPoints,_that.services,_that.courierPrice,_that.courierFreeFrom,_that.summary);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<DeliveryChoiceModel> deliveryOptions,  String? deliveryType,  List<PickupPointModel> pickupPoints,  List<ExtraServiceModel> services,  int courierPrice,  int? courierFreeFrom,  CheckoutSummaryModel summary)?  $default,) {final _that = this;
switch (_that) {
case _CheckoutPreviewModel() when $default != null:
return $default(_that.deliveryOptions,_that.deliveryType,_that.pickupPoints,_that.services,_that.courierPrice,_that.courierFreeFrom,_that.summary);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CheckoutPreviewModel implements CheckoutPreviewModel {
  const _CheckoutPreviewModel({required final  List<DeliveryChoiceModel> deliveryOptions, this.deliveryType, required final  List<PickupPointModel> pickupPoints, required final  List<ExtraServiceModel> services, required this.courierPrice, this.courierFreeFrom, required this.summary}): _deliveryOptions = deliveryOptions,_pickupPoints = pickupPoints,_services = services;
  factory _CheckoutPreviewModel.fromJson(Map<String, dynamic> json) => _$CheckoutPreviewModelFromJson(json);

 final  List<DeliveryChoiceModel> _deliveryOptions;
@override List<DeliveryChoiceModel> get deliveryOptions {
  if (_deliveryOptions is EqualUnmodifiableListView) return _deliveryOptions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_deliveryOptions);
}

@override final  String? deliveryType;
 final  List<PickupPointModel> _pickupPoints;
@override List<PickupPointModel> get pickupPoints {
  if (_pickupPoints is EqualUnmodifiableListView) return _pickupPoints;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_pickupPoints);
}

 final  List<ExtraServiceModel> _services;
@override List<ExtraServiceModel> get services {
  if (_services is EqualUnmodifiableListView) return _services;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_services);
}

@override final  int courierPrice;
@override final  int? courierFreeFrom;
@override final  CheckoutSummaryModel summary;

/// Create a copy of CheckoutPreviewModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckoutPreviewModelCopyWith<_CheckoutPreviewModel> get copyWith => __$CheckoutPreviewModelCopyWithImpl<_CheckoutPreviewModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CheckoutPreviewModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckoutPreviewModel&&const DeepCollectionEquality().equals(other._deliveryOptions, _deliveryOptions)&&(identical(other.deliveryType, deliveryType) || other.deliveryType == deliveryType)&&const DeepCollectionEquality().equals(other._pickupPoints, _pickupPoints)&&const DeepCollectionEquality().equals(other._services, _services)&&(identical(other.courierPrice, courierPrice) || other.courierPrice == courierPrice)&&(identical(other.courierFreeFrom, courierFreeFrom) || other.courierFreeFrom == courierFreeFrom)&&(identical(other.summary, summary) || other.summary == summary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_deliveryOptions),deliveryType,const DeepCollectionEquality().hash(_pickupPoints),const DeepCollectionEquality().hash(_services),courierPrice,courierFreeFrom,summary);

@override
String toString() {
  return 'CheckoutPreviewModel(deliveryOptions: $deliveryOptions, deliveryType: $deliveryType, pickupPoints: $pickupPoints, services: $services, courierPrice: $courierPrice, courierFreeFrom: $courierFreeFrom, summary: $summary)';
}


}

/// @nodoc
abstract mixin class _$CheckoutPreviewModelCopyWith<$Res> implements $CheckoutPreviewModelCopyWith<$Res> {
  factory _$CheckoutPreviewModelCopyWith(_CheckoutPreviewModel value, $Res Function(_CheckoutPreviewModel) _then) = __$CheckoutPreviewModelCopyWithImpl;
@override @useResult
$Res call({
 List<DeliveryChoiceModel> deliveryOptions, String? deliveryType, List<PickupPointModel> pickupPoints, List<ExtraServiceModel> services, int courierPrice, int? courierFreeFrom, CheckoutSummaryModel summary
});


@override $CheckoutSummaryModelCopyWith<$Res> get summary;

}
/// @nodoc
class __$CheckoutPreviewModelCopyWithImpl<$Res>
    implements _$CheckoutPreviewModelCopyWith<$Res> {
  __$CheckoutPreviewModelCopyWithImpl(this._self, this._then);

  final _CheckoutPreviewModel _self;
  final $Res Function(_CheckoutPreviewModel) _then;

/// Create a copy of CheckoutPreviewModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? deliveryOptions = null,Object? deliveryType = freezed,Object? pickupPoints = null,Object? services = null,Object? courierPrice = null,Object? courierFreeFrom = freezed,Object? summary = null,}) {
  return _then(_CheckoutPreviewModel(
deliveryOptions: null == deliveryOptions ? _self._deliveryOptions : deliveryOptions // ignore: cast_nullable_to_non_nullable
as List<DeliveryChoiceModel>,deliveryType: freezed == deliveryType ? _self.deliveryType : deliveryType // ignore: cast_nullable_to_non_nullable
as String?,pickupPoints: null == pickupPoints ? _self._pickupPoints : pickupPoints // ignore: cast_nullable_to_non_nullable
as List<PickupPointModel>,services: null == services ? _self._services : services // ignore: cast_nullable_to_non_nullable
as List<ExtraServiceModel>,courierPrice: null == courierPrice ? _self.courierPrice : courierPrice // ignore: cast_nullable_to_non_nullable
as int,courierFreeFrom: freezed == courierFreeFrom ? _self.courierFreeFrom : courierFreeFrom // ignore: cast_nullable_to_non_nullable
as int?,summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as CheckoutSummaryModel,
  ));
}

/// Create a copy of CheckoutPreviewModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CheckoutSummaryModelCopyWith<$Res> get summary {
  
  return $CheckoutSummaryModelCopyWith<$Res>(_self.summary, (value) {
    return _then(_self.copyWith(summary: value));
  });
}
}


/// @nodoc
mixin _$DeliveryChoiceModel {

 String get type; String get name; String get term; int get price; String? get unavailableReason;
/// Create a copy of DeliveryChoiceModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeliveryChoiceModelCopyWith<DeliveryChoiceModel> get copyWith => _$DeliveryChoiceModelCopyWithImpl<DeliveryChoiceModel>(this as DeliveryChoiceModel, _$identity);

  /// Serializes this DeliveryChoiceModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeliveryChoiceModel&&(identical(other.type, type) || other.type == type)&&(identical(other.name, name) || other.name == name)&&(identical(other.term, term) || other.term == term)&&(identical(other.price, price) || other.price == price)&&(identical(other.unavailableReason, unavailableReason) || other.unavailableReason == unavailableReason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,name,term,price,unavailableReason);

@override
String toString() {
  return 'DeliveryChoiceModel(type: $type, name: $name, term: $term, price: $price, unavailableReason: $unavailableReason)';
}


}

/// @nodoc
abstract mixin class $DeliveryChoiceModelCopyWith<$Res>  {
  factory $DeliveryChoiceModelCopyWith(DeliveryChoiceModel value, $Res Function(DeliveryChoiceModel) _then) = _$DeliveryChoiceModelCopyWithImpl;
@useResult
$Res call({
 String type, String name, String term, int price, String? unavailableReason
});




}
/// @nodoc
class _$DeliveryChoiceModelCopyWithImpl<$Res>
    implements $DeliveryChoiceModelCopyWith<$Res> {
  _$DeliveryChoiceModelCopyWithImpl(this._self, this._then);

  final DeliveryChoiceModel _self;
  final $Res Function(DeliveryChoiceModel) _then;

/// Create a copy of DeliveryChoiceModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? name = null,Object? term = null,Object? price = null,Object? unavailableReason = freezed,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,term: null == term ? _self.term : term // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,unavailableReason: freezed == unavailableReason ? _self.unavailableReason : unavailableReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DeliveryChoiceModel].
extension DeliveryChoiceModelPatterns on DeliveryChoiceModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeliveryChoiceModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeliveryChoiceModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeliveryChoiceModel value)  $default,){
final _that = this;
switch (_that) {
case _DeliveryChoiceModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeliveryChoiceModel value)?  $default,){
final _that = this;
switch (_that) {
case _DeliveryChoiceModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String type,  String name,  String term,  int price,  String? unavailableReason)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeliveryChoiceModel() when $default != null:
return $default(_that.type,_that.name,_that.term,_that.price,_that.unavailableReason);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String type,  String name,  String term,  int price,  String? unavailableReason)  $default,) {final _that = this;
switch (_that) {
case _DeliveryChoiceModel():
return $default(_that.type,_that.name,_that.term,_that.price,_that.unavailableReason);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String type,  String name,  String term,  int price,  String? unavailableReason)?  $default,) {final _that = this;
switch (_that) {
case _DeliveryChoiceModel() when $default != null:
return $default(_that.type,_that.name,_that.term,_that.price,_that.unavailableReason);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeliveryChoiceModel implements DeliveryChoiceModel {
  const _DeliveryChoiceModel({required this.type, required this.name, required this.term, required this.price, this.unavailableReason});
  factory _DeliveryChoiceModel.fromJson(Map<String, dynamic> json) => _$DeliveryChoiceModelFromJson(json);

@override final  String type;
@override final  String name;
@override final  String term;
@override final  int price;
@override final  String? unavailableReason;

/// Create a copy of DeliveryChoiceModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeliveryChoiceModelCopyWith<_DeliveryChoiceModel> get copyWith => __$DeliveryChoiceModelCopyWithImpl<_DeliveryChoiceModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeliveryChoiceModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeliveryChoiceModel&&(identical(other.type, type) || other.type == type)&&(identical(other.name, name) || other.name == name)&&(identical(other.term, term) || other.term == term)&&(identical(other.price, price) || other.price == price)&&(identical(other.unavailableReason, unavailableReason) || other.unavailableReason == unavailableReason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,name,term,price,unavailableReason);

@override
String toString() {
  return 'DeliveryChoiceModel(type: $type, name: $name, term: $term, price: $price, unavailableReason: $unavailableReason)';
}


}

/// @nodoc
abstract mixin class _$DeliveryChoiceModelCopyWith<$Res> implements $DeliveryChoiceModelCopyWith<$Res> {
  factory _$DeliveryChoiceModelCopyWith(_DeliveryChoiceModel value, $Res Function(_DeliveryChoiceModel) _then) = __$DeliveryChoiceModelCopyWithImpl;
@override @useResult
$Res call({
 String type, String name, String term, int price, String? unavailableReason
});




}
/// @nodoc
class __$DeliveryChoiceModelCopyWithImpl<$Res>
    implements _$DeliveryChoiceModelCopyWith<$Res> {
  __$DeliveryChoiceModelCopyWithImpl(this._self, this._then);

  final _DeliveryChoiceModel _self;
  final $Res Function(_DeliveryChoiceModel) _then;

/// Create a copy of DeliveryChoiceModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? name = null,Object? term = null,Object? price = null,Object? unavailableReason = freezed,}) {
  return _then(_DeliveryChoiceModel(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,term: null == term ? _self.term : term // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,unavailableReason: freezed == unavailableReason ? _self.unavailableReason : unavailableReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$PickupPointModel {

 String get id; String get name; String get address; String get hours; String get phone;
/// Create a copy of PickupPointModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PickupPointModelCopyWith<PickupPointModel> get copyWith => _$PickupPointModelCopyWithImpl<PickupPointModel>(this as PickupPointModel, _$identity);

  /// Serializes this PickupPointModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PickupPointModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.address, address) || other.address == address)&&(identical(other.hours, hours) || other.hours == hours)&&(identical(other.phone, phone) || other.phone == phone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,address,hours,phone);

@override
String toString() {
  return 'PickupPointModel(id: $id, name: $name, address: $address, hours: $hours, phone: $phone)';
}


}

/// @nodoc
abstract mixin class $PickupPointModelCopyWith<$Res>  {
  factory $PickupPointModelCopyWith(PickupPointModel value, $Res Function(PickupPointModel) _then) = _$PickupPointModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, String address, String hours, String phone
});




}
/// @nodoc
class _$PickupPointModelCopyWithImpl<$Res>
    implements $PickupPointModelCopyWith<$Res> {
  _$PickupPointModelCopyWithImpl(this._self, this._then);

  final PickupPointModel _self;
  final $Res Function(PickupPointModel) _then;

/// Create a copy of PickupPointModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? address = null,Object? hours = null,Object? phone = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,hours: null == hours ? _self.hours : hours // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PickupPointModel].
extension PickupPointModelPatterns on PickupPointModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PickupPointModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PickupPointModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PickupPointModel value)  $default,){
final _that = this;
switch (_that) {
case _PickupPointModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PickupPointModel value)?  $default,){
final _that = this;
switch (_that) {
case _PickupPointModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String address,  String hours,  String phone)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PickupPointModel() when $default != null:
return $default(_that.id,_that.name,_that.address,_that.hours,_that.phone);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String address,  String hours,  String phone)  $default,) {final _that = this;
switch (_that) {
case _PickupPointModel():
return $default(_that.id,_that.name,_that.address,_that.hours,_that.phone);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String address,  String hours,  String phone)?  $default,) {final _that = this;
switch (_that) {
case _PickupPointModel() when $default != null:
return $default(_that.id,_that.name,_that.address,_that.hours,_that.phone);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PickupPointModel implements PickupPointModel {
  const _PickupPointModel({required this.id, required this.name, required this.address, required this.hours, required this.phone});
  factory _PickupPointModel.fromJson(Map<String, dynamic> json) => _$PickupPointModelFromJson(json);

@override final  String id;
@override final  String name;
@override final  String address;
@override final  String hours;
@override final  String phone;

/// Create a copy of PickupPointModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PickupPointModelCopyWith<_PickupPointModel> get copyWith => __$PickupPointModelCopyWithImpl<_PickupPointModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PickupPointModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PickupPointModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.address, address) || other.address == address)&&(identical(other.hours, hours) || other.hours == hours)&&(identical(other.phone, phone) || other.phone == phone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,address,hours,phone);

@override
String toString() {
  return 'PickupPointModel(id: $id, name: $name, address: $address, hours: $hours, phone: $phone)';
}


}

/// @nodoc
abstract mixin class _$PickupPointModelCopyWith<$Res> implements $PickupPointModelCopyWith<$Res> {
  factory _$PickupPointModelCopyWith(_PickupPointModel value, $Res Function(_PickupPointModel) _then) = __$PickupPointModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String address, String hours, String phone
});




}
/// @nodoc
class __$PickupPointModelCopyWithImpl<$Res>
    implements _$PickupPointModelCopyWith<$Res> {
  __$PickupPointModelCopyWithImpl(this._self, this._then);

  final _PickupPointModel _self;
  final $Res Function(_PickupPointModel) _then;

/// Create a copy of PickupPointModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? address = null,Object? hours = null,Object? phone = null,}) {
  return _then(_PickupPointModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,hours: null == hours ? _self.hours : hours // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ExtraServiceModel {

 String get id; String get title; int get price;
/// Create a copy of ExtraServiceModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExtraServiceModelCopyWith<ExtraServiceModel> get copyWith => _$ExtraServiceModelCopyWithImpl<ExtraServiceModel>(this as ExtraServiceModel, _$identity);

  /// Serializes this ExtraServiceModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExtraServiceModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.price, price) || other.price == price));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,price);

@override
String toString() {
  return 'ExtraServiceModel(id: $id, title: $title, price: $price)';
}


}

/// @nodoc
abstract mixin class $ExtraServiceModelCopyWith<$Res>  {
  factory $ExtraServiceModelCopyWith(ExtraServiceModel value, $Res Function(ExtraServiceModel) _then) = _$ExtraServiceModelCopyWithImpl;
@useResult
$Res call({
 String id, String title, int price
});




}
/// @nodoc
class _$ExtraServiceModelCopyWithImpl<$Res>
    implements $ExtraServiceModelCopyWith<$Res> {
  _$ExtraServiceModelCopyWithImpl(this._self, this._then);

  final ExtraServiceModel _self;
  final $Res Function(ExtraServiceModel) _then;

/// Create a copy of ExtraServiceModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? price = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ExtraServiceModel].
extension ExtraServiceModelPatterns on ExtraServiceModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExtraServiceModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExtraServiceModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExtraServiceModel value)  $default,){
final _that = this;
switch (_that) {
case _ExtraServiceModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExtraServiceModel value)?  $default,){
final _that = this;
switch (_that) {
case _ExtraServiceModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  int price)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExtraServiceModel() when $default != null:
return $default(_that.id,_that.title,_that.price);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  int price)  $default,) {final _that = this;
switch (_that) {
case _ExtraServiceModel():
return $default(_that.id,_that.title,_that.price);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  int price)?  $default,) {final _that = this;
switch (_that) {
case _ExtraServiceModel() when $default != null:
return $default(_that.id,_that.title,_that.price);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ExtraServiceModel implements ExtraServiceModel {
  const _ExtraServiceModel({required this.id, required this.title, required this.price});
  factory _ExtraServiceModel.fromJson(Map<String, dynamic> json) => _$ExtraServiceModelFromJson(json);

@override final  String id;
@override final  String title;
@override final  int price;

/// Create a copy of ExtraServiceModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExtraServiceModelCopyWith<_ExtraServiceModel> get copyWith => __$ExtraServiceModelCopyWithImpl<_ExtraServiceModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExtraServiceModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExtraServiceModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.price, price) || other.price == price));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,price);

@override
String toString() {
  return 'ExtraServiceModel(id: $id, title: $title, price: $price)';
}


}

/// @nodoc
abstract mixin class _$ExtraServiceModelCopyWith<$Res> implements $ExtraServiceModelCopyWith<$Res> {
  factory _$ExtraServiceModelCopyWith(_ExtraServiceModel value, $Res Function(_ExtraServiceModel) _then) = __$ExtraServiceModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, int price
});




}
/// @nodoc
class __$ExtraServiceModelCopyWithImpl<$Res>
    implements _$ExtraServiceModelCopyWith<$Res> {
  __$ExtraServiceModelCopyWithImpl(this._self, this._then);

  final _ExtraServiceModel _self;
  final $Res Function(_ExtraServiceModel) _then;

/// Create a copy of ExtraServiceModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? price = null,}) {
  return _then(_ExtraServiceModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$CheckoutSummaryModel {

 int get items; int get chinaDelivery; int get internationalEstimate; int get courier; int get services; int get discount; int get total; int get payNow; int get payLater;
/// Create a copy of CheckoutSummaryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckoutSummaryModelCopyWith<CheckoutSummaryModel> get copyWith => _$CheckoutSummaryModelCopyWithImpl<CheckoutSummaryModel>(this as CheckoutSummaryModel, _$identity);

  /// Serializes this CheckoutSummaryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckoutSummaryModel&&(identical(other.items, items) || other.items == items)&&(identical(other.chinaDelivery, chinaDelivery) || other.chinaDelivery == chinaDelivery)&&(identical(other.internationalEstimate, internationalEstimate) || other.internationalEstimate == internationalEstimate)&&(identical(other.courier, courier) || other.courier == courier)&&(identical(other.services, services) || other.services == services)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.total, total) || other.total == total)&&(identical(other.payNow, payNow) || other.payNow == payNow)&&(identical(other.payLater, payLater) || other.payLater == payLater));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,items,chinaDelivery,internationalEstimate,courier,services,discount,total,payNow,payLater);

@override
String toString() {
  return 'CheckoutSummaryModel(items: $items, chinaDelivery: $chinaDelivery, internationalEstimate: $internationalEstimate, courier: $courier, services: $services, discount: $discount, total: $total, payNow: $payNow, payLater: $payLater)';
}


}

/// @nodoc
abstract mixin class $CheckoutSummaryModelCopyWith<$Res>  {
  factory $CheckoutSummaryModelCopyWith(CheckoutSummaryModel value, $Res Function(CheckoutSummaryModel) _then) = _$CheckoutSummaryModelCopyWithImpl;
@useResult
$Res call({
 int items, int chinaDelivery, int internationalEstimate, int courier, int services, int discount, int total, int payNow, int payLater
});




}
/// @nodoc
class _$CheckoutSummaryModelCopyWithImpl<$Res>
    implements $CheckoutSummaryModelCopyWith<$Res> {
  _$CheckoutSummaryModelCopyWithImpl(this._self, this._then);

  final CheckoutSummaryModel _self;
  final $Res Function(CheckoutSummaryModel) _then;

/// Create a copy of CheckoutSummaryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? chinaDelivery = null,Object? internationalEstimate = null,Object? courier = null,Object? services = null,Object? discount = null,Object? total = null,Object? payNow = null,Object? payLater = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as int,chinaDelivery: null == chinaDelivery ? _self.chinaDelivery : chinaDelivery // ignore: cast_nullable_to_non_nullable
as int,internationalEstimate: null == internationalEstimate ? _self.internationalEstimate : internationalEstimate // ignore: cast_nullable_to_non_nullable
as int,courier: null == courier ? _self.courier : courier // ignore: cast_nullable_to_non_nullable
as int,services: null == services ? _self.services : services // ignore: cast_nullable_to_non_nullable
as int,discount: null == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,payNow: null == payNow ? _self.payNow : payNow // ignore: cast_nullable_to_non_nullable
as int,payLater: null == payLater ? _self.payLater : payLater // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CheckoutSummaryModel].
extension CheckoutSummaryModelPatterns on CheckoutSummaryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CheckoutSummaryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckoutSummaryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CheckoutSummaryModel value)  $default,){
final _that = this;
switch (_that) {
case _CheckoutSummaryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CheckoutSummaryModel value)?  $default,){
final _that = this;
switch (_that) {
case _CheckoutSummaryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int items,  int chinaDelivery,  int internationalEstimate,  int courier,  int services,  int discount,  int total,  int payNow,  int payLater)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CheckoutSummaryModel() when $default != null:
return $default(_that.items,_that.chinaDelivery,_that.internationalEstimate,_that.courier,_that.services,_that.discount,_that.total,_that.payNow,_that.payLater);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int items,  int chinaDelivery,  int internationalEstimate,  int courier,  int services,  int discount,  int total,  int payNow,  int payLater)  $default,) {final _that = this;
switch (_that) {
case _CheckoutSummaryModel():
return $default(_that.items,_that.chinaDelivery,_that.internationalEstimate,_that.courier,_that.services,_that.discount,_that.total,_that.payNow,_that.payLater);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int items,  int chinaDelivery,  int internationalEstimate,  int courier,  int services,  int discount,  int total,  int payNow,  int payLater)?  $default,) {final _that = this;
switch (_that) {
case _CheckoutSummaryModel() when $default != null:
return $default(_that.items,_that.chinaDelivery,_that.internationalEstimate,_that.courier,_that.services,_that.discount,_that.total,_that.payNow,_that.payLater);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CheckoutSummaryModel implements CheckoutSummaryModel {
  const _CheckoutSummaryModel({required this.items, required this.chinaDelivery, required this.internationalEstimate, required this.courier, required this.services, required this.discount, required this.total, required this.payNow, required this.payLater});
  factory _CheckoutSummaryModel.fromJson(Map<String, dynamic> json) => _$CheckoutSummaryModelFromJson(json);

@override final  int items;
@override final  int chinaDelivery;
@override final  int internationalEstimate;
@override final  int courier;
@override final  int services;
@override final  int discount;
@override final  int total;
@override final  int payNow;
@override final  int payLater;

/// Create a copy of CheckoutSummaryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckoutSummaryModelCopyWith<_CheckoutSummaryModel> get copyWith => __$CheckoutSummaryModelCopyWithImpl<_CheckoutSummaryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CheckoutSummaryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckoutSummaryModel&&(identical(other.items, items) || other.items == items)&&(identical(other.chinaDelivery, chinaDelivery) || other.chinaDelivery == chinaDelivery)&&(identical(other.internationalEstimate, internationalEstimate) || other.internationalEstimate == internationalEstimate)&&(identical(other.courier, courier) || other.courier == courier)&&(identical(other.services, services) || other.services == services)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.total, total) || other.total == total)&&(identical(other.payNow, payNow) || other.payNow == payNow)&&(identical(other.payLater, payLater) || other.payLater == payLater));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,items,chinaDelivery,internationalEstimate,courier,services,discount,total,payNow,payLater);

@override
String toString() {
  return 'CheckoutSummaryModel(items: $items, chinaDelivery: $chinaDelivery, internationalEstimate: $internationalEstimate, courier: $courier, services: $services, discount: $discount, total: $total, payNow: $payNow, payLater: $payLater)';
}


}

/// @nodoc
abstract mixin class _$CheckoutSummaryModelCopyWith<$Res> implements $CheckoutSummaryModelCopyWith<$Res> {
  factory _$CheckoutSummaryModelCopyWith(_CheckoutSummaryModel value, $Res Function(_CheckoutSummaryModel) _then) = __$CheckoutSummaryModelCopyWithImpl;
@override @useResult
$Res call({
 int items, int chinaDelivery, int internationalEstimate, int courier, int services, int discount, int total, int payNow, int payLater
});




}
/// @nodoc
class __$CheckoutSummaryModelCopyWithImpl<$Res>
    implements _$CheckoutSummaryModelCopyWith<$Res> {
  __$CheckoutSummaryModelCopyWithImpl(this._self, this._then);

  final _CheckoutSummaryModel _self;
  final $Res Function(_CheckoutSummaryModel) _then;

/// Create a copy of CheckoutSummaryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? chinaDelivery = null,Object? internationalEstimate = null,Object? courier = null,Object? services = null,Object? discount = null,Object? total = null,Object? payNow = null,Object? payLater = null,}) {
  return _then(_CheckoutSummaryModel(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as int,chinaDelivery: null == chinaDelivery ? _self.chinaDelivery : chinaDelivery // ignore: cast_nullable_to_non_nullable
as int,internationalEstimate: null == internationalEstimate ? _self.internationalEstimate : internationalEstimate // ignore: cast_nullable_to_non_nullable
as int,courier: null == courier ? _self.courier : courier // ignore: cast_nullable_to_non_nullable
as int,services: null == services ? _self.services : services // ignore: cast_nullable_to_non_nullable
as int,discount: null == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,payNow: null == payNow ? _self.payNow : payNow // ignore: cast_nullable_to_non_nullable
as int,payLater: null == payLater ? _self.payLater : payLater // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$PlaceOrderResponseModel {

/// `created` or `price_changed`.
 String get status; PlacedOrderModel? get order; CheckoutPreviewModel? get preview;
/// Create a copy of PlaceOrderResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlaceOrderResponseModelCopyWith<PlaceOrderResponseModel> get copyWith => _$PlaceOrderResponseModelCopyWithImpl<PlaceOrderResponseModel>(this as PlaceOrderResponseModel, _$identity);

  /// Serializes this PlaceOrderResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlaceOrderResponseModel&&(identical(other.status, status) || other.status == status)&&(identical(other.order, order) || other.order == order)&&(identical(other.preview, preview) || other.preview == preview));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,order,preview);

@override
String toString() {
  return 'PlaceOrderResponseModel(status: $status, order: $order, preview: $preview)';
}


}

/// @nodoc
abstract mixin class $PlaceOrderResponseModelCopyWith<$Res>  {
  factory $PlaceOrderResponseModelCopyWith(PlaceOrderResponseModel value, $Res Function(PlaceOrderResponseModel) _then) = _$PlaceOrderResponseModelCopyWithImpl;
@useResult
$Res call({
 String status, PlacedOrderModel? order, CheckoutPreviewModel? preview
});


$PlacedOrderModelCopyWith<$Res>? get order;$CheckoutPreviewModelCopyWith<$Res>? get preview;

}
/// @nodoc
class _$PlaceOrderResponseModelCopyWithImpl<$Res>
    implements $PlaceOrderResponseModelCopyWith<$Res> {
  _$PlaceOrderResponseModelCopyWithImpl(this._self, this._then);

  final PlaceOrderResponseModel _self;
  final $Res Function(PlaceOrderResponseModel) _then;

/// Create a copy of PlaceOrderResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? order = freezed,Object? preview = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,order: freezed == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as PlacedOrderModel?,preview: freezed == preview ? _self.preview : preview // ignore: cast_nullable_to_non_nullable
as CheckoutPreviewModel?,
  ));
}
/// Create a copy of PlaceOrderResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlacedOrderModelCopyWith<$Res>? get order {
    if (_self.order == null) {
    return null;
  }

  return $PlacedOrderModelCopyWith<$Res>(_self.order!, (value) {
    return _then(_self.copyWith(order: value));
  });
}/// Create a copy of PlaceOrderResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CheckoutPreviewModelCopyWith<$Res>? get preview {
    if (_self.preview == null) {
    return null;
  }

  return $CheckoutPreviewModelCopyWith<$Res>(_self.preview!, (value) {
    return _then(_self.copyWith(preview: value));
  });
}
}


/// Adds pattern-matching-related methods to [PlaceOrderResponseModel].
extension PlaceOrderResponseModelPatterns on PlaceOrderResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlaceOrderResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlaceOrderResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlaceOrderResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _PlaceOrderResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlaceOrderResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _PlaceOrderResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String status,  PlacedOrderModel? order,  CheckoutPreviewModel? preview)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlaceOrderResponseModel() when $default != null:
return $default(_that.status,_that.order,_that.preview);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String status,  PlacedOrderModel? order,  CheckoutPreviewModel? preview)  $default,) {final _that = this;
switch (_that) {
case _PlaceOrderResponseModel():
return $default(_that.status,_that.order,_that.preview);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String status,  PlacedOrderModel? order,  CheckoutPreviewModel? preview)?  $default,) {final _that = this;
switch (_that) {
case _PlaceOrderResponseModel() when $default != null:
return $default(_that.status,_that.order,_that.preview);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PlaceOrderResponseModel implements PlaceOrderResponseModel {
  const _PlaceOrderResponseModel({required this.status, this.order, this.preview});
  factory _PlaceOrderResponseModel.fromJson(Map<String, dynamic> json) => _$PlaceOrderResponseModelFromJson(json);

/// `created` or `price_changed`.
@override final  String status;
@override final  PlacedOrderModel? order;
@override final  CheckoutPreviewModel? preview;

/// Create a copy of PlaceOrderResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlaceOrderResponseModelCopyWith<_PlaceOrderResponseModel> get copyWith => __$PlaceOrderResponseModelCopyWithImpl<_PlaceOrderResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlaceOrderResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlaceOrderResponseModel&&(identical(other.status, status) || other.status == status)&&(identical(other.order, order) || other.order == order)&&(identical(other.preview, preview) || other.preview == preview));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,order,preview);

@override
String toString() {
  return 'PlaceOrderResponseModel(status: $status, order: $order, preview: $preview)';
}


}

/// @nodoc
abstract mixin class _$PlaceOrderResponseModelCopyWith<$Res> implements $PlaceOrderResponseModelCopyWith<$Res> {
  factory _$PlaceOrderResponseModelCopyWith(_PlaceOrderResponseModel value, $Res Function(_PlaceOrderResponseModel) _then) = __$PlaceOrderResponseModelCopyWithImpl;
@override @useResult
$Res call({
 String status, PlacedOrderModel? order, CheckoutPreviewModel? preview
});


@override $PlacedOrderModelCopyWith<$Res>? get order;@override $CheckoutPreviewModelCopyWith<$Res>? get preview;

}
/// @nodoc
class __$PlaceOrderResponseModelCopyWithImpl<$Res>
    implements _$PlaceOrderResponseModelCopyWith<$Res> {
  __$PlaceOrderResponseModelCopyWithImpl(this._self, this._then);

  final _PlaceOrderResponseModel _self;
  final $Res Function(_PlaceOrderResponseModel) _then;

/// Create a copy of PlaceOrderResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? order = freezed,Object? preview = freezed,}) {
  return _then(_PlaceOrderResponseModel(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,order: freezed == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as PlacedOrderModel?,preview: freezed == preview ? _self.preview : preview // ignore: cast_nullable_to_non_nullable
as CheckoutPreviewModel?,
  ));
}

/// Create a copy of PlaceOrderResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlacedOrderModelCopyWith<$Res>? get order {
    if (_self.order == null) {
    return null;
  }

  return $PlacedOrderModelCopyWith<$Res>(_self.order!, (value) {
    return _then(_self.copyWith(order: value));
  });
}/// Create a copy of PlaceOrderResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CheckoutPreviewModelCopyWith<$Res>? get preview {
    if (_self.preview == null) {
    return null;
  }

  return $CheckoutPreviewModelCopyWith<$Res>(_self.preview!, (value) {
    return _then(_self.copyWith(preview: value));
  });
}
}


/// @nodoc
mixin _$PlacedOrderModel {

 String get number; int get payNow; String get payment; String? get paymentId;
/// Create a copy of PlacedOrderModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlacedOrderModelCopyWith<PlacedOrderModel> get copyWith => _$PlacedOrderModelCopyWithImpl<PlacedOrderModel>(this as PlacedOrderModel, _$identity);

  /// Serializes this PlacedOrderModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlacedOrderModel&&(identical(other.number, number) || other.number == number)&&(identical(other.payNow, payNow) || other.payNow == payNow)&&(identical(other.payment, payment) || other.payment == payment)&&(identical(other.paymentId, paymentId) || other.paymentId == paymentId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,number,payNow,payment,paymentId);

@override
String toString() {
  return 'PlacedOrderModel(number: $number, payNow: $payNow, payment: $payment, paymentId: $paymentId)';
}


}

/// @nodoc
abstract mixin class $PlacedOrderModelCopyWith<$Res>  {
  factory $PlacedOrderModelCopyWith(PlacedOrderModel value, $Res Function(PlacedOrderModel) _then) = _$PlacedOrderModelCopyWithImpl;
@useResult
$Res call({
 String number, int payNow, String payment, String? paymentId
});




}
/// @nodoc
class _$PlacedOrderModelCopyWithImpl<$Res>
    implements $PlacedOrderModelCopyWith<$Res> {
  _$PlacedOrderModelCopyWithImpl(this._self, this._then);

  final PlacedOrderModel _self;
  final $Res Function(PlacedOrderModel) _then;

/// Create a copy of PlacedOrderModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? number = null,Object? payNow = null,Object? payment = null,Object? paymentId = freezed,}) {
  return _then(_self.copyWith(
number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,payNow: null == payNow ? _self.payNow : payNow // ignore: cast_nullable_to_non_nullable
as int,payment: null == payment ? _self.payment : payment // ignore: cast_nullable_to_non_nullable
as String,paymentId: freezed == paymentId ? _self.paymentId : paymentId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PlacedOrderModel].
extension PlacedOrderModelPatterns on PlacedOrderModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlacedOrderModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlacedOrderModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlacedOrderModel value)  $default,){
final _that = this;
switch (_that) {
case _PlacedOrderModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlacedOrderModel value)?  $default,){
final _that = this;
switch (_that) {
case _PlacedOrderModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String number,  int payNow,  String payment,  String? paymentId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlacedOrderModel() when $default != null:
return $default(_that.number,_that.payNow,_that.payment,_that.paymentId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String number,  int payNow,  String payment,  String? paymentId)  $default,) {final _that = this;
switch (_that) {
case _PlacedOrderModel():
return $default(_that.number,_that.payNow,_that.payment,_that.paymentId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String number,  int payNow,  String payment,  String? paymentId)?  $default,) {final _that = this;
switch (_that) {
case _PlacedOrderModel() when $default != null:
return $default(_that.number,_that.payNow,_that.payment,_that.paymentId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PlacedOrderModel implements PlacedOrderModel {
  const _PlacedOrderModel({required this.number, required this.payNow, required this.payment, this.paymentId});
  factory _PlacedOrderModel.fromJson(Map<String, dynamic> json) => _$PlacedOrderModelFromJson(json);

@override final  String number;
@override final  int payNow;
@override final  String payment;
@override final  String? paymentId;

/// Create a copy of PlacedOrderModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlacedOrderModelCopyWith<_PlacedOrderModel> get copyWith => __$PlacedOrderModelCopyWithImpl<_PlacedOrderModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlacedOrderModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlacedOrderModel&&(identical(other.number, number) || other.number == number)&&(identical(other.payNow, payNow) || other.payNow == payNow)&&(identical(other.payment, payment) || other.payment == payment)&&(identical(other.paymentId, paymentId) || other.paymentId == paymentId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,number,payNow,payment,paymentId);

@override
String toString() {
  return 'PlacedOrderModel(number: $number, payNow: $payNow, payment: $payment, paymentId: $paymentId)';
}


}

/// @nodoc
abstract mixin class _$PlacedOrderModelCopyWith<$Res> implements $PlacedOrderModelCopyWith<$Res> {
  factory _$PlacedOrderModelCopyWith(_PlacedOrderModel value, $Res Function(_PlacedOrderModel) _then) = __$PlacedOrderModelCopyWithImpl;
@override @useResult
$Res call({
 String number, int payNow, String payment, String? paymentId
});




}
/// @nodoc
class __$PlacedOrderModelCopyWithImpl<$Res>
    implements _$PlacedOrderModelCopyWith<$Res> {
  __$PlacedOrderModelCopyWithImpl(this._self, this._then);

  final _PlacedOrderModel _self;
  final $Res Function(_PlacedOrderModel) _then;

/// Create a copy of PlacedOrderModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? number = null,Object? payNow = null,Object? payment = null,Object? paymentId = freezed,}) {
  return _then(_PlacedOrderModel(
number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,payNow: null == payNow ? _self.payNow : payNow // ignore: cast_nullable_to_non_nullable
as int,payment: null == payment ? _self.payment : payment // ignore: cast_nullable_to_non_nullable
as String,paymentId: freezed == paymentId ? _self.paymentId : paymentId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$PaymentStatusModel {

/// `pending`, `paid`, `failed`.
 String get status; String? get reason;
/// Create a copy of PaymentStatusModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentStatusModelCopyWith<PaymentStatusModel> get copyWith => _$PaymentStatusModelCopyWithImpl<PaymentStatusModel>(this as PaymentStatusModel, _$identity);

  /// Serializes this PaymentStatusModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentStatusModel&&(identical(other.status, status) || other.status == status)&&(identical(other.reason, reason) || other.reason == reason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,reason);

@override
String toString() {
  return 'PaymentStatusModel(status: $status, reason: $reason)';
}


}

/// @nodoc
abstract mixin class $PaymentStatusModelCopyWith<$Res>  {
  factory $PaymentStatusModelCopyWith(PaymentStatusModel value, $Res Function(PaymentStatusModel) _then) = _$PaymentStatusModelCopyWithImpl;
@useResult
$Res call({
 String status, String? reason
});




}
/// @nodoc
class _$PaymentStatusModelCopyWithImpl<$Res>
    implements $PaymentStatusModelCopyWith<$Res> {
  _$PaymentStatusModelCopyWithImpl(this._self, this._then);

  final PaymentStatusModel _self;
  final $Res Function(PaymentStatusModel) _then;

/// Create a copy of PaymentStatusModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? reason = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentStatusModel].
extension PaymentStatusModelPatterns on PaymentStatusModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentStatusModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentStatusModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentStatusModel value)  $default,){
final _that = this;
switch (_that) {
case _PaymentStatusModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentStatusModel value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentStatusModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String status,  String? reason)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentStatusModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String status,  String? reason)  $default,) {final _that = this;
switch (_that) {
case _PaymentStatusModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String status,  String? reason)?  $default,) {final _that = this;
switch (_that) {
case _PaymentStatusModel() when $default != null:
return $default(_that.status,_that.reason);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentStatusModel implements PaymentStatusModel {
  const _PaymentStatusModel({required this.status, this.reason});
  factory _PaymentStatusModel.fromJson(Map<String, dynamic> json) => _$PaymentStatusModelFromJson(json);

/// `pending`, `paid`, `failed`.
@override final  String status;
@override final  String? reason;

/// Create a copy of PaymentStatusModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentStatusModelCopyWith<_PaymentStatusModel> get copyWith => __$PaymentStatusModelCopyWithImpl<_PaymentStatusModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentStatusModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentStatusModel&&(identical(other.status, status) || other.status == status)&&(identical(other.reason, reason) || other.reason == reason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,reason);

@override
String toString() {
  return 'PaymentStatusModel(status: $status, reason: $reason)';
}


}

/// @nodoc
abstract mixin class _$PaymentStatusModelCopyWith<$Res> implements $PaymentStatusModelCopyWith<$Res> {
  factory _$PaymentStatusModelCopyWith(_PaymentStatusModel value, $Res Function(_PaymentStatusModel) _then) = __$PaymentStatusModelCopyWithImpl;
@override @useResult
$Res call({
 String status, String? reason
});




}
/// @nodoc
class __$PaymentStatusModelCopyWithImpl<$Res>
    implements _$PaymentStatusModelCopyWith<$Res> {
  __$PaymentStatusModelCopyWithImpl(this._self, this._then);

  final _PaymentStatusModel _self;
  final $Res Function(_PaymentStatusModel) _then;

/// Create a copy of PaymentStatusModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? reason = freezed,}) {
  return _then(_PaymentStatusModel(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
