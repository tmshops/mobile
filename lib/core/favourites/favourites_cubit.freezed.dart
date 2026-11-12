// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favourites_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FavouritesState {

/// Newest first.
 List<Favourite> get items;/// The device list has been merged into the account at least once.
 bool get isSynced;
/// Create a copy of FavouritesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FavouritesStateCopyWith<FavouritesState> get copyWith => _$FavouritesStateCopyWithImpl<FavouritesState>(this as FavouritesState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavouritesState&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.isSynced, isSynced) || other.isSynced == isSynced));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),isSynced);

@override
String toString() {
  return 'FavouritesState(items: $items, isSynced: $isSynced)';
}


}

/// @nodoc
abstract mixin class $FavouritesStateCopyWith<$Res>  {
  factory $FavouritesStateCopyWith(FavouritesState value, $Res Function(FavouritesState) _then) = _$FavouritesStateCopyWithImpl;
@useResult
$Res call({
 List<Favourite> items, bool isSynced
});




}
/// @nodoc
class _$FavouritesStateCopyWithImpl<$Res>
    implements $FavouritesStateCopyWith<$Res> {
  _$FavouritesStateCopyWithImpl(this._self, this._then);

  final FavouritesState _self;
  final $Res Function(FavouritesState) _then;

/// Create a copy of FavouritesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? isSynced = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<Favourite>,isSynced: null == isSynced ? _self.isSynced : isSynced // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [FavouritesState].
extension FavouritesStatePatterns on FavouritesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FavouritesState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FavouritesState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FavouritesState value)  $default,){
final _that = this;
switch (_that) {
case _FavouritesState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FavouritesState value)?  $default,){
final _that = this;
switch (_that) {
case _FavouritesState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Favourite> items,  bool isSynced)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FavouritesState() when $default != null:
return $default(_that.items,_that.isSynced);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Favourite> items,  bool isSynced)  $default,) {final _that = this;
switch (_that) {
case _FavouritesState():
return $default(_that.items,_that.isSynced);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Favourite> items,  bool isSynced)?  $default,) {final _that = this;
switch (_that) {
case _FavouritesState() when $default != null:
return $default(_that.items,_that.isSynced);case _:
  return null;

}
}

}

/// @nodoc


class _FavouritesState extends FavouritesState {
  const _FavouritesState({final  List<Favourite> items = const <Favourite>[], this.isSynced = false}): _items = items,super._();
  

/// Newest first.
 final  List<Favourite> _items;
/// Newest first.
@override@JsonKey() List<Favourite> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

/// The device list has been merged into the account at least once.
@override@JsonKey() final  bool isSynced;

/// Create a copy of FavouritesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FavouritesStateCopyWith<_FavouritesState> get copyWith => __$FavouritesStateCopyWithImpl<_FavouritesState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FavouritesState&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.isSynced, isSynced) || other.isSynced == isSynced));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),isSynced);

@override
String toString() {
  return 'FavouritesState(items: $items, isSynced: $isSynced)';
}


}

/// @nodoc
abstract mixin class _$FavouritesStateCopyWith<$Res> implements $FavouritesStateCopyWith<$Res> {
  factory _$FavouritesStateCopyWith(_FavouritesState value, $Res Function(_FavouritesState) _then) = __$FavouritesStateCopyWithImpl;
@override @useResult
$Res call({
 List<Favourite> items, bool isSynced
});




}
/// @nodoc
class __$FavouritesStateCopyWithImpl<$Res>
    implements _$FavouritesStateCopyWith<$Res> {
  __$FavouritesStateCopyWithImpl(this._self, this._then);

  final _FavouritesState _self;
  final $Res Function(_FavouritesState) _then;

/// Create a copy of FavouritesState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? isSynced = null,}) {
  return _then(_FavouritesState(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<Favourite>,isSynced: null == isSynced ? _self.isSynced : isSynced // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
