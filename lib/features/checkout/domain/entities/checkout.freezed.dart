// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checkout.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Recipient {

 String get firstName; String get lastName;/// 8 national digits, without +993.
 String get phone;
/// Create a copy of Recipient
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecipientCopyWith<Recipient> get copyWith => _$RecipientCopyWithImpl<Recipient>(this as Recipient, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Recipient&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.phone, phone) || other.phone == phone));
}


@override
int get hashCode => Object.hash(runtimeType,firstName,lastName,phone);

@override
String toString() {
  return 'Recipient(firstName: $firstName, lastName: $lastName, phone: $phone)';
}


}

/// @nodoc
abstract mixin class $RecipientCopyWith<$Res>  {
  factory $RecipientCopyWith(Recipient value, $Res Function(Recipient) _then) = _$RecipientCopyWithImpl;
@useResult
$Res call({
 String firstName, String lastName, String phone
});




}
/// @nodoc
class _$RecipientCopyWithImpl<$Res>
    implements $RecipientCopyWith<$Res> {
  _$RecipientCopyWithImpl(this._self, this._then);

  final Recipient _self;
  final $Res Function(Recipient) _then;

/// Create a copy of Recipient
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? firstName = null,Object? lastName = null,Object? phone = null,}) {
  return _then(_self.copyWith(
firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Recipient].
extension RecipientPatterns on Recipient {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Recipient value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Recipient() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Recipient value)  $default,){
final _that = this;
switch (_that) {
case _Recipient():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Recipient value)?  $default,){
final _that = this;
switch (_that) {
case _Recipient() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String firstName,  String lastName,  String phone)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Recipient() when $default != null:
return $default(_that.firstName,_that.lastName,_that.phone);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String firstName,  String lastName,  String phone)  $default,) {final _that = this;
switch (_that) {
case _Recipient():
return $default(_that.firstName,_that.lastName,_that.phone);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String firstName,  String lastName,  String phone)?  $default,) {final _that = this;
switch (_that) {
case _Recipient() when $default != null:
return $default(_that.firstName,_that.lastName,_that.phone);case _:
  return null;

}
}

}

/// @nodoc


class _Recipient extends Recipient {
  const _Recipient({this.firstName = '', this.lastName = '', this.phone = ''}): super._();
  

@override@JsonKey() final  String firstName;
@override@JsonKey() final  String lastName;
/// 8 national digits, without +993.
@override@JsonKey() final  String phone;

/// Create a copy of Recipient
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecipientCopyWith<_Recipient> get copyWith => __$RecipientCopyWithImpl<_Recipient>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Recipient&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.phone, phone) || other.phone == phone));
}


@override
int get hashCode => Object.hash(runtimeType,firstName,lastName,phone);

@override
String toString() {
  return 'Recipient(firstName: $firstName, lastName: $lastName, phone: $phone)';
}


}

/// @nodoc
abstract mixin class _$RecipientCopyWith<$Res> implements $RecipientCopyWith<$Res> {
  factory _$RecipientCopyWith(_Recipient value, $Res Function(_Recipient) _then) = __$RecipientCopyWithImpl;
@override @useResult
$Res call({
 String firstName, String lastName, String phone
});




}
/// @nodoc
class __$RecipientCopyWithImpl<$Res>
    implements _$RecipientCopyWith<$Res> {
  __$RecipientCopyWithImpl(this._self, this._then);

  final _Recipient _self;
  final $Res Function(_Recipient) _then;

/// Create a copy of Recipient
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? firstName = null,Object? lastName = null,Object? phone = null,}) {
  return _then(_Recipient(
firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$CourierAddress {

/// Id of the saved address; `null` when typed in by hand.
 String? get savedId;/// Street and house.
 String get street;/// «Квартира / ориентир».
 String get details;
/// Create a copy of CourierAddress
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CourierAddressCopyWith<CourierAddress> get copyWith => _$CourierAddressCopyWithImpl<CourierAddress>(this as CourierAddress, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CourierAddress&&(identical(other.savedId, savedId) || other.savedId == savedId)&&(identical(other.street, street) || other.street == street)&&(identical(other.details, details) || other.details == details));
}


@override
int get hashCode => Object.hash(runtimeType,savedId,street,details);

@override
String toString() {
  return 'CourierAddress(savedId: $savedId, street: $street, details: $details)';
}


}

/// @nodoc
abstract mixin class $CourierAddressCopyWith<$Res>  {
  factory $CourierAddressCopyWith(CourierAddress value, $Res Function(CourierAddress) _then) = _$CourierAddressCopyWithImpl;
@useResult
$Res call({
 String? savedId, String street, String details
});




}
/// @nodoc
class _$CourierAddressCopyWithImpl<$Res>
    implements $CourierAddressCopyWith<$Res> {
  _$CourierAddressCopyWithImpl(this._self, this._then);

  final CourierAddress _self;
  final $Res Function(CourierAddress) _then;

/// Create a copy of CourierAddress
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? savedId = freezed,Object? street = null,Object? details = null,}) {
  return _then(_self.copyWith(
savedId: freezed == savedId ? _self.savedId : savedId // ignore: cast_nullable_to_non_nullable
as String?,street: null == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String,details: null == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CourierAddress].
extension CourierAddressPatterns on CourierAddress {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CourierAddress value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CourierAddress() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CourierAddress value)  $default,){
final _that = this;
switch (_that) {
case _CourierAddress():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CourierAddress value)?  $default,){
final _that = this;
switch (_that) {
case _CourierAddress() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? savedId,  String street,  String details)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CourierAddress() when $default != null:
return $default(_that.savedId,_that.street,_that.details);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? savedId,  String street,  String details)  $default,) {final _that = this;
switch (_that) {
case _CourierAddress():
return $default(_that.savedId,_that.street,_that.details);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? savedId,  String street,  String details)?  $default,) {final _that = this;
switch (_that) {
case _CourierAddress() when $default != null:
return $default(_that.savedId,_that.street,_that.details);case _:
  return null;

}
}

}

/// @nodoc


class _CourierAddress extends CourierAddress {
  const _CourierAddress({this.savedId, this.street = '', this.details = ''}): super._();
  

/// Id of the saved address; `null` when typed in by hand.
@override final  String? savedId;
/// Street and house.
@override@JsonKey() final  String street;
/// «Квартира / ориентир».
@override@JsonKey() final  String details;

/// Create a copy of CourierAddress
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CourierAddressCopyWith<_CourierAddress> get copyWith => __$CourierAddressCopyWithImpl<_CourierAddress>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CourierAddress&&(identical(other.savedId, savedId) || other.savedId == savedId)&&(identical(other.street, street) || other.street == street)&&(identical(other.details, details) || other.details == details));
}


@override
int get hashCode => Object.hash(runtimeType,savedId,street,details);

@override
String toString() {
  return 'CourierAddress(savedId: $savedId, street: $street, details: $details)';
}


}

