// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AccountSettings {

 CodeChannel get codeChannel; List<ChannelInfo> get channels; List<NotificationTopic> get topics;
/// Create a copy of AccountSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccountSettingsCopyWith<AccountSettings> get copyWith => _$AccountSettingsCopyWithImpl<AccountSettings>(this as AccountSettings, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccountSettings&&(identical(other.codeChannel, codeChannel) || other.codeChannel == codeChannel)&&const DeepCollectionEquality().equals(other.channels, channels)&&const DeepCollectionEquality().equals(other.topics, topics));
}


@override
int get hashCode => Object.hash(runtimeType,codeChannel,const DeepCollectionEquality().hash(channels),const DeepCollectionEquality().hash(topics));

@override
String toString() {
  return 'AccountSettings(codeChannel: $codeChannel, channels: $channels, topics: $topics)';
}


}

/// @nodoc
abstract mixin class $AccountSettingsCopyWith<$Res>  {
  factory $AccountSettingsCopyWith(AccountSettings value, $Res Function(AccountSettings) _then) = _$AccountSettingsCopyWithImpl;
@useResult
$Res call({
 CodeChannel codeChannel, List<ChannelInfo> channels, List<NotificationTopic> topics
});




}
/// @nodoc
class _$AccountSettingsCopyWithImpl<$Res>
    implements $AccountSettingsCopyWith<$Res> {
  _$AccountSettingsCopyWithImpl(this._self, this._then);

  final AccountSettings _self;
  final $Res Function(AccountSettings) _then;

/// Create a copy of AccountSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? codeChannel = null,Object? channels = null,Object? topics = null,}) {
  return _then(_self.copyWith(
codeChannel: null == codeChannel ? _self.codeChannel : codeChannel // ignore: cast_nullable_to_non_nullable
as CodeChannel,channels: null == channels ? _self.channels : channels // ignore: cast_nullable_to_non_nullable
as List<ChannelInfo>,topics: null == topics ? _self.topics : topics // ignore: cast_nullable_to_non_nullable
as List<NotificationTopic>,
  ));
}

}


/// Adds pattern-matching-related methods to [AccountSettings].
extension AccountSettingsPatterns on AccountSettings {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AccountSettings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AccountSettings() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AccountSettings value)  $default,){
final _that = this;
switch (_that) {
case _AccountSettings():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AccountSettings value)?  $default,){
final _that = this;
switch (_that) {
case _AccountSettings() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CodeChannel codeChannel,  List<ChannelInfo> channels,  List<NotificationTopic> topics)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AccountSettings() when $default != null:
return $default(_that.codeChannel,_that.channels,_that.topics);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CodeChannel codeChannel,  List<ChannelInfo> channels,  List<NotificationTopic> topics)  $default,) {final _that = this;
switch (_that) {
case _AccountSettings():
return $default(_that.codeChannel,_that.channels,_that.topics);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CodeChannel codeChannel,  List<ChannelInfo> channels,  List<NotificationTopic> topics)?  $default,) {final _that = this;
switch (_that) {
case _AccountSettings() when $default != null:
return $default(_that.codeChannel,_that.channels,_that.topics);case _:
  return null;

}
}

}

/// @nodoc


class _AccountSettings extends AccountSettings {
  const _AccountSettings({required this.codeChannel, required final  List<ChannelInfo> channels, required final  List<NotificationTopic> topics}): _channels = channels,_topics = topics,super._();
  

@override final  CodeChannel codeChannel;
 final  List<ChannelInfo> _channels;
@override List<ChannelInfo> get channels {
  if (_channels is EqualUnmodifiableListView) return _channels;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_channels);
}

 final  List<NotificationTopic> _topics;
@override List<NotificationTopic> get topics {
  if (_topics is EqualUnmodifiableListView) return _topics;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_topics);
}


