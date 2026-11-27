// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_feed_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrdersOverviewModel {

/// Filter id → number of cards; unknown ids are ignored.
 Map<String, int> get counts; List<TrackingUpdateModel> get tracking;
/// Create a copy of OrdersOverviewModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrdersOverviewModelCopyWith<OrdersOverviewModel> get copyWith => _$OrdersOverviewModelCopyWithImpl<OrdersOverviewModel>(this as OrdersOverviewModel, _$identity);

  /// Serializes this OrdersOverviewModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrdersOverviewModel&&const DeepCollectionEquality().equals(other.counts, counts)&&const DeepCollectionEquality().equals(other.tracking, tracking));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(counts),const DeepCollectionEquality().hash(tracking));

@override
String toString() {
  return 'OrdersOverviewModel(counts: $counts, tracking: $tracking)';
}


}

/// @nodoc
abstract mixin class $OrdersOverviewModelCopyWith<$Res>  {
  factory $OrdersOverviewModelCopyWith(OrdersOverviewModel value, $Res Function(OrdersOverviewModel) _then) = _$OrdersOverviewModelCopyWithImpl;
@useResult
$Res call({
 Map<String, int> counts, List<TrackingUpdateModel> tracking
});




}
/// @nodoc
class _$OrdersOverviewModelCopyWithImpl<$Res>
    implements $OrdersOverviewModelCopyWith<$Res> {
  _$OrdersOverviewModelCopyWithImpl(this._self, this._then);

  final OrdersOverviewModel _self;
  final $Res Function(OrdersOverviewModel) _then;

/// Create a copy of OrdersOverviewModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? counts = null,Object? tracking = null,}) {
  return _then(_self.copyWith(
counts: null == counts ? _self.counts : counts // ignore: cast_nullable_to_non_nullable
as Map<String, int>,tracking: null == tracking ? _self.tracking : tracking // ignore: cast_nullable_to_non_nullable
as List<TrackingUpdateModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [OrdersOverviewModel].
extension OrdersOverviewModelPatterns on OrdersOverviewModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrdersOverviewModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrdersOverviewModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrdersOverviewModel value)  $default,){
final _that = this;
switch (_that) {
case _OrdersOverviewModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrdersOverviewModel value)?  $default,){
final _that = this;
switch (_that) {
case _OrdersOverviewModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Map<String, int> counts,  List<TrackingUpdateModel> tracking)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrdersOverviewModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Map<String, int> counts,  List<TrackingUpdateModel> tracking)  $default,) {final _that = this;
switch (_that) {
case _OrdersOverviewModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Map<String, int> counts,  List<TrackingUpdateModel> tracking)?  $default,) {final _that = this;
switch (_that) {
case _OrdersOverviewModel() when $default != null:
return $default(_that.counts,_that.tracking);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrdersOverviewModel implements OrdersOverviewModel {
  const _OrdersOverviewModel({final  Map<String, int> counts = const <String, int>{}, final  List<TrackingUpdateModel> tracking = const <TrackingUpdateModel>[]}): _counts = counts,_tracking = tracking;
  factory _OrdersOverviewModel.fromJson(Map<String, dynamic> json) => _$OrdersOverviewModelFromJson(json);

/// Filter id → number of cards; unknown ids are ignored.
 final  Map<String, int> _counts;
/// Filter id → number of cards; unknown ids are ignored.
@override@JsonKey() Map<String, int> get counts {
  if (_counts is EqualUnmodifiableMapView) return _counts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_counts);
}

 final  List<TrackingUpdateModel> _tracking;
@override@JsonKey() List<TrackingUpdateModel> get tracking {
  if (_tracking is EqualUnmodifiableListView) return _tracking;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tracking);
}


/// Create a copy of OrdersOverviewModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrdersOverviewModelCopyWith<_OrdersOverviewModel> get copyWith => __$OrdersOverviewModelCopyWithImpl<_OrdersOverviewModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrdersOverviewModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrdersOverviewModel&&const DeepCollectionEquality().equals(other._counts, _counts)&&const DeepCollectionEquality().equals(other._tracking, _tracking));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_counts),const DeepCollectionEquality().hash(_tracking));

@override
String toString() {
  return 'OrdersOverviewModel(counts: $counts, tracking: $tracking)';
}


}

