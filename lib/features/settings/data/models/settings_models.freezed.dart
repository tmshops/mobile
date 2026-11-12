// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AccountSettingsModel {

 String get codeChannel; List<ChannelModel> get channels; List<TopicModel> get notifications;
/// Create a copy of AccountSettingsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccountSettingsModelCopyWith<AccountSettingsModel> get copyWith => _$AccountSettingsModelCopyWithImpl<AccountSettingsModel>(this as AccountSettingsModel, _$identity);

  /// Serializes this AccountSettingsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccountSettingsModel&&(identical(other.codeChannel, codeChannel) || other.codeChannel == codeChannel)&&const DeepCollectionEquality().equals(other.channels, channels)&&const DeepCollectionEquality().equals(other.notifications, notifications));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,codeChannel,const DeepCollectionEquality().hash(channels),const DeepCollectionEquality().hash(notifications));

@override
String toString() {
  return 'AccountSettingsModel(codeChannel: $codeChannel, channels: $channels, notifications: $notifications)';
}


}

/// @nodoc
abstract mixin class $AccountSettingsModelCopyWith<$Res>  {
  factory $AccountSettingsModelCopyWith(AccountSettingsModel value, $Res Function(AccountSettingsModel) _then) = _$AccountSettingsModelCopyWithImpl;
@useResult
$Res call({
 String codeChannel, List<ChannelModel> channels, List<TopicModel> notifications
});




}
/// @nodoc
class _$AccountSettingsModelCopyWithImpl<$Res>
    implements $AccountSettingsModelCopyWith<$Res> {
  _$AccountSettingsModelCopyWithImpl(this._self, this._then);

  final AccountSettingsModel _self;
  final $Res Function(AccountSettingsModel) _then;

/// Create a copy of AccountSettingsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? codeChannel = null,Object? channels = null,Object? notifications = null,}) {
  return _then(_self.copyWith(
codeChannel: null == codeChannel ? _self.codeChannel : codeChannel // ignore: cast_nullable_to_non_nullable
as String,channels: null == channels ? _self.channels : channels // ignore: cast_nullable_to_non_nullable
as List<ChannelModel>,notifications: null == notifications ? _self.notifications : notifications // ignore: cast_nullable_to_non_nullable
as List<TopicModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [AccountSettingsModel].
extension AccountSettingsModelPatterns on AccountSettingsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AccountSettingsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AccountSettingsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AccountSettingsModel value)  $default,){
final _that = this;
switch (_that) {
case _AccountSettingsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AccountSettingsModel value)?  $default,){
final _that = this;
switch (_that) {
case _AccountSettingsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String codeChannel,  List<ChannelModel> channels,  List<TopicModel> notifications)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AccountSettingsModel() when $default != null:
return $default(_that.codeChannel,_that.channels,_that.notifications);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String codeChannel,  List<ChannelModel> channels,  List<TopicModel> notifications)  $default,) {final _that = this;
switch (_that) {
case _AccountSettingsModel():
return $default(_that.codeChannel,_that.channels,_that.notifications);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String codeChannel,  List<ChannelModel> channels,  List<TopicModel> notifications)?  $default,) {final _that = this;
switch (_that) {
case _AccountSettingsModel() when $default != null:
return $default(_that.codeChannel,_that.channels,_that.notifications);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AccountSettingsModel implements AccountSettingsModel {
  const _AccountSettingsModel({required this.codeChannel, required final  List<ChannelModel> channels, required final  List<TopicModel> notifications}): _channels = channels,_notifications = notifications;
  factory _AccountSettingsModel.fromJson(Map<String, dynamic> json) => _$AccountSettingsModelFromJson(json);

@override final  String codeChannel;
 final  List<ChannelModel> _channels;
@override List<ChannelModel> get channels {
  if (_channels is EqualUnmodifiableListView) return _channels;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_channels);
}

 final  List<TopicModel> _notifications;
@override List<TopicModel> get notifications {
  if (_notifications is EqualUnmodifiableListView) return _notifications;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_notifications);
}


/// Create a copy of AccountSettingsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AccountSettingsModelCopyWith<_AccountSettingsModel> get copyWith => __$AccountSettingsModelCopyWithImpl<_AccountSettingsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AccountSettingsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AccountSettingsModel&&(identical(other.codeChannel, codeChannel) || other.codeChannel == codeChannel)&&const DeepCollectionEquality().equals(other._channels, _channels)&&const DeepCollectionEquality().equals(other._notifications, _notifications));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,codeChannel,const DeepCollectionEquality().hash(_channels),const DeepCollectionEquality().hash(_notifications));

@override
String toString() {
  return 'AccountSettingsModel(codeChannel: $codeChannel, channels: $channels, notifications: $notifications)';
}


}

