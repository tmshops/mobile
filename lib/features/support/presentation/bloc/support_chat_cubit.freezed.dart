// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'support_chat_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SupportChatState {

/// Newest first, the customer's unsent ones included.
 List<ChatMessage> get messages; bool get isLoading; bool get isLoadingOlder; String? get olderCursor;/// The first page failed: nothing to show but «Повторить».
 Failure? get failure;/// For the «+» sheet; empty until loaded.
 List<OrderRef> get orders; List<String> get photos;
/// Create a copy of SupportChatState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SupportChatStateCopyWith<SupportChatState> get copyWith => _$SupportChatStateCopyWithImpl<SupportChatState>(this as SupportChatState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SupportChatState&&const DeepCollectionEquality().equals(other.messages, messages)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isLoadingOlder, isLoadingOlder) || other.isLoadingOlder == isLoadingOlder)&&(identical(other.olderCursor, olderCursor) || other.olderCursor == olderCursor)&&(identical(other.failure, failure) || other.failure == failure)&&const DeepCollectionEquality().equals(other.orders, orders)&&const DeepCollectionEquality().equals(other.photos, photos));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(messages),isLoading,isLoadingOlder,olderCursor,failure,const DeepCollectionEquality().hash(orders),const DeepCollectionEquality().hash(photos));

@override
String toString() {
  return 'SupportChatState(messages: $messages, isLoading: $isLoading, isLoadingOlder: $isLoadingOlder, olderCursor: $olderCursor, failure: $failure, orders: $orders, photos: $photos)';
}


}

/// @nodoc
abstract mixin class $SupportChatStateCopyWith<$Res>  {
  factory $SupportChatStateCopyWith(SupportChatState value, $Res Function(SupportChatState) _then) = _$SupportChatStateCopyWithImpl;
@useResult
$Res call({
 List<ChatMessage> messages, bool isLoading, bool isLoadingOlder, String? olderCursor, Failure? failure, List<OrderRef> orders, List<String> photos
});




}
/// @nodoc
class _$SupportChatStateCopyWithImpl<$Res>
    implements $SupportChatStateCopyWith<$Res> {
  _$SupportChatStateCopyWithImpl(this._self, this._then);

  final SupportChatState _self;
  final $Res Function(SupportChatState) _then;

/// Create a copy of SupportChatState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? messages = null,Object? isLoading = null,Object? isLoadingOlder = null,Object? olderCursor = freezed,Object? failure = freezed,Object? orders = null,Object? photos = null,}) {
  return _then(_self.copyWith(
messages: null == messages ? _self.messages : messages // ignore: cast_nullable_to_non_nullable
as List<ChatMessage>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isLoadingOlder: null == isLoadingOlder ? _self.isLoadingOlder : isLoadingOlder // ignore: cast_nullable_to_non_nullable
as bool,olderCursor: freezed == olderCursor ? _self.olderCursor : olderCursor // ignore: cast_nullable_to_non_nullable
as String?,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,orders: null == orders ? _self.orders : orders // ignore: cast_nullable_to_non_nullable
as List<OrderRef>,photos: null == photos ? _self.photos : photos // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [SupportChatState].
extension SupportChatStatePatterns on SupportChatState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SupportChatState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SupportChatState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SupportChatState value)  $default,){
final _that = this;
switch (_that) {
case _SupportChatState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SupportChatState value)?  $default,){
final _that = this;
switch (_that) {
case _SupportChatState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ChatMessage> messages,  bool isLoading,  bool isLoadingOlder,  String? olderCursor,  Failure? failure,  List<OrderRef> orders,  List<String> photos)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SupportChatState() when $default != null:
return $default(_that.messages,_that.isLoading,_that.isLoadingOlder,_that.olderCursor,_that.failure,_that.orders,_that.photos);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ChatMessage> messages,  bool isLoading,  bool isLoadingOlder,  String? olderCursor,  Failure? failure,  List<OrderRef> orders,  List<String> photos)  $default,) {final _that = this;
switch (_that) {
case _SupportChatState():
return $default(_that.messages,_that.isLoading,_that.isLoadingOlder,_that.olderCursor,_that.failure,_that.orders,_that.photos);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ChatMessage> messages,  bool isLoading,  bool isLoadingOlder,  String? olderCursor,  Failure? failure,  List<OrderRef> orders,  List<String> photos)?  $default,) {final _that = this;
switch (_that) {
case _SupportChatState() when $default != null:
return $default(_that.messages,_that.isLoading,_that.isLoadingOlder,_that.olderCursor,_that.failure,_that.orders,_that.photos);case _:
  return null;

}
}

}