/// @nodoc
abstract mixin class _$OrdersOverviewModelCopyWith<$Res> implements $OrdersOverviewModelCopyWith<$Res> {
  factory _$OrdersOverviewModelCopyWith(_OrdersOverviewModel value, $Res Function(_OrdersOverviewModel) _then) = __$OrdersOverviewModelCopyWithImpl;
@override @useResult
$Res call({
 Map<String, int> counts, List<TrackingUpdateModel> tracking
});




}
/// @nodoc
class __$OrdersOverviewModelCopyWithImpl<$Res>
    implements _$OrdersOverviewModelCopyWith<$Res> {
  __$OrdersOverviewModelCopyWithImpl(this._self, this._then);

  final _OrdersOverviewModel _self;
  final $Res Function(_OrdersOverviewModel) _then;

/// Create a copy of OrdersOverviewModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? counts = null,Object? tracking = null,}) {
  return _then(_OrdersOverviewModel(
counts: null == counts ? _self._counts : counts // ignore: cast_nullable_to_non_nullable
as Map<String, int>,tracking: null == tracking ? _self._tracking : tracking // ignore: cast_nullable_to_non_nullable
as List<TrackingUpdateModel>,
  ));
}


}


/// @nodoc
mixin _$TrackingUpdateModel {

/// `order` or `parcel`.
 String get kind; String get number; String get imageUrl; StatusModel get status; String get at; String get text;
/// Create a copy of TrackingUpdateModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TrackingUpdateModelCopyWith<TrackingUpdateModel> get copyWith => _$TrackingUpdateModelCopyWithImpl<TrackingUpdateModel>(this as TrackingUpdateModel, _$identity);

  /// Serializes this TrackingUpdateModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrackingUpdateModel&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.number, number) || other.number == number)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.status, status) || other.status == status)&&(identical(other.at, at) || other.at == at)&&(identical(other.text, text) || other.text == text));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kind,number,imageUrl,status,at,text);

@override
String toString() {
  return 'TrackingUpdateModel(kind: $kind, number: $number, imageUrl: $imageUrl, status: $status, at: $at, text: $text)';
}


}

