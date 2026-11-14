// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'photo_search_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PhotoSearchState {

 PhotoSearchStatus get status;/// 0…1 while [PhotoSearchStatus.uploading].
 double get uploadProgress; List<PhotoMatch> get matches; Failure? get failure;
/// Create a copy of PhotoSearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PhotoSearchStateCopyWith<PhotoSearchState> get copyWith => _$PhotoSearchStateCopyWithImpl<PhotoSearchState>(this as PhotoSearchState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PhotoSearchState&&(identical(other.status, status) || other.status == status)&&(identical(other.uploadProgress, uploadProgress) || other.uploadProgress == uploadProgress)&&const DeepCollectionEquality().equals(other.matches, matches)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,status,uploadProgress,const DeepCollectionEquality().hash(matches),failure);

@override
String toString() {
  return 'PhotoSearchState(status: $status, uploadProgress: $uploadProgress, matches: $matches, failure: $failure)';
}


}

/// @nodoc
abstract mixin class $PhotoSearchStateCopyWith<$Res>  {
  factory $PhotoSearchStateCopyWith(PhotoSearchState value, $Res Function(PhotoSearchState) _then) = _$PhotoSearchStateCopyWithImpl;
@useResult
$Res call({
 PhotoSearchStatus status, double uploadProgress, List<PhotoMatch> matches, Failure? failure
});




}
/// @nodoc
class _$PhotoSearchStateCopyWithImpl<$Res>
    implements $PhotoSearchStateCopyWith<$Res> {
  _$PhotoSearchStateCopyWithImpl(this._self, this._then);

  final PhotoSearchState _self;
  final $Res Function(PhotoSearchState) _then;

/// Create a copy of PhotoSearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? uploadProgress = null,Object? matches = null,Object? failure = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PhotoSearchStatus,uploadProgress: null == uploadProgress ? _self.uploadProgress : uploadProgress // ignore: cast_nullable_to_non_nullable
as double,matches: null == matches ? _self.matches : matches // ignore: cast_nullable_to_non_nullable
as List<PhotoMatch>,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,
  ));
}

}


/// Adds pattern-matching-related methods to [PhotoSearchState].
extension PhotoSearchStatePatterns on PhotoSearchState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PhotoSearchState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PhotoSearchState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PhotoSearchState value)  $default,){
final _that = this;
switch (_that) {
case _PhotoSearchState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PhotoSearchState value)?  $default,){
final _that = this;
switch (_that) {
case _PhotoSearchState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PhotoSearchStatus status,  double uploadProgress,  List<PhotoMatch> matches,  Failure? failure)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PhotoSearchState() when $default != null:
return $default(_that.status,_that.uploadProgress,_that.matches,_that.failure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PhotoSearchStatus status,  double uploadProgress,  List<PhotoMatch> matches,  Failure? failure)  $default,) {final _that = this;
switch (_that) {
case _PhotoSearchState():
return $default(_that.status,_that.uploadProgress,_that.matches,_that.failure);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PhotoSearchStatus status,  double uploadProgress,  List<PhotoMatch> matches,  Failure? failure)?  $default,) {final _that = this;
switch (_that) {
case _PhotoSearchState() when $default != null:
return $default(_that.status,_that.uploadProgress,_that.matches,_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class _PhotoSearchState implements PhotoSearchState {
  const _PhotoSearchState({this.status = PhotoSearchStatus.uploading, this.uploadProgress = 0, final  List<PhotoMatch> matches = const <PhotoMatch>[], this.failure}): _matches = matches;
  

@override@JsonKey() final  PhotoSearchStatus status;
/// 0…1 while [PhotoSearchStatus.uploading].
@override@JsonKey() final  double uploadProgress;
 final  List<PhotoMatch> _matches;
@override@JsonKey() List<PhotoMatch> get matches {
  if (_matches is EqualUnmodifiableListView) return _matches;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_matches);
}

@override final  Failure? failure;

/// Create a copy of PhotoSearchState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PhotoSearchStateCopyWith<_PhotoSearchState> get copyWith => __$PhotoSearchStateCopyWithImpl<_PhotoSearchState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PhotoSearchState&&(identical(other.status, status) || other.status == status)&&(identical(other.uploadProgress, uploadProgress) || other.uploadProgress == uploadProgress)&&const DeepCollectionEquality().equals(other._matches, _matches)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,status,uploadProgress,const DeepCollectionEquality().hash(_matches),failure);

@override
String toString() {
  return 'PhotoSearchState(status: $status, uploadProgress: $uploadProgress, matches: $matches, failure: $failure)';
}


}

/// @nodoc
abstract mixin class _$PhotoSearchStateCopyWith<$Res> implements $PhotoSearchStateCopyWith<$Res> {
  factory _$PhotoSearchStateCopyWith(_PhotoSearchState value, $Res Function(_PhotoSearchState) _then) = __$PhotoSearchStateCopyWithImpl;
@override @useResult
$Res call({
 PhotoSearchStatus status, double uploadProgress, List<PhotoMatch> matches, Failure? failure
});




}
/// @nodoc
class __$PhotoSearchStateCopyWithImpl<$Res>
    implements _$PhotoSearchStateCopyWith<$Res> {
  __$PhotoSearchStateCopyWithImpl(this._self, this._then);

  final _PhotoSearchState _self;
  final $Res Function(_PhotoSearchState) _then;

/// Create a copy of PhotoSearchState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? uploadProgress = null,Object? matches = null,Object? failure = freezed,}) {
  return _then(_PhotoSearchState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PhotoSearchStatus,uploadProgress: null == uploadProgress ? _self.uploadProgress : uploadProgress // ignore: cast_nullable_to_non_nullable
as double,matches: null == matches ? _self._matches : matches // ignore: cast_nullable_to_non_nullable
as List<PhotoMatch>,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,
  ));
}


}

// dart format on
