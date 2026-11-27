// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GeoPoint {

 double get lat; double get lng;
/// Create a copy of GeoPoint
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GeoPointCopyWith<GeoPoint> get copyWith => _$GeoPointCopyWithImpl<GeoPoint>(this as GeoPoint, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GeoPoint&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng));
}


@override
int get hashCode => Object.hash(runtimeType,lat,lng);

@override
String toString() {
  return 'GeoPoint(lat: $lat, lng: $lng)';
}


}

/// @nodoc
abstract mixin class $GeoPointCopyWith<$Res>  {
  factory $GeoPointCopyWith(GeoPoint value, $Res Function(GeoPoint) _then) = _$GeoPointCopyWithImpl;
@useResult
$Res call({
 double lat, double lng
});




}
/// @nodoc
class _$GeoPointCopyWithImpl<$Res>
    implements $GeoPointCopyWith<$Res> {
  _$GeoPointCopyWithImpl(this._self, this._then);

  final GeoPoint _self;
  final $Res Function(GeoPoint) _then;

/// Create a copy of GeoPoint
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? lat = null,Object? lng = null,}) {
  return _then(_self.copyWith(
lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,lng: null == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [GeoPoint].
extension GeoPointPatterns on GeoPoint {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GeoPoint value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GeoPoint() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GeoPoint value)  $default,){
final _that = this;
switch (_that) {
case _GeoPoint():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GeoPoint value)?  $default,){
final _that = this;
switch (_that) {
case _GeoPoint() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double lat,  double lng)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GeoPoint() when $default != null:
return $default(_that.lat,_that.lng);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double lat,  double lng)  $default,) {final _that = this;
switch (_that) {
case _GeoPoint():
return $default(_that.lat,_that.lng);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double lat,  double lng)?  $default,) {final _that = this;
switch (_that) {
case _GeoPoint() when $default != null:
return $default(_that.lat,_that.lng);case _:
  return null;

}
}

}

/// @nodoc


class _GeoPoint implements GeoPoint {
  const _GeoPoint({required this.lat, required this.lng});
  

@override final  double lat;
@override final  double lng;

/// Create a copy of GeoPoint
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GeoPointCopyWith<_GeoPoint> get copyWith => __$GeoPointCopyWithImpl<_GeoPoint>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GeoPoint&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng));
}


@override
int get hashCode => Object.hash(runtimeType,lat,lng);

@override
String toString() {
  return 'GeoPoint(lat: $lat, lng: $lng)';
}


}

/// @nodoc
abstract mixin class _$GeoPointCopyWith<$Res> implements $GeoPointCopyWith<$Res> {
  factory _$GeoPointCopyWith(_GeoPoint value, $Res Function(_GeoPoint) _then) = __$GeoPointCopyWithImpl;
@override @useResult
$Res call({
 double lat, double lng
});




}
/// @nodoc
class __$GeoPointCopyWithImpl<$Res>
    implements _$GeoPointCopyWith<$Res> {
  __$GeoPointCopyWithImpl(this._self, this._then);

  final _GeoPoint _self;
  final $Res Function(_GeoPoint) _then;

/// Create a copy of GeoPoint
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? lat = null,Object? lng = null,}) {
  return _then(_GeoPoint(
lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,lng: null == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc
mixin _$PlaceInfo {

 String get address; String get region;
/// Create a copy of PlaceInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlaceInfoCopyWith<PlaceInfo> get copyWith => _$PlaceInfoCopyWithImpl<PlaceInfo>(this as PlaceInfo, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlaceInfo&&(identical(other.address, address) || other.address == address)&&(identical(other.region, region) || other.region == region));
}


@override
int get hashCode => Object.hash(runtimeType,address,region);

@override
String toString() {
  return 'PlaceInfo(address: $address, region: $region)';
}


}

/// @nodoc
abstract mixin class $PlaceInfoCopyWith<$Res>  {
  factory $PlaceInfoCopyWith(PlaceInfo value, $Res Function(PlaceInfo) _then) = _$PlaceInfoCopyWithImpl;
@useResult
$Res call({
 String address, String region
});




}
/// @nodoc
class _$PlaceInfoCopyWithImpl<$Res>
    implements $PlaceInfoCopyWith<$Res> {
  _$PlaceInfoCopyWithImpl(this._self, this._then);

  final PlaceInfo _self;
  final $Res Function(PlaceInfo) _then;

/// Create a copy of PlaceInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? address = null,Object? region = null,}) {
  return _then(_self.copyWith(
address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,region: null == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PlaceInfo].
extension PlaceInfoPatterns on PlaceInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlaceInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlaceInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlaceInfo value)  $default,){
final _that = this;
switch (_that) {
case _PlaceInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlaceInfo value)?  $default,){
final _that = this;
switch (_that) {
case _PlaceInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String address,  String region)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlaceInfo() when $default != null:
return $default(_that.address,_that.region);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String address,  String region)  $default,) {final _that = this;
switch (_that) {
case _PlaceInfo():
return $default(_that.address,_that.region);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String address,  String region)?  $default,) {final _that = this;
switch (_that) {
case _PlaceInfo() when $default != null:
return $default(_that.address,_that.region);case _:
  return null;

}
}

}

