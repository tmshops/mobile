// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_editor_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddressEditorState {

/// The point under the pin; `null` until the location is known.
 GeoPoint? get center;/// What is at [center]; `null` while it is being looked up.
 PlaceInfo? get place; Failure? get placeFailure; String get details; bool get isDefault;/// Set when editing a saved address.
 String? get id; bool get isSaving; Failure? get saveFailure;/// Set once saved: the editor closes.
 DeliveryAddress? get saved;
/// Create a copy of AddressEditorState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddressEditorStateCopyWith<AddressEditorState> get copyWith => _$AddressEditorStateCopyWithImpl<AddressEditorState>(this as AddressEditorState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddressEditorState&&(identical(other.center, center) || other.center == center)&&(identical(other.place, place) || other.place == place)&&(identical(other.placeFailure, placeFailure) || other.placeFailure == placeFailure)&&(identical(other.details, details) || other.details == details)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault)&&(identical(other.id, id) || other.id == id)&&(identical(other.isSaving, isSaving) || other.isSaving == isSaving)&&(identical(other.saveFailure, saveFailure) || other.saveFailure == saveFailure)&&(identical(other.saved, saved) || other.saved == saved));
}


@override
int get hashCode => Object.hash(runtimeType,center,place,placeFailure,details,isDefault,id,isSaving,saveFailure,saved);

@override
String toString() {
  return 'AddressEditorState(center: $center, place: $place, placeFailure: $placeFailure, details: $details, isDefault: $isDefault, id: $id, isSaving: $isSaving, saveFailure: $saveFailure, saved: $saved)';
}


}

/// @nodoc
abstract mixin class $AddressEditorStateCopyWith<$Res>  {
  factory $AddressEditorStateCopyWith(AddressEditorState value, $Res Function(AddressEditorState) _then) = _$AddressEditorStateCopyWithImpl;
@useResult
$Res call({
 GeoPoint? center, PlaceInfo? place, Failure? placeFailure, String details, bool isDefault, String? id, bool isSaving, Failure? saveFailure, DeliveryAddress? saved
});


$GeoPointCopyWith<$Res>? get center;$PlaceInfoCopyWith<$Res>? get place;$DeliveryAddressCopyWith<$Res>? get saved;

}
/// @nodoc
class _$AddressEditorStateCopyWithImpl<$Res>
    implements $AddressEditorStateCopyWith<$Res> {
  _$AddressEditorStateCopyWithImpl(this._self, this._then);

  final AddressEditorState _self;
  final $Res Function(AddressEditorState) _then;

/// Create a copy of AddressEditorState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? center = freezed,Object? place = freezed,Object? placeFailure = freezed,Object? details = null,Object? isDefault = null,Object? id = freezed,Object? isSaving = null,Object? saveFailure = freezed,Object? saved = freezed,}) {
  return _then(_self.copyWith(
center: freezed == center ? _self.center : center // ignore: cast_nullable_to_non_nullable
as GeoPoint?,place: freezed == place ? _self.place : place // ignore: cast_nullable_to_non_nullable
as PlaceInfo?,placeFailure: freezed == placeFailure ? _self.placeFailure : placeFailure // ignore: cast_nullable_to_non_nullable
as Failure?,details: null == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as String,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,isSaving: null == isSaving ? _self.isSaving : isSaving // ignore: cast_nullable_to_non_nullable
as bool,saveFailure: freezed == saveFailure ? _self.saveFailure : saveFailure // ignore: cast_nullable_to_non_nullable
as Failure?,saved: freezed == saved ? _self.saved : saved // ignore: cast_nullable_to_non_nullable
as DeliveryAddress?,
  ));
}
/// Create a copy of AddressEditorState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GeoPointCopyWith<$Res>? get center {
    if (_self.center == null) {
    return null;
  }

  return $GeoPointCopyWith<$Res>(_self.center!, (value) {
    return _then(_self.copyWith(center: value));
  });
}/// Create a copy of AddressEditorState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlaceInfoCopyWith<$Res>? get place {
    if (_self.place == null) {
    return null;
  }

  return $PlaceInfoCopyWith<$Res>(_self.place!, (value) {
    return _then(_self.copyWith(place: value));
  });
}/// Create a copy of AddressEditorState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeliveryAddressCopyWith<$Res>? get saved {
    if (_self.saved == null) {
    return null;
  }

  return $DeliveryAddressCopyWith<$Res>(_self.saved!, (value) {
    return _then(_self.copyWith(saved: value));
  });
}
}


