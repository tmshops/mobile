// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'for_you_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ForYouEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForYouEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ForYouEvent()';
}


}

/// @nodoc
class $ForYouEventCopyWith<$Res>  {
$ForYouEventCopyWith(ForYouEvent _, $Res Function(ForYouEvent) __);
}


/// Adds pattern-matching-related methods to [ForYouEvent].
extension ForYouEventPatterns on ForYouEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ForYouStarted value)?  started,TResult Function( ForYouNextPageRequested value)?  nextPageRequested,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ForYouStarted() when started != null:
return started(_that);case ForYouNextPageRequested() when nextPageRequested != null:
return nextPageRequested(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ForYouStarted value)  started,required TResult Function( ForYouNextPageRequested value)  nextPageRequested,}){
final _that = this;
switch (_that) {
case ForYouStarted():
return started(_that);case ForYouNextPageRequested():
return nextPageRequested(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ForYouStarted value)?  started,TResult? Function( ForYouNextPageRequested value)?  nextPageRequested,}){
final _that = this;
switch (_that) {
case ForYouStarted() when started != null:
return started(_that);case ForYouNextPageRequested() when nextPageRequested != null:
return nextPageRequested(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String languageCode)?  started,TResult Function()?  nextPageRequested,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ForYouStarted() when started != null:
return started(_that.languageCode);case ForYouNextPageRequested() when nextPageRequested != null:
return nextPageRequested();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String languageCode)  started,required TResult Function()  nextPageRequested,}) {final _that = this;
switch (_that) {
case ForYouStarted():
return started(_that.languageCode);case ForYouNextPageRequested():
return nextPageRequested();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String languageCode)?  started,TResult? Function()?  nextPageRequested,}) {final _that = this;
switch (_that) {
case ForYouStarted() when started != null:
return started(_that.languageCode);case ForYouNextPageRequested() when nextPageRequested != null:
return nextPageRequested();case _:
  return null;

}
}

}

/// @nodoc


class ForYouStarted implements ForYouEvent {
  const ForYouStarted(this.languageCode);
  

 final  String languageCode;

/// Create a copy of ForYouEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ForYouStartedCopyWith<ForYouStarted> get copyWith => _$ForYouStartedCopyWithImpl<ForYouStarted>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForYouStarted&&(identical(other.languageCode, languageCode) || other.languageCode == languageCode));
}


@override
int get hashCode => Object.hash(runtimeType,languageCode);

@override
String toString() {
  return 'ForYouEvent.started(languageCode: $languageCode)';
}


}

/// @nodoc
abstract mixin class $ForYouStartedCopyWith<$Res> implements $ForYouEventCopyWith<$Res> {
  factory $ForYouStartedCopyWith(ForYouStarted value, $Res Function(ForYouStarted) _then) = _$ForYouStartedCopyWithImpl;
@useResult
$Res call({
 String languageCode
});




}
/// @nodoc
class _$ForYouStartedCopyWithImpl<$Res>
    implements $ForYouStartedCopyWith<$Res> {
  _$ForYouStartedCopyWithImpl(this._self, this._then);

  final ForYouStarted _self;
  final $Res Function(ForYouStarted) _then;

/// Create a copy of ForYouEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? languageCode = null,}) {
  return _then(ForYouStarted(
null == languageCode ? _self.languageCode : languageCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ForYouNextPageRequested implements ForYouEvent {
  const ForYouNextPageRequested();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForYouNextPageRequested);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ForYouEvent.nextPageRequested()';
}


}




/// @nodoc
mixin _$ForYouState {

 List<ProductSummary> get items; String? get nextCursor; ForYouStatus get status; Failure? get failure;
/// Create a copy of ForYouState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ForYouStateCopyWith<ForYouState> get copyWith => _$ForYouStateCopyWithImpl<ForYouState>(this as ForYouState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForYouState&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor)&&(identical(other.status, status) || other.status == status)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),nextCursor,status,failure);

@override
String toString() {
  return 'ForYouState(items: $items, nextCursor: $nextCursor, status: $status, failure: $failure)';
}


}

/// @nodoc
abstract mixin class $ForYouStateCopyWith<$Res>  {
  factory $ForYouStateCopyWith(ForYouState value, $Res Function(ForYouState) _then) = _$ForYouStateCopyWithImpl;
@useResult
$Res call({
 List<ProductSummary> items, String? nextCursor, ForYouStatus status, Failure? failure
});




}
/// @nodoc
class _$ForYouStateCopyWithImpl<$Res>
    implements $ForYouStateCopyWith<$Res> {
  _$ForYouStateCopyWithImpl(this._self, this._then);

  final ForYouState _self;
  final $Res Function(ForYouState) _then;

/// Create a copy of ForYouState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? nextCursor = freezed,Object? status = null,Object? failure = freezed,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<ProductSummary>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ForYouStatus,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,
  ));
}

}


/// Adds pattern-matching-related methods to [ForYouState].
extension ForYouStatePatterns on ForYouState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ForYouState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ForYouState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ForYouState value)  $default,){
final _that = this;
switch (_that) {
case _ForYouState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ForYouState value)?  $default,){
final _that = this;
switch (_that) {
case _ForYouState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ProductSummary> items,  String? nextCursor,  ForYouStatus status,  Failure? failure)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ForYouState() when $default != null:
return $default(_that.items,_that.nextCursor,_that.status,_that.failure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ProductSummary> items,  String? nextCursor,  ForYouStatus status,  Failure? failure)  $default,) {final _that = this;
switch (_that) {
case _ForYouState():
return $default(_that.items,_that.nextCursor,_that.status,_that.failure);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ProductSummary> items,  String? nextCursor,  ForYouStatus status,  Failure? failure)?  $default,) {final _that = this;
switch (_that) {
case _ForYouState() when $default != null:
return $default(_that.items,_that.nextCursor,_that.status,_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class _ForYouState extends ForYouState {
  const _ForYouState({final  List<ProductSummary> items = const <ProductSummary>[], this.nextCursor, this.status = ForYouStatus.initial, this.failure}): _items = items,super._();
  

 final  List<ProductSummary> _items;
@override@JsonKey() List<ProductSummary> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  String? nextCursor;
@override@JsonKey() final  ForYouStatus status;
@override final  Failure? failure;

/// Create a copy of ForYouState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ForYouStateCopyWith<_ForYouState> get copyWith => __$ForYouStateCopyWithImpl<_ForYouState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ForYouState&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor)&&(identical(other.status, status) || other.status == status)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),nextCursor,status,failure);

@override
String toString() {
  return 'ForYouState(items: $items, nextCursor: $nextCursor, status: $status, failure: $failure)';
}


}

/// @nodoc
abstract mixin class _$ForYouStateCopyWith<$Res> implements $ForYouStateCopyWith<$Res> {
  factory _$ForYouStateCopyWith(_ForYouState value, $Res Function(_ForYouState) _then) = __$ForYouStateCopyWithImpl;
@override @useResult
$Res call({
 List<ProductSummary> items, String? nextCursor, ForYouStatus status, Failure? failure
});




}
/// @nodoc
class __$ForYouStateCopyWithImpl<$Res>
    implements _$ForYouStateCopyWith<$Res> {
  __$ForYouStateCopyWithImpl(this._self, this._then);

  final _ForYouState _self;
  final $Res Function(_ForYouState) _then;

/// Create a copy of ForYouState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? nextCursor = freezed,Object? status = null,Object? failure = freezed,}) {
  return _then(_ForYouState(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<ProductSummary>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ForYouStatus,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,
  ));
}


}

// dart format on
