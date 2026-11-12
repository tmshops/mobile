// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Status {

 StatusCode get code; String get title;
/// Create a copy of Status
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StatusCopyWith<Status> get copyWith => _$StatusCopyWithImpl<Status>(this as Status, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Status&&(identical(other.code, code) || other.code == code)&&(identical(other.title, title) || other.title == title));
}


@override
int get hashCode => Object.hash(runtimeType,code,title);

@override
String toString() {
  return 'Status(code: $code, title: $title)';
}


}

/// @nodoc
abstract mixin class $StatusCopyWith<$Res>  {
  factory $StatusCopyWith(Status value, $Res Function(Status) _then) = _$StatusCopyWithImpl;
@useResult
$Res call({
 StatusCode code, String title
});




}
/// @nodoc
class _$StatusCopyWithImpl<$Res>
    implements $StatusCopyWith<$Res> {
  _$StatusCopyWithImpl(this._self, this._then);

  final Status _self;
  final $Res Function(Status) _then;

/// Create a copy of Status
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,Object? title = null,}) {
  return _then(_self.copyWith(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as StatusCode,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Status].
extension StatusPatterns on Status {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Status value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Status() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Status value)  $default,){
final _that = this;
switch (_that) {
case _Status():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Status value)?  $default,){
final _that = this;
switch (_that) {
case _Status() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( StatusCode code,  String title)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Status() when $default != null:
return $default(_that.code,_that.title);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( StatusCode code,  String title)  $default,) {final _that = this;
switch (_that) {
case _Status():
return $default(_that.code,_that.title);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( StatusCode code,  String title)?  $default,) {final _that = this;
switch (_that) {
case _Status() when $default != null:
return $default(_that.code,_that.title);case _:
  return null;

}
}

}

/// @nodoc


class _Status implements Status {
  const _Status({required this.code, required this.title});
  

@override final  StatusCode code;
@override final  String title;

/// Create a copy of Status
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StatusCopyWith<_Status> get copyWith => __$StatusCopyWithImpl<_Status>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Status&&(identical(other.code, code) || other.code == code)&&(identical(other.title, title) || other.title == title));
}


@override
int get hashCode => Object.hash(runtimeType,code,title);

@override
String toString() {
  return 'Status(code: $code, title: $title)';
}


}

/// @nodoc
abstract mixin class _$StatusCopyWith<$Res> implements $StatusCopyWith<$Res> {
  factory _$StatusCopyWith(_Status value, $Res Function(_Status) _then) = __$StatusCopyWithImpl;
@override @useResult
$Res call({
 StatusCode code, String title
});




}
/// @nodoc
class __$StatusCopyWithImpl<$Res>
    implements _$StatusCopyWith<$Res> {
  __$StatusCopyWithImpl(this._self, this._then);

  final _Status _self;
  final $Res Function(_Status) _then;

/// Create a copy of Status
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? title = null,}) {
  return _then(_Status(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as StatusCode,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$Fetched<T> {

 T get data; DateTime get fetchedAt;/// Shown from the device copy because the network failed (TZ §8).
 bool get isFromCache;
/// Create a copy of Fetched
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FetchedCopyWith<T, Fetched<T>> get copyWith => _$FetchedCopyWithImpl<T, Fetched<T>>(this as Fetched<T>, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Fetched<T>&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.fetchedAt, fetchedAt) || other.fetchedAt == fetchedAt)&&(identical(other.isFromCache, isFromCache) || other.isFromCache == isFromCache));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),fetchedAt,isFromCache);

@override
String toString() {
  return 'Fetched<$T>(data: $data, fetchedAt: $fetchedAt, isFromCache: $isFromCache)';
}


}

/// @nodoc
abstract mixin class $FetchedCopyWith<T,$Res>  {
  factory $FetchedCopyWith(Fetched<T> value, $Res Function(Fetched<T>) _then) = _$FetchedCopyWithImpl;
@useResult
$Res call({
 T data, DateTime fetchedAt, bool isFromCache
});




}
/// @nodoc
class _$FetchedCopyWithImpl<T,$Res>
    implements $FetchedCopyWith<T, $Res> {
  _$FetchedCopyWithImpl(this._self, this._then);

  final Fetched<T> _self;
  final $Res Function(Fetched<T>) _then;

/// Create a copy of Fetched
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,Object? fetchedAt = null,Object? isFromCache = null,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,fetchedAt: null == fetchedAt ? _self.fetchedAt : fetchedAt // ignore: cast_nullable_to_non_nullable
as DateTime,isFromCache: null == isFromCache ? _self.isFromCache : isFromCache // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [Fetched].
extension FetchedPatterns<T> on Fetched<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Fetched<T> value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Fetched() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Fetched<T> value)  $default,){
final _that = this;
switch (_that) {
case _Fetched():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Fetched<T> value)?  $default,){
final _that = this;
switch (_that) {
case _Fetched() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( T data,  DateTime fetchedAt,  bool isFromCache)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Fetched() when $default != null:
return $default(_that.data,_that.fetchedAt,_that.isFromCache);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( T data,  DateTime fetchedAt,  bool isFromCache)  $default,) {final _that = this;
switch (_that) {
case _Fetched():
return $default(_that.data,_that.fetchedAt,_that.isFromCache);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( T data,  DateTime fetchedAt,  bool isFromCache)?  $default,) {final _that = this;
switch (_that) {
case _Fetched() when $default != null:
return $default(_that.data,_that.fetchedAt,_that.isFromCache);case _:
  return null;

}
}

}

/// @nodoc


class _Fetched<T> implements Fetched<T> {
  const _Fetched({required this.data, required this.fetchedAt, this.isFromCache = false});
  

@override final  T data;
@override final  DateTime fetchedAt;
/// Shown from the device copy because the network failed (TZ §8).
@override@JsonKey() final  bool isFromCache;

/// Create a copy of Fetched
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FetchedCopyWith<T, _Fetched<T>> get copyWith => __$FetchedCopyWithImpl<T, _Fetched<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Fetched<T>&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.fetchedAt, fetchedAt) || other.fetchedAt == fetchedAt)&&(identical(other.isFromCache, isFromCache) || other.isFromCache == isFromCache));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),fetchedAt,isFromCache);

@override
String toString() {
  return 'Fetched<$T>(data: $data, fetchedAt: $fetchedAt, isFromCache: $isFromCache)';
}


}

/// @nodoc
abstract mixin class _$FetchedCopyWith<T,$Res> implements $FetchedCopyWith<T, $Res> {
  factory _$FetchedCopyWith(_Fetched<T> value, $Res Function(_Fetched<T>) _then) = __$FetchedCopyWithImpl;
@override @useResult
$Res call({
 T data, DateTime fetchedAt, bool isFromCache
});




}
/// @nodoc
class __$FetchedCopyWithImpl<T,$Res>
    implements _$FetchedCopyWith<T, $Res> {
  __$FetchedCopyWithImpl(this._self, this._then);

  final _Fetched<T> _self;
  final $Res Function(_Fetched<T>) _then;

/// Create a copy of Fetched
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,Object? fetchedAt = null,Object? isFromCache = null,}) {
  return _then(_Fetched<T>(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,fetchedAt: null == fetchedAt ? _self.fetchedAt : fetchedAt // ignore: cast_nullable_to_non_nullable
as DateTime,isFromCache: null == isFromCache ? _self.isFromCache : isFromCache // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