/// @nodoc
abstract mixin class $TrackingUpdateModelCopyWith<$Res>  {
  factory $TrackingUpdateModelCopyWith(TrackingUpdateModel value, $Res Function(TrackingUpdateModel) _then) = _$TrackingUpdateModelCopyWithImpl;
@useResult
$Res call({
 String kind, String number, String imageUrl, StatusModel status, String at, String text
});


$StatusModelCopyWith<$Res> get status;

}
/// @nodoc
class _$TrackingUpdateModelCopyWithImpl<$Res>
    implements $TrackingUpdateModelCopyWith<$Res> {
  _$TrackingUpdateModelCopyWithImpl(this._self, this._then);

  final TrackingUpdateModel _self;
  final $Res Function(TrackingUpdateModel) _then;

/// Create a copy of TrackingUpdateModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? kind = null,Object? number = null,Object? imageUrl = null,Object? status = null,Object? at = null,Object? text = null,}) {
  return _then(_self.copyWith(
kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as String,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StatusModel,at: null == at ? _self.at : at // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of TrackingUpdateModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatusModelCopyWith<$Res> get status {
  
  return $StatusModelCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}


/// Adds pattern-matching-related methods to [TrackingUpdateModel].
extension TrackingUpdateModelPatterns on TrackingUpdateModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TrackingUpdateModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TrackingUpdateModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TrackingUpdateModel value)  $default,){
final _that = this;
switch (_that) {
case _TrackingUpdateModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TrackingUpdateModel value)?  $default,){
final _that = this;
switch (_that) {
case _TrackingUpdateModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String kind,  String number,  String imageUrl,  StatusModel status,  String at,  String text)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TrackingUpdateModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String kind,  String number,  String imageUrl,  StatusModel status,  String at,  String text)  $default,) {final _that = this;
switch (_that) {
case _TrackingUpdateModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String kind,  String number,  String imageUrl,  StatusModel status,  String at,  String text)?  $default,) {final _that = this;
switch (_that) {
case _TrackingUpdateModel() when $default != null:
return $default(_that.kind,_that.number,_that.imageUrl,_that.status,_that.at,_that.text);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TrackingUpdateModel implements TrackingUpdateModel {
  const _TrackingUpdateModel({required this.kind, required this.number, required this.imageUrl, required this.status, required this.at, required this.text});
  factory _TrackingUpdateModel.fromJson(Map<String, dynamic> json) => _$TrackingUpdateModelFromJson(json);

/// `order` or `parcel`.
@override final  String kind;
@override final  String number;
@override final  String imageUrl;
@override final  StatusModel status;
@override final  String at;
@override final  String text;

/// Create a copy of TrackingUpdateModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TrackingUpdateModelCopyWith<_TrackingUpdateModel> get copyWith => __$TrackingUpdateModelCopyWithImpl<_TrackingUpdateModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TrackingUpdateModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TrackingUpdateModel&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.number, number) || other.number == number)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.status, status) || other.status == status)&&(identical(other.at, at) || other.at == at)&&(identical(other.text, text) || other.text == text));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kind,number,imageUrl,status,at,text);

@override
String toString() {
  return 'TrackingUpdateModel(kind: $kind, number: $number, imageUrl: $imageUrl, status: $status, at: $at, text: $text)';
}


}

/// @nodoc
abstract mixin class _$TrackingUpdateModelCopyWith<$Res> implements $TrackingUpdateModelCopyWith<$Res> {
  factory _$TrackingUpdateModelCopyWith(_TrackingUpdateModel value, $Res Function(_TrackingUpdateModel) _then) = __$TrackingUpdateModelCopyWithImpl;
@override @useResult
$Res call({
 String kind, String number, String imageUrl, StatusModel status, String at, String text
});


@override $StatusModelCopyWith<$Res> get status;

}
/// @nodoc
class __$TrackingUpdateModelCopyWithImpl<$Res>
    implements _$TrackingUpdateModelCopyWith<$Res> {
  __$TrackingUpdateModelCopyWithImpl(this._self, this._then);

  final _TrackingUpdateModel _self;
  final $Res Function(_TrackingUpdateModel) _then;

/// Create a copy of TrackingUpdateModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? kind = null,Object? number = null,Object? imageUrl = null,Object? status = null,Object? at = null,Object? text = null,}) {
  return _then(_TrackingUpdateModel(
kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as String,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StatusModel,at: null == at ? _self.at : at // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of TrackingUpdateModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatusModelCopyWith<$Res> get status {
  
  return $StatusModelCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}


/// @nodoc
mixin _$OrdersFeedModel {

 List<FeedCardModel> get cards;
/// Create a copy of OrdersFeedModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrdersFeedModelCopyWith<OrdersFeedModel> get copyWith => _$OrdersFeedModelCopyWithImpl<OrdersFeedModel>(this as OrdersFeedModel, _$identity);

  /// Serializes this OrdersFeedModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrdersFeedModel&&const DeepCollectionEquality().equals(other.cards, cards));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(cards));

@override
String toString() {
  return 'OrdersFeedModel(cards: $cards)';
}


}

/// @nodoc
abstract mixin class $OrdersFeedModelCopyWith<$Res>  {
  factory $OrdersFeedModelCopyWith(OrdersFeedModel value, $Res Function(OrdersFeedModel) _then) = _$OrdersFeedModelCopyWithImpl;
@useResult
$Res call({
 List<FeedCardModel> cards
});




}
/// @nodoc
class _$OrdersFeedModelCopyWithImpl<$Res>
    implements $OrdersFeedModelCopyWith<$Res> {
  _$OrdersFeedModelCopyWithImpl(this._self, this._then);

  final OrdersFeedModel _self;
  final $Res Function(OrdersFeedModel) _then;

/// Create a copy of OrdersFeedModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cards = null,}) {
  return _then(_self.copyWith(
cards: null == cards ? _self.cards : cards // ignore: cast_nullable_to_non_nullable
as List<FeedCardModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [OrdersFeedModel].
extension OrdersFeedModelPatterns on OrdersFeedModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrdersFeedModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrdersFeedModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrdersFeedModel value)  $default,){
final _that = this;
switch (_that) {
case _OrdersFeedModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrdersFeedModel value)?  $default,){
final _that = this;
switch (_that) {
case _OrdersFeedModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<FeedCardModel> cards)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrdersFeedModel() when $default != null:
return $default(_that.cards);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<FeedCardModel> cards)  $default,) {final _that = this;
switch (_that) {
case _OrdersFeedModel():
return $default(_that.cards);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<FeedCardModel> cards)?  $default,) {final _that = this;
switch (_that) {
case _OrdersFeedModel() when $default != null:
return $default(_that.cards);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrdersFeedModel implements OrdersFeedModel {
  const _OrdersFeedModel({final  List<FeedCardModel> cards = const <FeedCardModel>[]}): _cards = cards;
  factory _OrdersFeedModel.fromJson(Map<String, dynamic> json) => _$OrdersFeedModelFromJson(json);

 final  List<FeedCardModel> _cards;
@override@JsonKey() List<FeedCardModel> get cards {
  if (_cards is EqualUnmodifiableListView) return _cards;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cards);
}


/// Create a copy of OrdersFeedModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrdersFeedModelCopyWith<_OrdersFeedModel> get copyWith => __$OrdersFeedModelCopyWithImpl<_OrdersFeedModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrdersFeedModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrdersFeedModel&&const DeepCollectionEquality().equals(other._cards, _cards));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_cards));

@override
String toString() {
  return 'OrdersFeedModel(cards: $cards)';
}


}

/// @nodoc
abstract mixin class _$OrdersFeedModelCopyWith<$Res> implements $OrdersFeedModelCopyWith<$Res> {
  factory _$OrdersFeedModelCopyWith(_OrdersFeedModel value, $Res Function(_OrdersFeedModel) _then) = __$OrdersFeedModelCopyWithImpl;
@override @useResult
$Res call({
 List<FeedCardModel> cards
});




}
/// @nodoc
class __$OrdersFeedModelCopyWithImpl<$Res>
    implements _$OrdersFeedModelCopyWith<$Res> {
  __$OrdersFeedModelCopyWithImpl(this._self, this._then);

  final _OrdersFeedModel _self;
  final $Res Function(_OrdersFeedModel) _then;

/// Create a copy of OrdersFeedModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cards = null,}) {
  return _then(_OrdersFeedModel(
cards: null == cards ? _self._cards : cards // ignore: cast_nullable_to_non_nullable
as List<FeedCardModel>,
  ));
}


}


/// @nodoc
mixin _$FeedCardModel {

 String get kind; String get number; String get createdAt; StatusModel get status; List<FeedItemModel> get items; List<FeedActionModel> get actions; int? get amountDue; FeedTrackModel? get track;
/// Create a copy of FeedCardModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeedCardModelCopyWith<FeedCardModel> get copyWith => _$FeedCardModelCopyWithImpl<FeedCardModel>(this as FeedCardModel, _$identity);

  /// Serializes this FeedCardModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeedCardModel&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.number, number) || other.number == number)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.items, items)&&const DeepCollectionEquality().equals(other.actions, actions)&&(identical(other.amountDue, amountDue) || other.amountDue == amountDue)&&(identical(other.track, track) || other.track == track));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kind,number,createdAt,status,const DeepCollectionEquality().hash(items),const DeepCollectionEquality().hash(actions),amountDue,track);

@override
String toString() {
  return 'FeedCardModel(kind: $kind, number: $number, createdAt: $createdAt, status: $status, items: $items, actions: $actions, amountDue: $amountDue, track: $track)';
}


}

/// @nodoc
abstract mixin class $FeedCardModelCopyWith<$Res>  {
  factory $FeedCardModelCopyWith(FeedCardModel value, $Res Function(FeedCardModel) _then) = _$FeedCardModelCopyWithImpl;
@useResult
$Res call({
 String kind, String number, String createdAt, StatusModel status, List<FeedItemModel> items, List<FeedActionModel> actions, int? amountDue, FeedTrackModel? track
});


$StatusModelCopyWith<$Res> get status;$FeedTrackModelCopyWith<$Res>? get track;

}
/// @nodoc
class _$FeedCardModelCopyWithImpl<$Res>
    implements $FeedCardModelCopyWith<$Res> {
  _$FeedCardModelCopyWithImpl(this._self, this._then);

  final FeedCardModel _self;
  final $Res Function(FeedCardModel) _then;

/// Create a copy of FeedCardModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? kind = null,Object? number = null,Object? createdAt = null,Object? status = null,Object? items = null,Object? actions = null,Object? amountDue = freezed,Object? track = freezed,}) {
  return _then(_self.copyWith(
kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as String,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StatusModel,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<FeedItemModel>,actions: null == actions ? _self.actions : actions // ignore: cast_nullable_to_non_nullable
as List<FeedActionModel>,amountDue: freezed == amountDue ? _self.amountDue : amountDue // ignore: cast_nullable_to_non_nullable
as int?,track: freezed == track ? _self.track : track // ignore: cast_nullable_to_non_nullable
as FeedTrackModel?,
  ));
}
/// Create a copy of FeedCardModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatusModelCopyWith<$Res> get status {
  
  return $StatusModelCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of FeedCardModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FeedTrackModelCopyWith<$Res>? get track {
    if (_self.track == null) {
    return null;
  }

  return $FeedTrackModelCopyWith<$Res>(_self.track!, (value) {
    return _then(_self.copyWith(track: value));
  });
}
}


/// Adds pattern-matching-related methods to [FeedCardModel].
extension FeedCardModelPatterns on FeedCardModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FeedCardModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FeedCardModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FeedCardModel value)  $default,){
final _that = this;
switch (_that) {
case _FeedCardModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FeedCardModel value)?  $default,){
final _that = this;
switch (_that) {
case _FeedCardModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String kind,  String number,  String createdAt,  StatusModel status,  List<FeedItemModel> items,  List<FeedActionModel> actions,  int? amountDue,  FeedTrackModel? track)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FeedCardModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String kind,  String number,  String createdAt,  StatusModel status,  List<FeedItemModel> items,  List<FeedActionModel> actions,  int? amountDue,  FeedTrackModel? track)  $default,) {final _that = this;
switch (_that) {
case _FeedCardModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String kind,  String number,  String createdAt,  StatusModel status,  List<FeedItemModel> items,  List<FeedActionModel> actions,  int? amountDue,  FeedTrackModel? track)?  $default,) {final _that = this;
switch (_that) {
case _FeedCardModel() when $default != null:
return $default(_that.kind,_that.number,_that.createdAt,_that.status,_that.items,_that.actions,_that.amountDue,_that.track);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FeedCardModel implements FeedCardModel {
  const _FeedCardModel({required this.kind, required this.number, required this.createdAt, required this.status, required final  List<FeedItemModel> items, final  List<FeedActionModel> actions = const <FeedActionModel>[], this.amountDue, this.track}): _items = items,_actions = actions;
  factory _FeedCardModel.fromJson(Map<String, dynamic> json) => _$FeedCardModelFromJson(json);

@override final  String kind;
@override final  String number;
@override final  String createdAt;
@override final  StatusModel status;
 final  List<FeedItemModel> _items;
@override List<FeedItemModel> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

 final  List<FeedActionModel> _actions;
@override@JsonKey() List<FeedActionModel> get actions {
  if (_actions is EqualUnmodifiableListView) return _actions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_actions);
}

@override final  int? amountDue;
@override final  FeedTrackModel? track;

/// Create a copy of FeedCardModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeedCardModelCopyWith<_FeedCardModel> get copyWith => __$FeedCardModelCopyWithImpl<_FeedCardModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FeedCardModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeedCardModel&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.number, number) || other.number == number)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._items, _items)&&const DeepCollectionEquality().equals(other._actions, _actions)&&(identical(other.amountDue, amountDue) || other.amountDue == amountDue)&&(identical(other.track, track) || other.track == track));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kind,number,createdAt,status,const DeepCollectionEquality().hash(_items),const DeepCollectionEquality().hash(_actions),amountDue,track);

@override
String toString() {
  return 'FeedCardModel(kind: $kind, number: $number, createdAt: $createdAt, status: $status, items: $items, actions: $actions, amountDue: $amountDue, track: $track)';
}


}

/// @nodoc
abstract mixin class _$FeedCardModelCopyWith<$Res> implements $FeedCardModelCopyWith<$Res> {
  factory _$FeedCardModelCopyWith(_FeedCardModel value, $Res Function(_FeedCardModel) _then) = __$FeedCardModelCopyWithImpl;
@override @useResult
$Res call({
 String kind, String number, String createdAt, StatusModel status, List<FeedItemModel> items, List<FeedActionModel> actions, int? amountDue, FeedTrackModel? track
});


@override $StatusModelCopyWith<$Res> get status;@override $FeedTrackModelCopyWith<$Res>? get track;

}
/// @nodoc
class __$FeedCardModelCopyWithImpl<$Res>
    implements _$FeedCardModelCopyWith<$Res> {
  __$FeedCardModelCopyWithImpl(this._self, this._then);

  final _FeedCardModel _self;
  final $Res Function(_FeedCardModel) _then;

/// Create a copy of FeedCardModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? kind = null,Object? number = null,Object? createdAt = null,Object? status = null,Object? items = null,Object? actions = null,Object? amountDue = freezed,Object? track = freezed,}) {
  return _then(_FeedCardModel(
kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as String,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StatusModel,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<FeedItemModel>,actions: null == actions ? _self._actions : actions // ignore: cast_nullable_to_non_nullable
as List<FeedActionModel>,amountDue: freezed == amountDue ? _self.amountDue : amountDue // ignore: cast_nullable_to_non_nullable
as int?,track: freezed == track ? _self.track : track // ignore: cast_nullable_to_non_nullable
as FeedTrackModel?,
  ));
}

/// Create a copy of FeedCardModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatusModelCopyWith<$Res> get status {
  
  return $StatusModelCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of FeedCardModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FeedTrackModelCopyWith<$Res>? get track {
    if (_self.track == null) {
    return null;
  }

  return $FeedTrackModelCopyWith<$Res>(_self.track!, (value) {
    return _then(_self.copyWith(track: value));
  });
}
}


