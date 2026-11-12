// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'promotions_cubits.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PromotionsState {

 bool get isLoading; List<Promotion> get items; Failure? get failure;
/// Create a copy of PromotionsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PromotionsStateCopyWith<PromotionsState> get copyWith => _$PromotionsStateCopyWithImpl<PromotionsState>(this as PromotionsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PromotionsState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(items),failure);

@override
String toString() {
  return 'PromotionsState(isLoading: $isLoading, items: $items, failure: $failure)';
}


}

/// @nodoc
abstract mixin class $PromotionsStateCopyWith<$Res>  {
  factory $PromotionsStateCopyWith(PromotionsState value, $Res Function(PromotionsState) _then) = _$PromotionsStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, List<Promotion> items, Failure? failure
});




}
/// @nodoc
class _$PromotionsStateCopyWithImpl<$Res>
    implements $PromotionsStateCopyWith<$Res> {
  _$PromotionsStateCopyWithImpl(this._self, this._then);

  final PromotionsState _self;
  final $Res Function(PromotionsState) _then;

/// Create a copy of PromotionsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? items = null,Object? failure = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<Promotion>,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,
  ));
}

}


/// Adds pattern-matching-related methods to [PromotionsState].
extension PromotionsStatePatterns on PromotionsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PromotionsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PromotionsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PromotionsState value)  $default,){
final _that = this;
switch (_that) {
case _PromotionsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PromotionsState value)?  $default,){
final _that = this;
switch (_that) {
case _PromotionsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  List<Promotion> items,  Failure? failure)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PromotionsState() when $default != null:
return $default(_that.isLoading,_that.items,_that.failure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  List<Promotion> items,  Failure? failure)  $default,) {final _that = this;
switch (_that) {
case _PromotionsState():
return $default(_that.isLoading,_that.items,_that.failure);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  List<Promotion> items,  Failure? failure)?  $default,) {final _that = this;
switch (_that) {
case _PromotionsState() when $default != null:
return $default(_that.isLoading,_that.items,_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class _PromotionsState implements PromotionsState {
  const _PromotionsState({this.isLoading = true, final  List<Promotion> items = const <Promotion>[], this.failure}): _items = items;
  

@override@JsonKey() final  bool isLoading;
 final  List<Promotion> _items;
@override@JsonKey() List<Promotion> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  Failure? failure;

/// Create a copy of PromotionsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PromotionsStateCopyWith<_PromotionsState> get copyWith => __$PromotionsStateCopyWithImpl<_PromotionsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PromotionsState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(_items),failure);

@override
String toString() {
  return 'PromotionsState(isLoading: $isLoading, items: $items, failure: $failure)';
}


}

/// @nodoc
abstract mixin class _$PromotionsStateCopyWith<$Res> implements $PromotionsStateCopyWith<$Res> {
  factory _$PromotionsStateCopyWith(_PromotionsState value, $Res Function(_PromotionsState) _then) = __$PromotionsStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, List<Promotion> items, Failure? failure
});




}
/// @nodoc
class __$PromotionsStateCopyWithImpl<$Res>
    implements _$PromotionsStateCopyWith<$Res> {
  __$PromotionsStateCopyWithImpl(this._self, this._then);

  final _PromotionsState _self;
  final $Res Function(_PromotionsState) _then;

/// Create a copy of PromotionsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? items = null,Object? failure = freezed,}) {
  return _then(_PromotionsState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<Promotion>,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,
  ));
}


}

/// @nodoc
mixin _$PromotionState {

 bool get isLoading; PromotionDetails? get details; bool get isNotFound; Failure? get failure;
/// Create a copy of PromotionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PromotionStateCopyWith<PromotionState> get copyWith => _$PromotionStateCopyWithImpl<PromotionState>(this as PromotionState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PromotionState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.details, details) || other.details == details)&&(identical(other.isNotFound, isNotFound) || other.isNotFound == isNotFound)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,details,isNotFound,failure);

@override
String toString() {
  return 'PromotionState(isLoading: $isLoading, details: $details, isNotFound: $isNotFound, failure: $failure)';
}


}