/// @nodoc
abstract mixin class _$AccountSettingsModelCopyWith<$Res> implements $AccountSettingsModelCopyWith<$Res> {
  factory _$AccountSettingsModelCopyWith(_AccountSettingsModel value, $Res Function(_AccountSettingsModel) _then) = __$AccountSettingsModelCopyWithImpl;
@override @useResult
$Res call({
 String codeChannel, List<ChannelModel> channels, List<TopicModel> notifications
});




}
/// @nodoc
class __$AccountSettingsModelCopyWithImpl<$Res>
    implements _$AccountSettingsModelCopyWith<$Res> {
  __$AccountSettingsModelCopyWithImpl(this._self, this._then);

  final _AccountSettingsModel _self;
  final $Res Function(_AccountSettingsModel) _then;

/// Create a copy of AccountSettingsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? codeChannel = null,Object? channels = null,Object? notifications = null,}) {
  return _then(_AccountSettingsModel(
codeChannel: null == codeChannel ? _self.codeChannel : codeChannel // ignore: cast_nullable_to_non_nullable
as String,channels: null == channels ? _self._channels : channels // ignore: cast_nullable_to_non_nullable
as List<ChannelModel>,notifications: null == notifications ? _self._notifications : notifications // ignore: cast_nullable_to_non_nullable
as List<TopicModel>,
  ));
}


}


/// @nodoc
mixin _$ChannelModel {

 String get id; bool get isLinked; String? get address;
/// Create a copy of ChannelModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChannelModelCopyWith<ChannelModel> get copyWith => _$ChannelModelCopyWithImpl<ChannelModel>(this as ChannelModel, _$identity);

  /// Serializes this ChannelModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChannelModel&&(identical(other.id, id) || other.id == id)&&(identical(other.isLinked, isLinked) || other.isLinked == isLinked)&&(identical(other.address, address) || other.address == address));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,isLinked,address);

@override
String toString() {
  return 'ChannelModel(id: $id, isLinked: $isLinked, address: $address)';
}


}