/// Create a copy of AccountSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AccountSettingsCopyWith<_AccountSettings> get copyWith => __$AccountSettingsCopyWithImpl<_AccountSettings>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AccountSettings&&(identical(other.codeChannel, codeChannel) || other.codeChannel == codeChannel)&&const DeepCollectionEquality().equals(other._channels, _channels)&&const DeepCollectionEquality().equals(other._topics, _topics));
}


@override
int get hashCode => Object.hash(runtimeType,codeChannel,const DeepCollectionEquality().hash(_channels),const DeepCollectionEquality().hash(_topics));

@override
String toString() {
  return 'AccountSettings(codeChannel: $codeChannel, channels: $channels, topics: $topics)';
}


}

/// @nodoc
abstract mixin class _$AccountSettingsCopyWith<$Res> implements $AccountSettingsCopyWith<$Res> {
  factory _$AccountSettingsCopyWith(_AccountSettings value, $Res Function(_AccountSettings) _then) = __$AccountSettingsCopyWithImpl;
@override @useResult
$Res call({
 CodeChannel codeChannel, List<ChannelInfo> channels, List<NotificationTopic> topics
});




}
/// @nodoc
class __$AccountSettingsCopyWithImpl<$Res>
    implements _$AccountSettingsCopyWith<$Res> {
  __$AccountSettingsCopyWithImpl(this._self, this._then);

  final _AccountSettings _self;
  final $Res Function(_AccountSettings) _then;

/// Create a copy of AccountSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? codeChannel = null,Object? channels = null,Object? topics = null,}) {
  return _then(_AccountSettings(
codeChannel: null == codeChannel ? _self.codeChannel : codeChannel // ignore: cast_nullable_to_non_nullable
as CodeChannel,channels: null == channels ? _self._channels : channels // ignore: cast_nullable_to_non_nullable
as List<ChannelInfo>,topics: null == topics ? _self._topics : topics // ignore: cast_nullable_to_non_nullable
as List<NotificationTopic>,
  ));
}


}

/// @nodoc
mixin _$ChannelInfo {

 CodeChannel get channel; bool get isLinked;/// The linked email, to show under the row.
 String? get address;
/// Create a copy of ChannelInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChannelInfoCopyWith<ChannelInfo> get copyWith => _$ChannelInfoCopyWithImpl<ChannelInfo>(this as ChannelInfo, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChannelInfo&&(identical(other.channel, channel) || other.channel == channel)&&(identical(other.isLinked, isLinked) || other.isLinked == isLinked)&&(identical(other.address, address) || other.address == address));
}


@override
int get hashCode => Object.hash(runtimeType,channel,isLinked,address);

@override
String toString() {
  return 'ChannelInfo(channel: $channel, isLinked: $isLinked, address: $address)';
}


}

/// @nodoc
abstract mixin class $ChannelInfoCopyWith<$Res>  {
  factory $ChannelInfoCopyWith(ChannelInfo value, $Res Function(ChannelInfo) _then) = _$ChannelInfoCopyWithImpl;
@useResult
$Res call({
 CodeChannel channel, bool isLinked, String? address
});




}
/// @nodoc
class _$ChannelInfoCopyWithImpl<$Res>
    implements $ChannelInfoCopyWith<$Res> {
  _$ChannelInfoCopyWithImpl(this._self, this._then);

  final ChannelInfo _self;
  final $Res Function(ChannelInfo) _then;

/// Create a copy of ChannelInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? channel = null,Object? isLinked = null,Object? address = freezed,}) {
  return _then(_self.copyWith(
channel: null == channel ? _self.channel : channel // ignore: cast_nullable_to_non_nullable
as CodeChannel,isLinked: null == isLinked ? _self.isLinked : isLinked // ignore: cast_nullable_to_non_nullable
as bool,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ChannelInfo].
extension ChannelInfoPatterns on ChannelInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChannelInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChannelInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChannelInfo value)  $default,){
final _that = this;
switch (_that) {
case _ChannelInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChannelInfo value)?  $default,){
final _that = this;
switch (_that) {
case _ChannelInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CodeChannel channel,  bool isLinked,  String? address)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChannelInfo() when $default != null:
return $default(_that.channel,_that.isLinked,_that.address);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CodeChannel channel,  bool isLinked,  String? address)  $default,) {final _that = this;
switch (_that) {
case _ChannelInfo():
return $default(_that.channel,_that.isLinked,_that.address);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CodeChannel channel,  bool isLinked,  String? address)?  $default,) {final _that = this;
switch (_that) {
case _ChannelInfo() when $default != null:
return $default(_that.channel,_that.isLinked,_that.address);case _:
  return null;

}
}

}