/// @nodoc
abstract mixin class $PromotionStateCopyWith<$Res>  {
  factory $PromotionStateCopyWith(PromotionState value, $Res Function(PromotionState) _then) = _$PromotionStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, PromotionDetails? details, bool isNotFound, Failure? failure
});


$PromotionDetailsCopyWith<$Res>? get details;

}
/// @nodoc
class _$PromotionStateCopyWithImpl<$Res>
    implements $PromotionStateCopyWith<$Res> {
  _$PromotionStateCopyWithImpl(this._self, this._then);

  final PromotionState _self;
  final $Res Function(PromotionState) _then;

/// Create a copy of PromotionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? details = freezed,Object? isNotFound = null,Object? failure = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,details: freezed == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as PromotionDetails?,isNotFound: null == isNotFound ? _self.isNotFound : isNotFound // ignore: cast_nullable_to_non_nullable
as bool,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,
  ));
}
/// Create a copy of PromotionState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PromotionDetailsCopyWith<$Res>? get details {
    if (_self.details == null) {
    return null;
  }

  return $PromotionDetailsCopyWith<$Res>(_self.details!, (value) {
    return _then(_self.copyWith(details: value));
  });
}
}


/// Adds pattern-matching-related methods to [PromotionState].
extension PromotionStatePatterns on PromotionState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PromotionState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PromotionState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PromotionState value)  $default,){
final _that = this;
switch (_that) {
case _PromotionState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PromotionState value)?  $default,){
final _that = this;
switch (_that) {
case _PromotionState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  PromotionDetails? details,  bool isNotFound,  Failure? failure)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PromotionState() when $default != null:
return $default(_that.isLoading,_that.details,_that.isNotFound,_that.failure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  PromotionDetails? details,  bool isNotFound,  Failure? failure)  $default,) {final _that = this;
switch (_that) {
case _PromotionState():
return $default(_that.isLoading,_that.details,_that.isNotFound,_that.failure);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  PromotionDetails? details,  bool isNotFound,  Failure? failure)?  $default,) {final _that = this;
switch (_that) {
case _PromotionState() when $default != null:
return $default(_that.isLoading,_that.details,_that.isNotFound,_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class _PromotionState implements PromotionState {
  const _PromotionState({this.isLoading = true, this.details, this.isNotFound = false, this.failure});
  

@override@JsonKey() final  bool isLoading;
@override final  PromotionDetails? details;
@override@JsonKey() final  bool isNotFound;
@override final  Failure? failure;

/// Create a copy of PromotionState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PromotionStateCopyWith<_PromotionState> get copyWith => __$PromotionStateCopyWithImpl<_PromotionState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PromotionState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.details, details) || other.details == details)&&(identical(other.isNotFound, isNotFound) || other.isNotFound == isNotFound)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,details,isNotFound,failure);

@override
String toString() {
  return 'PromotionState(isLoading: $isLoading, details: $details, isNotFound: $isNotFound, failure: $failure)';
}


}

/// @nodoc
abstract mixin class _$PromotionStateCopyWith<$Res> implements $PromotionStateCopyWith<$Res> {
  factory _$PromotionStateCopyWith(_PromotionState value, $Res Function(_PromotionState) _then) = __$PromotionStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, PromotionDetails? details, bool isNotFound, Failure? failure
});


@override $PromotionDetailsCopyWith<$Res>? get details;

}
/// @nodoc
class __$PromotionStateCopyWithImpl<$Res>
    implements _$PromotionStateCopyWith<$Res> {
  __$PromotionStateCopyWithImpl(this._self, this._then);

  final _PromotionState _self;
  final $Res Function(_PromotionState) _then;

/// Create a copy of PromotionState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? details = freezed,Object? isNotFound = null,Object? failure = freezed,}) {
  return _then(_PromotionState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,details: freezed == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as PromotionDetails?,isNotFound: null == isNotFound ? _self.isNotFound : isNotFound // ignore: cast_nullable_to_non_nullable
as bool,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,
  ));
}

/// Create a copy of PromotionState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PromotionDetailsCopyWith<$Res>? get details {
    if (_self.details == null) {
    return null;
  }

  return $PromotionDetailsCopyWith<$Res>(_self.details!, (value) {
    return _then(_self.copyWith(details: value));
  });
}
}

// dart format on
