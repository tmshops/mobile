// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'find_request_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FindRequestState {

 String get description; List<String> get photos; String get link;/// Device photos to choose from.
 List<String> get gallery; bool get isSending; Failure? get failure;/// Set once sent: the card to show in the chat.
 ChatMessage? get sent;
/// Create a copy of FindRequestState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FindRequestStateCopyWith<FindRequestState> get copyWith => _$FindRequestStateCopyWithImpl<FindRequestState>(this as FindRequestState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FindRequestState&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.photos, photos)&&(identical(other.link, link) || other.link == link)&&const DeepCollectionEquality().equals(other.gallery, gallery)&&(identical(other.isSending, isSending) || other.isSending == isSending)&&(identical(other.failure, failure) || other.failure == failure)&&(identical(other.sent, sent) || other.sent == sent));
}


@override
int get hashCode => Object.hash(runtimeType,description,const DeepCollectionEquality().hash(photos),link,const DeepCollectionEquality().hash(gallery),isSending,failure,sent);

@override
String toString() {
  return 'FindRequestState(description: $description, photos: $photos, link: $link, gallery: $gallery, isSending: $isSending, failure: $failure, sent: $sent)';
}


}

/// @nodoc
abstract mixin class $FindRequestStateCopyWith<$Res>  {
  factory $FindRequestStateCopyWith(FindRequestState value, $Res Function(FindRequestState) _then) = _$FindRequestStateCopyWithImpl;
@useResult
$Res call({
 String description, List<String> photos, String link, List<String> gallery, bool isSending, Failure? failure, ChatMessage? sent
});


$ChatMessageCopyWith<$Res>? get sent;

}
/// @nodoc
class _$FindRequestStateCopyWithImpl<$Res>
    implements $FindRequestStateCopyWith<$Res> {
  _$FindRequestStateCopyWithImpl(this._self, this._then);

  final FindRequestState _self;
  final $Res Function(FindRequestState) _then;

/// Create a copy of FindRequestState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? description = null,Object? photos = null,Object? link = null,Object? gallery = null,Object? isSending = null,Object? failure = freezed,Object? sent = freezed,}) {
  return _then(_self.copyWith(
description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,photos: null == photos ? _self.photos : photos // ignore: cast_nullable_to_non_nullable
as List<String>,link: null == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String,gallery: null == gallery ? _self.gallery : gallery // ignore: cast_nullable_to_non_nullable
as List<String>,isSending: null == isSending ? _self.isSending : isSending // ignore: cast_nullable_to_non_nullable
as bool,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,sent: freezed == sent ? _self.sent : sent // ignore: cast_nullable_to_non_nullable
as ChatMessage?,
  ));
}
/// Create a copy of FindRequestState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatMessageCopyWith<$Res>? get sent {
    if (_self.sent == null) {
    return null;
  }

  return $ChatMessageCopyWith<$Res>(_self.sent!, (value) {
    return _then(_self.copyWith(sent: value));
  });
}
}


/// Adds pattern-matching-related methods to [FindRequestState].
extension FindRequestStatePatterns on FindRequestState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FindRequestState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FindRequestState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FindRequestState value)  $default,){
final _that = this;
switch (_that) {
case _FindRequestState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FindRequestState value)?  $default,){
final _that = this;
switch (_that) {
case _FindRequestState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String description,  List<String> photos,  String link,  List<String> gallery,  bool isSending,  Failure? failure,  ChatMessage? sent)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FindRequestState() when $default != null:
return $default(_that.description,_that.photos,_that.link,_that.gallery,_that.isSending,_that.failure,_that.sent);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String description,  List<String> photos,  String link,  List<String> gallery,  bool isSending,  Failure? failure,  ChatMessage? sent)  $default,) {final _that = this;
switch (_that) {
case _FindRequestState():
return $default(_that.description,_that.photos,_that.link,_that.gallery,_that.isSending,_that.failure,_that.sent);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String description,  List<String> photos,  String link,  List<String> gallery,  bool isSending,  Failure? failure,  ChatMessage? sent)?  $default,) {final _that = this;
switch (_that) {
case _FindRequestState() when $default != null:
return $default(_that.description,_that.photos,_that.link,_that.gallery,_that.isSending,_that.failure,_that.sent);case _:
  return null;

}
}

}

