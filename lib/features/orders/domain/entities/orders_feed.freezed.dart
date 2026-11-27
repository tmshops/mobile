// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_feed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OrdersOverview {

 Map<OrdersFilter, int> get counts;/// Newest first.
 List<TrackingUpdate> get tracking;
/// Create a copy of OrdersOverview
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrdersOverviewCopyWith<OrdersOverview> get copyWith => _$OrdersOverviewCopyWithImpl<OrdersOverview>(this as OrdersOverview, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrdersOverview&&const DeepCollectionEquality().equals(other.counts, counts)&&const DeepCollectionEquality().equals(other.tracking, tracking));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(counts),const DeepCollectionEquality().hash(tracking));

@override
String toString() {
  return 'OrdersOverview(counts: $counts, tracking: $tracking)';
}


}

/// @nodoc
abstract mixin class $OrdersOverviewCopyWith<$Res>  {
  factory $OrdersOverviewCopyWith(OrdersOverview value, $Res Function(OrdersOverview) _then) = _$OrdersOverviewCopyWithImpl;
@useResult
$Res call({
 Map<OrdersFilter, int> counts, List<TrackingUpdate> tracking
});




}
/// @nodoc
class _$OrdersOverviewCopyWithImpl<$Res>
    implements $OrdersOverviewCopyWith<$Res> {
  _$OrdersOverviewCopyWithImpl(this._self, this._then);

  final OrdersOverview _self;
  final $Res Function(OrdersOverview) _then;

/// Create a copy of OrdersOverview
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? counts = null,Object? tracking = null,}) {
  return _then(_self.copyWith(
counts: null == counts ? _self.counts : counts // ignore: cast_nullable_to_non_nullable
as Map<OrdersFilter, int>,tracking: null == tracking ? _self.tracking : tracking // ignore: cast_nullable_to_non_nullable
as List<TrackingUpdate>,
  ));
}

}


/// Adds pattern-matching-related methods to [OrdersOverview].
extension OrdersOverviewPatterns on OrdersOverview {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrdersOverview value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrdersOverview() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrdersOverview value)  $default,){
final _that = this;
switch (_that) {
case _OrdersOverview():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrdersOverview value)?  $default,){
final _that = this;
switch (_that) {
case _OrdersOverview() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Map<OrdersFilter, int> counts,  List<TrackingUpdate> tracking)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrdersOverview() when $default != null:
return $default(_that.counts,_that.tracking);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Map<OrdersFilter, int> counts,  List<TrackingUpdate> tracking)  $default,) {final _that = this;
switch (_that) {
case _OrdersOverview():
return $default(_that.counts,_that.tracking);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Map<OrdersFilter, int> counts,  List<TrackingUpdate> tracking)?  $default,) {final _that = this;
switch (_that) {
case _OrdersOverview() when $default != null:
return $default(_that.counts,_that.tracking);case _:
  return null;

}
}

}

/// @nodoc


class _OrdersOverview extends OrdersOverview {
  const _OrdersOverview({required final  Map<OrdersFilter, int> counts, required final  List<TrackingUpdate> tracking}): _counts = counts,_tracking = tracking,super._();
  

 final  Map<OrdersFilter, int> _counts;
@override Map<OrdersFilter, int> get counts {
  if (_counts is EqualUnmodifiableMapView) return _counts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_counts);
}

/// Newest first.
 final  List<TrackingUpdate> _tracking;
/// Newest first.
@override List<TrackingUpdate> get tracking {
  if (_tracking is EqualUnmodifiableListView) return _tracking;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tracking);
}


/// Create a copy of OrdersOverview
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrdersOverviewCopyWith<_OrdersOverview> get copyWith => __$OrdersOverviewCopyWithImpl<_OrdersOverview>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrdersOverview&&const DeepCollectionEquality().equals(other._counts, _counts)&&const DeepCollectionEquality().equals(other._tracking, _tracking));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_counts),const DeepCollectionEquality().hash(_tracking));

@override
String toString() {
  return 'OrdersOverview(counts: $counts, tracking: $tracking)';
}


}