/// @nodoc
abstract mixin class _$CourierAddressCopyWith<$Res> implements $CourierAddressCopyWith<$Res> {
  factory _$CourierAddressCopyWith(_CourierAddress value, $Res Function(_CourierAddress) _then) = __$CourierAddressCopyWithImpl;
@override @useResult
$Res call({
 String? savedId, String street, String details
});




}
/// @nodoc
class __$CourierAddressCopyWithImpl<$Res>
    implements _$CourierAddressCopyWith<$Res> {
  __$CourierAddressCopyWithImpl(this._self, this._then);

  final _CourierAddress _self;
  final $Res Function(_CourierAddress) _then;

/// Create a copy of CourierAddress
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? savedId = freezed,Object? street = null,Object? details = null,}) {
  return _then(_CourierAddress(
savedId: freezed == savedId ? _self.savedId : savedId // ignore: cast_nullable_to_non_nullable
as String?,street: null == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String,details: null == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$SavedAddress {

 String get id;/// Street and house.
 String get street; String get details; String get region; bool get isDefault;
/// Create a copy of SavedAddress
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SavedAddressCopyWith<SavedAddress> get copyWith => _$SavedAddressCopyWithImpl<SavedAddress>(this as SavedAddress, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SavedAddress&&(identical(other.id, id) || other.id == id)&&(identical(other.street, street) || other.street == street)&&(identical(other.details, details) || other.details == details)&&(identical(other.region, region) || other.region == region)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault));
}


@override
int get hashCode => Object.hash(runtimeType,id,street,details,region,isDefault);

@override
String toString() {
  return 'SavedAddress(id: $id, street: $street, details: $details, region: $region, isDefault: $isDefault)';
}


}

/// @nodoc
abstract mixin class $SavedAddressCopyWith<$Res>  {
  factory $SavedAddressCopyWith(SavedAddress value, $Res Function(SavedAddress) _then) = _$SavedAddressCopyWithImpl;
@useResult
$Res call({
 String id, String street, String details, String region, bool isDefault
});




}
/// @nodoc
class _$SavedAddressCopyWithImpl<$Res>
    implements $SavedAddressCopyWith<$Res> {
  _$SavedAddressCopyWithImpl(this._self, this._then);

  final SavedAddress _self;
  final $Res Function(SavedAddress) _then;

/// Create a copy of SavedAddress
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? street = null,Object? details = null,Object? region = null,Object? isDefault = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,street: null == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String,details: null == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as String,region: null == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as String,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SavedAddress].
extension SavedAddressPatterns on SavedAddress {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SavedAddress value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SavedAddress() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SavedAddress value)  $default,){
final _that = this;
switch (_that) {
case _SavedAddress():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SavedAddress value)?  $default,){
final _that = this;
switch (_that) {
case _SavedAddress() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String street,  String details,  String region,  bool isDefault)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SavedAddress() when $default != null:
return $default(_that.id,_that.street,_that.details,_that.region,_that.isDefault);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String street,  String details,  String region,  bool isDefault)  $default,) {final _that = this;
switch (_that) {
case _SavedAddress():
return $default(_that.id,_that.street,_that.details,_that.region,_that.isDefault);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String street,  String details,  String region,  bool isDefault)?  $default,) {final _that = this;
switch (_that) {
case _SavedAddress() when $default != null:
return $default(_that.id,_that.street,_that.details,_that.region,_that.isDefault);case _:
  return null;

}
}

}

/// @nodoc


class _SavedAddress extends SavedAddress {
  const _SavedAddress({required this.id, required this.street, this.details = '', this.region = '', this.isDefault = false}): super._();
  

@override final  String id;
/// Street and house.
@override final  String street;
@override@JsonKey() final  String details;
@override@JsonKey() final  String region;
@override@JsonKey() final  bool isDefault;

/// Create a copy of SavedAddress
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SavedAddressCopyWith<_SavedAddress> get copyWith => __$SavedAddressCopyWithImpl<_SavedAddress>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SavedAddress&&(identical(other.id, id) || other.id == id)&&(identical(other.street, street) || other.street == street)&&(identical(other.details, details) || other.details == details)&&(identical(other.region, region) || other.region == region)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault));
}


@override
int get hashCode => Object.hash(runtimeType,id,street,details,region,isDefault);

@override
String toString() {
  return 'SavedAddress(id: $id, street: $street, details: $details, region: $region, isDefault: $isDefault)';
}


}

/// @nodoc
abstract mixin class _$SavedAddressCopyWith<$Res> implements $SavedAddressCopyWith<$Res> {
  factory _$SavedAddressCopyWith(_SavedAddress value, $Res Function(_SavedAddress) _then) = __$SavedAddressCopyWithImpl;
@override @useResult
$Res call({
 String id, String street, String details, String region, bool isDefault
});




}
/// @nodoc
class __$SavedAddressCopyWithImpl<$Res>
    implements _$SavedAddressCopyWith<$Res> {
  __$SavedAddressCopyWithImpl(this._self, this._then);

  final _SavedAddress _self;
  final $Res Function(_SavedAddress) _then;

/// Create a copy of SavedAddress
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? street = null,Object? details = null,Object? region = null,Object? isDefault = null,}) {
  return _then(_SavedAddress(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,street: null == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String,details: null == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as String,region: null == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as String,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$CheckoutDraft {

 Recipient get recipient; ReceivingMethod get method; CourierAddress get address; String? get pickupPointId;/// `null` = server default (air, TZ §5.10).
 CheckoutDeliveryType? get deliveryType; Set<String> get serviceIds; String get comment; PaymentMethod get payment;/// Offer + «товар под заказ, отмена только до выкупа» (TZ §5.12.6).
 bool get hasConsent;
/// Create a copy of CheckoutDraft
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckoutDraftCopyWith<CheckoutDraft> get copyWith => _$CheckoutDraftCopyWithImpl<CheckoutDraft>(this as CheckoutDraft, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckoutDraft&&(identical(other.recipient, recipient) || other.recipient == recipient)&&(identical(other.method, method) || other.method == method)&&(identical(other.address, address) || other.address == address)&&(identical(other.pickupPointId, pickupPointId) || other.pickupPointId == pickupPointId)&&(identical(other.deliveryType, deliveryType) || other.deliveryType == deliveryType)&&const DeepCollectionEquality().equals(other.serviceIds, serviceIds)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.payment, payment) || other.payment == payment)&&(identical(other.hasConsent, hasConsent) || other.hasConsent == hasConsent));
}


@override
int get hashCode => Object.hash(runtimeType,recipient,method,address,pickupPointId,deliveryType,const DeepCollectionEquality().hash(serviceIds),comment,payment,hasConsent);

@override
String toString() {
  return 'CheckoutDraft(recipient: $recipient, method: $method, address: $address, pickupPointId: $pickupPointId, deliveryType: $deliveryType, serviceIds: $serviceIds, comment: $comment, payment: $payment, hasConsent: $hasConsent)';
}


}

/// @nodoc
abstract mixin class $CheckoutDraftCopyWith<$Res>  {
  factory $CheckoutDraftCopyWith(CheckoutDraft value, $Res Function(CheckoutDraft) _then) = _$CheckoutDraftCopyWithImpl;
@useResult
$Res call({
 Recipient recipient, ReceivingMethod method, CourierAddress address, String? pickupPointId, CheckoutDeliveryType? deliveryType, Set<String> serviceIds, String comment, PaymentMethod payment, bool hasConsent
});


$RecipientCopyWith<$Res> get recipient;$CourierAddressCopyWith<$Res> get address;

}
/// @nodoc
class _$CheckoutDraftCopyWithImpl<$Res>
    implements $CheckoutDraftCopyWith<$Res> {
  _$CheckoutDraftCopyWithImpl(this._self, this._then);

  final CheckoutDraft _self;
  final $Res Function(CheckoutDraft) _then;

/// Create a copy of CheckoutDraft
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? recipient = null,Object? method = null,Object? address = null,Object? pickupPointId = freezed,Object? deliveryType = freezed,Object? serviceIds = null,Object? comment = null,Object? payment = null,Object? hasConsent = null,}) {
  return _then(_self.copyWith(
recipient: null == recipient ? _self.recipient : recipient // ignore: cast_nullable_to_non_nullable
as Recipient,method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as ReceivingMethod,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as CourierAddress,pickupPointId: freezed == pickupPointId ? _self.pickupPointId : pickupPointId // ignore: cast_nullable_to_non_nullable
as String?,deliveryType: freezed == deliveryType ? _self.deliveryType : deliveryType // ignore: cast_nullable_to_non_nullable
as CheckoutDeliveryType?,serviceIds: null == serviceIds ? _self.serviceIds : serviceIds // ignore: cast_nullable_to_non_nullable
as Set<String>,comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String,payment: null == payment ? _self.payment : payment // ignore: cast_nullable_to_non_nullable
as PaymentMethod,hasConsent: null == hasConsent ? _self.hasConsent : hasConsent // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of CheckoutDraft
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RecipientCopyWith<$Res> get recipient {
  
  return $RecipientCopyWith<$Res>(_self.recipient, (value) {
    return _then(_self.copyWith(recipient: value));
  });
}/// Create a copy of CheckoutDraft
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CourierAddressCopyWith<$Res> get address {
  
  return $CourierAddressCopyWith<$Res>(_self.address, (value) {
    return _then(_self.copyWith(address: value));
  });
}
}


/// Adds pattern-matching-related methods to [CheckoutDraft].
extension CheckoutDraftPatterns on CheckoutDraft {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CheckoutDraft value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckoutDraft() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CheckoutDraft value)  $default,){
final _that = this;
switch (_that) {
case _CheckoutDraft():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CheckoutDraft value)?  $default,){
final _that = this;
switch (_that) {
case _CheckoutDraft() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Recipient recipient,  ReceivingMethod method,  CourierAddress address,  String? pickupPointId,  CheckoutDeliveryType? deliveryType,  Set<String> serviceIds,  String comment,  PaymentMethod payment,  bool hasConsent)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CheckoutDraft() when $default != null:
return $default(_that.recipient,_that.method,_that.address,_that.pickupPointId,_that.deliveryType,_that.serviceIds,_that.comment,_that.payment,_that.hasConsent);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Recipient recipient,  ReceivingMethod method,  CourierAddress address,  String? pickupPointId,  CheckoutDeliveryType? deliveryType,  Set<String> serviceIds,  String comment,  PaymentMethod payment,  bool hasConsent)  $default,) {final _that = this;
switch (_that) {
case _CheckoutDraft():
return $default(_that.recipient,_that.method,_that.address,_that.pickupPointId,_that.deliveryType,_that.serviceIds,_that.comment,_that.payment,_that.hasConsent);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Recipient recipient,  ReceivingMethod method,  CourierAddress address,  String? pickupPointId,  CheckoutDeliveryType? deliveryType,  Set<String> serviceIds,  String comment,  PaymentMethod payment,  bool hasConsent)?  $default,) {final _that = this;
switch (_that) {
case _CheckoutDraft() when $default != null:
return $default(_that.recipient,_that.method,_that.address,_that.pickupPointId,_that.deliveryType,_that.serviceIds,_that.comment,_that.payment,_that.hasConsent);case _:
  return null;

}
}

}

