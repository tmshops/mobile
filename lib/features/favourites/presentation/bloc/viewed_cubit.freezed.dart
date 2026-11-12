// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'viewed_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ViewedState {

 bool get isLoading;/// Newest first.
 List<ViewedProduct> get items;/// History could not be read; shown as empty.
 bool get hasFailed;
/// Create a copy of ViewedState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ViewedStateCopyWith<ViewedState> get copyWith => _$ViewedStateCopyWithImpl<ViewedState>(this as ViewedState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ViewedState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.hasFailed, hasFailed) || other.hasFailed == hasFailed));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(items),hasFailed);

@override
String toString() {
  return 'ViewedState(isLoading: $isLoading, items: $items, hasFailed: $hasFailed)';
}


}

/// @nodoc
abstract mixin class $ViewedStateCopyWith<$Res>  {
  factory $ViewedStateCopyWith(ViewedState value, $Res Function(ViewedState) _then) = _$ViewedStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, List<ViewedProduct> items, bool hasFailed
});




}
/// @nodoc
class _$ViewedStateCopyWithImpl<$Res>
    implements $ViewedStateCopyWith<$Res> {
  _$ViewedStateCopyWithImpl(this._self, this._then);

  final ViewedState _self;
  final $Res Function(ViewedState) _then;

/// Create a copy of ViewedState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? items = null,Object? hasFailed = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<ViewedProduct>,hasFailed: null == hasFailed ? _self.hasFailed : hasFailed // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ViewedState].
extension ViewedStatePatterns on ViewedState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ViewedState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ViewedState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ViewedState value)  $default,){
final _that = this;
switch (_that) {
case _ViewedState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ViewedState value)?  $default,){
final _that = this;
switch (_that) {
case _ViewedState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  List<ViewedProduct> items,  bool hasFailed)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ViewedState() when $default != null:
return $default(_that.isLoading,_that.items,_that.hasFailed);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  List<ViewedProduct> items,  bool hasFailed)  $default,) {final _that = this;
switch (_that) {
case _ViewedState():
return $default(_that.isLoading,_that.items,_that.hasFailed);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  List<ViewedProduct> items,  bool hasFailed)?  $default,) {final _that = this;
switch (_that) {
case _ViewedState() when $default != null:
return $default(_that.isLoading,_that.items,_that.hasFailed);case _:
  return null;

}
}

}

/// @nodoc


class _ViewedState implements ViewedState {
  const _ViewedState({this.isLoading = true, final  List<ViewedProduct> items = const <ViewedProduct>[], this.hasFailed = false}): _items = items;
  

@override@JsonKey() final  bool isLoading;
/// Newest first.
 final  List<ViewedProduct> _items;
/// Newest first.
@override@JsonKey() List<ViewedProduct> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

/// History could not be read; shown as empty.
@override@JsonKey() final  bool hasFailed;

/// Create a copy of ViewedState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ViewedStateCopyWith<_ViewedState> get copyWith => __$ViewedStateCopyWithImpl<_ViewedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ViewedState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.hasFailed, hasFailed) || other.hasFailed == hasFailed));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(_items),hasFailed);

@override
String toString() {
  return 'ViewedState(isLoading: $isLoading, items: $items, hasFailed: $hasFailed)';
}


}

/// @nodoc
abstract mixin class _$ViewedStateCopyWith<$Res> implements $ViewedStateCopyWith<$Res> {
  factory _$ViewedStateCopyWith(_ViewedState value, $Res Function(_ViewedState) _then) = __$ViewedStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, List<ViewedProduct> items, bool hasFailed
});




}
/// @nodoc
class __$ViewedStateCopyWithImpl<$Res>
    implements _$ViewedStateCopyWith<$Res> {
  __$ViewedStateCopyWithImpl(this._self, this._then);

  final _ViewedState _self;
  final $Res Function(_ViewedState) _then;

/// Create a copy of ViewedState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? items = null,Object? hasFailed = null,}) {
  return _then(_ViewedState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<ViewedProduct>,hasFailed: null == hasFailed ? _self.hasFailed : hasFailed // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
