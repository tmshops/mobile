// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'code_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CodeRequest {

 String get id;/// 4–6 digits, from the server config.
 int get codeLength; CodeChannel get channel;/// Masked phone or address the code went to, ready to show.
 String get destination;/// When «Отправить снова» becomes available.
 DateTime get resendAt;
/// Create a copy of CodeRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CodeRequestCopyWith<CodeRequest> get copyWith => _$CodeRequestCopyWithImpl<CodeRequest>(this as CodeRequest, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CodeRequest&&(identical(other.id, id) || other.id == id)&&(identical(other.codeLength, codeLength) || other.codeLength == codeLength)&&(identical(other.channel, channel) || other.channel == channel)&&(identical(other.destination, destination) || other.destination == destination)&&(identical(other.resendAt, resendAt) || other.resendAt == resendAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,codeLength,channel,destination,resendAt);

@override
String toString() {
  return 'CodeRequest(id: $id, codeLength: $codeLength, channel: $channel, destination: $destination, resendAt: $resendAt)';
}


}

/// @nodoc
abstract mixin class $CodeRequestCopyWith<$Res>  {
  factory $CodeRequestCopyWith(CodeRequest value, $Res Function(CodeRequest) _then) = _$CodeRequestCopyWithImpl;
@useResult
$Res call({
 String id, int codeLength, CodeChannel channel, String destination, DateTime resendAt
});




}
/// @nodoc
class _$CodeRequestCopyWithImpl<$Res>
    implements $CodeRequestCopyWith<$Res> {
  _$CodeRequestCopyWithImpl(this._self, this._then);

  final CodeRequest _self;
  final $Res Function(CodeRequest) _then;

/// Create a copy of CodeRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? codeLength = null,Object? channel = null,Object? destination = null,Object? resendAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,codeLength: null == codeLength ? _self.codeLength : codeLength // ignore: cast_nullable_to_non_nullable
as int,channel: null == channel ? _self.channel : channel // ignore: cast_nullable_to_non_nullable
as CodeChannel,destination: null == destination ? _self.destination : destination // ignore: cast_nullable_to_non_nullable
as String,resendAt: null == resendAt ? _self.resendAt : resendAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [CodeRequest].
extension CodeRequestPatterns on CodeRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CodeRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CodeRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CodeRequest value)  $default,){
final _that = this;
switch (_that) {
case _CodeRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CodeRequest value)?  $default,){
final _that = this;
switch (_that) {
case _CodeRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  int codeLength,  CodeChannel channel,  String destination,  DateTime resendAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CodeRequest() when $default != null:
return $default(_that.id,_that.codeLength,_that.channel,_that.destination,_that.resendAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  int codeLength,  CodeChannel channel,  String destination,  DateTime resendAt)  $default,) {final _that = this;
switch (_that) {
case _CodeRequest():
return $default(_that.id,_that.codeLength,_that.channel,_that.destination,_that.resendAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  int codeLength,  CodeChannel channel,  String destination,  DateTime resendAt)?  $default,) {final _that = this;
switch (_that) {
case _CodeRequest() when $default != null:
return $default(_that.id,_that.codeLength,_that.channel,_that.destination,_that.resendAt);case _:
  return null;

}
}

}

/// @nodoc


class _CodeRequest implements CodeRequest {
  const _CodeRequest({required this.id, required this.codeLength, required this.channel, required this.destination, required this.resendAt});
  

@override final  String id;
/// 4–6 digits, from the server config.
@override final  int codeLength;
@override final  CodeChannel channel;
/// Masked phone or address the code went to, ready to show.
@override final  String destination;
/// When «Отправить снова» becomes available.
@override final  DateTime resendAt;

/// Create a copy of CodeRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CodeRequestCopyWith<_CodeRequest> get copyWith => __$CodeRequestCopyWithImpl<_CodeRequest>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CodeRequest&&(identical(other.id, id) || other.id == id)&&(identical(other.codeLength, codeLength) || other.codeLength == codeLength)&&(identical(other.channel, channel) || other.channel == channel)&&(identical(other.destination, destination) || other.destination == destination)&&(identical(other.resendAt, resendAt) || other.resendAt == resendAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,codeLength,channel,destination,resendAt);

@override
String toString() {
  return 'CodeRequest(id: $id, codeLength: $codeLength, channel: $channel, destination: $destination, resendAt: $resendAt)';
}


}

/// @nodoc
abstract mixin class _$CodeRequestCopyWith<$Res> implements $CodeRequestCopyWith<$Res> {
  factory _$CodeRequestCopyWith(_CodeRequest value, $Res Function(_CodeRequest) _then) = __$CodeRequestCopyWithImpl;
@override @useResult
$Res call({
 String id, int codeLength, CodeChannel channel, String destination, DateTime resendAt
});




}
/// @nodoc
class __$CodeRequestCopyWithImpl<$Res>
    implements _$CodeRequestCopyWith<$Res> {
  __$CodeRequestCopyWithImpl(this._self, this._then);

  final _CodeRequest _self;
  final $Res Function(_CodeRequest) _then;

/// Create a copy of CodeRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? codeLength = null,Object? channel = null,Object? destination = null,Object? resendAt = null,}) {
  return _then(_CodeRequest(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,codeLength: null == codeLength ? _self.codeLength : codeLength // ignore: cast_nullable_to_non_nullable
as int,channel: null == channel ? _self.channel : channel // ignore: cast_nullable_to_non_nullable
as CodeChannel,destination: null == destination ? _self.destination : destination // ignore: cast_nullable_to_non_nullable
as String,resendAt: null == resendAt ? _self.resendAt : resendAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