/// @nodoc
mixin _$FeedItemModel {

 String get id; String get productId; String get title; String get imageUrl; int get price; int get quantity; String? get options;
/// Create a copy of FeedItemModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeedItemModelCopyWith<FeedItemModel> get copyWith => _$FeedItemModelCopyWithImpl<FeedItemModel>(this as FeedItemModel, _$identity);

  /// Serializes this FeedItemModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeedItemModel&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.title, title) || other.title == title)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.price, price) || other.price == price)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.options, options) || other.options == options));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,productId,title,imageUrl,price,quantity,options);

@override
String toString() {
  return 'FeedItemModel(id: $id, productId: $productId, title: $title, imageUrl: $imageUrl, price: $price, quantity: $quantity, options: $options)';
}


}

/// @nodoc
abstract mixin class $FeedItemModelCopyWith<$Res>  {
  factory $FeedItemModelCopyWith(FeedItemModel value, $Res Function(FeedItemModel) _then) = _$FeedItemModelCopyWithImpl;
@useResult
$Res call({
 String id, String productId, String title, String imageUrl, int price, int quantity, String? options
});




}
/// @nodoc
class _$FeedItemModelCopyWithImpl<$Res>
    implements $FeedItemModelCopyWith<$Res> {
  _$FeedItemModelCopyWithImpl(this._self, this._then);

  final FeedItemModel _self;
  final $Res Function(FeedItemModel) _then;

/// Create a copy of FeedItemModel
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


/// Adds pattern-matching-related methods to [FeedItemModel].
extension FeedItemModelPatterns on FeedItemModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FeedItemModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FeedItemModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FeedItemModel value)  $default,){
final _that = this;
switch (_that) {
case _FeedItemModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FeedItemModel value)?  $default,){
final _that = this;
switch (_that) {
case _FeedItemModel() when $default != null:
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
case _FeedItemModel() when $default != null:
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
case _FeedItemModel():
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
case _FeedItemModel() when $default != null:
return $default(_that.id,_that.productId,_that.title,_that.imageUrl,_that.price,_that.quantity,_that.options);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FeedItemModel implements FeedItemModel {
  const _FeedItemModel({required this.id, required this.productId, required this.title, required this.imageUrl, required this.price, required this.quantity, this.options});
  factory _FeedItemModel.fromJson(Map<String, dynamic> json) => _$FeedItemModelFromJson(json);

@override final  String id;
@override final  String productId;
@override final  String title;
@override final  String imageUrl;
@override final  int price;
@override final  int quantity;
@override final  String? options;

/// Create a copy of FeedItemModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeedItemModelCopyWith<_FeedItemModel> get copyWith => __$FeedItemModelCopyWithImpl<_FeedItemModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FeedItemModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeedItemModel&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.title, title) || other.title == title)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.price, price) || other.price == price)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.options, options) || other.options == options));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,productId,title,imageUrl,price,quantity,options);

@override
String toString() {
  return 'FeedItemModel(id: $id, productId: $productId, title: $title, imageUrl: $imageUrl, price: $price, quantity: $quantity, options: $options)';
}


}

/// @nodoc
abstract mixin class _$FeedItemModelCopyWith<$Res> implements $FeedItemModelCopyWith<$Res> {
  factory _$FeedItemModelCopyWith(_FeedItemModel value, $Res Function(_FeedItemModel) _then) = __$FeedItemModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String productId, String title, String imageUrl, int price, int quantity, String? options
});




}
/// @nodoc
class __$FeedItemModelCopyWithImpl<$Res>
    implements _$FeedItemModelCopyWith<$Res> {
  __$FeedItemModelCopyWithImpl(this._self, this._then);

  final _FeedItemModel _self;
  final $Res Function(_FeedItemModel) _then;

/// Create a copy of FeedItemModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? productId = null,Object? title = null,Object? imageUrl = null,Object? price = null,Object? quantity = null,Object? options = freezed,}) {
  return _then(_FeedItemModel(
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
mixin _$FeedTrackModel {

 String get title; String get text;
/// Create a copy of FeedTrackModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeedTrackModelCopyWith<FeedTrackModel> get copyWith => _$FeedTrackModelCopyWithImpl<FeedTrackModel>(this as FeedTrackModel, _$identity);

  /// Serializes this FeedTrackModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeedTrackModel&&(identical(other.title, title) || other.title == title)&&(identical(other.text, text) || other.text == text));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,text);

@override
String toString() {
  return 'FeedTrackModel(title: $title, text: $text)';
}


}

/// @nodoc
abstract mixin class $FeedTrackModelCopyWith<$Res>  {
  factory $FeedTrackModelCopyWith(FeedTrackModel value, $Res Function(FeedTrackModel) _then) = _$FeedTrackModelCopyWithImpl;
@useResult
$Res call({
 String title, String text
});




}
/// @nodoc
class _$FeedTrackModelCopyWithImpl<$Res>
    implements $FeedTrackModelCopyWith<$Res> {
  _$FeedTrackModelCopyWithImpl(this._self, this._then);

  final FeedTrackModel _self;
  final $Res Function(FeedTrackModel) _then;

/// Create a copy of FeedTrackModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? text = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [FeedTrackModel].
extension FeedTrackModelPatterns on FeedTrackModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FeedTrackModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FeedTrackModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FeedTrackModel value)  $default,){
final _that = this;
switch (_that) {
case _FeedTrackModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FeedTrackModel value)?  $default,){
final _that = this;
switch (_that) {
case _FeedTrackModel() when $default != null:
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
case _FeedTrackModel() when $default != null:
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
case _FeedTrackModel():
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
case _FeedTrackModel() when $default != null:
return $default(_that.title,_that.text);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FeedTrackModel implements FeedTrackModel {
  const _FeedTrackModel({required this.title, required this.text});
  factory _FeedTrackModel.fromJson(Map<String, dynamic> json) => _$FeedTrackModelFromJson(json);

@override final  String title;
@override final  String text;

/// Create a copy of FeedTrackModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeedTrackModelCopyWith<_FeedTrackModel> get copyWith => __$FeedTrackModelCopyWithImpl<_FeedTrackModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FeedTrackModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeedTrackModel&&(identical(other.title, title) || other.title == title)&&(identical(other.text, text) || other.text == text));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,text);

@override
String toString() {
  return 'FeedTrackModel(title: $title, text: $text)';
}


}

/// @nodoc
abstract mixin class _$FeedTrackModelCopyWith<$Res> implements $FeedTrackModelCopyWith<$Res> {
  factory _$FeedTrackModelCopyWith(_FeedTrackModel value, $Res Function(_FeedTrackModel) _then) = __$FeedTrackModelCopyWithImpl;
@override @useResult
$Res call({
 String title, String text
});




}
/// @nodoc
class __$FeedTrackModelCopyWithImpl<$Res>
    implements _$FeedTrackModelCopyWith<$Res> {
  __$FeedTrackModelCopyWithImpl(this._self, this._then);

  final _FeedTrackModel _self;
  final $Res Function(_FeedTrackModel) _then;

/// Create a copy of FeedTrackModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? text = null,}) {
  return _then(_FeedTrackModel(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$FeedActionModel {

 String get id; bool get isPrimary; String? get itemId;
/// Create a copy of FeedActionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeedActionModelCopyWith<FeedActionModel> get copyWith => _$FeedActionModelCopyWithImpl<FeedActionModel>(this as FeedActionModel, _$identity);

  /// Serializes this FeedActionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeedActionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.isPrimary, isPrimary) || other.isPrimary == isPrimary)&&(identical(other.itemId, itemId) || other.itemId == itemId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,isPrimary,itemId);

@override
String toString() {
  return 'FeedActionModel(id: $id, isPrimary: $isPrimary, itemId: $itemId)';
}


}

/// @nodoc
abstract mixin class $FeedActionModelCopyWith<$Res>  {
  factory $FeedActionModelCopyWith(FeedActionModel value, $Res Function(FeedActionModel) _then) = _$FeedActionModelCopyWithImpl;
@useResult
$Res call({
 String id, bool isPrimary, String? itemId
});




}
/// @nodoc
class _$FeedActionModelCopyWithImpl<$Res>
    implements $FeedActionModelCopyWith<$Res> {
  _$FeedActionModelCopyWithImpl(this._self, this._then);

  final FeedActionModel _self;
  final $Res Function(FeedActionModel) _then;

/// Create a copy of FeedActionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? isPrimary = null,Object? itemId = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,isPrimary: null == isPrimary ? _self.isPrimary : isPrimary // ignore: cast_nullable_to_non_nullable
as bool,itemId: freezed == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FeedActionModel].
extension FeedActionModelPatterns on FeedActionModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FeedActionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FeedActionModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FeedActionModel value)  $default,){
final _that = this;
switch (_that) {
case _FeedActionModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FeedActionModel value)?  $default,){
final _that = this;
switch (_that) {
case _FeedActionModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  bool isPrimary,  String? itemId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FeedActionModel() when $default != null:
return $default(_that.id,_that.isPrimary,_that.itemId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  bool isPrimary,  String? itemId)  $default,) {final _that = this;
switch (_that) {
case _FeedActionModel():
return $default(_that.id,_that.isPrimary,_that.itemId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  bool isPrimary,  String? itemId)?  $default,) {final _that = this;
switch (_that) {
case _FeedActionModel() when $default != null:
return $default(_that.id,_that.isPrimary,_that.itemId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FeedActionModel implements FeedActionModel {
  const _FeedActionModel({required this.id, this.isPrimary = false, this.itemId});
  factory _FeedActionModel.fromJson(Map<String, dynamic> json) => _$FeedActionModelFromJson(json);

@override final  String id;
@override@JsonKey() final  bool isPrimary;
@override final  String? itemId;

/// Create a copy of FeedActionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeedActionModelCopyWith<_FeedActionModel> get copyWith => __$FeedActionModelCopyWithImpl<_FeedActionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FeedActionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeedActionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.isPrimary, isPrimary) || other.isPrimary == isPrimary)&&(identical(other.itemId, itemId) || other.itemId == itemId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,isPrimary,itemId);

@override
String toString() {
  return 'FeedActionModel(id: $id, isPrimary: $isPrimary, itemId: $itemId)';
}


}

/// @nodoc
abstract mixin class _$FeedActionModelCopyWith<$Res> implements $FeedActionModelCopyWith<$Res> {
  factory _$FeedActionModelCopyWith(_FeedActionModel value, $Res Function(_FeedActionModel) _then) = __$FeedActionModelCopyWithImpl;
@override @useResult
$Res call({
 String id, bool isPrimary, String? itemId
});




}
/// @nodoc
class __$FeedActionModelCopyWithImpl<$Res>
    implements _$FeedActionModelCopyWith<$Res> {
  __$FeedActionModelCopyWithImpl(this._self, this._then);

  final _FeedActionModel _self;
  final $Res Function(_FeedActionModel) _then;

/// Create a copy of FeedActionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? isPrimary = null,Object? itemId = freezed,}) {
  return _then(_FeedActionModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,isPrimary: null == isPrimary ? _self.isPrimary : isPrimary // ignore: cast_nullable_to_non_nullable
as bool,itemId: freezed == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
