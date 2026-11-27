// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_feed_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$VideoFeedState {

 bool get isLoading; List<VideoClip> get clips; String? get nextCursor; bool get isLoadingMore;/// The first page failed.
 Failure? get failure; int get current;/// Auto-play is muted; the choice holds for the session (TZ §5.4).
 bool get isMuted;
/// Create a copy of VideoFeedState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VideoFeedStateCopyWith<VideoFeedState> get copyWith => _$VideoFeedStateCopyWithImpl<VideoFeedState>(this as VideoFeedState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoFeedState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other.clips, clips)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.failure, failure) || other.failure == failure)&&(identical(other.current, current) || other.current == current)&&(identical(other.isMuted, isMuted) || other.isMuted == isMuted));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(clips),nextCursor,isLoadingMore,failure,current,isMuted);

@override
String toString() {
  return 'VideoFeedState(isLoading: $isLoading, clips: $clips, nextCursor: $nextCursor, isLoadingMore: $isLoadingMore, failure: $failure, current: $current, isMuted: $isMuted)';
}


}

/// @nodoc
abstract mixin class $VideoFeedStateCopyWith<$Res>  {
  factory $VideoFeedStateCopyWith(VideoFeedState value, $Res Function(VideoFeedState) _then) = _$VideoFeedStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, List<VideoClip> clips, String? nextCursor, bool isLoadingMore, Failure? failure, int current, bool isMuted
});




}
/// @nodoc
class _$VideoFeedStateCopyWithImpl<$Res>
    implements $VideoFeedStateCopyWith<$Res> {
  _$VideoFeedStateCopyWithImpl(this._self, this._then);

  final VideoFeedState _self;
  final $Res Function(VideoFeedState) _then;

/// Create a copy of VideoFeedState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? clips = null,Object? nextCursor = freezed,Object? isLoadingMore = null,Object? failure = freezed,Object? current = null,Object? isMuted = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,clips: null == clips ? _self.clips : clips // ignore: cast_nullable_to_non_nullable
as List<VideoClip>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,current: null == current ? _self.current : current // ignore: cast_nullable_to_non_nullable
as int,isMuted: null == isMuted ? _self.isMuted : isMuted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [VideoFeedState].
extension VideoFeedStatePatterns on VideoFeedState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VideoFeedState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VideoFeedState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VideoFeedState value)  $default,){
final _that = this;
switch (_that) {
case _VideoFeedState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VideoFeedState value)?  $default,){
final _that = this;
switch (_that) {
case _VideoFeedState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  List<VideoClip> clips,  String? nextCursor,  bool isLoadingMore,  Failure? failure,  int current,  bool isMuted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VideoFeedState() when $default != null:
return $default(_that.isLoading,_that.clips,_that.nextCursor,_that.isLoadingMore,_that.failure,_that.current,_that.isMuted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  List<VideoClip> clips,  String? nextCursor,  bool isLoadingMore,  Failure? failure,  int current,  bool isMuted)  $default,) {final _that = this;
switch (_that) {
case _VideoFeedState():
return $default(_that.isLoading,_that.clips,_that.nextCursor,_that.isLoadingMore,_that.failure,_that.current,_that.isMuted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  List<VideoClip> clips,  String? nextCursor,  bool isLoadingMore,  Failure? failure,  int current,  bool isMuted)?  $default,) {final _that = this;
switch (_that) {
case _VideoFeedState() when $default != null:
return $default(_that.isLoading,_that.clips,_that.nextCursor,_that.isLoadingMore,_that.failure,_that.current,_that.isMuted);case _:
  return null;

}
}

}

/// @nodoc


class _VideoFeedState implements VideoFeedState {
  const _VideoFeedState({this.isLoading = true, final  List<VideoClip> clips = const <VideoClip>[], this.nextCursor, this.isLoadingMore = false, this.failure, this.current = 0, this.isMuted = true}): _clips = clips;
  

@override@JsonKey() final  bool isLoading;
 final  List<VideoClip> _clips;
@override@JsonKey() List<VideoClip> get clips {
  if (_clips is EqualUnmodifiableListView) return _clips;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_clips);
}

@override final  String? nextCursor;
@override@JsonKey() final  bool isLoadingMore;
/// The first page failed.
@override final  Failure? failure;
@override@JsonKey() final  int current;
/// Auto-play is muted; the choice holds for the session (TZ §5.4).
@override@JsonKey() final  bool isMuted;

/// Create a copy of VideoFeedState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VideoFeedStateCopyWith<_VideoFeedState> get copyWith => __$VideoFeedStateCopyWithImpl<_VideoFeedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VideoFeedState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other._clips, _clips)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.failure, failure) || other.failure == failure)&&(identical(other.current, current) || other.current == current)&&(identical(other.isMuted, isMuted) || other.isMuted == isMuted));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(_clips),nextCursor,isLoadingMore,failure,current,isMuted);

@override
String toString() {
  return 'VideoFeedState(isLoading: $isLoading, clips: $clips, nextCursor: $nextCursor, isLoadingMore: $isLoadingMore, failure: $failure, current: $current, isMuted: $isMuted)';
}


}

/// @nodoc
abstract mixin class _$VideoFeedStateCopyWith<$Res> implements $VideoFeedStateCopyWith<$Res> {
  factory _$VideoFeedStateCopyWith(_VideoFeedState value, $Res Function(_VideoFeedState) _then) = __$VideoFeedStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, List<VideoClip> clips, String? nextCursor, bool isLoadingMore, Failure? failure, int current, bool isMuted
});




}
/// @nodoc
class __$VideoFeedStateCopyWithImpl<$Res>
    implements _$VideoFeedStateCopyWith<$Res> {
  __$VideoFeedStateCopyWithImpl(this._self, this._then);

  final _VideoFeedState _self;
  final $Res Function(_VideoFeedState) _then;

/// Create a copy of VideoFeedState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? clips = null,Object? nextCursor = freezed,Object? isLoadingMore = null,Object? failure = freezed,Object? current = null,Object? isMuted = null,}) {
  return _then(_VideoFeedState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,clips: null == clips ? _self._clips : clips // ignore: cast_nullable_to_non_nullable
as List<VideoClip>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,current: null == current ? _self.current : current // ignore: cast_nullable_to_non_nullable
as int,isMuted: null == isMuted ? _self.isMuted : isMuted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