/// @nodoc


class _CheckoutDraft implements CheckoutDraft {
  const _CheckoutDraft({this.recipient = const Recipient(), this.method = ReceivingMethod.courier, this.address = const CourierAddress(), this.pickupPointId, this.deliveryType, final  Set<String> serviceIds = const <String>{}, this.comment = '', this.payment = PaymentMethod.card, this.hasConsent = false}): _serviceIds = serviceIds;
  

@override@JsonKey() final  Recipient recipient;
@override@JsonKey() final  ReceivingMethod method;
@override@JsonKey() final  CourierAddress address;
@override final  String? pickupPointId;
/// `null` = server default (air, TZ §5.10).
@override final  CheckoutDeliveryType? deliveryType;
 final  Set<String> _serviceIds;
@override@JsonKey() Set<String> get serviceIds {
  if (_serviceIds is EqualUnmodifiableSetView) return _serviceIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_serviceIds);
}

@override@JsonKey() final  String comment;
@override@JsonKey() final  PaymentMethod payment;
/// Offer + «товар под заказ, отмена только до выкупа» (TZ §5.12.6).
@override@JsonKey() final  bool hasConsent;

/// Create a copy of CheckoutDraft
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckoutDraftCopyWith<_CheckoutDraft> get copyWith => __$CheckoutDraftCopyWithImpl<_CheckoutDraft>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckoutDraft&&(identical(other.recipient, recipient) || other.recipient == recipient)&&(identical(other.method, method) || other.method == method)&&(identical(other.address, address) || other.address == address)&&(identical(other.pickupPointId, pickupPointId) || other.pickupPointId == pickupPointId)&&(identical(other.deliveryType, deliveryType) || other.deliveryType == deliveryType)&&const DeepCollectionEquality().equals(other._serviceIds, _serviceIds)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.payment, payment) || other.payment == payment)&&(identical(other.hasConsent, hasConsent) || other.hasConsent == hasConsent));
}


@override
int get hashCode => Object.hash(runtimeType,recipient,method,address,pickupPointId,deliveryType,const DeepCollectionEquality().hash(_serviceIds),comment,payment,hasConsent);

@override
String toString() {
  return 'CheckoutDraft(recipient: $recipient, method: $method, address: $address, pickupPointId: $pickupPointId, deliveryType: $deliveryType, serviceIds: $serviceIds, comment: $comment, payment: $payment, hasConsent: $hasConsent)';
}


}

/// @nodoc
abstract mixin class _$CheckoutDraftCopyWith<$Res> implements $CheckoutDraftCopyWith<$Res> {
  factory _$CheckoutDraftCopyWith(_CheckoutDraft value, $Res Function(_CheckoutDraft) _then) = __$CheckoutDraftCopyWithImpl;
@override @useResult
$Res call({
 Recipient recipient, ReceivingMethod method, CourierAddress address, String? pickupPointId, CheckoutDeliveryType? deliveryType, Set<String> serviceIds, String comment, PaymentMethod payment, bool hasConsent
});


@override $RecipientCopyWith<$Res> get recipient;@override $CourierAddressCopyWith<$Res> get address;

}
/// @nodoc
class __$CheckoutDraftCopyWithImpl<$Res>
    implements _$CheckoutDraftCopyWith<$Res> {
  __$CheckoutDraftCopyWithImpl(this._self, this._then);

  final _CheckoutDraft _self;
  final $Res Function(_CheckoutDraft) _then;

/// Create a copy of CheckoutDraft
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? recipient = null,Object? method = null,Object? address = null,Object? pickupPointId = freezed,Object? deliveryType = freezed,Object? serviceIds = null,Object? comment = null,Object? payment = null,Object? hasConsent = null,}) {
  return _then(_CheckoutDraft(
recipient: null == recipient ? _self.recipient : recipient // ignore: cast_nullable_to_non_nullable
as Recipient,method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as ReceivingMethod,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as CourierAddress,pickupPointId: freezed == pickupPointId ? _self.pickupPointId : pickupPointId // ignore: cast_nullable_to_non_nullable
as String?,deliveryType: freezed == deliveryType ? _self.deliveryType : deliveryType // ignore: cast_nullable_to_non_nullable
as CheckoutDeliveryType?,serviceIds: null == serviceIds ? _self._serviceIds : serviceIds // ignore: cast_nullable_to_non_nullable
as Set<String>,comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String,payment: null == payment ? _self.payment : payment // ignore: cast_nullable_to_non_nullable
as PaymentMethod,hasConsent: null == hasConsent ? _self.hasConsent : hasConsent // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of CheckoutDraft
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RecipientCopyWith<$Res> get recipient {
  
  return $RecipientCopyWith<$Res>(_self.recipient, (value) {
    return _then(_self.copyWith(recipient: value));
  });
}/// Create a copy of CheckoutDraft
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CourierAddressCopyWith<$Res> get address {
  
  return $CourierAddressCopyWith<$Res>(_self.address, (value) {
    return _then(_self.copyWith(address: value));
  });
}
}

/// @nodoc
mixin _$CheckoutPreview {

 List<DeliveryChoice> get deliveryOptions;/// The type the totals were computed for.
 CheckoutDeliveryType? get deliveryType; List<PickupPoint> get pickupPoints; List<ExtraService> get services; int get courierPrice;/// Courier is free from this goods sum; `null` = never free.
 int? get courierFreeFrom; CheckoutSummary get summary;
/// Create a copy of CheckoutPreview
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckoutPreviewCopyWith<CheckoutPreview> get copyWith => _$CheckoutPreviewCopyWithImpl<CheckoutPreview>(this as CheckoutPreview, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckoutPreview&&const DeepCollectionEquality().equals(other.deliveryOptions, deliveryOptions)&&(identical(other.deliveryType, deliveryType) || other.deliveryType == deliveryType)&&const DeepCollectionEquality().equals(other.pickupPoints, pickupPoints)&&const DeepCollectionEquality().equals(other.services, services)&&(identical(other.courierPrice, courierPrice) || other.courierPrice == courierPrice)&&(identical(other.courierFreeFrom, courierFreeFrom) || other.courierFreeFrom == courierFreeFrom)&&(identical(other.summary, summary) || other.summary == summary));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(deliveryOptions),deliveryType,const DeepCollectionEquality().hash(pickupPoints),const DeepCollectionEquality().hash(services),courierPrice,courierFreeFrom,summary);

@override
String toString() {
  return 'CheckoutPreview(deliveryOptions: $deliveryOptions, deliveryType: $deliveryType, pickupPoints: $pickupPoints, services: $services, courierPrice: $courierPrice, courierFreeFrom: $courierFreeFrom, summary: $summary)';
}


}

/// @nodoc
abstract mixin class $CheckoutPreviewCopyWith<$Res>  {
  factory $CheckoutPreviewCopyWith(CheckoutPreview value, $Res Function(CheckoutPreview) _then) = _$CheckoutPreviewCopyWithImpl;
@useResult
$Res call({
 List<DeliveryChoice> deliveryOptions, CheckoutDeliveryType? deliveryType, List<PickupPoint> pickupPoints, List<ExtraService> services, int courierPrice, int? courierFreeFrom, CheckoutSummary summary
});


$CheckoutSummaryCopyWith<$Res> get summary;

}
/// @nodoc
class _$CheckoutPreviewCopyWithImpl<$Res>
    implements $CheckoutPreviewCopyWith<$Res> {
  _$CheckoutPreviewCopyWithImpl(this._self, this._then);

  final CheckoutPreview _self;
  final $Res Function(CheckoutPreview) _then;

/// Create a copy of CheckoutPreview
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? deliveryOptions = null,Object? deliveryType = freezed,Object? pickupPoints = null,Object? services = null,Object? courierPrice = null,Object? courierFreeFrom = freezed,Object? summary = null,}) {
  return _then(_self.copyWith(
deliveryOptions: null == deliveryOptions ? _self.deliveryOptions : deliveryOptions // ignore: cast_nullable_to_non_nullable
as List<DeliveryChoice>,deliveryType: freezed == deliveryType ? _self.deliveryType : deliveryType // ignore: cast_nullable_to_non_nullable
as CheckoutDeliveryType?,pickupPoints: null == pickupPoints ? _self.pickupPoints : pickupPoints // ignore: cast_nullable_to_non_nullable
as List<PickupPoint>,services: null == services ? _self.services : services // ignore: cast_nullable_to_non_nullable
as List<ExtraService>,courierPrice: null == courierPrice ? _self.courierPrice : courierPrice // ignore: cast_nullable_to_non_nullable
as int,courierFreeFrom: freezed == courierFreeFrom ? _self.courierFreeFrom : courierFreeFrom // ignore: cast_nullable_to_non_nullable
as int?,summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as CheckoutSummary,
  ));
}
/// Create a copy of CheckoutPreview
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CheckoutSummaryCopyWith<$Res> get summary {
  
  return $CheckoutSummaryCopyWith<$Res>(_self.summary, (value) {
    return _then(_self.copyWith(summary: value));
  });
}
}