/// @nodoc


class _ChannelInfo implements ChannelInfo {
  const _ChannelInfo({required this.channel, required this.isLinked, this.address});
  

@override final  CodeChannel channel;
@override final  bool isLinked;
/// The linked email, to show under the row.
@override final  String? address;

/// Create a copy of ChannelInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChannelInfoCopyWith<_ChannelInfo> get copyWith => __$ChannelInfoCopyWithImpl<_ChannelInfo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChannelInfo&&(identical(other.channel, channel) || other.channel == channel)&&(identical(other.isLinked, isLinked) || other.isLinked == isLinked)&&(identical(other.address, address) || other.address == address));
}


@override
int get hashCode => Object.hash(runtimeType,channel,isLinked,address);

@override
String toString() {
  return 'ChannelInfo(channel: $channel, isLinked: $isLinked, address: $address)';
}


}

/// @nodoc
abstract mixin class _$ChannelInfoCopyWith<$Res> implements $ChannelInfoCopyWith<$Res> {
  factory _$ChannelInfoCopyWith(_ChannelInfo value, $Res Function(_ChannelInfo) _then) = __$ChannelInfoCopyWithImpl;
@override @useResult
$Res call({
 CodeChannel channel, bool isLinked, String? address
});




}
/// @nodoc
class __$ChannelInfoCopyWithImpl<$Res>
    implements _$ChannelInfoCopyWith<$Res> {
  __$ChannelInfoCopyWithImpl(this._self, this._then);

  final _ChannelInfo _self;
  final $Res Function(_ChannelInfo) _then;

/// Create a copy of ChannelInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? channel = null,Object? isLinked = null,Object? address = freezed,}) {
  return _then(_ChannelInfo(
channel: null == channel ? _self.channel : channel // ignore: cast_nullable_to_non_nullable
as CodeChannel,isLinked: null == isLinked ? _self.isLinked : isLinked // ignore: cast_nullable_to_non_nullable
as bool,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$NotificationTopic {

 String get id;/// Server text in the request language.
 String get title; bool get isRequired; bool get isOn;
/// Create a copy of NotificationTopic
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationTopicCopyWith<NotificationTopic> get copyWith => _$NotificationTopicCopyWithImpl<NotificationTopic>(this as NotificationTopic, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationTopic&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.isRequired, isRequired) || other.isRequired == isRequired)&&(identical(other.isOn, isOn) || other.isOn == isOn));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,isRequired,isOn);

@override
String toString() {
  return 'NotificationTopic(id: $id, title: $title, isRequired: $isRequired, isOn: $isOn)';
}


}