/// @nodoc


class _FindRequestState extends FindRequestState {
  const _FindRequestState({this.description = '', final  List<String> photos = const <String>[], this.link = '', final  List<String> gallery = const <String>[], this.isSending = false, this.failure, this.sent}): _photos = photos,_gallery = gallery,super._();
  

@override@JsonKey() final  String description;
 final  List<String> _photos;
@override@JsonKey() List<String> get photos {
  if (_photos is EqualUnmodifiableListView) return _photos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_photos);
}

@override@JsonKey() final  String link;
/// Device photos to choose from.
 final  List<String> _gallery;
/// Device photos to choose from.
@override@JsonKey() List<String> get gallery {
  if (_gallery is EqualUnmodifiableListView) return _gallery;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_gallery);
}

@override@JsonKey() final  bool isSending;
@override final  Failure? failure;
/// Set once sent: the card to show in the chat.
@override final  ChatMessage? sent;

/// Create a copy of FindRequestState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FindRequestStateCopyWith<_FindRequestState> get copyWith => __$FindRequestStateCopyWithImpl<_FindRequestState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FindRequestState&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._photos, _photos)&&(identical(other.link, link) || other.link == link)&&const DeepCollectionEquality().equals(other._gallery, _gallery)&&(identical(other.isSending, isSending) || other.isSending == isSending)&&(identical(other.failure, failure) || other.failure == failure)&&(identical(other.sent, sent) || other.sent == sent));
}


@override
int get hashCode => Object.hash(runtimeType,description,const DeepCollectionEquality().hash(_photos),link,const DeepCollectionEquality().hash(_gallery),isSending,failure,sent);

@override
String toString() {
  return 'FindRequestState(description: $description, photos: $photos, link: $link, gallery: $gallery, isSending: $isSending, failure: $failure, sent: $sent)';
}


}

/// @nodoc
abstract mixin class _$FindRequestStateCopyWith<$Res> implements $FindRequestStateCopyWith<$Res> {
  factory _$FindRequestStateCopyWith(_FindRequestState value, $Res Function(_FindRequestState) _then) = __$FindRequestStateCopyWithImpl;
@override @useResult
$Res call({
 String description, List<String> photos, String link, List<String> gallery, bool isSending, Failure? failure, ChatMessage? sent
});


@override $ChatMessageCopyWith<$Res>? get sent;

}
/// @nodoc
class __$FindRequestStateCopyWithImpl<$Res>
    implements _$FindRequestStateCopyWith<$Res> {
  __$FindRequestStateCopyWithImpl(this._self, this._then);

  final _FindRequestState _self;
  final $Res Function(_FindRequestState) _then;

/// Create a copy of FindRequestState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? description = null,Object? photos = null,Object? link = null,Object? gallery = null,Object? isSending = null,Object? failure = freezed,Object? sent = freezed,}) {
  return _then(_FindRequestState(
description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,photos: null == photos ? _self._photos : photos // ignore: cast_nullable_to_non_nullable
as List<String>,link: null == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String,gallery: null == gallery ? _self._gallery : gallery // ignore: cast_nullable_to_non_nullable
as List<String>,isSending: null == isSending ? _self.isSending : isSending // ignore: cast_nullable_to_non_nullable
as bool,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,sent: freezed == sent ? _self.sent : sent // ignore: cast_nullable_to_non_nullable
as ChatMessage?,
  ));
}

/// Create a copy of FindRequestState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatMessageCopyWith<$Res>? get sent {
    if (_self.sent == null) {
    return null;
  }

  return $ChatMessageCopyWith<$Res>(_self.sent!, (value) {
    return _then(_self.copyWith(sent: value));
  });
}
}

// dart format on