/// Adds pattern-matching-related methods to [CheckoutPreview].
extension CheckoutPreviewPatterns on CheckoutPreview {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CheckoutPreview value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckoutPreview() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CheckoutPreview value)  $default,){
final _that = this;
switch (_that) {
case _CheckoutPreview():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CheckoutPreview value)?  $default,){
final _that = this;
switch (_that) {
case _CheckoutPreview() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<DeliveryChoice> deliveryOptions,  CheckoutDeliveryType? deliveryType,  List<PickupPoint> pickupPoints,  List<ExtraService> services,  int courierPrice,  int? courierFreeFrom,  CheckoutSummary summary)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CheckoutPreview() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<DeliveryChoice> deliveryOptions,  CheckoutDeliveryType? deliveryType,  List<PickupPoint> pickupPoints,  List<ExtraService> services,  int courierPrice,  int? courierFreeFrom,  CheckoutSummary summary)  $default,) {final _that = this;
switch (_that) {
case _CheckoutPreview():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<DeliveryChoice> deliveryOptions,  CheckoutDeliveryType? deliveryType,  List<PickupPoint> pickupPoints,  List<ExtraService> services,  int courierPrice,  int? courierFreeFrom,  CheckoutSummary summary)?  $default,) {final _that = this;
switch (_that) {
case _CheckoutPreview() when $default != null:
return $default(_that.deliveryOptions,_that.deliveryType,_that.pickupPoints,_that.services,_that.courierPrice,_that.courierFreeFrom,_that.summary);case _:
  return null;

}
}

}

/// @nodoc


class _CheckoutPreview extends CheckoutPreview {
  const _CheckoutPreview({required final  List<DeliveryChoice> deliveryOptions, required this.deliveryType, required final  List<PickupPoint> pickupPoints, required final  List<ExtraService> services, required this.courierPrice, this.courierFreeFrom, required this.summary}): _deliveryOptions = deliveryOptions,_pickupPoints = pickupPoints,_services = services,super._();
  

 final  List<DeliveryChoice> _deliveryOptions;
@override List<DeliveryChoice> get deliveryOptions {
  if (_deliveryOptions is EqualUnmodifiableListView) return _deliveryOptions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_deliveryOptions);
}

/// The type the totals were computed for.
@override final  CheckoutDeliveryType? deliveryType;
 final  List<PickupPoint> _pickupPoints;
@override List<PickupPoint> get pickupPoints {
  if (_pickupPoints is EqualUnmodifiableListView) return _pickupPoints;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_pickupPoints);
}

 final  List<ExtraService> _services;
@override List<ExtraService> get services {
  if (_services is EqualUnmodifiableListView) return _services;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_services);
}

@override final  int courierPrice;
/// Courier is free from this goods sum; `null` = never free.
@override final  int? courierFreeFrom;
@override final  CheckoutSummary summary;

/// Create a copy of CheckoutPreview
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckoutPreviewCopyWith<_CheckoutPreview> get copyWith => __$CheckoutPreviewCopyWithImpl<_CheckoutPreview>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckoutPreview&&const DeepCollectionEquality().equals(other._deliveryOptions, _deliveryOptions)&&(identical(other.deliveryType, deliveryType) || other.deliveryType == deliveryType)&&const DeepCollectionEquality().equals(other._pickupPoints, _pickupPoints)&&const DeepCollectionEquality().equals(other._services, _services)&&(identical(other.courierPrice, courierPrice) || other.courierPrice == courierPrice)&&(identical(other.courierFreeFrom, courierFreeFrom) || other.courierFreeFrom == courierFreeFrom)&&(identical(other.summary, summary) || other.summary == summary));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_deliveryOptions),deliveryType,const DeepCollectionEquality().hash(_pickupPoints),const DeepCollectionEquality().hash(_services),courierPrice,courierFreeFrom,summary);

@override
String toString() {
  return 'CheckoutPreview(deliveryOptions: $deliveryOptions, deliveryType: $deliveryType, pickupPoints: $pickupPoints, services: $services, courierPrice: $courierPrice, courierFreeFrom: $courierFreeFrom, summary: $summary)';
}


}

