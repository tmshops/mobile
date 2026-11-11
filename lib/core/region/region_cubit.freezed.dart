// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'region_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RegionState {

 String get selectedId; List<Region> get regions;
/// Create a copy of RegionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegionStateCopyWith<RegionState> get copyWith => _$RegionStateCopyWithImpl<RegionState>(this as RegionState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegionState&&(identical(other.selectedId, selectedId) || other.selectedId == selectedId)&&const DeepCollectionEquality().equals(other.regions, regions));
}


@override
int get hashCode => Object.hash(runtimeType,selectedId,const DeepCollectionEquality().hash(regions));

@override
String toString() {
  return 'RegionState(selectedId: $selectedId, regions: $regions)';
}


}

/// @nodoc
abstract mixin class $RegionStateCopyWith<$Res>  {
  factory $RegionStateCopyWith(RegionState value, $Res Function(RegionState) _then) = _$RegionStateCopyWithImpl;
@useResult
$Res call({
 String selectedId, List<Region> regions
});




}
/// @nodoc
class _$RegionStateCopyWithImpl<$Res>
    implements $RegionStateCopyWith<$Res> {
  _$RegionStateCopyWithImpl(this._self, this._then);

  final RegionState _self;
  final $Res Function(RegionState) _then;

/// Create a copy of RegionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? selectedId = null,Object? regions = null,}) {
  return _then(_self.copyWith(
selectedId: null == selectedId ? _self.selectedId : selectedId // ignore: cast_nullable_to_non_nullable
as String,regions: null == regions ? _self.regions : regions // ignore: cast_nullable_to_non_nullable
as List<Region>,
  ));
}

}


/// Adds pattern-matching-related methods to [RegionState].
extension RegionStatePatterns on RegionState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RegionState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RegionState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RegionState value)  $default,){
final _that = this;
switch (_that) {
case _RegionState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RegionState value)?  $default,){
final _that = this;
switch (_that) {
case _RegionState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String selectedId,  List<Region> regions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RegionState() when $default != null:
return $default(_that.selectedId,_that.regions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String selectedId,  List<Region> regions)  $default,) {final _that = this;
switch (_that) {
case _RegionState():
return $default(_that.selectedId,_that.regions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String selectedId,  List<Region> regions)?  $default,) {final _that = this;
switch (_that) {
case _RegionState() when $default != null:
return $default(_that.selectedId,_that.regions);case _:
  return null;

}
}

}

/// @nodoc


class _RegionState extends RegionState {
  const _RegionState({required this.selectedId, final  List<Region> regions = const <Region>[]}): _regions = regions,super._();
  

@override final  String selectedId;
 final  List<Region> _regions;
@override@JsonKey() List<Region> get regions {
  if (_regions is EqualUnmodifiableListView) return _regions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_regions);
}


/// Create a copy of RegionState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegionStateCopyWith<_RegionState> get copyWith => __$RegionStateCopyWithImpl<_RegionState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegionState&&(identical(other.selectedId, selectedId) || other.selectedId == selectedId)&&const DeepCollectionEquality().equals(other._regions, _regions));
}


@override
int get hashCode => Object.hash(runtimeType,selectedId,const DeepCollectionEquality().hash(_regions));

@override
String toString() {
  return 'RegionState(selectedId: $selectedId, regions: $regions)';
}


}

/// @nodoc
abstract mixin class _$RegionStateCopyWith<$Res> implements $RegionStateCopyWith<$Res> {
  factory _$RegionStateCopyWith(_RegionState value, $Res Function(_RegionState) _then) = __$RegionStateCopyWithImpl;
@override @useResult
$Res call({
 String selectedId, List<Region> regions
});




}
/// @nodoc
class __$RegionStateCopyWithImpl<$Res>
    implements _$RegionStateCopyWith<$Res> {
  __$RegionStateCopyWithImpl(this._self, this._then);

  final _RegionState _self;
  final $Res Function(_RegionState) _then;

/// Create a copy of RegionState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? selectedId = null,Object? regions = null,}) {
  return _then(_RegionState(
selectedId: null == selectedId ? _self.selectedId : selectedId // ignore: cast_nullable_to_non_nullable
as String,regions: null == regions ? _self._regions : regions // ignore: cast_nullable_to_non_nullable
as List<Region>,
  ));
}


}

// dart format on
