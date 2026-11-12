// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favourites_view_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FavouritesViewState {

 FavouritesSort get sort;/// «Выбрать» mode: taps tick tiles for bulk delete or add to cart.
 bool get isSelecting; Set<String> get selected;/// Today's prices by product id; tiles show the saved copy until then.
 Map<String, FavouriteOffer> get offers; bool get isLoading;/// The last refresh failed; tiles keep the saved copy.
 Failure? get failure;
/// Create a copy of FavouritesViewState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FavouritesViewStateCopyWith<FavouritesViewState> get copyWith => _$FavouritesViewStateCopyWithImpl<FavouritesViewState>(this as FavouritesViewState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavouritesViewState&&(identical(other.sort, sort) || other.sort == sort)&&(identical(other.isSelecting, isSelecting) || other.isSelecting == isSelecting)&&const DeepCollectionEquality().equals(other.selected, selected)&&const DeepCollectionEquality().equals(other.offers, offers)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,sort,isSelecting,const DeepCollectionEquality().hash(selected),const DeepCollectionEquality().hash(offers),isLoading,failure);

@override
String toString() {
  return 'FavouritesViewState(sort: $sort, isSelecting: $isSelecting, selected: $selected, offers: $offers, isLoading: $isLoading, failure: $failure)';
}


}

/// @nodoc
abstract mixin class $FavouritesViewStateCopyWith<$Res>  {
  factory $FavouritesViewStateCopyWith(FavouritesViewState value, $Res Function(FavouritesViewState) _then) = _$FavouritesViewStateCopyWithImpl;
@useResult
$Res call({
 FavouritesSort sort, bool isSelecting, Set<String> selected, Map<String, FavouriteOffer> offers, bool isLoading, Failure? failure
});




}
/// @nodoc
class _$FavouritesViewStateCopyWithImpl<$Res>
    implements $FavouritesViewStateCopyWith<$Res> {
  _$FavouritesViewStateCopyWithImpl(this._self, this._then);

  final FavouritesViewState _self;
  final $Res Function(FavouritesViewState) _then;

/// Create a copy of FavouritesViewState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sort = null,Object? isSelecting = null,Object? selected = null,Object? offers = null,Object? isLoading = null,Object? failure = freezed,}) {
  return _then(_self.copyWith(
sort: null == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as FavouritesSort,isSelecting: null == isSelecting ? _self.isSelecting : isSelecting // ignore: cast_nullable_to_non_nullable
as bool,selected: null == selected ? _self.selected : selected // ignore: cast_nullable_to_non_nullable
as Set<String>,offers: null == offers ? _self.offers : offers // ignore: cast_nullable_to_non_nullable
as Map<String, FavouriteOffer>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,
  ));
}

}


/// Adds pattern-matching-related methods to [FavouritesViewState].
extension FavouritesViewStatePatterns on FavouritesViewState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FavouritesViewState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FavouritesViewState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FavouritesViewState value)  $default,){
final _that = this;
switch (_that) {
case _FavouritesViewState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FavouritesViewState value)?  $default,){
final _that = this;
switch (_that) {
case _FavouritesViewState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( FavouritesSort sort,  bool isSelecting,  Set<String> selected,  Map<String, FavouriteOffer> offers,  bool isLoading,  Failure? failure)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FavouritesViewState() when $default != null:
return $default(_that.sort,_that.isSelecting,_that.selected,_that.offers,_that.isLoading,_that.failure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( FavouritesSort sort,  bool isSelecting,  Set<String> selected,  Map<String, FavouriteOffer> offers,  bool isLoading,  Failure? failure)  $default,) {final _that = this;
switch (_that) {
case _FavouritesViewState():
return $default(_that.sort,_that.isSelecting,_that.selected,_that.offers,_that.isLoading,_that.failure);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( FavouritesSort sort,  bool isSelecting,  Set<String> selected,  Map<String, FavouriteOffer> offers,  bool isLoading,  Failure? failure)?  $default,) {final _that = this;
switch (_that) {
case _FavouritesViewState() when $default != null:
return $default(_that.sort,_that.isSelecting,_that.selected,_that.offers,_that.isLoading,_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class _FavouritesViewState implements FavouritesViewState {
  const _FavouritesViewState({this.sort = FavouritesSort.recent, this.isSelecting = false, final  Set<String> selected = const <String>{}, final  Map<String, FavouriteOffer> offers = const <String, FavouriteOffer>{}, this.isLoading = false, this.failure}): _selected = selected,_offers = offers;
  

@override@JsonKey() final  FavouritesSort sort;
/// «Выбрать» mode: taps tick tiles for bulk delete or add to cart.
@override@JsonKey() final  bool isSelecting;
 final  Set<String> _selected;
@override@JsonKey() Set<String> get selected {
  if (_selected is EqualUnmodifiableSetView) return _selected;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_selected);
}

/// Today's prices by product id; tiles show the saved copy until then.
 final  Map<String, FavouriteOffer> _offers;
/// Today's prices by product id; tiles show the saved copy until then.
@override@JsonKey() Map<String, FavouriteOffer> get offers {
  if (_offers is EqualUnmodifiableMapView) return _offers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_offers);
}

@override@JsonKey() final  bool isLoading;
/// The last refresh failed; tiles keep the saved copy.
@override final  Failure? failure;

/// Create a copy of FavouritesViewState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FavouritesViewStateCopyWith<_FavouritesViewState> get copyWith => __$FavouritesViewStateCopyWithImpl<_FavouritesViewState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FavouritesViewState&&(identical(other.sort, sort) || other.sort == sort)&&(identical(other.isSelecting, isSelecting) || other.isSelecting == isSelecting)&&const DeepCollectionEquality().equals(other._selected, _selected)&&const DeepCollectionEquality().equals(other._offers, _offers)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,sort,isSelecting,const DeepCollectionEquality().hash(_selected),const DeepCollectionEquality().hash(_offers),isLoading,failure);

@override
String toString() {
  return 'FavouritesViewState(sort: $sort, isSelecting: $isSelecting, selected: $selected, offers: $offers, isLoading: $isLoading, failure: $failure)';
}


}

/// @nodoc
abstract mixin class _$FavouritesViewStateCopyWith<$Res> implements $FavouritesViewStateCopyWith<$Res> {
  factory _$FavouritesViewStateCopyWith(_FavouritesViewState value, $Res Function(_FavouritesViewState) _then) = __$FavouritesViewStateCopyWithImpl;
@override @useResult
$Res call({
 FavouritesSort sort, bool isSelecting, Set<String> selected, Map<String, FavouriteOffer> offers, bool isLoading, Failure? failure
});




}
/// @nodoc
class __$FavouritesViewStateCopyWithImpl<$Res>
    implements _$FavouritesViewStateCopyWith<$Res> {
  __$FavouritesViewStateCopyWithImpl(this._self, this._then);

  final _FavouritesViewState _self;
  final $Res Function(_FavouritesViewState) _then;

/// Create a copy of FavouritesViewState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sort = null,Object? isSelecting = null,Object? selected = null,Object? offers = null,Object? isLoading = null,Object? failure = freezed,}) {
  return _then(_FavouritesViewState(
sort: null == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as FavouritesSort,isSelecting: null == isSelecting ? _self.isSelecting : isSelecting // ignore: cast_nullable_to_non_nullable
as bool,selected: null == selected ? _self._selected : selected // ignore: cast_nullable_to_non_nullable
as Set<String>,offers: null == offers ? _self._offers : offers // ignore: cast_nullable_to_non_nullable
as Map<String, FavouriteOffer>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,
  ));
}


}

// dart format on