/// @nodoc
abstract mixin class _$OrdersOverviewCopyWith<$Res> implements $OrdersOverviewCopyWith<$Res> {
  factory _$OrdersOverviewCopyWith(_OrdersOverview value, $Res Function(_OrdersOverview) _then) = __$OrdersOverviewCopyWithImpl;
@override @useResult
$Res call({
 Map<OrdersFilter, int> counts, List<TrackingUpdate> tracking
});




}
/// @nodoc
class __$OrdersOverviewCopyWithImpl<$Res>
    implements _$OrdersOverviewCopyWith<$Res> {
  __$OrdersOverviewCopyWithImpl(this._self, this._then);

  final _OrdersOverview _self;
  final $Res Function(_OrdersOverview) _then;

/// Create a copy of OrdersOverview
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? counts = null,Object? tracking = null,}) {
  return _then(_OrdersOverview(
counts: null == counts ? _self._counts : counts // ignore: cast_nullable_to_non_nullable
as Map<OrdersFilter, int>,tracking: null == tracking ? _self._tracking : tracking // ignore: cast_nullable_to_non_nullable
as List<TrackingUpdate>,
  ));
}


}

/// @nodoc
mixin _$TrackingUpdate {

 FeedKind get kind; String get number; String get imageUrl; Status get status; DateTime get at; String get text;
/// Create a copy of TrackingUpdate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TrackingUpdateCopyWith<TrackingUpdate> get copyWith => _$TrackingUpdateCopyWithImpl<TrackingUpdate>(this as TrackingUpdate, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrackingUpdate&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.number, number) || other.number == number)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.status, status) || other.status == status)&&(identical(other.at, at) || other.at == at)&&(identical(other.text, text) || other.text == text));
}


@override
int get hashCode => Object.hash(runtimeType,kind,number,imageUrl,status,at,text);

@override
String toString() {
  return 'TrackingUpdate(kind: $kind, number: $number, imageUrl: $imageUrl, status: $status, at: $at, text: $text)';
}


}