/// @nodoc
abstract mixin class $ChannelModelCopyWith<$Res>  {
  factory $ChannelModelCopyWith(ChannelModel value, $Res Function(ChannelModel) _then) = _$ChannelModelCopyWithImpl;
@useResult
$Res call({
 String id, bool isLinked, String? address
});




}
/// @nodoc
class _$ChannelModelCopyWithImpl<$Res>
    implements $ChannelModelCopyWith<$Res> {
  _$ChannelModelCopyWithImpl(this._self, this._then);

  final ChannelModel _self;
  final $Res Function(ChannelModel) _then;

/// Create a copy of ChannelModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? isLinked = null,Object? address = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,isLinked: null == isLinked ? _self.isLinked : isLinked // ignore: cast_nullable_to_non_nullable
as bool,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ChannelModel].
extension ChannelModelPatterns on ChannelModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChannelModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChannelModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChannelModel value)  $default,){
final _that = this;
switch (_that) {
case _ChannelModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChannelModel value)?  $default,){
final _that = this;
switch (_that) {
case _ChannelModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  bool isLinked,  String? address)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChannelModel() when $default != null:
return $default(_that.id,_that.isLinked,_that.address);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  bool isLinked,  String? address)  $default,) {final _that = this;
switch (_that) {
case _ChannelModel():
return $default(_that.id,_that.isLinked,_that.address);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  bool isLinked,  String? address)?  $default,) {final _that = this;
switch (_that) {
case _ChannelModel() when $default != null:
return $default(_that.id,_that.isLinked,_that.address);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChannelModel implements ChannelModel {
  const _ChannelModel({required this.id, required this.isLinked, this.address});
  factory _ChannelModel.fromJson(Map<String, dynamic> json) => _$ChannelModelFromJson(json);

@override final  String id;
@override final  bool isLinked;
@override final  String? address;

/// Create a copy of ChannelModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChannelModelCopyWith<_ChannelModel> get copyWith => __$ChannelModelCopyWithImpl<_ChannelModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChannelModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChannelModel&&(identical(other.id, id) || other.id == id)&&(identical(other.isLinked, isLinked) || other.isLinked == isLinked)&&(identical(other.address, address) || other.address == address));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,isLinked,address);

@override
String toString() {
  return 'ChannelModel(id: $id, isLinked: $isLinked, address: $address)';
}


}

/// @nodoc
abstract mixin class _$ChannelModelCopyWith<$Res> implements $ChannelModelCopyWith<$Res> {
  factory _$ChannelModelCopyWith(_ChannelModel value, $Res Function(_ChannelModel) _then) = __$ChannelModelCopyWithImpl;
@override @useResult
$Res call({
 String id, bool isLinked, String? address
});




}
/// @nodoc
class __$ChannelModelCopyWithImpl<$Res>
    implements _$ChannelModelCopyWith<$Res> {
  __$ChannelModelCopyWithImpl(this._self, this._then);

  final _ChannelModel _self;
  final $Res Function(_ChannelModel) _then;

/// Create a copy of ChannelModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? isLinked = null,Object? address = freezed,}) {
  return _then(_ChannelModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,isLinked: null == isLinked ? _self.isLinked : isLinked // ignore: cast_nullable_to_non_nullable
as bool,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$TopicModel {

 String get id; String get title; bool get isRequired; bool get isOn;
/// Create a copy of TopicModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TopicModelCopyWith<TopicModel> get copyWith => _$TopicModelCopyWithImpl<TopicModel>(this as TopicModel, _$identity);

  /// Serializes this TopicModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TopicModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.isRequired, isRequired) || other.isRequired == isRequired)&&(identical(other.isOn, isOn) || other.isOn == isOn));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,isRequired,isOn);

@override
String toString() {
  return 'TopicModel(id: $id, title: $title, isRequired: $isRequired, isOn: $isOn)';
}


}

/// @nodoc
abstract mixin class $TopicModelCopyWith<$Res>  {
  factory $TopicModelCopyWith(TopicModel value, $Res Function(TopicModel) _then) = _$TopicModelCopyWithImpl;
@useResult
$Res call({
 String id, String title, bool isRequired, bool isOn
});




}
/// @nodoc
class _$TopicModelCopyWithImpl<$Res>
    implements $TopicModelCopyWith<$Res> {
  _$TopicModelCopyWithImpl(this._self, this._then);

  final TopicModel _self;
  final $Res Function(TopicModel) _then;

/// Create a copy of TopicModel
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


/// Adds pattern-matching-related methods to [TopicModel].
extension TopicModelPatterns on TopicModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TopicModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TopicModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TopicModel value)  $default,){
final _that = this;
switch (_that) {
case _TopicModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TopicModel value)?  $default,){
final _that = this;
switch (_that) {
case _TopicModel() when $default != null:
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
case _TopicModel() when $default != null:
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
case _TopicModel():
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
case _TopicModel() when $default != null:
return $default(_that.id,_that.title,_that.isRequired,_that.isOn);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TopicModel implements TopicModel {
  const _TopicModel({required this.id, required this.title, required this.isRequired, required this.isOn});
  factory _TopicModel.fromJson(Map<String, dynamic> json) => _$TopicModelFromJson(json);

@override final  String id;
@override final  String title;
@override final  bool isRequired;
@override final  bool isOn;

/// Create a copy of TopicModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TopicModelCopyWith<_TopicModel> get copyWith => __$TopicModelCopyWithImpl<_TopicModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TopicModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TopicModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.isRequired, isRequired) || other.isRequired == isRequired)&&(identical(other.isOn, isOn) || other.isOn == isOn));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,isRequired,isOn);

@override
String toString() {
  return 'TopicModel(id: $id, title: $title, isRequired: $isRequired, isOn: $isOn)';
}


}

/// @nodoc
abstract mixin class _$TopicModelCopyWith<$Res> implements $TopicModelCopyWith<$Res> {
  factory _$TopicModelCopyWith(_TopicModel value, $Res Function(_TopicModel) _then) = __$TopicModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, bool isRequired, bool isOn
});




}
/// @nodoc
class __$TopicModelCopyWithImpl<$Res>
    implements _$TopicModelCopyWith<$Res> {
  __$TopicModelCopyWithImpl(this._self, this._then);

  final _TopicModel _self;
  final $Res Function(_TopicModel) _then;

/// Create a copy of TopicModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? isRequired = null,Object? isOn = null,}) {
  return _then(_TopicModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,isRequired: null == isRequired ? _self.isRequired : isRequired // ignore: cast_nullable_to_non_nullable
as bool,isOn: null == isOn ? _self.isOn : isOn // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$DeletionCheckModel {

 int get activeOrders; int get debt; int get balance; bool get canDelete; String? get blockReason;
/// Create a copy of DeletionCheckModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeletionCheckModelCopyWith<DeletionCheckModel> get copyWith => _$DeletionCheckModelCopyWithImpl<DeletionCheckModel>(this as DeletionCheckModel, _$identity);

  /// Serializes this DeletionCheckModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeletionCheckModel&&(identical(other.activeOrders, activeOrders) || other.activeOrders == activeOrders)&&(identical(other.debt, debt) || other.debt == debt)&&(identical(other.balance, balance) || other.balance == balance)&&(identical(other.canDelete, canDelete) || other.canDelete == canDelete)&&(identical(other.blockReason, blockReason) || other.blockReason == blockReason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,activeOrders,debt,balance,canDelete,blockReason);

@override
String toString() {
  return 'DeletionCheckModel(activeOrders: $activeOrders, debt: $debt, balance: $balance, canDelete: $canDelete, blockReason: $blockReason)';
}


}

/// @nodoc
abstract mixin class $DeletionCheckModelCopyWith<$Res>  {
  factory $DeletionCheckModelCopyWith(DeletionCheckModel value, $Res Function(DeletionCheckModel) _then) = _$DeletionCheckModelCopyWithImpl;
@useResult
$Res call({
 int activeOrders, int debt, int balance, bool canDelete, String? blockReason
});




}
/// @nodoc
class _$DeletionCheckModelCopyWithImpl<$Res>
    implements $DeletionCheckModelCopyWith<$Res> {
  _$DeletionCheckModelCopyWithImpl(this._self, this._then);

  final DeletionCheckModel _self;
  final $Res Function(DeletionCheckModel) _then;

/// Create a copy of DeletionCheckModel
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


/// Adds pattern-matching-related methods to [DeletionCheckModel].
extension DeletionCheckModelPatterns on DeletionCheckModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeletionCheckModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeletionCheckModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeletionCheckModel value)  $default,){
final _that = this;
switch (_that) {
case _DeletionCheckModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeletionCheckModel value)?  $default,){
final _that = this;
switch (_that) {
case _DeletionCheckModel() when $default != null:
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
case _DeletionCheckModel() when $default != null:
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
case _DeletionCheckModel():
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
case _DeletionCheckModel() when $default != null:
return $default(_that.activeOrders,_that.debt,_that.balance,_that.canDelete,_that.blockReason);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeletionCheckModel implements DeletionCheckModel {
  const _DeletionCheckModel({required this.activeOrders, required this.debt, required this.balance, required this.canDelete, this.blockReason});
  factory _DeletionCheckModel.fromJson(Map<String, dynamic> json) => _$DeletionCheckModelFromJson(json);

@override final  int activeOrders;
@override final  int debt;
@override final  int balance;
@override final  bool canDelete;
@override final  String? blockReason;

/// Create a copy of DeletionCheckModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeletionCheckModelCopyWith<_DeletionCheckModel> get copyWith => __$DeletionCheckModelCopyWithImpl<_DeletionCheckModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeletionCheckModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeletionCheckModel&&(identical(other.activeOrders, activeOrders) || other.activeOrders == activeOrders)&&(identical(other.debt, debt) || other.debt == debt)&&(identical(other.balance, balance) || other.balance == balance)&&(identical(other.canDelete, canDelete) || other.canDelete == canDelete)&&(identical(other.blockReason, blockReason) || other.blockReason == blockReason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,activeOrders,debt,balance,canDelete,blockReason);

@override
String toString() {
  return 'DeletionCheckModel(activeOrders: $activeOrders, debt: $debt, balance: $balance, canDelete: $canDelete, blockReason: $blockReason)';
}


}

/// @nodoc
abstract mixin class _$DeletionCheckModelCopyWith<$Res> implements $DeletionCheckModelCopyWith<$Res> {
  factory _$DeletionCheckModelCopyWith(_DeletionCheckModel value, $Res Function(_DeletionCheckModel) _then) = __$DeletionCheckModelCopyWithImpl;
@override @useResult
$Res call({
 int activeOrders, int debt, int balance, bool canDelete, String? blockReason
});




}
/// @nodoc
class __$DeletionCheckModelCopyWithImpl<$Res>
    implements _$DeletionCheckModelCopyWith<$Res> {
  __$DeletionCheckModelCopyWithImpl(this._self, this._then);

  final _DeletionCheckModel _self;
  final $Res Function(_DeletionCheckModel) _then;

/// Create a copy of DeletionCheckModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? activeOrders = null,Object? debt = null,Object? balance = null,Object? canDelete = null,Object? blockReason = freezed,}) {
  return _then(_DeletionCheckModel(
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