/// @nodoc
abstract mixin class _$CheckoutPreviewCopyWith<$Res> implements $CheckoutPreviewCopyWith<$Res> {
  factory _$CheckoutPreviewCopyWith(_CheckoutPreview value, $Res Function(_CheckoutPreview) _then) = __$CheckoutPreviewCopyWithImpl;
@override @useResult
$Res call({
 List<DeliveryChoice> deliveryOptions, CheckoutDeliveryType? deliveryType, List<PickupPoint> pickupPoints, List<ExtraService> services, int courierPrice, int? courierFreeFrom, CheckoutSummary summary
});


@override $CheckoutSummaryCopyWith<$Res> get summary;

}
/// @nodoc
class __$CheckoutPreviewCopyWithImpl<$Res>
    implements _$CheckoutPreviewCopyWith<$Res> {
  __$CheckoutPreviewCopyWithImpl(this._self, this._then);

  final _CheckoutPreview _self;
  final $Res Function(_CheckoutPreview) _then;

/// Create a copy of CheckoutPreview
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? deliveryOptions = null,Object? deliveryType = freezed,Object? pickupPoints = null,Object? services = null,Object? courierPrice = null,Object? courierFreeFrom = freezed,Object? summary = null,}) {
  return _then(_CheckoutPreview(
deliveryOptions: null == deliveryOptions ? _self._deliveryOptions : deliveryOptions // ignore: cast_nullable_to_non_nullable
as List<DeliveryChoice>,deliveryType: freezed == deliveryType ? _self.deliveryType : deliveryType // ignore: cast_nullable_to_non_nullable
as CheckoutDeliveryType?,pickupPoints: null == pickupPoints ? _self._pickupPoints : pickupPoints // ignore: cast_nullable_to_non_nullable
as List<PickupPoint>,services: null == services ? _self._services : services // ignore: cast_nullable_to_non_nullable
as List<ExtraService>,courierPrice: null == courierPrice ? _self.courierPrice : courierPrice // ignore: cast_nullable_to_non_nullable
as int,courierFreeFrom: freezed == courierFreeFrom ? _self.courierFreeFrom : courierFreeFrom // ignore: cast_nullable_to_non_nullable
as int?,summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as CheckoutSummary,
  ));
}

/// Create a copy of CheckoutPreview
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CheckoutSummaryCopyWith<$Res> get summary {
  
  return $CheckoutSummaryCopyWith<$Res>(_self.summary, (value) {
    return _then(_self.copyWith(summary: value));
  });
}
}

/// @nodoc
mixin _$DeliveryChoice {

 CheckoutDeliveryType get type; String get name; String get term;/// Estimate by weight; «уточнится после взвешивания».
 int get price; String? get unavailableReason;
/// Create a copy of DeliveryChoice
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeliveryChoiceCopyWith<DeliveryChoice> get copyWith => _$DeliveryChoiceCopyWithImpl<DeliveryChoice>(this as DeliveryChoice, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeliveryChoice&&(identical(other.type, type) || other.type == type)&&(identical(other.name, name) || other.name == name)&&(identical(other.term, term) || other.term == term)&&(identical(other.price, price) || other.price == price)&&(identical(other.unavailableReason, unavailableReason) || other.unavailableReason == unavailableReason));
}


@override
int get hashCode => Object.hash(runtimeType,type,name,term,price,unavailableReason);

@override
String toString() {
  return 'DeliveryChoice(type: $type, name: $name, term: $term, price: $price, unavailableReason: $unavailableReason)';
}


}

/// @nodoc
abstract mixin class $DeliveryChoiceCopyWith<$Res>  {
  factory $DeliveryChoiceCopyWith(DeliveryChoice value, $Res Function(DeliveryChoice) _then) = _$DeliveryChoiceCopyWithImpl;
@useResult
$Res call({
 CheckoutDeliveryType type, String name, String term, int price, String? unavailableReason
});




}
/// @nodoc
class _$DeliveryChoiceCopyWithImpl<$Res>
    implements $DeliveryChoiceCopyWith<$Res> {
  _$DeliveryChoiceCopyWithImpl(this._self, this._then);

  final DeliveryChoice _self;
  final $Res Function(DeliveryChoice) _then;

/// Create a copy of DeliveryChoice
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? name = null,Object? term = null,Object? price = null,Object? unavailableReason = freezed,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as CheckoutDeliveryType,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,term: null == term ? _self.term : term // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,unavailableReason: freezed == unavailableReason ? _self.unavailableReason : unavailableReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DeliveryChoice].
extension DeliveryChoicePatterns on DeliveryChoice {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeliveryChoice value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeliveryChoice() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeliveryChoice value)  $default,){
final _that = this;
switch (_that) {
case _DeliveryChoice():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeliveryChoice value)?  $default,){
final _that = this;
switch (_that) {
case _DeliveryChoice() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CheckoutDeliveryType type,  String name,  String term,  int price,  String? unavailableReason)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeliveryChoice() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CheckoutDeliveryType type,  String name,  String term,  int price,  String? unavailableReason)  $default,) {final _that = this;
switch (_that) {
case _DeliveryChoice():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CheckoutDeliveryType type,  String name,  String term,  int price,  String? unavailableReason)?  $default,) {final _that = this;
switch (_that) {
case _DeliveryChoice() when $default != null:
return $default(_that.type,_that.name,_that.term,_that.price,_that.unavailableReason);case _:
  return null;

}
}

}

/// @nodoc


class _DeliveryChoice implements DeliveryChoice {
  const _DeliveryChoice({required this.type, required this.name, required this.term, required this.price, this.unavailableReason});
  

@override final  CheckoutDeliveryType type;
@override final  String name;
@override final  String term;
/// Estimate by weight; «уточнится после взвешивания».
@override final  int price;
@override final  String? unavailableReason;

/// Create a copy of DeliveryChoice
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeliveryChoiceCopyWith<_DeliveryChoice> get copyWith => __$DeliveryChoiceCopyWithImpl<_DeliveryChoice>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeliveryChoice&&(identical(other.type, type) || other.type == type)&&(identical(other.name, name) || other.name == name)&&(identical(other.term, term) || other.term == term)&&(identical(other.price, price) || other.price == price)&&(identical(other.unavailableReason, unavailableReason) || other.unavailableReason == unavailableReason));
}


@override
int get hashCode => Object.hash(runtimeType,type,name,term,price,unavailableReason);

@override
String toString() {
  return 'DeliveryChoice(type: $type, name: $name, term: $term, price: $price, unavailableReason: $unavailableReason)';
}


}

/// @nodoc
abstract mixin class _$DeliveryChoiceCopyWith<$Res> implements $DeliveryChoiceCopyWith<$Res> {
  factory _$DeliveryChoiceCopyWith(_DeliveryChoice value, $Res Function(_DeliveryChoice) _then) = __$DeliveryChoiceCopyWithImpl;
@override @useResult
$Res call({
 CheckoutDeliveryType type, String name, String term, int price, String? unavailableReason
});




}
/// @nodoc
class __$DeliveryChoiceCopyWithImpl<$Res>
    implements _$DeliveryChoiceCopyWith<$Res> {
  __$DeliveryChoiceCopyWithImpl(this._self, this._then);

  final _DeliveryChoice _self;
  final $Res Function(_DeliveryChoice) _then;

/// Create a copy of DeliveryChoice
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? name = null,Object? term = null,Object? price = null,Object? unavailableReason = freezed,}) {
  return _then(_DeliveryChoice(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as CheckoutDeliveryType,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,term: null == term ? _self.term : term // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,unavailableReason: freezed == unavailableReason ? _self.unavailableReason : unavailableReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$PickupPoint {

 String get id; String get name; String get address; String get hours; String get phone;
/// Create a copy of PickupPoint
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PickupPointCopyWith<PickupPoint> get copyWith => _$PickupPointCopyWithImpl<PickupPoint>(this as PickupPoint, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PickupPoint&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.address, address) || other.address == address)&&(identical(other.hours, hours) || other.hours == hours)&&(identical(other.phone, phone) || other.phone == phone));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,address,hours,phone);

@override
String toString() {
  return 'PickupPoint(id: $id, name: $name, address: $address, hours: $hours, phone: $phone)';
}


}

/// @nodoc
abstract mixin class $PickupPointCopyWith<$Res>  {
  factory $PickupPointCopyWith(PickupPoint value, $Res Function(PickupPoint) _then) = _$PickupPointCopyWithImpl;
@useResult
$Res call({
 String id, String name, String address, String hours, String phone
});




}
/// @nodoc
class _$PickupPointCopyWithImpl<$Res>
    implements $PickupPointCopyWith<$Res> {
  _$PickupPointCopyWithImpl(this._self, this._then);

  final PickupPoint _self;
  final $Res Function(PickupPoint) _then;

/// Create a copy of PickupPoint
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


/// Adds pattern-matching-related methods to [PickupPoint].
extension PickupPointPatterns on PickupPoint {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PickupPoint value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PickupPoint() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PickupPoint value)  $default,){
final _that = this;
switch (_that) {
case _PickupPoint():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PickupPoint value)?  $default,){
final _that = this;
switch (_that) {
case _PickupPoint() when $default != null:
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
case _PickupPoint() when $default != null:
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
case _PickupPoint():
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
case _PickupPoint() when $default != null:
return $default(_that.id,_that.name,_that.address,_that.hours,_that.phone);case _:
  return null;

}
}

}