/// @nodoc
abstract mixin class $TrackingUpdateCopyWith<$Res>  {
  factory $TrackingUpdateCopyWith(TrackingUpdate value, $Res Function(TrackingUpdate) _then) = _$TrackingUpdateCopyWithImpl;
@useResult
$Res call({
 FeedKind kind, String number, String imageUrl, Status status, DateTime at, String text
});


$StatusCopyWith<$Res> get status;

}
/// @nodoc
class _$TrackingUpdateCopyWithImpl<$Res>
    implements $TrackingUpdateCopyWith<$Res> {
  _$TrackingUpdateCopyWithImpl(this._self, this._then);

  final TrackingUpdate _self;
  final $Res Function(TrackingUpdate) _then;

/// Create a copy of TrackingUpdate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? kind = null,Object? number = null,Object? imageUrl = null,Object? status = null,Object? at = null,Object? text = null,}) {
  return _then(_self.copyWith(
kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as FeedKind,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status,at: null == at ? _self.at : at // ignore: cast_nullable_to_non_nullable
as DateTime,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of TrackingUpdate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatusCopyWith<$Res> get status {
  
  return $StatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}


/// Adds pattern-matching-related methods to [TrackingUpdate].
extension TrackingUpdatePatterns on TrackingUpdate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TrackingUpdate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TrackingUpdate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TrackingUpdate value)  $default,){
final _that = this;
switch (_that) {
case _TrackingUpdate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TrackingUpdate value)?  $default,){
final _that = this;
switch (_that) {
case _TrackingUpdate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( FeedKind kind,  String number,  String imageUrl,  Status status,  DateTime at,  String text)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TrackingUpdate() when $default != null:
return $default(_that.kind,_that.number,_that.imageUrl,_that.status,_that.at,_that.text);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( FeedKind kind,  String number,  String imageUrl,  Status status,  DateTime at,  String text)  $default,) {final _that = this;
switch (_that) {
case _TrackingUpdate():
return $default(_that.kind,_that.number,_that.imageUrl,_that.status,_that.at,_that.text);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( FeedKind kind,  String number,  String imageUrl,  Status status,  DateTime at,  String text)?  $default,) {final _that = this;
switch (_that) {
case _TrackingUpdate() when $default != null:
return $default(_that.kind,_that.number,_that.imageUrl,_that.status,_that.at,_that.text);case _:
  return null;

}
}

}

/// @nodoc


class _TrackingUpdate implements TrackingUpdate {
  const _TrackingUpdate({required this.kind, required this.number, required this.imageUrl, required this.status, required this.at, required this.text});
  

@override final  FeedKind kind;
@override final  String number;
@override final  String imageUrl;
@override final  Status status;
@override final  DateTime at;
@override final  String text;

/// Create a copy of TrackingUpdate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TrackingUpdateCopyWith<_TrackingUpdate> get copyWith => __$TrackingUpdateCopyWithImpl<_TrackingUpdate>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TrackingUpdate&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.number, number) || other.number == number)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.status, status) || other.status == status)&&(identical(other.at, at) || other.at == at)&&(identical(other.text, text) || other.text == text));
}


@override
int get hashCode => Object.hash(runtimeType,kind,number,imageUrl,status,at,text);

@override
String toString() {
  return 'TrackingUpdate(kind: $kind, number: $number, imageUrl: $imageUrl, status: $status, at: $at, text: $text)';
}


}

/// @nodoc
abstract mixin class _$TrackingUpdateCopyWith<$Res> implements $TrackingUpdateCopyWith<$Res> {
  factory _$TrackingUpdateCopyWith(_TrackingUpdate value, $Res Function(_TrackingUpdate) _then) = __$TrackingUpdateCopyWithImpl;
@override @useResult
$Res call({
 FeedKind kind, String number, String imageUrl, Status status, DateTime at, String text
});


@override $StatusCopyWith<$Res> get status;

}
/// @nodoc
class __$TrackingUpdateCopyWithImpl<$Res>
    implements _$TrackingUpdateCopyWith<$Res> {
  __$TrackingUpdateCopyWithImpl(this._self, this._then);

  final _TrackingUpdate _self;
  final $Res Function(_TrackingUpdate) _then;

/// Create a copy of TrackingUpdate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? kind = null,Object? number = null,Object? imageUrl = null,Object? status = null,Object? at = null,Object? text = null,}) {
  return _then(_TrackingUpdate(
kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as FeedKind,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status,at: null == at ? _self.at : at // ignore: cast_nullable_to_non_nullable
as DateTime,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of TrackingUpdate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatusCopyWith<$Res> get status {
  
  return $StatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}

/// @nodoc
mixin _$FeedCard {

 FeedKind get kind; String get number; DateTime get createdAt; Status get status; List<FeedItem> get items; List<FeedAction> get actions;/// What to pay now: the order advance or the parcel surcharge.
 int? get amountDue;/// Grey tracking row («В пути · ожидается 24.11–28.11»).
 FeedTrack? get track;
/// Create a copy of FeedCard
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeedCardCopyWith<FeedCard> get copyWith => _$FeedCardCopyWithImpl<FeedCard>(this as FeedCard, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeedCard&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.number, number) || other.number == number)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.items, items)&&const DeepCollectionEquality().equals(other.actions, actions)&&(identical(other.amountDue, amountDue) || other.amountDue == amountDue)&&(identical(other.track, track) || other.track == track));
}


@override
int get hashCode => Object.hash(runtimeType,kind,number,createdAt,status,const DeepCollectionEquality().hash(items),const DeepCollectionEquality().hash(actions),amountDue,track);

@override
String toString() {
  return 'FeedCard(kind: $kind, number: $number, createdAt: $createdAt, status: $status, items: $items, actions: $actions, amountDue: $amountDue, track: $track)';
}


}

/// @nodoc
abstract mixin class $FeedCardCopyWith<$Res>  {
  factory $FeedCardCopyWith(FeedCard value, $Res Function(FeedCard) _then) = _$FeedCardCopyWithImpl;
@useResult
$Res call({
 FeedKind kind, String number, DateTime createdAt, Status status, List<FeedItem> items, List<FeedAction> actions, int? amountDue, FeedTrack? track
});


$StatusCopyWith<$Res> get status;$FeedTrackCopyWith<$Res>? get track;

}
/// @nodoc
class _$FeedCardCopyWithImpl<$Res>
    implements $FeedCardCopyWith<$Res> {
  _$FeedCardCopyWithImpl(this._self, this._then);

  final FeedCard _self;
  final $Res Function(FeedCard) _then;

/// Create a copy of FeedCard
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? kind = null,Object? number = null,Object? createdAt = null,Object? status = null,Object? items = null,Object? actions = null,Object? amountDue = freezed,Object? track = freezed,}) {
  return _then(_self.copyWith(
kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as FeedKind,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<FeedItem>,actions: null == actions ? _self.actions : actions // ignore: cast_nullable_to_non_nullable
as List<FeedAction>,amountDue: freezed == amountDue ? _self.amountDue : amountDue // ignore: cast_nullable_to_non_nullable
as int?,track: freezed == track ? _self.track : track // ignore: cast_nullable_to_non_nullable
as FeedTrack?,
  ));
}
/// Create a copy of FeedCard
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatusCopyWith<$Res> get status {
  
  return $StatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of FeedCard
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FeedTrackCopyWith<$Res>? get track {
    if (_self.track == null) {
    return null;
  }

  return $FeedTrackCopyWith<$Res>(_self.track!, (value) {
    return _then(_self.copyWith(track: value));
  });
}
}


