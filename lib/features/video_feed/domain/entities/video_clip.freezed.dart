// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_clip.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$VideoClip {

 String get id;/// Shown before the video loads.
 String get posterUrl; Duration get duration; ProductSummary get product;/// Website link of the product, for «Поделиться».
 String get shareUrl; int get likeCount; bool get isLiked;
/// Create a copy of VideoClip
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VideoClipCopyWith<VideoClip> get copyWith => _$VideoClipCopyWithImpl<VideoClip>(this as VideoClip, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoClip&&(identical(other.id, id) || other.id == id)&&(identical(other.posterUrl, posterUrl) || other.posterUrl == posterUrl)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.product, product) || other.product == product)&&(identical(other.shareUrl, shareUrl) || other.shareUrl == shareUrl)&&(identical(other.likeCount, likeCount) || other.likeCount == likeCount)&&(identical(other.isLiked, isLiked) || other.isLiked == isLiked));
}


@override
int get hashCode => Object.hash(runtimeType,id,posterUrl,duration,product,shareUrl,likeCount,isLiked);

@override
String toString() {
  return 'VideoClip(id: $id, posterUrl: $posterUrl, duration: $duration, product: $product, shareUrl: $shareUrl, likeCount: $likeCount, isLiked: $isLiked)';
}


}

/// @nodoc
abstract mixin class $VideoClipCopyWith<$Res>  {
  factory $VideoClipCopyWith(VideoClip value, $Res Function(VideoClip) _then) = _$VideoClipCopyWithImpl;
@useResult
$Res call({
 String id, String posterUrl, Duration duration, ProductSummary product, String shareUrl, int likeCount, bool isLiked
});


$ProductSummaryCopyWith<$Res> get product;

}
/// @nodoc
class _$VideoClipCopyWithImpl<$Res>
    implements $VideoClipCopyWith<$Res> {
  _$VideoClipCopyWithImpl(this._self, this._then);

  final VideoClip _self;
  final $Res Function(VideoClip) _then;

/// Create a copy of VideoClip
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? posterUrl = null,Object? duration = null,Object? product = null,Object? shareUrl = null,Object? likeCount = null,Object? isLiked = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,posterUrl: null == posterUrl ? _self.posterUrl : posterUrl // ignore: cast_nullable_to_non_nullable
as String,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as Duration,product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ProductSummary,shareUrl: null == shareUrl ? _self.shareUrl : shareUrl // ignore: cast_nullable_to_non_nullable
as String,likeCount: null == likeCount ? _self.likeCount : likeCount // ignore: cast_nullable_to_non_nullable
as int,isLiked: null == isLiked ? _self.isLiked : isLiked // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of VideoClip
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductSummaryCopyWith<$Res> get product {
  
  return $ProductSummaryCopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}


/// Adds pattern-matching-related methods to [VideoClip].
extension VideoClipPatterns on VideoClip {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VideoClip value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VideoClip() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VideoClip value)  $default,){
final _that = this;
switch (_that) {
case _VideoClip():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VideoClip value)?  $default,){
final _that = this;
switch (_that) {
case _VideoClip() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String posterUrl,  Duration duration,  ProductSummary product,  String shareUrl,  int likeCount,  bool isLiked)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VideoClip() when $default != null:
return $default(_that.id,_that.posterUrl,_that.duration,_that.product,_that.shareUrl,_that.likeCount,_that.isLiked);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String posterUrl,  Duration duration,  ProductSummary product,  String shareUrl,  int likeCount,  bool isLiked)  $default,) {final _that = this;
switch (_that) {
case _VideoClip():
return $default(_that.id,_that.posterUrl,_that.duration,_that.product,_that.shareUrl,_that.likeCount,_that.isLiked);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String posterUrl,  Duration duration,  ProductSummary product,  String shareUrl,  int likeCount,  bool isLiked)?  $default,) {final _that = this;
switch (_that) {
case _VideoClip() when $default != null:
return $default(_that.id,_that.posterUrl,_that.duration,_that.product,_that.shareUrl,_that.likeCount,_that.isLiked);case _:
  return null;

}
}

}

/// @nodoc


class _VideoClip implements VideoClip {
  const _VideoClip({required this.id, required this.posterUrl, required this.duration, required this.product, required this.shareUrl, this.likeCount = 0, this.isLiked = false});
  

@override final  String id;
/// Shown before the video loads.
@override final  String posterUrl;
@override final  Duration duration;
@override final  ProductSummary product;
/// Website link of the product, for «Поделиться».
@override final  String shareUrl;
@override@JsonKey() final  int likeCount;
@override@JsonKey() final  bool isLiked;

/// Create a copy of VideoClip
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VideoClipCopyWith<_VideoClip> get copyWith => __$VideoClipCopyWithImpl<_VideoClip>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VideoClip&&(identical(other.id, id) || other.id == id)&&(identical(other.posterUrl, posterUrl) || other.posterUrl == posterUrl)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.product, product) || other.product == product)&&(identical(other.shareUrl, shareUrl) || other.shareUrl == shareUrl)&&(identical(other.likeCount, likeCount) || other.likeCount == likeCount)&&(identical(other.isLiked, isLiked) || other.isLiked == isLiked));
}


@override
int get hashCode => Object.hash(runtimeType,id,posterUrl,duration,product,shareUrl,likeCount,isLiked);

@override
String toString() {
  return 'VideoClip(id: $id, posterUrl: $posterUrl, duration: $duration, product: $product, shareUrl: $shareUrl, likeCount: $likeCount, isLiked: $isLiked)';
}


}