/// Adds pattern-matching-related methods to [AddressEditorState].
extension AddressEditorStatePatterns on AddressEditorState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddressEditorState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddressEditorState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddressEditorState value)  $default,){
final _that = this;
switch (_that) {
case _AddressEditorState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddressEditorState value)?  $default,){
final _that = this;
switch (_that) {
case _AddressEditorState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( GeoPoint? center,  PlaceInfo? place,  Failure? placeFailure,  String details,  bool isDefault,  String? id,  bool isSaving,  Failure? saveFailure,  DeliveryAddress? saved)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddressEditorState() when $default != null:
return $default(_that.center,_that.place,_that.placeFailure,_that.details,_that.isDefault,_that.id,_that.isSaving,_that.saveFailure,_that.saved);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( GeoPoint? center,  PlaceInfo? place,  Failure? placeFailure,  String details,  bool isDefault,  String? id,  bool isSaving,  Failure? saveFailure,  DeliveryAddress? saved)  $default,) {final _that = this;
switch (_that) {
case _AddressEditorState():
return $default(_that.center,_that.place,_that.placeFailure,_that.details,_that.isDefault,_that.id,_that.isSaving,_that.saveFailure,_that.saved);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( GeoPoint? center,  PlaceInfo? place,  Failure? placeFailure,  String details,  bool isDefault,  String? id,  bool isSaving,  Failure? saveFailure,  DeliveryAddress? saved)?  $default,) {final _that = this;
switch (_that) {
case _AddressEditorState() when $default != null:
return $default(_that.center,_that.place,_that.placeFailure,_that.details,_that.isDefault,_that.id,_that.isSaving,_that.saveFailure,_that.saved);case _:
  return null;

}
}

}

/// @nodoc


class _AddressEditorState extends AddressEditorState {
  const _AddressEditorState({this.center, this.place, this.placeFailure, this.details = '', this.isDefault = false, this.id, this.isSaving = false, this.saveFailure, this.saved}): super._();
  

/// The point under the pin; `null` until the location is known.
@override final  GeoPoint? center;
/// What is at [center]; `null` while it is being looked up.
@override final  PlaceInfo? place;
@override final  Failure? placeFailure;
@override@JsonKey() final  String details;
@override@JsonKey() final  bool isDefault;
/// Set when editing a saved address.
@override final  String? id;
@override@JsonKey() final  bool isSaving;
@override final  Failure? saveFailure;
/// Set once saved: the editor closes.
@override final  DeliveryAddress? saved;

/// Create a copy of AddressEditorState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddressEditorStateCopyWith<_AddressEditorState> get copyWith => __$AddressEditorStateCopyWithImpl<_AddressEditorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddressEditorState&&(identical(other.center, center) || other.center == center)&&(identical(other.place, place) || other.place == place)&&(identical(other.placeFailure, placeFailure) || other.placeFailure == placeFailure)&&(identical(other.details, details) || other.details == details)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault)&&(identical(other.id, id) || other.id == id)&&(identical(other.isSaving, isSaving) || other.isSaving == isSaving)&&(identical(other.saveFailure, saveFailure) || other.saveFailure == saveFailure)&&(identical(other.saved, saved) || other.saved == saved));
}


@override
int get hashCode => Object.hash(runtimeType,center,place,placeFailure,details,isDefault,id,isSaving,saveFailure,saved);

@override
String toString() {
  return 'AddressEditorState(center: $center, place: $place, placeFailure: $placeFailure, details: $details, isDefault: $isDefault, id: $id, isSaving: $isSaving, saveFailure: $saveFailure, saved: $saved)';
}


}

/// @nodoc
abstract mixin class _$AddressEditorStateCopyWith<$Res> implements $AddressEditorStateCopyWith<$Res> {
  factory _$AddressEditorStateCopyWith(_AddressEditorState value, $Res Function(_AddressEditorState) _then) = __$AddressEditorStateCopyWithImpl;
@override @useResult
$Res call({
 GeoPoint? center, PlaceInfo? place, Failure? placeFailure, String details, bool isDefault, String? id, bool isSaving, Failure? saveFailure, DeliveryAddress? saved
});


@override $GeoPointCopyWith<$Res>? get center;@override $PlaceInfoCopyWith<$Res>? get place;@override $DeliveryAddressCopyWith<$Res>? get saved;

}
/// @nodoc
class __$AddressEditorStateCopyWithImpl<$Res>
    implements _$AddressEditorStateCopyWith<$Res> {
  __$AddressEditorStateCopyWithImpl(this._self, this._then);

  final _AddressEditorState _self;
  final $Res Function(_AddressEditorState) _then;

/// Create a copy of AddressEditorState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? center = freezed,Object? place = freezed,Object? placeFailure = freezed,Object? details = null,Object? isDefault = null,Object? id = freezed,Object? isSaving = null,Object? saveFailure = freezed,Object? saved = freezed,}) {
  return _then(_AddressEditorState(
center: freezed == center ? _self.center : center // ignore: cast_nullable_to_non_nullable
as GeoPoint?,place: freezed == place ? _self.place : place // ignore: cast_nullable_to_non_nullable
as PlaceInfo?,placeFailure: freezed == placeFailure ? _self.placeFailure : placeFailure // ignore: cast_nullable_to_non_nullable
as Failure?,details: null == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as String,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,isSaving: null == isSaving ? _self.isSaving : isSaving // ignore: cast_nullable_to_non_nullable
as bool,saveFailure: freezed == saveFailure ? _self.saveFailure : saveFailure // ignore: cast_nullable_to_non_nullable
as Failure?,saved: freezed == saved ? _self.saved : saved // ignore: cast_nullable_to_non_nullable
as DeliveryAddress?,
  ));
}

/// Create a copy of AddressEditorState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GeoPointCopyWith<$Res>? get center {
    if (_self.center == null) {
    return null;
  }

  return $GeoPointCopyWith<$Res>(_self.center!, (value) {
    return _then(_self.copyWith(center: value));
  });
}/// Create a copy of AddressEditorState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlaceInfoCopyWith<$Res>? get place {
    if (_self.place == null) {
    return null;
  }

  return $PlaceInfoCopyWith<$Res>(_self.place!, (value) {
    return _then(_self.copyWith(place: value));
  });
}/// Create a copy of AddressEditorState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeliveryAddressCopyWith<$Res>? get saved {
    if (_self.saved == null) {
    return null;
  }

  return $DeliveryAddressCopyWith<$Res>(_self.saved!, (value) {
    return _then(_self.copyWith(saved: value));
  });
}
}

// dart format on