/// Adds pattern-matching-related methods to [FeedCard].
extension FeedCardPatterns on FeedCard {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FeedCard value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FeedCard() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FeedCard value)  $default,){
final _that = this;
switch (_that) {
case _FeedCard():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FeedCard value)?  $default,){
final _that = this;
switch (_that) {
case _FeedCard() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( FeedKind kind,  String number,  DateTime createdAt,  Status status,  List<FeedItem> items,  List<FeedAction> actions,  int? amountDue,  FeedTrack? track)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FeedCard() when $default != null:
return $default(_that.kind,_that.number,_that.createdAt,_that.status,_that.items,_that.actions,_that.amountDue,_that.track);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( FeedKind kind,  String number,  DateTime createdAt,  Status status,  List<FeedItem> items,  List<FeedAction> actions,  int? amountDue,  FeedTrack? track)  $default,) {final _that = this;
switch (_that) {
case _FeedCard():
return $default(_that.kind,_that.number,_that.createdAt,_that.status,_that.items,_that.actions,_that.amountDue,_that.track);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( FeedKind kind,  String number,  DateTime createdAt,  Status status,  List<FeedItem> items,  List<FeedAction> actions,  int? amountDue,  FeedTrack? track)?  $default,) {final _that = this;
switch (_that) {
case _FeedCard() when $default != null:
return $default(_that.kind,_that.number,_that.createdAt,_that.status,_that.items,_that.actions,_that.amountDue,_that.track);case _:
  return null;

}
}

}

/// @nodoc


class _FeedCard implements FeedCard {
  const _FeedCard({required this.kind, required this.number, required this.createdAt, required this.status, required final  List<FeedItem> items, required final  List<FeedAction> actions, this.amountDue, this.track}): _items = items,_actions = actions;
  

@override final  FeedKind kind;
@override final  String number;
@override final  DateTime createdAt;
@override final  Status status;
 final  List<FeedItem> _items;
@override List<FeedItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

 final  List<FeedAction> _actions;
@override List<FeedAction> get actions {
  if (_actions is EqualUnmodifiableListView) return _actions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_actions);
}

/// What to pay now: the order advance or the parcel surcharge.
@override final  int? amountDue;
/// Grey tracking row («В пути · ожидается 24.11–28.11»).
@override final  FeedTrack? track;

/// Create a copy of FeedCard
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeedCardCopyWith<_FeedCard> get copyWith => __$FeedCardCopyWithImpl<_FeedCard>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeedCard&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.number, number) || other.number == number)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._items, _items)&&const DeepCollectionEquality().equals(other._actions, _actions)&&(identical(other.amountDue, amountDue) || other.amountDue == amountDue)&&(identical(other.track, track) || other.track == track));
}


@override
int get hashCode => Object.hash(runtimeType,kind,number,createdAt,status,const DeepCollectionEquality().hash(_items),const DeepCollectionEquality().hash(_actions),amountDue,track);

@override
String toString() {
  return 'FeedCard(kind: $kind, number: $number, createdAt: $createdAt, status: $status, items: $items, actions: $actions, amountDue: $amountDue, track: $track)';
}


}