/// @nodoc
abstract mixin class $NotificationTopicCopyWith<$Res>  {
  factory $NotificationTopicCopyWith(NotificationTopic value, $Res Function(NotificationTopic) _then) = _$NotificationTopicCopyWithImpl;
@useResult
$Res call({
 String id, String title, bool isRequired, bool isOn
});




}
/// @nodoc
class _$NotificationTopicCopyWithImpl<$Res>
    implements $NotificationTopicCopyWith<$Res> {
  _$NotificationTopicCopyWithImpl(this._self, this._then);

  final NotificationTopic _self;
  final $Res Function(NotificationTopic) _then;

/// Create a copy of NotificationTopic
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? isRequired = null,Object? isOn = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,isRequired: null == isRequired ? _self.isRequired : isRequired // ignore: cast_nullable_to_non_nullable
as bool,isOn: null == isOn ? _self.isOn : isOn // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationTopic].
extension NotificationTopicPatterns on NotificationTopic {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationTopic value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationTopic() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationTopic value)  $default,){
final _that = this;
switch (_that) {
case _NotificationTopic():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationTopic value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationTopic() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  bool isRequired,  bool isOn)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationTopic() when $default != null:
return $default(_that.id,_that.title,_that.isRequired,_that.isOn);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  bool isRequired,  bool isOn)  $default,) {final _that = this;
switch (_that) {
case _NotificationTopic():
return $default(_that.id,_that.title,_that.isRequired,_that.isOn);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  bool isRequired,  bool isOn)?  $default,) {final _that = this;
switch (_that) {
case _NotificationTopic() when $default != null:
return $default(_that.id,_that.title,_that.isRequired,_that.isOn);case _:
  return null;

}
}

}

/// @nodoc


class _NotificationTopic implements NotificationTopic {
  const _NotificationTopic({required this.id, required this.title, required this.isRequired, required this.isOn});
  

@override final  String id;
/// Server text in the request language.
@override final  String title;
@override final  bool isRequired;
@override final  bool isOn;

/// Create a copy of NotificationTopic
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationTopicCopyWith<_NotificationTopic> get copyWith => __$NotificationTopicCopyWithImpl<_NotificationTopic>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationTopic&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.isRequired, isRequired) || other.isRequired == isRequired)&&(identical(other.isOn, isOn) || other.isOn == isOn));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,isRequired,isOn);

@override
String toString() {
  return 'NotificationTopic(id: $id, title: $title, isRequired: $isRequired, isOn: $isOn)';
}


}