/// @nodoc


class _PickupPoint implements PickupPoint {
  const _PickupPoint({required this.id, required this.name, required this.address, required this.hours, required this.phone});
  

@override final  String id;
@override final  String name;
@override final  String address;
@override final  String hours;
@override final  String phone;

/// Create a copy of PickupPoint
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PickupPointCopyWith<_PickupPoint> get copyWith => __$PickupPointCopyWithImpl<_PickupPoint>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PickupPoint&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.address, address) || other.address == address)&&(identical(other.hours, hours) || other.hours == hours)&&(identical(other.phone, phone) || other.phone == phone));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,address,hours,phone);

@override
String toString() {
  return 'PickupPoint(id: $id, name: $name, address: $address, hours: $hours, phone: $phone)';
}


}

/// @nodoc
abstract mixin class _$PickupPointCopyWith<$Res> implements $PickupPointCopyWith<$Res> {
  factory _$PickupPointCopyWith(_PickupPoint value, $Res Function(_PickupPoint) _then) = __$PickupPointCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String address, String hours, String phone
});




}
/// @nodoc
class __$PickupPointCopyWithImpl<$Res>
    implements _$PickupPointCopyWith<$Res> {
  __$PickupPointCopyWithImpl(this._self, this._then);

  final _PickupPoint _self;
  final $Res Function(_PickupPoint) _then;

/// Create a copy of PickupPoint
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? address = null,Object? hours = null,Object? phone = null,}) {
  return _then(_PickupPoint(
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
mixin _$ExtraService {

 String get id; String get title; int get price;
/// Create a copy of ExtraService
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExtraServiceCopyWith<ExtraService> get copyWith => _$ExtraServiceCopyWithImpl<ExtraService>(this as ExtraService, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExtraService&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.price, price) || other.price == price));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,price);

@override
String toString() {
  return 'ExtraService(id: $id, title: $title, price: $price)';
}


}

/// @nodoc
abstract mixin class $ExtraServiceCopyWith<$Res>  {
  factory $ExtraServiceCopyWith(ExtraService value, $Res Function(ExtraService) _then) = _$ExtraServiceCopyWithImpl;
@useResult
$Res call({
 String id, String title, int price
});




}
/// @nodoc
class _$ExtraServiceCopyWithImpl<$Res>
    implements $ExtraServiceCopyWith<$Res> {
  _$ExtraServiceCopyWithImpl(this._self, this._then);

  final ExtraService _self;
  final $Res Function(ExtraService) _then;

/// Create a copy of ExtraService
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


/// Adds pattern-matching-related methods to [ExtraService].
extension ExtraServicePatterns on ExtraService {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExtraService value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExtraService() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExtraService value)  $default,){
final _that = this;
switch (_that) {
case _ExtraService():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExtraService value)?  $default,){
final _that = this;
switch (_that) {
case _ExtraService() when $default != null:
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
case _ExtraService() when $default != null:
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
case _ExtraService():
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
case _ExtraService() when $default != null:
return $default(_that.id,_that.title,_that.price);case _:
  return null;

}
}

}

/// @nodoc


class _ExtraService implements ExtraService {
  const _ExtraService({required this.id, required this.title, required this.price});
  

@override final  String id;
@override final  String title;
@override final  int price;

/// Create a copy of ExtraService
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExtraServiceCopyWith<_ExtraService> get copyWith => __$ExtraServiceCopyWithImpl<_ExtraService>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExtraService&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.price, price) || other.price == price));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,price);

@override
String toString() {
  return 'ExtraService(id: $id, title: $title, price: $price)';
}


}

/// @nodoc
abstract mixin class _$ExtraServiceCopyWith<$Res> implements $ExtraServiceCopyWith<$Res> {
  factory _$ExtraServiceCopyWith(_ExtraService value, $Res Function(_ExtraService) _then) = __$ExtraServiceCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, int price
});




}
/// @nodoc
class __$ExtraServiceCopyWithImpl<$Res>
    implements _$ExtraServiceCopyWith<$Res> {
  __$ExtraServiceCopyWithImpl(this._self, this._then);

  final _ExtraService _self;
  final $Res Function(_ExtraService) _then;

/// Create a copy of ExtraService
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? price = null,}) {
  return _then(_ExtraService(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$CheckoutSummary {

 int get items; int get chinaDelivery; int get internationalEstimate; int get courier; int get services; int get discount; int get total;/// Due now (advance). Equal to [total] for full prepayment.
 int get payNow;/// Due before handover: international delivery after weighing, courier.
 int get payLater;
/// Create a copy of CheckoutSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckoutSummaryCopyWith<CheckoutSummary> get copyWith => _$CheckoutSummaryCopyWithImpl<CheckoutSummary>(this as CheckoutSummary, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckoutSummary&&(identical(other.items, items) || other.items == items)&&(identical(other.chinaDelivery, chinaDelivery) || other.chinaDelivery == chinaDelivery)&&(identical(other.internationalEstimate, internationalEstimate) || other.internationalEstimate == internationalEstimate)&&(identical(other.courier, courier) || other.courier == courier)&&(identical(other.services, services) || other.services == services)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.total, total) || other.total == total)&&(identical(other.payNow, payNow) || other.payNow == payNow)&&(identical(other.payLater, payLater) || other.payLater == payLater));
}


@override
int get hashCode => Object.hash(runtimeType,items,chinaDelivery,internationalEstimate,courier,services,discount,total,payNow,payLater);

@override
String toString() {
  return 'CheckoutSummary(items: $items, chinaDelivery: $chinaDelivery, internationalEstimate: $internationalEstimate, courier: $courier, services: $services, discount: $discount, total: $total, payNow: $payNow, payLater: $payLater)';
}


}

/// @nodoc
abstract mixin class $CheckoutSummaryCopyWith<$Res>  {
  factory $CheckoutSummaryCopyWith(CheckoutSummary value, $Res Function(CheckoutSummary) _then) = _$CheckoutSummaryCopyWithImpl;
@useResult
$Res call({
 int items, int chinaDelivery, int internationalEstimate, int courier, int services, int discount, int total, int payNow, int payLater
});




}
/// @nodoc
class _$CheckoutSummaryCopyWithImpl<$Res>
    implements $CheckoutSummaryCopyWith<$Res> {
  _$CheckoutSummaryCopyWithImpl(this._self, this._then);

  final CheckoutSummary _self;
  final $Res Function(CheckoutSummary) _then;

/// Create a copy of CheckoutSummary
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


/// Adds pattern-matching-related methods to [CheckoutSummary].
extension CheckoutSummaryPatterns on CheckoutSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CheckoutSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckoutSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CheckoutSummary value)  $default,){
final _that = this;
switch (_that) {
case _CheckoutSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CheckoutSummary value)?  $default,){
final _that = this;
switch (_that) {
case _CheckoutSummary() when $default != null:
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
case _CheckoutSummary() when $default != null:
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
case _CheckoutSummary():
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
case _CheckoutSummary() when $default != null:
return $default(_that.items,_that.chinaDelivery,_that.internationalEstimate,_that.courier,_that.services,_that.discount,_that.total,_that.payNow,_that.payLater);case _:
  return null;

}
}

}

/// @nodoc