/// @nodoc
abstract mixin class _$FeedCardCopyWith<$Res> implements $FeedCardCopyWith<$Res> {
  factory _$FeedCardCopyWith(_FeedCard value, $Res Function(_FeedCard) _then) = __$FeedCardCopyWithImpl;
@override @useResult
$Res call({
 FeedKind kind, String number, DateTime createdAt, Status status, List<FeedItem> items, List<FeedAction> actions, int? amountDue, FeedTrack? track
});


@override $StatusCopyWith<$Res> get status;@override $FeedTrackCopyWith<$Res>? get track;

}
/// @nodoc
class __$FeedCardCopyWithImpl<$Res>
    implements _$FeedCardCopyWith<$Res> {
  __$FeedCardCopyWithImpl(this._self, this._then);

  final _FeedCard _self;
  final $Res Function(_FeedCard) _then;

/// Create a copy of FeedCard
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? kind = null,Object? number = null,Object? createdAt = null,Object? status = null,Object? items = null,Object? actions = null,Object? amountDue = freezed,Object? track = freezed,}) {
  return _then(_FeedCard(
kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as FeedKind,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<FeedItem>,actions: null == actions ? _self._actions : actions // ignore: cast_nullable_to_non_nullable
as List<FeedAction>,amountDue: freezed == amountDue ? _self.amountDue : amountDue // ignore: cast_nullable_to_non_nullable
as int?,track: freezed == track ? _self.track : track // ignore: cast_nullable_to_non_nullable
as FeedTrack?,
  ));
}

/// Create a copy of FeedCard
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatusCopyWith<$Res> get status {
  
  return $StatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of FeedCard
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FeedTrackCopyWith<$Res>? get track {
    if (_self.track == null) {
    return null;
  }

  return $FeedTrackCopyWith<$Res>(_self.track!, (value) {
    return _then(_self.copyWith(track: value));
  });
}
}

/// @nodoc
mixin _$FeedItem {

 String get id; String get productId; String get title; String get imageUrl; int get price; int get quantity; String? get options;
/// Create a copy of FeedItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeedItemCopyWith<FeedItem> get copyWith => _$FeedItemCopyWithImpl<FeedItem>(this as FeedItem, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeedItem&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.title, title) || other.title == title)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.price, price) || other.price == price)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.options, options) || other.options == options));
}


@override
int get hashCode => Object.hash(runtimeType,id,productId,title,imageUrl,price,quantity,options);

@override
String toString() {
  return 'FeedItem(id: $id, productId: $productId, title: $title, imageUrl: $imageUrl, price: $price, quantity: $quantity, options: $options)';
}


}

/// @nodoc
abstract mixin class $FeedItemCopyWith<$Res>  {
  factory $FeedItemCopyWith(FeedItem value, $Res Function(FeedItem) _then) = _$FeedItemCopyWithImpl;
@useResult
$Res call({
 String id, String productId, String title, String imageUrl, int price, int quantity, String? options
});




}
/// @nodoc
class _$FeedItemCopyWithImpl<$Res>
    implements $FeedItemCopyWith<$Res> {
  _$FeedItemCopyWithImpl(this._self, this._then);

  final FeedItem _self;
  final $Res Function(FeedItem) _then;

/// Create a copy of FeedItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? productId = null,Object? title = null,Object? imageUrl = null,Object? price = null,Object? quantity = null,Object? options = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,options: freezed == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FeedItem].
extension FeedItemPatterns on FeedItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FeedItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FeedItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FeedItem value)  $default,){
final _that = this;
switch (_that) {
case _FeedItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FeedItem value)?  $default,){
final _that = this;
switch (_that) {
case _FeedItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String productId,  String title,  String imageUrl,  int price,  int quantity,  String? options)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FeedItem() when $default != null:
return $default(_that.id,_that.productId,_that.title,_that.imageUrl,_that.price,_that.quantity,_that.options);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String productId,  String title,  String imageUrl,  int price,  int quantity,  String? options)  $default,) {final _that = this;
switch (_that) {
case _FeedItem():
return $default(_that.id,_that.productId,_that.title,_that.imageUrl,_that.price,_that.quantity,_that.options);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String productId,  String title,  String imageUrl,  int price,  int quantity,  String? options)?  $default,) {final _that = this;
switch (_that) {
case _FeedItem() when $default != null:
return $default(_that.id,_that.productId,_that.title,_that.imageUrl,_that.price,_that.quantity,_that.options);case _:
  return null;

}
}

}

/// @nodoc


class _FeedItem implements FeedItem {
  const _FeedItem({required this.id, required this.productId, required this.title, required this.imageUrl, required this.price, required this.quantity, this.options});
  

@override final  String id;
@override final  String productId;
@override final  String title;
@override final  String imageUrl;
@override final  int price;
@override final  int quantity;
@override final  String? options;

/// Create a copy of FeedItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeedItemCopyWith<_FeedItem> get copyWith => __$FeedItemCopyWithImpl<_FeedItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeedItem&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.title, title) || other.title == title)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.price, price) || other.price == price)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.options, options) || other.options == options));
}


