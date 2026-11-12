// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppNotification {

 String get id; NotificationType get type;/// Server text in the request language.
 String get title; String get body; DateTime get at; bool get isRead;/// Where a tap leads, in the website link format (TZ §4), e.g.
/// `/account/orders/10228`.
 String? get route;/// Thumbnail for promotions.
 String? get imageUrl;
/// Create a copy of AppNotification
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppNotificationCopyWith<AppNotification> get copyWith => _$AppNotificationCopyWithImpl<AppNotification>(this as AppNotification, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppNotification&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&(identical(other.at, at) || other.at == at)&&(identical(other.isRead, isRead) || other.isRead == isRead)&&(identical(other.route, route) || other.route == route)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}


@override
int get hashCode => Object.hash(runtimeType,id,type,title,body,at,isRead,route,imageUrl);

@override
String toString() {
  return 'AppNotification(id: $id, type: $type, title: $title, body: $body, at: $at, isRead: $isRead, route: $route, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class $AppNotificationCopyWith<$Res>  {
  factory $AppNotificationCopyWith(AppNotification value, $Res Function(AppNotification) _then) = _$AppNotificationCopyWithImpl;
@useResult
$Res call({
 String id, NotificationType type, String title, String body, DateTime at, bool isRead, String? route, String? imageUrl
});




}
/// @nodoc
class _$AppNotificationCopyWithImpl<$Res>
    implements $AppNotificationCopyWith<$Res> {
  _$AppNotificationCopyWithImpl(this._self, this._then);

  final AppNotification _self;
  final $Res Function(AppNotification) _then;

/// Create a copy of AppNotification
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = null,Object? title = null,Object? body = null,Object? at = null,Object? isRead = null,Object? route = freezed,Object? imageUrl = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as NotificationType,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,at: null == at ? _self.at : at // ignore: cast_nullable_to_non_nullable
as DateTime,isRead: null == isRead ? _self.isRead : isRead // ignore: cast_nullable_to_non_nullable
as bool,route: freezed == route ? _self.route : route // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AppNotification].
extension AppNotificationPatterns on AppNotification {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppNotification value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppNotification() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppNotification value)  $default,){
final _that = this;
switch (_that) {
case _AppNotification():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppNotification value)?  $default,){
final _that = this;
switch (_that) {
case _AppNotification() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  NotificationType type,  String title,  String body,  DateTime at,  bool isRead,  String? route,  String? imageUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppNotification() when $default != null:
return $default(_that.id,_that.type,_that.title,_that.body,_that.at,_that.isRead,_that.route,_that.imageUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  NotificationType type,  String title,  String body,  DateTime at,  bool isRead,  String? route,  String? imageUrl)  $default,) {final _that = this;
switch (_that) {
case _AppNotification():
return $default(_that.id,_that.type,_that.title,_that.body,_that.at,_that.isRead,_that.route,_that.imageUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  NotificationType type,  String title,  String body,  DateTime at,  bool isRead,  String? route,  String? imageUrl)?  $default,) {final _that = this;
switch (_that) {
case _AppNotification() when $default != null:
return $default(_that.id,_that.type,_that.title,_that.body,_that.at,_that.isRead,_that.route,_that.imageUrl);case _:
  return null;

}
}

}

/// @nodoc


class _AppNotification implements AppNotification {
  const _AppNotification({required this.id, required this.type, required this.title, required this.body, required this.at, required this.isRead, this.route, this.imageUrl});
  

@override final  String id;
@override final  NotificationType type;
/// Server text in the request language.
@override final  String title;
@override final  String body;
@override final  DateTime at;
@override final  bool isRead;
/// Where a tap leads, in the website link format (TZ §4), e.g.
/// `/account/orders/10228`.
@override final  String? route;
/// Thumbnail for promotions.
@override final  String? imageUrl;

/// Create a copy of AppNotification
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppNotificationCopyWith<_AppNotification> get copyWith => __$AppNotificationCopyWithImpl<_AppNotification>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppNotification&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&(identical(other.at, at) || other.at == at)&&(identical(other.isRead, isRead) || other.isRead == isRead)&&(identical(other.route, route) || other.route == route)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}


@override
int get hashCode => Object.hash(runtimeType,id,type,title,body,at,isRead,route,imageUrl);

@override
String toString() {
  return 'AppNotification(id: $id, type: $type, title: $title, body: $body, at: $at, isRead: $isRead, route: $route, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class _$AppNotificationCopyWith<$Res> implements $AppNotificationCopyWith<$Res> {
  factory _$AppNotificationCopyWith(_AppNotification value, $Res Function(_AppNotification) _then) = __$AppNotificationCopyWithImpl;
@override @useResult
$Res call({
 String id, NotificationType type, String title, String body, DateTime at, bool isRead, String? route, String? imageUrl
});




}
/// @nodoc
class __$AppNotificationCopyWithImpl<$Res>
    implements _$AppNotificationCopyWith<$Res> {
  __$AppNotificationCopyWithImpl(this._self, this._then);

  final _AppNotification _self;
  final $Res Function(_AppNotification) _then;

/// Create a copy of AppNotification
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = null,Object? title = null,Object? body = null,Object? at = null,Object? isRead = null,Object? route = freezed,Object? imageUrl = freezed,}) {
  return _then(_AppNotification(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as NotificationType,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,at: null == at ? _self.at : at // ignore: cast_nullable_to_non_nullable
as DateTime,isRead: null == isRead ? _self.isRead : isRead // ignore: cast_nullable_to_non_nullable
as bool,route: freezed == route ? _self.route : route // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$NotificationsPage {

 List<AppNotification> get items; int get unreadCount; String? get nextCursor;
/// Create a copy of NotificationsPage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationsPageCopyWith<NotificationsPage> get copyWith => _$NotificationsPageCopyWithImpl<NotificationsPage>(this as NotificationsPage, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationsPage&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.unreadCount, unreadCount) || other.unreadCount == unreadCount)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),unreadCount,nextCursor);

@override
String toString() {
  return 'NotificationsPage(items: $items, unreadCount: $unreadCount, nextCursor: $nextCursor)';
}


}

/// @nodoc
abstract mixin class $NotificationsPageCopyWith<$Res>  {
  factory $NotificationsPageCopyWith(NotificationsPage value, $Res Function(NotificationsPage) _then) = _$NotificationsPageCopyWithImpl;
@useResult
$Res call({
 List<AppNotification> items, int unreadCount, String? nextCursor
});




}
/// @nodoc
class _$NotificationsPageCopyWithImpl<$Res>
    implements $NotificationsPageCopyWith<$Res> {
  _$NotificationsPageCopyWithImpl(this._self, this._then);

  final NotificationsPage _self;
  final $Res Function(NotificationsPage) _then;

/// Create a copy of NotificationsPage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? unreadCount = null,Object? nextCursor = freezed,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<AppNotification>,unreadCount: null == unreadCount ? _self.unreadCount : unreadCount // ignore: cast_nullable_to_non_nullable
as int,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationsPage].
extension NotificationsPagePatterns on NotificationsPage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationsPage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationsPage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationsPage value)  $default,){
final _that = this;
switch (_that) {
case _NotificationsPage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationsPage value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationsPage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<AppNotification> items,  int unreadCount,  String? nextCursor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationsPage() when $default != null:
return $default(_that.items,_that.unreadCount,_that.nextCursor);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<AppNotification> items,  int unreadCount,  String? nextCursor)  $default,) {final _that = this;
switch (_that) {
case _NotificationsPage():
return $default(_that.items,_that.unreadCount,_that.nextCursor);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<AppNotification> items,  int unreadCount,  String? nextCursor)?  $default,) {final _that = this;
switch (_that) {
case _NotificationsPage() when $default != null:
return $default(_that.items,_that.unreadCount,_that.nextCursor);case _:
  return null;

}
}

}

