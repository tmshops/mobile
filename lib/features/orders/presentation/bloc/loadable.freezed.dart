// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loadable.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Loadable<T> {

 T? get data; bool get isLoading; Failure? get failure; DateTime? get fetchedAt;/// [data] is the device copy: «Данные на …» and changes are disabled.
 bool get isFromCache;
/// Create a copy of Loadable
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadableCopyWith<T, Loadable<T>> get copyWith => _$LoadableCopyWithImpl<T, Loadable<T>>(this as Loadable<T>, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loadable<T>&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.failure, failure) || other.failure == failure)&&(identical(other.fetchedAt, fetchedAt) || other.fetchedAt == fetchedAt)&&(identical(other.isFromCache, isFromCache) || other.isFromCache == isFromCache));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),isLoading,failure,fetchedAt,isFromCache);

@override
String toString() {
  return 'Loadable<$T>(data: $data, isLoading: $isLoading, failure: $failure, fetchedAt: $fetchedAt, isFromCache: $isFromCache)';
}


}

/// @nodoc
abstract mixin class $LoadableCopyWith<T,$Res>  {
  factory $LoadableCopyWith(Loadable<T> value, $Res Function(Loadable<T>) _then) = _$LoadableCopyWithImpl;
@useResult
$Res call({
 T? data, bool isLoading, Failure? failure, DateTime? fetchedAt, bool isFromCache
});




}
/// @nodoc
class _$LoadableCopyWithImpl<T,$Res>
    implements $LoadableCopyWith<T, $Res> {
  _$LoadableCopyWithImpl(this._self, this._then);

  final Loadable<T> _self;
  final $Res Function(Loadable<T>) _then;

/// Create a copy of Loadable
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,Object? isLoading = null,Object? failure = freezed,Object? fetchedAt = freezed,Object? isFromCache = null,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,fetchedAt: freezed == fetchedAt ? _self.fetchedAt : fetchedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,isFromCache: null == isFromCache ? _self.isFromCache : isFromCache // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [Loadable].
extension LoadablePatterns<T> on Loadable<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Loadable<T> value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Loadable() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Loadable<T> value)  $default,){
final _that = this;
switch (_that) {
case _Loadable():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Loadable<T> value)?  $default,){
final _that = this;
switch (_that) {
case _Loadable() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( T? data,  bool isLoading,  Failure? failure,  DateTime? fetchedAt,  bool isFromCache)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Loadable() when $default != null:
return $default(_that.data,_that.isLoading,_that.failure,_that.fetchedAt,_that.isFromCache);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( T? data,  bool isLoading,  Failure? failure,  DateTime? fetchedAt,  bool isFromCache)  $default,) {final _that = this;
switch (_that) {
case _Loadable():
return $default(_that.data,_that.isLoading,_that.failure,_that.fetchedAt,_that.isFromCache);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( T? data,  bool isLoading,  Failure? failure,  DateTime? fetchedAt,  bool isFromCache)?  $default,) {final _that = this;
switch (_that) {
case _Loadable() when $default != null:
return $default(_that.data,_that.isLoading,_that.failure,_that.fetchedAt,_that.isFromCache);case _:
  return null;

}
}

}

/// @nodoc


class _Loadable<T> extends Loadable<T> {
  const _Loadable({this.data, this.isLoading = false, this.failure, this.fetchedAt, this.isFromCache = false}): super._();
  

@override final  T? data;
@override@JsonKey() final  bool isLoading;
@override final  Failure? failure;
@override final  DateTime? fetchedAt;
/// [data] is the device copy: «Данные на …» and changes are disabled.
@override@JsonKey() final  bool isFromCache;

/// Create a copy of Loadable
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadableCopyWith<T, _Loadable<T>> get copyWith => __$LoadableCopyWithImpl<T, _Loadable<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loadable<T>&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.failure, failure) || other.failure == failure)&&(identical(other.fetchedAt, fetchedAt) || other.fetchedAt == fetchedAt)&&(identical(other.isFromCache, isFromCache) || other.isFromCache == isFromCache));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),isLoading,failure,fetchedAt,isFromCache);

@override
String toString() {
  return 'Loadable<$T>(data: $data, isLoading: $isLoading, failure: $failure, fetchedAt: $fetchedAt, isFromCache: $isFromCache)';
}


}

/// @nodoc
abstract mixin class _$LoadableCopyWith<T,$Res> implements $LoadableCopyWith<T, $Res> {
  factory _$LoadableCopyWith(_Loadable<T> value, $Res Function(_Loadable<T>) _then) = __$LoadableCopyWithImpl;
@override @useResult
$Res call({
 T? data, bool isLoading, Failure? failure, DateTime? fetchedAt, bool isFromCache
});




}
/// @nodoc
class __$LoadableCopyWithImpl<T,$Res>
    implements _$LoadableCopyWith<T, $Res> {
  __$LoadableCopyWithImpl(this._self, this._then);

  final _Loadable<T> _self;
  final $Res Function(_Loadable<T>) _then;

/// Create a copy of Loadable
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,Object? isLoading = null,Object? failure = freezed,Object? fetchedAt = freezed,Object? isFromCache = null,}) {
  return _then(_Loadable<T>(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,fetchedAt: freezed == fetchedAt ? _self.fetchedAt : fetchedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,isFromCache: null == isFromCache ? _self.isFromCache : isFromCache // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