/// @nodoc
abstract mixin class _$NotificationTopicCopyWith<$Res> implements $NotificationTopicCopyWith<$Res> {
  factory _$NotificationTopicCopyWith(_NotificationTopic value, $Res Function(_NotificationTopic) _then) = __$NotificationTopicCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, bool isRequired, bool isOn
});




}
/// @nodoc
class __$NotificationTopicCopyWithImpl<$Res>
    implements _$NotificationTopicCopyWith<$Res> {
  __$NotificationTopicCopyWithImpl(this._self, this._then);

  final _NotificationTopic _self;
  final $Res Function(_NotificationTopic) _then;

/// Create a copy of NotificationTopic
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? isRequired = null,Object? isOn = null,}) {
  return _then(_NotificationTopic(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,isRequired: null == isRequired ? _self.isRequired : isRequired // ignore: cast_nullable_to_non_nullable
as bool,isOn: null == isOn ? _self.isOn : isOn // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$CodeRequest {

 String get requestId; int get codeLength;
/// Create a copy of CodeRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CodeRequestCopyWith<CodeRequest> get copyWith => _$CodeRequestCopyWithImpl<CodeRequest>(this as CodeRequest, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CodeRequest&&(identical(other.requestId, requestId) || other.requestId == requestId)&&(identical(other.codeLength, codeLength) || other.codeLength == codeLength));
}


@override
int get hashCode => Object.hash(runtimeType,requestId,codeLength);

@override
String toString() {
  return 'CodeRequest(requestId: $requestId, codeLength: $codeLength)';
}


}

/// @nodoc
abstract mixin class $CodeRequestCopyWith<$Res>  {
  factory $CodeRequestCopyWith(CodeRequest value, $Res Function(CodeRequest) _then) = _$CodeRequestCopyWithImpl;
@useResult
$Res call({
 String requestId, int codeLength
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
@pragma('vm:prefer-inline') @override $Res call({Object? requestId = null,Object? codeLength = null,}) {
  return _then(_self.copyWith(
requestId: null == requestId ? _self.requestId : requestId // ignore: cast_nullable_to_non_nullable
as String,codeLength: null == codeLength ? _self.codeLength : codeLength // ignore: cast_nullable_to_non_nullable
as int,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String requestId,  int codeLength)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CodeRequest() when $default != null:
return $default(_that.requestId,_that.codeLength);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String requestId,  int codeLength)  $default,) {final _that = this;
switch (_that) {
case _CodeRequest():
return $default(_that.requestId,_that.codeLength);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String requestId,  int codeLength)?  $default,) {final _that = this;
switch (_that) {
case _CodeRequest() when $default != null:
return $default(_that.requestId,_that.codeLength);case _:
  return null;

}
}

}

/// @nodoc


class _CodeRequest implements CodeRequest {
  const _CodeRequest({required this.requestId, required this.codeLength});
  

@override final  String requestId;
@override final  int codeLength;

/// Create a copy of CodeRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CodeRequestCopyWith<_CodeRequest> get copyWith => __$CodeRequestCopyWithImpl<_CodeRequest>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CodeRequest&&(identical(other.requestId, requestId) || other.requestId == requestId)&&(identical(other.codeLength, codeLength) || other.codeLength == codeLength));
}


@override
int get hashCode => Object.hash(runtimeType,requestId,codeLength);

@override
String toString() {
  return 'CodeRequest(requestId: $requestId, codeLength: $codeLength)';
}


}

/// @nodoc
abstract mixin class _$CodeRequestCopyWith<$Res> implements $CodeRequestCopyWith<$Res> {
  factory _$CodeRequestCopyWith(_CodeRequest value, $Res Function(_CodeRequest) _then) = __$CodeRequestCopyWithImpl;
@override @useResult
$Res call({
 String requestId, int codeLength
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
@override @pragma('vm:prefer-inline') $Res call({Object? requestId = null,Object? codeLength = null,}) {
  return _then(_CodeRequest(
requestId: null == requestId ? _self.requestId : requestId // ignore: cast_nullable_to_non_nullable
as String,codeLength: null == codeLength ? _self.codeLength : codeLength // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$TelegramLink {

 String get bot; String get code;
/// Create a copy of TelegramLink
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TelegramLinkCopyWith<TelegramLink> get copyWith => _$TelegramLinkCopyWithImpl<TelegramLink>(this as TelegramLink, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TelegramLink&&(identical(other.bot, bot) || other.bot == bot)&&(identical(other.code, code) || other.code == code));
}


@override
int get hashCode => Object.hash(runtimeType,bot,code);

@override
String toString() {
  return 'TelegramLink(bot: $bot, code: $code)';
}


}

/// @nodoc
abstract mixin class $TelegramLinkCopyWith<$Res>  {
  factory $TelegramLinkCopyWith(TelegramLink value, $Res Function(TelegramLink) _then) = _$TelegramLinkCopyWithImpl;
@useResult
$Res call({
 String bot, String code
});




}
/// @nodoc
class _$TelegramLinkCopyWithImpl<$Res>
    implements $TelegramLinkCopyWith<$Res> {
  _$TelegramLinkCopyWithImpl(this._self, this._then);

  final TelegramLink _self;
  final $Res Function(TelegramLink) _then;

/// Create a copy of TelegramLink
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bot = null,Object? code = null,}) {
  return _then(_self.copyWith(
bot: null == bot ? _self.bot : bot // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TelegramLink].
extension TelegramLinkPatterns on TelegramLink {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TelegramLink value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TelegramLink() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TelegramLink value)  $default,){
final _that = this;
switch (_that) {
case _TelegramLink():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TelegramLink value)?  $default,){
final _that = this;
switch (_that) {
case _TelegramLink() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String bot,  String code)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TelegramLink() when $default != null:
return $default(_that.bot,_that.code);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String bot,  String code)  $default,) {final _that = this;
switch (_that) {
case _TelegramLink():
return $default(_that.bot,_that.code);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String bot,  String code)?  $default,) {final _that = this;
switch (_that) {
case _TelegramLink() when $default != null:
return $default(_that.bot,_that.code);case _:
  return null;

}
}

}

/// @nodoc


class _TelegramLink implements TelegramLink {
  const _TelegramLink({required this.bot, required this.code});
  

@override final  String bot;
@override final  String code;

/// Create a copy of TelegramLink
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TelegramLinkCopyWith<_TelegramLink> get copyWith => __$TelegramLinkCopyWithImpl<_TelegramLink>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TelegramLink&&(identical(other.bot, bot) || other.bot == bot)&&(identical(other.code, code) || other.code == code));
}


@override
int get hashCode => Object.hash(runtimeType,bot,code);

@override
String toString() {
  return 'TelegramLink(bot: $bot, code: $code)';
}


}

/// @nodoc
abstract mixin class _$TelegramLinkCopyWith<$Res> implements $TelegramLinkCopyWith<$Res> {
  factory _$TelegramLinkCopyWith(_TelegramLink value, $Res Function(_TelegramLink) _then) = __$TelegramLinkCopyWithImpl;
@override @useResult
$Res call({
 String bot, String code
});




}
/// @nodoc
class __$TelegramLinkCopyWithImpl<$Res>
    implements _$TelegramLinkCopyWith<$Res> {
  __$TelegramLinkCopyWithImpl(this._self, this._then);

  final _TelegramLink _self;
  final $Res Function(_TelegramLink) _then;

/// Create a copy of TelegramLink
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bot = null,Object? code = null,}) {
  return _then(_TelegramLink(
bot: null == bot ? _self.bot : bot // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$DeletionCheck {

 int get activeOrders; int get debt; int get balance; bool get canDelete;/// Server text when [canDelete] is false.
 String? get blockReason;
/// Create a copy of DeletionCheck
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeletionCheckCopyWith<DeletionCheck> get copyWith => _$DeletionCheckCopyWithImpl<DeletionCheck>(this as DeletionCheck, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeletionCheck&&(identical(other.activeOrders, activeOrders) || other.activeOrders == activeOrders)&&(identical(other.debt, debt) || other.debt == debt)&&(identical(other.balance, balance) || other.balance == balance)&&(identical(other.canDelete, canDelete) || other.canDelete == canDelete)&&(identical(other.blockReason, blockReason) || other.blockReason == blockReason));
}


@override
int get hashCode => Object.hash(runtimeType,activeOrders,debt,balance,canDelete,blockReason);

@override
String toString() {
  return 'DeletionCheck(activeOrders: $activeOrders, debt: $debt, balance: $balance, canDelete: $canDelete, blockReason: $blockReason)';
}


}

/// @nodoc
abstract mixin class $DeletionCheckCopyWith<$Res>  {
  factory $DeletionCheckCopyWith(DeletionCheck value, $Res Function(DeletionCheck) _then) = _$DeletionCheckCopyWithImpl;
@useResult
$Res call({
 int activeOrders, int debt, int balance, bool canDelete, String? blockReason
});




}
/// @nodoc
class _$DeletionCheckCopyWithImpl<$Res>
    implements $DeletionCheckCopyWith<$Res> {
  _$DeletionCheckCopyWithImpl(this._self, this._then);

  final DeletionCheck _self;
  final $Res Function(DeletionCheck) _then;

/// Create a copy of DeletionCheck
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? activeOrders = null,Object? debt = null,Object? balance = null,Object? canDelete = null,Object? blockReason = freezed,}) {
  return _then(_self.copyWith(
activeOrders: null == activeOrders ? _self.activeOrders : activeOrders // ignore: cast_nullable_to_non_nullable
as int,debt: null == debt ? _self.debt : debt // ignore: cast_nullable_to_non_nullable
as int,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as int,canDelete: null == canDelete ? _self.canDelete : canDelete // ignore: cast_nullable_to_non_nullable
as bool,blockReason: freezed == blockReason ? _self.blockReason : blockReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DeletionCheck].
extension DeletionCheckPatterns on DeletionCheck {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeletionCheck value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeletionCheck() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeletionCheck value)  $default,){
final _that = this;
switch (_that) {
case _DeletionCheck():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeletionCheck value)?  $default,){
final _that = this;
switch (_that) {
case _DeletionCheck() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int activeOrders,  int debt,  int balance,  bool canDelete,  String? blockReason)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeletionCheck() when $default != null:
return $default(_that.activeOrders,_that.debt,_that.balance,_that.canDelete,_that.blockReason);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int activeOrders,  int debt,  int balance,  bool canDelete,  String? blockReason)  $default,) {final _that = this;
switch (_that) {
case _DeletionCheck():
return $default(_that.activeOrders,_that.debt,_that.balance,_that.canDelete,_that.blockReason);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int activeOrders,  int debt,  int balance,  bool canDelete,  String? blockReason)?  $default,) {final _that = this;
switch (_that) {
case _DeletionCheck() when $default != null:
return $default(_that.activeOrders,_that.debt,_that.balance,_that.canDelete,_that.blockReason);case _:
  return null;

}
}

}

/// @nodoc


class _DeletionCheck implements DeletionCheck {
  const _DeletionCheck({required this.activeOrders, required this.debt, required this.balance, required this.canDelete, this.blockReason});
  

@override final  int activeOrders;
@override final  int debt;
@override final  int balance;
@override final  bool canDelete;
/// Server text when [canDelete] is false.
@override final  String? blockReason;

/// Create a copy of DeletionCheck
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeletionCheckCopyWith<_DeletionCheck> get copyWith => __$DeletionCheckCopyWithImpl<_DeletionCheck>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeletionCheck&&(identical(other.activeOrders, activeOrders) || other.activeOrders == activeOrders)&&(identical(other.debt, debt) || other.debt == debt)&&(identical(other.balance, balance) || other.balance == balance)&&(identical(other.canDelete, canDelete) || other.canDelete == canDelete)&&(identical(other.blockReason, blockReason) || other.blockReason == blockReason));
}