/// @nodoc


class _NotificationsPage implements NotificationsPage {
  const _NotificationsPage({required final  List<AppNotification> items, required this.unreadCount, this.nextCursor}): _items = items;
  

 final  List<AppNotification> _items;
@override List<AppNotification> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  int unreadCount;
@override final  String? nextCursor;

/// Create a copy of NotificationsPage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationsPageCopyWith<_NotificationsPage> get copyWith => __$NotificationsPageCopyWithImpl<_NotificationsPage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationsPage&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.unreadCount, unreadCount) || other.unreadCount == unreadCount)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),unreadCount,nextCursor);

@override
String toString() {
  return 'NotificationsPage(items: $items, unreadCount: $unreadCount, nextCursor: $nextCursor)';
}


}

/// @nodoc
abstract mixin class _$NotificationsPageCopyWith<$Res> implements $NotificationsPageCopyWith<$Res> {
  factory _$NotificationsPageCopyWith(_NotificationsPage value, $Res Function(_NotificationsPage) _then) = __$NotificationsPageCopyWithImpl;
@override @useResult
$Res call({
 List<AppNotification> items, int unreadCount, String? nextCursor
});




}
/// @nodoc
class __$NotificationsPageCopyWithImpl<$Res>
    implements _$NotificationsPageCopyWith<$Res> {
  __$NotificationsPageCopyWithImpl(this._self, this._then);

  final _NotificationsPage _self;
  final $Res Function(_NotificationsPage) _then;

/// Create a copy of NotificationsPage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? unreadCount = null,Object? nextCursor = freezed,}) {
  return _then(_NotificationsPage(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<AppNotification>,unreadCount: null == unreadCount ? _self.unreadCount : unreadCount // ignore: cast_nullable_to_non_nullable
as int,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