/// @nodoc


class _PlaceInfo implements PlaceInfo {
  const _PlaceInfo({required this.address, required this.region});
  

@override final  String address;
@override final  String region;

/// Create a copy of PlaceInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlaceInfoCopyWith<_PlaceInfo> get copyWith => __$PlaceInfoCopyWithImpl<_PlaceInfo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlaceInfo&&(identical(other.address, address) || other.address == address)&&(identical(other.region, region) || other.region == region));
}


@override
int get hashCode => Object.hash(runtimeType,address,region);

@override
String toString() {
  return 'PlaceInfo(address: $address, region: $region)';
}


}

/// @nodoc
abstract mixin class _$PlaceInfoCopyWith<$Res> implements $PlaceInfoCopyWith<$Res> {
  factory _$PlaceInfoCopyWith(_PlaceInfo value, $Res Function(_PlaceInfo) _then) = __$PlaceInfoCopyWithImpl;
@override @useResult
$Res call({
 String address, String region
});




}
/// @nodoc
class __$PlaceInfoCopyWithImpl<$Res>
    implements _$PlaceInfoCopyWith<$Res> {
  __$PlaceInfoCopyWithImpl(this._self, this._then);

  final _PlaceInfo _self;
  final $Res Function(_PlaceInfo) _then;

/// Create a copy of PlaceInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? address = null,Object? region = null,}) {
  return _then(_PlaceInfo(
address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,region: null == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$DeliveryAddress {

 String get id; GeoPoint get point;/// Street and house, from the point.
 String get address; String get region;/// «Квартира / ориентир».
 String get details; bool get isDefault;
/// Create a copy of DeliveryAddress
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeliveryAddressCopyWith<DeliveryAddress> get copyWith => _$DeliveryAddressCopyWithImpl<DeliveryAddress>(this as DeliveryAddress, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeliveryAddress&&(identical(other.id, id) || other.id == id)&&(identical(other.point, point) || other.point == point)&&(identical(other.address, address) || other.address == address)&&(identical(other.region, region) || other.region == region)&&(identical(other.details, details) || other.details == details)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault));
}


@override
int get hashCode => Object.hash(runtimeType,id,point,address,region,details,isDefault);

@override
String toString() {
  return 'DeliveryAddress(id: $id, point: $point, address: $address, region: $region, details: $details, isDefault: $isDefault)';
}


}

/// @nodoc
abstract mixin class $DeliveryAddressCopyWith<$Res>  {
  factory $DeliveryAddressCopyWith(DeliveryAddress value, $Res Function(DeliveryAddress) _then) = _$DeliveryAddressCopyWithImpl;
@useResult
$Res call({
 String id, GeoPoint point, String address, String region, String details, bool isDefault
});


$GeoPointCopyWith<$Res> get point;

}
/// @nodoc
class _$DeliveryAddressCopyWithImpl<$Res>
    implements $DeliveryAddressCopyWith<$Res> {
  _$DeliveryAddressCopyWithImpl(this._self, this._then);

  final DeliveryAddress _self;
  final $Res Function(DeliveryAddress) _then;

/// Create a copy of DeliveryAddress
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? point = null,Object? address = null,Object? region = null,Object? details = null,Object? isDefault = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,point: null == point ? _self.point : point // ignore: cast_nullable_to_non_nullable
as GeoPoint,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,region: null == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as String,details: null == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as String,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of DeliveryAddress
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GeoPointCopyWith<$Res> get point {
  
  return $GeoPointCopyWith<$Res>(_self.point, (value) {
    return _then(_self.copyWith(point: value));
  });
}
}


/// Adds pattern-matching-related methods to [DeliveryAddress].
extension DeliveryAddressPatterns on DeliveryAddress {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeliveryAddress value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeliveryAddress() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeliveryAddress value)  $default,){
final _that = this;
switch (_that) {
case _DeliveryAddress():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeliveryAddress value)?  $default,){
final _that = this;
switch (_that) {
case _DeliveryAddress() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  GeoPoint point,  String address,  String region,  String details,  bool isDefault)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeliveryAddress() when $default != null:
return $default(_that.id,_that.point,_that.address,_that.region,_that.details,_that.isDefault);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  GeoPoint point,  String address,  String region,  String details,  bool isDefault)  $default,) {final _that = this;
switch (_that) {
case _DeliveryAddress():
return $default(_that.id,_that.point,_that.address,_that.region,_that.details,_that.isDefault);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  GeoPoint point,  String address,  String region,  String details,  bool isDefault)?  $default,) {final _that = this;
switch (_that) {
case _DeliveryAddress() when $default != null:
return $default(_that.id,_that.point,_that.address,_that.region,_that.details,_that.isDefault);case _:
  return null;

}
}

}