class _CheckoutSummary implements CheckoutSummary {
  const _CheckoutSummary({required this.items, required this.chinaDelivery, required this.internationalEstimate, required this.courier, required this.services, required this.discount, required this.total, required this.payNow, required this.payLater});
  

@override final  int items;
@override final  int chinaDelivery;
@override final  int internationalEstimate;
@override final  int courier;
@override final  int services;
@override final  int discount;
@override final  int total;
/// Due now (advance). Equal to [total] for full prepayment.
@override final  int payNow;
/// Due before handover: international delivery after weighing, courier.
@override final  int payLater;

/// Create a copy of CheckoutSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckoutSummaryCopyWith<_CheckoutSummary> get copyWith => __$CheckoutSummaryCopyWithImpl<_CheckoutSummary>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckoutSummary&&(identical(other.items, items) || other.items == items)&&(identical(other.chinaDelivery, chinaDelivery) || other.chinaDelivery == chinaDelivery)&&(identical(other.internationalEstimate, internationalEstimate) || other.internationalEstimate == internationalEstimate)&&(identical(other.courier, courier) || other.courier == courier)&&(identical(other.services, services) || other.services == services)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.total, total) || other.total == total)&&(identical(other.payNow, payNow) || other.payNow == payNow)&&(identical(other.payLater, payLater) || other.payLater == payLater));
}


@override
int get hashCode => Object.hash(runtimeType,items,chinaDelivery,internationalEstimate,courier,services,discount,total,payNow,payLater);

@override
String toString() {
  return 'CheckoutSummary(items: $items, chinaDelivery: $chinaDelivery, internationalEstimate: $internationalEstimate, courier: $courier, services: $services, discount: $discount, total: $total, payNow: $payNow, payLater: $payLater)';
}


}

/// @nodoc
abstract mixin class _$CheckoutSummaryCopyWith<$Res> implements $CheckoutSummaryCopyWith<$Res> {
  factory _$CheckoutSummaryCopyWith(_CheckoutSummary value, $Res Function(_CheckoutSummary) _then) = __$CheckoutSummaryCopyWithImpl;
@override @useResult
$Res call({
 int items, int chinaDelivery, int internationalEstimate, int courier, int services, int discount, int total, int payNow, int payLater
});




}
/// @nodoc
class __$CheckoutSummaryCopyWithImpl<$Res>
    implements _$CheckoutSummaryCopyWith<$Res> {
  __$CheckoutSummaryCopyWithImpl(this._self, this._then);

  final _CheckoutSummary _self;
  final $Res Function(_CheckoutSummary) _then;

/// Create a copy of CheckoutSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? chinaDelivery = null,Object? internationalEstimate = null,Object? courier = null,Object? services = null,Object? discount = null,Object? total = null,Object? payNow = null,Object? payLater = null,}) {
  return _then(_CheckoutSummary(
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
mixin _$PlacedOrder {

 String get number; int get payNow; PaymentMethod get payment;/// Set for card payment: the payment to check after the bank page.
 String? get paymentId;
/// Create a copy of PlacedOrder
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlacedOrderCopyWith<PlacedOrder> get copyWith => _$PlacedOrderCopyWithImpl<PlacedOrder>(this as PlacedOrder, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlacedOrder&&(identical(other.number, number) || other.number == number)&&(identical(other.payNow, payNow) || other.payNow == payNow)&&(identical(other.payment, payment) || other.payment == payment)&&(identical(other.paymentId, paymentId) || other.paymentId == paymentId));
}


@override
int get hashCode => Object.hash(runtimeType,number,payNow,payment,paymentId);

@override
String toString() {
  return 'PlacedOrder(number: $number, payNow: $payNow, payment: $payment, paymentId: $paymentId)';
}


}

/// @nodoc
abstract mixin class $PlacedOrderCopyWith<$Res>  {
  factory $PlacedOrderCopyWith(PlacedOrder value, $Res Function(PlacedOrder) _then) = _$PlacedOrderCopyWithImpl;
@useResult
$Res call({
 String number, int payNow, PaymentMethod payment, String? paymentId
});




}
/// @nodoc
class _$PlacedOrderCopyWithImpl<$Res>
    implements $PlacedOrderCopyWith<$Res> {
  _$PlacedOrderCopyWithImpl(this._self, this._then);

  final PlacedOrder _self;
  final $Res Function(PlacedOrder) _then;

/// Create a copy of PlacedOrder
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? number = null,Object? payNow = null,Object? payment = null,Object? paymentId = freezed,}) {
  return _then(_self.copyWith(
number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,payNow: null == payNow ? _self.payNow : payNow // ignore: cast_nullable_to_non_nullable
as int,payment: null == payment ? _self.payment : payment // ignore: cast_nullable_to_non_nullable
as PaymentMethod,paymentId: freezed == paymentId ? _self.paymentId : paymentId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PlacedOrder].
extension PlacedOrderPatterns on PlacedOrder {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlacedOrder value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlacedOrder() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlacedOrder value)  $default,){
final _that = this;
switch (_that) {
case _PlacedOrder():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlacedOrder value)?  $default,){
final _that = this;
switch (_that) {
case _PlacedOrder() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String number,  int payNow,  PaymentMethod payment,  String? paymentId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlacedOrder() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String number,  int payNow,  PaymentMethod payment,  String? paymentId)  $default,) {final _that = this;
switch (_that) {
case _PlacedOrder():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String number,  int payNow,  PaymentMethod payment,  String? paymentId)?  $default,) {final _that = this;
switch (_that) {
case _PlacedOrder() when $default != null:
return $default(_that.number,_that.payNow,_that.payment,_that.paymentId);case _:
  return null;

}
}

}

/// @nodoc


class _PlacedOrder implements PlacedOrder {
  const _PlacedOrder({required this.number, required this.payNow, required this.payment, this.paymentId});
  

@override final  String number;
@override final  int payNow;
@override final  PaymentMethod payment;
/// Set for card payment: the payment to check after the bank page.
@override final  String? paymentId;

/// Create a copy of PlacedOrder
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlacedOrderCopyWith<_PlacedOrder> get copyWith => __$PlacedOrderCopyWithImpl<_PlacedOrder>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlacedOrder&&(identical(other.number, number) || other.number == number)&&(identical(other.payNow, payNow) || other.payNow == payNow)&&(identical(other.payment, payment) || other.payment == payment)&&(identical(other.paymentId, paymentId) || other.paymentId == paymentId));
}


@override
int get hashCode => Object.hash(runtimeType,number,payNow,payment,paymentId);

@override
String toString() {
  return 'PlacedOrder(number: $number, payNow: $payNow, payment: $payment, paymentId: $paymentId)';
}


}

/// @nodoc
abstract mixin class _$PlacedOrderCopyWith<$Res> implements $PlacedOrderCopyWith<$Res> {
  factory _$PlacedOrderCopyWith(_PlacedOrder value, $Res Function(_PlacedOrder) _then) = __$PlacedOrderCopyWithImpl;
@override @useResult
$Res call({
 String number, int payNow, PaymentMethod payment, String? paymentId
});




}
/// @nodoc
class __$PlacedOrderCopyWithImpl<$Res>
    implements _$PlacedOrderCopyWith<$Res> {
  __$PlacedOrderCopyWithImpl(this._self, this._then);

  final _PlacedOrder _self;
  final $Res Function(_PlacedOrder) _then;

/// Create a copy of PlacedOrder
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? number = null,Object? payNow = null,Object? payment = null,Object? paymentId = freezed,}) {
  return _then(_PlacedOrder(
number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,payNow: null == payNow ? _self.payNow : payNow // ignore: cast_nullable_to_non_nullable
as int,payment: null == payment ? _self.payment : payment // ignore: cast_nullable_to_non_nullable
as PaymentMethod,paymentId: freezed == paymentId ? _self.paymentId : paymentId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$PaymentCheck {

 PaymentStatus get status;/// Server text for a failed payment.
 String? get reason;
/// Create a copy of PaymentCheck
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentCheckCopyWith<PaymentCheck> get copyWith => _$PaymentCheckCopyWithImpl<PaymentCheck>(this as PaymentCheck, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentCheck&&(identical(other.status, status) || other.status == status)&&(identical(other.reason, reason) || other.reason == reason));
}


@override
int get hashCode => Object.hash(runtimeType,status,reason);

@override
String toString() {
  return 'PaymentCheck(status: $status, reason: $reason)';
}


}

/// @nodoc
abstract mixin class $PaymentCheckCopyWith<$Res>  {
  factory $PaymentCheckCopyWith(PaymentCheck value, $Res Function(PaymentCheck) _then) = _$PaymentCheckCopyWithImpl;
@useResult
$Res call({
 PaymentStatus status, String? reason
});




}
/// @nodoc
class _$PaymentCheckCopyWithImpl<$Res>
    implements $PaymentCheckCopyWith<$Res> {
  _$PaymentCheckCopyWithImpl(this._self, this._then);

  final PaymentCheck _self;
  final $Res Function(PaymentCheck) _then;

/// Create a copy of PaymentCheck
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? reason = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PaymentStatus,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentCheck].
extension PaymentCheckPatterns on PaymentCheck {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentCheck value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentCheck() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentCheck value)  $default,){
final _that = this;
switch (_that) {
case _PaymentCheck():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentCheck value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentCheck() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PaymentStatus status,  String? reason)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentCheck() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PaymentStatus status,  String? reason)  $default,) {final _that = this;
switch (_that) {
case _PaymentCheck():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PaymentStatus status,  String? reason)?  $default,) {final _that = this;
switch (_that) {
case _PaymentCheck() when $default != null:
return $default(_that.status,_that.reason);case _:
  return null;

}
}

}