@override
int get hashCode => Object.hash(runtimeType,id,productId,title,imageUrl,price,quantity,options);

@override
String toString() {
  return 'FeedItem(id: $id, productId: $productId, title: $title, imageUrl: $imageUrl, price: $price, quantity: $quantity, options: $options)';
}


}

/// @nodoc
abstract mixin class _$FeedItemCopyWith<$Res> implements $FeedItemCopyWith<$Res> {
  factory _$FeedItemCopyWith(_FeedItem value, $Res Function(_FeedItem) _then) = __$FeedItemCopyWithImpl;
@override @useResult
$Res call({
 String id, String productId, String title, String imageUrl, int price, int quantity, String? options
});




}
/// @nodoc
class __$FeedItemCopyWithImpl<$Res>
    implements _$FeedItemCopyWith<$Res> {
  __$FeedItemCopyWithImpl(this._self, this._then);

  final _FeedItem _self;
  final $Res Function(_FeedItem) _then;

/// Create a copy of FeedItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? productId = null,Object? title = null,Object? imageUrl = null,Object? price = null,Object? quantity = null,Object? options = freezed,}) {
  return _then(_FeedItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,options: freezed == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$FeedTrack {

 String get title; String get text;
/// Create a copy of FeedTrack
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeedTrackCopyWith<FeedTrack> get copyWith => _$FeedTrackCopyWithImpl<FeedTrack>(this as FeedTrack, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeedTrack&&(identical(other.title, title) || other.title == title)&&(identical(other.text, text) || other.text == text));
}


@override
int get hashCode => Object.hash(runtimeType,title,text);

@override
String toString() {
  return 'FeedTrack(title: $title, text: $text)';
}


}

/// @nodoc
abstract mixin class $FeedTrackCopyWith<$Res>  {
  factory $FeedTrackCopyWith(FeedTrack value, $Res Function(FeedTrack) _then) = _$FeedTrackCopyWithImpl;
@useResult
$Res call({
 String title, String text
});




}
/// @nodoc
class _$FeedTrackCopyWithImpl<$Res>
    implements $FeedTrackCopyWith<$Res> {
  _$FeedTrackCopyWithImpl(this._self, this._then);

  final FeedTrack _self;
  final $Res Function(FeedTrack) _then;

/// Create a copy of FeedTrack
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? text = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [FeedTrack].
extension FeedTrackPatterns on FeedTrack {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FeedTrack value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FeedTrack() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FeedTrack value)  $default,){
final _that = this;
switch (_that) {
case _FeedTrack():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FeedTrack value)?  $default,){
final _that = this;
switch (_that) {
case _FeedTrack() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String text)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FeedTrack() when $default != null:
return $default(_that.title,_that.text);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String text)  $default,) {final _that = this;
switch (_that) {
case _FeedTrack():
return $default(_that.title,_that.text);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String text)?  $default,) {final _that = this;
switch (_that) {
case _FeedTrack() when $default != null:
return $default(_that.title,_that.text);case _:
  return null;

}
}

}

/// @nodoc


class _FeedTrack implements FeedTrack {
  const _FeedTrack({required this.title, required this.text});
  

@override final  String title;
@override final  String text;

/// Create a copy of FeedTrack
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeedTrackCopyWith<_FeedTrack> get copyWith => __$FeedTrackCopyWithImpl<_FeedTrack>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeedTrack&&(identical(other.title, title) || other.title == title)&&(identical(other.text, text) || other.text == text));
}


@override
int get hashCode => Object.hash(runtimeType,title,text);

@override
String toString() {
  return 'FeedTrack(title: $title, text: $text)';
}


}