/// @nodoc


class _DeliveryAddress implements DeliveryAddress {
  const _DeliveryAddress({required this.id, required this.point, required this.address, required this.region, this.details = '', this.isDefault = false});
  

@override final  String id;
@override final  GeoPoint point;
/// Street and house, from the point.
@override final  String address;
@override final  String region;
/// «Квартира / ориентир».
@override@JsonKey() final  String details;
@override@JsonKey() final  bool isDefault;

/// Create a copy of DeliveryAddress
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeliveryAddressCopyWith<_DeliveryAddress> get copyWith => __$DeliveryAddressCopyWithImpl<_DeliveryAddress>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeliveryAddress&&(identical(other.id, id) || other.id == id)&&(identical(other.point, point) || other.point == point)&&(identical(other.address, address) || other.address == address)&&(identical(other.region, region) || other.region == region)&&(identical(other.details, details) || other.details == details)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault));
}


@override
int get hashCode => Object.hash(runtimeType,id,point,address,region,details,isDefault);

@override
String toString() {
  return 'DeliveryAddress(id: $id, point: $point, address: $address, region: $region, details: $details, isDefault: $isDefault)';
}


}

/// @nodoc
abstract mixin class _$DeliveryAddressCopyWith<$Res> implements $DeliveryAddressCopyWith<$Res> {
  factory _$DeliveryAddressCopyWith(_DeliveryAddress value, $Res Function(_DeliveryAddress) _then) = __$DeliveryAddressCopyWithImpl;
@override @useResult
$Res call({
 String id, GeoPoint point, String address, String region, String details, bool isDefault
});


@override $GeoPointCopyWith<$Res> get point;

}
/// @nodoc
class __$DeliveryAddressCopyWithImpl<$Res>
    implements _$DeliveryAddressCopyWith<$Res> {
  __$DeliveryAddressCopyWithImpl(this._self, this._then);

  final _DeliveryAddress _self;
  final $Res Function(_DeliveryAddress) _then;

/// Create a copy of DeliveryAddress
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? point = null,Object? address = null,Object? region = null,Object? details = null,Object? isDefault = null,}) {
  return _then(_DeliveryAddress(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,point: null == point ? _self.point : point // ignore: cast_nullable_to_non_nullable
as GeoPoint,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,region: null == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as String,details: null == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as String,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of DeliveryAddress
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GeoPointCopyWith<$Res> get point {
  
  return $GeoPointCopyWith<$Res>(_self.point, (value) {
    return _then(_self.copyWith(point: value));
  });
}
}

/// @nodoc
mixin _$AddressDraft {

 GeoPoint get point; String? get id; String get details; bool get isDefault;
/// Create a copy of AddressDraft
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddressDraftCopyWith<AddressDraft> get copyWith => _$AddressDraftCopyWithImpl<AddressDraft>(this as AddressDraft, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddressDraft&&(identical(other.point, point) || other.point == point)&&(identical(other.id, id) || other.id == id)&&(identical(other.details, details) || other.details == details)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault));
}


@override
int get hashCode => Object.hash(runtimeType,point,id,details,isDefault);

@override
String toString() {
  return 'AddressDraft(point: $point, id: $id, details: $details, isDefault: $isDefault)';
}


}