/// @nodoc


class _SupportChatState extends SupportChatState {
  const _SupportChatState({final  List<ChatMessage> messages = const <ChatMessage>[], this.isLoading = true, this.isLoadingOlder = false, this.olderCursor, this.failure, final  List<OrderRef> orders = const <OrderRef>[], final  List<String> photos = const <String>[]}): _messages = messages,_orders = orders,_photos = photos,super._();
  

/// Newest first, the customer's unsent ones included.
 final  List<ChatMessage> _messages;
/// Newest first, the customer's unsent ones included.
@override@JsonKey() List<ChatMessage> get messages {
  if (_messages is EqualUnmodifiableListView) return _messages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_messages);
}

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isLoadingOlder;
@override final  String? olderCursor;
/// The first page failed: nothing to show but «Повторить».
@override final  Failure? failure;
/// For the «+» sheet; empty until loaded.
 final  List<OrderRef> _orders;
/// For the «+» sheet; empty until loaded.
@override@JsonKey() List<OrderRef> get orders {
  if (_orders is EqualUnmodifiableListView) return _orders;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_orders);
}

 final  List<String> _photos;
@override@JsonKey() List<String> get photos {
  if (_photos is EqualUnmodifiableListView) return _photos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_photos);
}


/// Create a copy of SupportChatState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SupportChatStateCopyWith<_SupportChatState> get copyWith => __$SupportChatStateCopyWithImpl<_SupportChatState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SupportChatState&&const DeepCollectionEquality().equals(other._messages, _messages)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isLoadingOlder, isLoadingOlder) || other.isLoadingOlder == isLoadingOlder)&&(identical(other.olderCursor, olderCursor) || other.olderCursor == olderCursor)&&(identical(other.failure, failure) || other.failure == failure)&&const DeepCollectionEquality().equals(other._orders, _orders)&&const DeepCollectionEquality().equals(other._photos, _photos));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_messages),isLoading,isLoadingOlder,olderCursor,failure,const DeepCollectionEquality().hash(_orders),const DeepCollectionEquality().hash(_photos));

@override
String toString() {
  return 'SupportChatState(messages: $messages, isLoading: $isLoading, isLoadingOlder: $isLoadingOlder, olderCursor: $olderCursor, failure: $failure, orders: $orders, photos: $photos)';
}


}

/// @nodoc
abstract mixin class _$SupportChatStateCopyWith<$Res> implements $SupportChatStateCopyWith<$Res> {
  factory _$SupportChatStateCopyWith(_SupportChatState value, $Res Function(_SupportChatState) _then) = __$SupportChatStateCopyWithImpl;
@override @useResult
$Res call({
 List<ChatMessage> messages, bool isLoading, bool isLoadingOlder, String? olderCursor, Failure? failure, List<OrderRef> orders, List<String> photos
});




}
/// @nodoc
class __$SupportChatStateCopyWithImpl<$Res>
    implements _$SupportChatStateCopyWith<$Res> {
  __$SupportChatStateCopyWithImpl(this._self, this._then);

  final _SupportChatState _self;
  final $Res Function(_SupportChatState) _then;

/// Create a copy of SupportChatState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? messages = null,Object? isLoading = null,Object? isLoadingOlder = null,Object? olderCursor = freezed,Object? failure = freezed,Object? orders = null,Object? photos = null,}) {
  return _then(_SupportChatState(
messages: null == messages ? _self._messages : messages // ignore: cast_nullable_to_non_nullable
as List<ChatMessage>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isLoadingOlder: null == isLoadingOlder ? _self.isLoadingOlder : isLoadingOlder // ignore: cast_nullable_to_non_nullable
as bool,olderCursor: freezed == olderCursor ? _self.olderCursor : olderCursor // ignore: cast_nullable_to_non_nullable
as String?,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,orders: null == orders ? _self._orders : orders // ignore: cast_nullable_to_non_nullable
as List<OrderRef>,photos: null == photos ? _self._photos : photos // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