/// @nodoc
abstract mixin class _$FeedTrackCopyWith<$Res> implements $FeedTrackCopyWith<$Res> {
  factory _$FeedTrackCopyWith(_FeedTrack value, $Res Function(_FeedTrack) _then) = __$FeedTrackCopyWithImpl;
@override @useResult
$Res call({
 String title, String text
});




}
/// @nodoc
class __$FeedTrackCopyWithImpl<$Res>
    implements _$FeedTrackCopyWith<$Res> {
  __$FeedTrackCopyWithImpl(this._self, this._then);

  final _FeedTrack _self;
  final $Res Function(_FeedTrack) _then;

/// Create a copy of FeedTrack
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? text = null,}) {
  return _then(_FeedTrack(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$FeedAction {

 FeedActionType get type; bool get isPrimary; String? get itemId;
/// Create a copy of FeedAction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeedActionCopyWith<FeedAction> get copyWith => _$FeedActionCopyWithImpl<FeedAction>(this as FeedAction, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeedAction&&(identical(other.type, type) || other.type == type)&&(identical(other.isPrimary, isPrimary) || other.isPrimary == isPrimary)&&(identical(other.itemId, itemId) || other.itemId == itemId));
}


@override
int get hashCode => Object.hash(runtimeType,type,isPrimary,itemId);

@override
String toString() {
  return 'FeedAction(type: $type, isPrimary: $isPrimary, itemId: $itemId)';
}


}

/// @nodoc
abstract mixin class $FeedActionCopyWith<$Res>  {
  factory $FeedActionCopyWith(FeedAction value, $Res Function(FeedAction) _then) = _$FeedActionCopyWithImpl;
@useResult
$Res call({
 FeedActionType type, bool isPrimary, String? itemId
});




}
/// @nodoc
class _$FeedActionCopyWithImpl<$Res>
    implements $FeedActionCopyWith<$Res> {
  _$FeedActionCopyWithImpl(this._self, this._then);

  final FeedAction _self;
  final $Res Function(FeedAction) _then;

/// Create a copy of FeedAction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? isPrimary = null,Object? itemId = freezed,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as FeedActionType,isPrimary: null == isPrimary ? _self.isPrimary : isPrimary // ignore: cast_nullable_to_non_nullable
as bool,itemId: freezed == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FeedAction].
extension FeedActionPatterns on FeedAction {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FeedAction value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FeedAction() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FeedAction value)  $default,){
final _that = this;
switch (_that) {
case _FeedAction():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FeedAction value)?  $default,){
final _that = this;
switch (_that) {
case _FeedAction() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( FeedActionType type,  bool isPrimary,  String? itemId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FeedAction() when $default != null:
return $default(_that.type,_that.isPrimary,_that.itemId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( FeedActionType type,  bool isPrimary,  String? itemId)  $default,) {final _that = this;
switch (_that) {
case _FeedAction():
return $default(_that.type,_that.isPrimary,_that.itemId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( FeedActionType type,  bool isPrimary,  String? itemId)?  $default,) {final _that = this;
switch (_that) {
case _FeedAction() when $default != null:
return $default(_that.type,_that.isPrimary,_that.itemId);case _:
  return null;

}
}

}

/// @nodoc


class _FeedAction implements FeedAction {
  const _FeedAction({required this.type, this.isPrimary = false, this.itemId});
  

@override final  FeedActionType type;
@override@JsonKey() final  bool isPrimary;
@override final  String? itemId;

/// Create a copy of FeedAction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeedActionCopyWith<_FeedAction> get copyWith => __$FeedActionCopyWithImpl<_FeedAction>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeedAction&&(identical(other.type, type) || other.type == type)&&(identical(other.isPrimary, isPrimary) || other.isPrimary == isPrimary)&&(identical(other.itemId, itemId) || other.itemId == itemId));
}


@override
int get hashCode => Object.hash(runtimeType,type,isPrimary,itemId);

@override
String toString() {
  return 'FeedAction(type: $type, isPrimary: $isPrimary, itemId: $itemId)';
}


}

/// @nodoc
abstract mixin class _$FeedActionCopyWith<$Res> implements $FeedActionCopyWith<$Res> {
  factory _$FeedActionCopyWith(_FeedAction value, $Res Function(_FeedAction) _then) = __$FeedActionCopyWithImpl;
@override @useResult
$Res call({
 FeedActionType type, bool isPrimary, String? itemId
});




}
/// @nodoc
class __$FeedActionCopyWithImpl<$Res>
    implements _$FeedActionCopyWith<$Res> {
  __$FeedActionCopyWithImpl(this._self, this._then);

  final _FeedAction _self;
  final $Res Function(_FeedAction) _then;

/// Create a copy of FeedAction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? isPrimary = null,Object? itemId = freezed,}) {
  return _then(_FeedAction(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as FeedActionType,isPrimary: null == isPrimary ? _self.isPrimary : isPrimary // ignore: cast_nullable_to_non_nullable
as bool,itemId: freezed == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