/// @nodoc
abstract mixin class $AddressDraftCopyWith<$Res>  {
  factory $AddressDraftCopyWith(AddressDraft value, $Res Function(AddressDraft) _then) = _$AddressDraftCopyWithImpl;
@useResult
$Res call({
 GeoPoint point, String? id, String details, bool isDefault
});


$GeoPointCopyWith<$Res> get point;

}
/// @nodoc
class _$AddressDraftCopyWithImpl<$Res>
    implements $AddressDraftCopyWith<$Res> {
  _$AddressDraftCopyWithImpl(this._self, this._then);

  final AddressDraft _self;
  final $Res Function(AddressDraft) _then;

/// Create a copy of AddressDraft
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? point = null,Object? id = freezed,Object? details = null,Object? isDefault = null,}) {
  return _then(_self.copyWith(
point: null == point ? _self.point : point // ignore: cast_nullable_to_non_nullable
as GeoPoint,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,details: null == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as String,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of AddressDraft
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GeoPointCopyWith<$Res> get point {
  
  return $GeoPointCopyWith<$Res>(_self.point, (value) {
    return _then(_self.copyWith(point: value));
  });
}
}


/// Adds pattern-matching-related methods to [AddressDraft].
extension AddressDraftPatterns on AddressDraft {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddressDraft value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddressDraft() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddressDraft value)  $default,){
final _that = this;
switch (_that) {
case _AddressDraft():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddressDraft value)?  $default,){
final _that = this;
switch (_that) {
case _AddressDraft() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( GeoPoint point,  String? id,  String details,  bool isDefault)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddressDraft() when $default != null:
return $default(_that.point,_that.id,_that.details,_that.isDefault);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( GeoPoint point,  String? id,  String details,  bool isDefault)  $default,) {final _that = this;
switch (_that) {
case _AddressDraft():
return $default(_that.point,_that.id,_that.details,_that.isDefault);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( GeoPoint point,  String? id,  String details,  bool isDefault)?  $default,) {final _that = this;
switch (_that) {
case _AddressDraft() when $default != null:
return $default(_that.point,_that.id,_that.details,_that.isDefault);case _:
  return null;

}
}

}

/// @nodoc


class _AddressDraft implements AddressDraft {
  const _AddressDraft({required this.point, this.id, this.details = '', this.isDefault = false});
  

@override final  GeoPoint point;
@override final  String? id;
@override@JsonKey() final  String details;
@override@JsonKey() final  bool isDefault;

/// Create a copy of AddressDraft
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddressDraftCopyWith<_AddressDraft> get copyWith => __$AddressDraftCopyWithImpl<_AddressDraft>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddressDraft&&(identical(other.point, point) || other.point == point)&&(identical(other.id, id) || other.id == id)&&(identical(other.details, details) || other.details == details)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault));
}


@override
int get hashCode => Object.hash(runtimeType,point,id,details,isDefault);

@override
String toString() {
  return 'AddressDraft(point: $point, id: $id, details: $details, isDefault: $isDefault)';
}


}

/// @nodoc
abstract mixin class _$AddressDraftCopyWith<$Res> implements $AddressDraftCopyWith<$Res> {
  factory _$AddressDraftCopyWith(_AddressDraft value, $Res Function(_AddressDraft) _then) = __$AddressDraftCopyWithImpl;
@override @useResult
$Res call({
 GeoPoint point, String? id, String details, bool isDefault
});


@override $GeoPointCopyWith<$Res> get point;

}
/// @nodoc
class __$AddressDraftCopyWithImpl<$Res>
    implements _$AddressDraftCopyWith<$Res> {
  __$AddressDraftCopyWithImpl(this._self, this._then);

  final _AddressDraft _self;
  final $Res Function(_AddressDraft) _then;

/// Create a copy of AddressDraft
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? point = null,Object? id = freezed,Object? details = null,Object? isDefault = null,}) {
  return _then(_AddressDraft(
point: null == point ? _self.point : point // ignore: cast_nullable_to_non_nullable
as GeoPoint,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,details: null == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as String,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of AddressDraft
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GeoPointCopyWith<$Res> get point {
  
  return $GeoPointCopyWith<$Res>(_self.point, (value) {
    return _then(_self.copyWith(point: value));
  });
}
}

// dart format on