/// @nodoc


class _PaymentCheck implements PaymentCheck {
  const _PaymentCheck({required this.status, this.reason});
  

@override final  PaymentStatus status;
/// Server text for a failed payment.
@override final  String? reason;

/// Create a copy of PaymentCheck
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentCheckCopyWith<_PaymentCheck> get copyWith => __$PaymentCheckCopyWithImpl<_PaymentCheck>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentCheck&&(identical(other.status, status) || other.status == status)&&(identical(other.reason, reason) || other.reason == reason));
}


@override
int get hashCode => Object.hash(runtimeType,status,reason);

@override
String toString() {
  return 'PaymentCheck(status: $status, reason: $reason)';
}


}

/// @nodoc
abstract mixin class _$PaymentCheckCopyWith<$Res> implements $PaymentCheckCopyWith<$Res> {
  factory _$PaymentCheckCopyWith(_PaymentCheck value, $Res Function(_PaymentCheck) _then) = __$PaymentCheckCopyWithImpl;
@override @useResult
$Res call({
 PaymentStatus status, String? reason
});




}
/// @nodoc
class __$PaymentCheckCopyWithImpl<$Res>
    implements _$PaymentCheckCopyWith<$Res> {
  __$PaymentCheckCopyWithImpl(this._self, this._then);

  final _PaymentCheck _self;
  final $Res Function(_PaymentCheck) _then;

/// Create a copy of PaymentCheck
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? reason = freezed,}) {
  return _then(_PaymentCheck(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PaymentStatus,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$PlaceOrderResult {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlaceOrderResult);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PlaceOrderResult()';
}


}

/// @nodoc
class $PlaceOrderResultCopyWith<$Res>  {
$PlaceOrderResultCopyWith(PlaceOrderResult _, $Res Function(PlaceOrderResult) __);
}


/// Adds pattern-matching-related methods to [PlaceOrderResult].
extension PlaceOrderResultPatterns on PlaceOrderResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( OrderPlaced value)?  placed,TResult Function( OrderPriceChanged value)?  priceChanged,required TResult orElse(),}){
final _that = this;
switch (_that) {
case OrderPlaced() when placed != null:
return placed(_that);case OrderPriceChanged() when priceChanged != null:
return priceChanged(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( OrderPlaced value)  placed,required TResult Function( OrderPriceChanged value)  priceChanged,}){
final _that = this;
switch (_that) {
case OrderPlaced():
return placed(_that);case OrderPriceChanged():
return priceChanged(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( OrderPlaced value)?  placed,TResult? Function( OrderPriceChanged value)?  priceChanged,}){
final _that = this;
switch (_that) {
case OrderPlaced() when placed != null:
return placed(_that);case OrderPriceChanged() when priceChanged != null:
return priceChanged(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( PlacedOrder order)?  placed,TResult Function( CheckoutPreview preview)?  priceChanged,required TResult orElse(),}) {final _that = this;
switch (_that) {
case OrderPlaced() when placed != null:
return placed(_that.order);case OrderPriceChanged() when priceChanged != null:
return priceChanged(_that.preview);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( PlacedOrder order)  placed,required TResult Function( CheckoutPreview preview)  priceChanged,}) {final _that = this;
switch (_that) {
case OrderPlaced():
return placed(_that.order);case OrderPriceChanged():
return priceChanged(_that.preview);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( PlacedOrder order)?  placed,TResult? Function( CheckoutPreview preview)?  priceChanged,}) {final _that = this;
switch (_that) {
case OrderPlaced() when placed != null:
return placed(_that.order);case OrderPriceChanged() when priceChanged != null:
return priceChanged(_that.preview);case _:
  return null;

}
}

}

/// @nodoc


class OrderPlaced implements PlaceOrderResult {
  const OrderPlaced(this.order);
  

 final  PlacedOrder order;

/// Create a copy of PlaceOrderResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderPlacedCopyWith<OrderPlaced> get copyWith => _$OrderPlacedCopyWithImpl<OrderPlaced>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderPlaced&&(identical(other.order, order) || other.order == order));
}


@override
int get hashCode => Object.hash(runtimeType,order);

@override
String toString() {
  return 'PlaceOrderResult.placed(order: $order)';
}


}

/// @nodoc
abstract mixin class $OrderPlacedCopyWith<$Res> implements $PlaceOrderResultCopyWith<$Res> {
  factory $OrderPlacedCopyWith(OrderPlaced value, $Res Function(OrderPlaced) _then) = _$OrderPlacedCopyWithImpl;
@useResult
$Res call({
 PlacedOrder order
});


$PlacedOrderCopyWith<$Res> get order;

}
/// @nodoc
class _$OrderPlacedCopyWithImpl<$Res>
    implements $OrderPlacedCopyWith<$Res> {
  _$OrderPlacedCopyWithImpl(this._self, this._then);

  final OrderPlaced _self;
  final $Res Function(OrderPlaced) _then;

/// Create a copy of PlaceOrderResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? order = null,}) {
  return _then(OrderPlaced(
null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as PlacedOrder,
  ));
}

/// Create a copy of PlaceOrderResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlacedOrderCopyWith<$Res> get order {
  
  return $PlacedOrderCopyWith<$Res>(_self.order, (value) {
    return _then(_self.copyWith(order: value));
  });
}
}

/// @nodoc


class OrderPriceChanged implements PlaceOrderResult {
  const OrderPriceChanged(this.preview);
  

 final  CheckoutPreview preview;

/// Create a copy of PlaceOrderResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderPriceChangedCopyWith<OrderPriceChanged> get copyWith => _$OrderPriceChangedCopyWithImpl<OrderPriceChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderPriceChanged&&(identical(other.preview, preview) || other.preview == preview));
}


@override
int get hashCode => Object.hash(runtimeType,preview);

@override
String toString() {
  return 'PlaceOrderResult.priceChanged(preview: $preview)';
}


}

/// @nodoc
abstract mixin class $OrderPriceChangedCopyWith<$Res> implements $PlaceOrderResultCopyWith<$Res> {
  factory $OrderPriceChangedCopyWith(OrderPriceChanged value, $Res Function(OrderPriceChanged) _then) = _$OrderPriceChangedCopyWithImpl;
@useResult
$Res call({
 CheckoutPreview preview
});


$CheckoutPreviewCopyWith<$Res> get preview;

}
/// @nodoc
class _$OrderPriceChangedCopyWithImpl<$Res>
    implements $OrderPriceChangedCopyWith<$Res> {
  _$OrderPriceChangedCopyWithImpl(this._self, this._then);

  final OrderPriceChanged _self;
  final $Res Function(OrderPriceChanged) _then;

/// Create a copy of PlaceOrderResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? preview = null,}) {
  return _then(OrderPriceChanged(
null == preview ? _self.preview : preview // ignore: cast_nullable_to_non_nullable
as CheckoutPreview,
  ));
}

/// Create a copy of PlaceOrderResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CheckoutPreviewCopyWith<$Res> get preview {
  
  return $CheckoutPreviewCopyWith<$Res>(_self.preview, (value) {
    return _then(_self.copyWith(preview: value));
  });
}
}

// dart format on