@override
int get hashCode => Object.hash(runtimeType,activeOrders,debt,balance,canDelete,blockReason);

@override
String toString() {
  return 'DeletionCheck(activeOrders: $activeOrders, debt: $debt, balance: $balance, canDelete: $canDelete, blockReason: $blockReason)';
}


}

/// @nodoc
abstract mixin class _$DeletionCheckCopyWith<$Res> implements $DeletionCheckCopyWith<$Res> {
  factory _$DeletionCheckCopyWith(_DeletionCheck value, $Res Function(_DeletionCheck) _then) = __$DeletionCheckCopyWithImpl;
@override @useResult
$Res call({
 int activeOrders, int debt, int balance, bool canDelete, String? blockReason
});




}
/// @nodoc
class __$DeletionCheckCopyWithImpl<$Res>
    implements _$DeletionCheckCopyWith<$Res> {
  __$DeletionCheckCopyWithImpl(this._self, this._then);

  final _DeletionCheck _self;
  final $Res Function(_DeletionCheck) _then;

/// Create a copy of DeletionCheck
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? activeOrders = null,Object? debt = null,Object? balance = null,Object? canDelete = null,Object? blockReason = freezed,}) {
  return _then(_DeletionCheck(
activeOrders: null == activeOrders ? _self.activeOrders : activeOrders // ignore: cast_nullable_to_non_nullable
as int,debt: null == debt ? _self.debt : debt // ignore: cast_nullable_to_non_nullable
as int,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as int,canDelete: null == canDelete ? _self.canDelete : canDelete // ignore: cast_nullable_to_non_nullable
as bool,blockReason: freezed == blockReason ? _self.blockReason : blockReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