/// @nodoc
abstract mixin class _$VideoClipCopyWith<$Res> implements $VideoClipCopyWith<$Res> {
  factory _$VideoClipCopyWith(_VideoClip value, $Res Function(_VideoClip) _then) = __$VideoClipCopyWithImpl;
@override @useResult
$Res call({
 String id, String posterUrl, Duration duration, ProductSummary product, String shareUrl, int likeCount, bool isLiked
});


@override $ProductSummaryCopyWith<$Res> get product;

}
/// @nodoc
class __$VideoClipCopyWithImpl<$Res>
    implements _$VideoClipCopyWith<$Res> {
  __$VideoClipCopyWithImpl(this._self, this._then);

  final _VideoClip _self;
  final $Res Function(_VideoClip) _then;

/// Create a copy of VideoClip
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? posterUrl = null,Object? duration = null,Object? product = null,Object? shareUrl = null,Object? likeCount = null,Object? isLiked = null,}) {
  return _then(_VideoClip(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,posterUrl: null == posterUrl ? _self.posterUrl : posterUrl // ignore: cast_nullable_to_non_nullable
as String,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as Duration,product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ProductSummary,shareUrl: null == shareUrl ? _self.shareUrl : shareUrl // ignore: cast_nullable_to_non_nullable
as String,likeCount: null == likeCount ? _self.likeCount : likeCount // ignore: cast_nullable_to_non_nullable
as int,isLiked: null == isLiked ? _self.isLiked : isLiked // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of VideoClip
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductSummaryCopyWith<$Res> get product {
  
  return $ProductSummaryCopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}

/// @nodoc
mixin _$VideoPage {

 List<VideoClip> get clips;/// `null`: the end of the feed.
 String? get nextCursor;
/// Create a copy of VideoPage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VideoPageCopyWith<VideoPage> get copyWith => _$VideoPageCopyWithImpl<VideoPage>(this as VideoPage, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoPage&&const DeepCollectionEquality().equals(other.clips, clips)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(clips),nextCursor);

@override
String toString() {
  return 'VideoPage(clips: $clips, nextCursor: $nextCursor)';
}


}

/// @nodoc
abstract mixin class $VideoPageCopyWith<$Res>  {
  factory $VideoPageCopyWith(VideoPage value, $Res Function(VideoPage) _then) = _$VideoPageCopyWithImpl;
@useResult
$Res call({
 List<VideoClip> clips, String? nextCursor
});




}
/// @nodoc
class _$VideoPageCopyWithImpl<$Res>
    implements $VideoPageCopyWith<$Res> {
  _$VideoPageCopyWithImpl(this._self, this._then);

  final VideoPage _self;
  final $Res Function(VideoPage) _then;

/// Create a copy of VideoPage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? clips = null,Object? nextCursor = freezed,}) {
  return _then(_self.copyWith(
clips: null == clips ? _self.clips : clips // ignore: cast_nullable_to_non_nullable
as List<VideoClip>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [VideoPage].
extension VideoPagePatterns on VideoPage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VideoPage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VideoPage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VideoPage value)  $default,){
final _that = this;
switch (_that) {
case _VideoPage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VideoPage value)?  $default,){
final _that = this;
switch (_that) {
case _VideoPage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<VideoClip> clips,  String? nextCursor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VideoPage() when $default != null:
return $default(_that.clips,_that.nextCursor);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<VideoClip> clips,  String? nextCursor)  $default,) {final _that = this;
switch (_that) {
case _VideoPage():
return $default(_that.clips,_that.nextCursor);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<VideoClip> clips,  String? nextCursor)?  $default,) {final _that = this;
switch (_that) {
case _VideoPage() when $default != null:
return $default(_that.clips,_that.nextCursor);case _:
  return null;

}
}

}

/// @nodoc


class _VideoPage implements VideoPage {
  const _VideoPage({required final  List<VideoClip> clips, this.nextCursor}): _clips = clips;
  

 final  List<VideoClip> _clips;
@override List<VideoClip> get clips {
  if (_clips is EqualUnmodifiableListView) return _clips;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_clips);
}

/// `null`: the end of the feed.
@override final  String? nextCursor;

/// Create a copy of VideoPage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VideoPageCopyWith<_VideoPage> get copyWith => __$VideoPageCopyWithImpl<_VideoPage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VideoPage&&const DeepCollectionEquality().equals(other._clips, _clips)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_clips),nextCursor);

@override
String toString() {
  return 'VideoPage(clips: $clips, nextCursor: $nextCursor)';
}


}

/// @nodoc
abstract mixin class _$VideoPageCopyWith<$Res> implements $VideoPageCopyWith<$Res> {
  factory _$VideoPageCopyWith(_VideoPage value, $Res Function(_VideoPage) _then) = __$VideoPageCopyWithImpl;
@override @useResult
$Res call({
 List<VideoClip> clips, String? nextCursor
});




}
/// @nodoc
class __$VideoPageCopyWithImpl<$Res>
    implements _$VideoPageCopyWith<$Res> {
  __$VideoPageCopyWithImpl(this._self, this._then);

  final _VideoPage _self;
  final $Res Function(_VideoPage) _then;

/// Create a copy of VideoPage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? clips = null,Object? nextCursor = freezed,}) {
  return _then(_VideoPage(
clips: null == clips ? _self._clips : clips // ignore: cast_nullable_to_non_nullable
as List<VideoClip>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
