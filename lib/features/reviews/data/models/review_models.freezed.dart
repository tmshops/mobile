// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReviewsPageModel {

 ReviewsSummaryModel get summary; List<ReviewModel> get items; String? get nextCursor;
/// Create a copy of ReviewsPageModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewsPageModelCopyWith<ReviewsPageModel> get copyWith => _$ReviewsPageModelCopyWithImpl<ReviewsPageModel>(this as ReviewsPageModel, _$identity);

  /// Serializes this ReviewsPageModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewsPageModel&&(identical(other.summary, summary) || other.summary == summary)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,summary,const DeepCollectionEquality().hash(items),nextCursor);

@override
String toString() {
  return 'ReviewsPageModel(summary: $summary, items: $items, nextCursor: $nextCursor)';
}


}

/// @nodoc
abstract mixin class $ReviewsPageModelCopyWith<$Res>  {
  factory $ReviewsPageModelCopyWith(ReviewsPageModel value, $Res Function(ReviewsPageModel) _then) = _$ReviewsPageModelCopyWithImpl;
@useResult
$Res call({
 ReviewsSummaryModel summary, List<ReviewModel> items, String? nextCursor
});


$ReviewsSummaryModelCopyWith<$Res> get summary;

}
/// @nodoc
class _$ReviewsPageModelCopyWithImpl<$Res>
    implements $ReviewsPageModelCopyWith<$Res> {
  _$ReviewsPageModelCopyWithImpl(this._self, this._then);

  final ReviewsPageModel _self;
  final $Res Function(ReviewsPageModel) _then;

/// Create a copy of ReviewsPageModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? summary = null,Object? items = null,Object? nextCursor = freezed,}) {
  return _then(_self.copyWith(
summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as ReviewsSummaryModel,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<ReviewModel>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of ReviewsPageModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewsSummaryModelCopyWith<$Res> get summary {
  
  return $ReviewsSummaryModelCopyWith<$Res>(_self.summary, (value) {
    return _then(_self.copyWith(summary: value));
  });
}
}


/// Adds pattern-matching-related methods to [ReviewsPageModel].
extension ReviewsPageModelPatterns on ReviewsPageModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewsPageModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewsPageModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewsPageModel value)  $default,){
final _that = this;
switch (_that) {
case _ReviewsPageModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewsPageModel value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewsPageModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ReviewsSummaryModel summary,  List<ReviewModel> items,  String? nextCursor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReviewsPageModel() when $default != null:
return $default(_that.summary,_that.items,_that.nextCursor);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ReviewsSummaryModel summary,  List<ReviewModel> items,  String? nextCursor)  $default,) {final _that = this;
switch (_that) {
case _ReviewsPageModel():
return $default(_that.summary,_that.items,_that.nextCursor);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ReviewsSummaryModel summary,  List<ReviewModel> items,  String? nextCursor)?  $default,) {final _that = this;
switch (_that) {
case _ReviewsPageModel() when $default != null:
return $default(_that.summary,_that.items,_that.nextCursor);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReviewsPageModel implements ReviewsPageModel {
  const _ReviewsPageModel({required this.summary, required final  List<ReviewModel> items, this.nextCursor}): _items = items;
  factory _ReviewsPageModel.fromJson(Map<String, dynamic> json) => _$ReviewsPageModelFromJson(json);

@override final  ReviewsSummaryModel summary;
 final  List<ReviewModel> _items;
@override List<ReviewModel> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  String? nextCursor;

/// Create a copy of ReviewsPageModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewsPageModelCopyWith<_ReviewsPageModel> get copyWith => __$ReviewsPageModelCopyWithImpl<_ReviewsPageModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewsPageModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewsPageModel&&(identical(other.summary, summary) || other.summary == summary)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,summary,const DeepCollectionEquality().hash(_items),nextCursor);

@override
String toString() {
  return 'ReviewsPageModel(summary: $summary, items: $items, nextCursor: $nextCursor)';
}


}

/// @nodoc
abstract mixin class _$ReviewsPageModelCopyWith<$Res> implements $ReviewsPageModelCopyWith<$Res> {
  factory _$ReviewsPageModelCopyWith(_ReviewsPageModel value, $Res Function(_ReviewsPageModel) _then) = __$ReviewsPageModelCopyWithImpl;
@override @useResult
$Res call({
 ReviewsSummaryModel summary, List<ReviewModel> items, String? nextCursor
});


@override $ReviewsSummaryModelCopyWith<$Res> get summary;

}
/// @nodoc
class __$ReviewsPageModelCopyWithImpl<$Res>
    implements _$ReviewsPageModelCopyWith<$Res> {
  __$ReviewsPageModelCopyWithImpl(this._self, this._then);

  final _ReviewsPageModel _self;
  final $Res Function(_ReviewsPageModel) _then;

/// Create a copy of ReviewsPageModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? summary = null,Object? items = null,Object? nextCursor = freezed,}) {
  return _then(_ReviewsPageModel(
summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as ReviewsSummaryModel,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<ReviewModel>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of ReviewsPageModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewsSummaryModelCopyWith<$Res> get summary {
  
  return $ReviewsSummaryModelCopyWith<$Res>(_self.summary, (value) {
    return _then(_self.copyWith(summary: value));
  });
}
}


/// @nodoc
mixin _$ReviewsSummaryModel {

 double get average; int get count;/// `"5": 12, "4": 3, …`.
 Map<String, int> get distribution;
/// Create a copy of ReviewsSummaryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewsSummaryModelCopyWith<ReviewsSummaryModel> get copyWith => _$ReviewsSummaryModelCopyWithImpl<ReviewsSummaryModel>(this as ReviewsSummaryModel, _$identity);

  /// Serializes this ReviewsSummaryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewsSummaryModel&&(identical(other.average, average) || other.average == average)&&(identical(other.count, count) || other.count == count)&&const DeepCollectionEquality().equals(other.distribution, distribution));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,average,count,const DeepCollectionEquality().hash(distribution));

@override
String toString() {
  return 'ReviewsSummaryModel(average: $average, count: $count, distribution: $distribution)';
}


}

/// @nodoc
abstract mixin class $ReviewsSummaryModelCopyWith<$Res>  {
  factory $ReviewsSummaryModelCopyWith(ReviewsSummaryModel value, $Res Function(ReviewsSummaryModel) _then) = _$ReviewsSummaryModelCopyWithImpl;
@useResult
$Res call({
 double average, int count, Map<String, int> distribution
});




}
/// @nodoc
class _$ReviewsSummaryModelCopyWithImpl<$Res>
    implements $ReviewsSummaryModelCopyWith<$Res> {
  _$ReviewsSummaryModelCopyWithImpl(this._self, this._then);

  final ReviewsSummaryModel _self;
  final $Res Function(ReviewsSummaryModel) _then;

/// Create a copy of ReviewsSummaryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? average = null,Object? count = null,Object? distribution = null,}) {
  return _then(_self.copyWith(
average: null == average ? _self.average : average // ignore: cast_nullable_to_non_nullable
as double,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,distribution: null == distribution ? _self.distribution : distribution // ignore: cast_nullable_to_non_nullable
as Map<String, int>,
  ));
}

}


/// Adds pattern-matching-related methods to [ReviewsSummaryModel].
extension ReviewsSummaryModelPatterns on ReviewsSummaryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewsSummaryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewsSummaryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewsSummaryModel value)  $default,){
final _that = this;
switch (_that) {
case _ReviewsSummaryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewsSummaryModel value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewsSummaryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double average,  int count,  Map<String, int> distribution)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReviewsSummaryModel() when $default != null:
return $default(_that.average,_that.count,_that.distribution);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double average,  int count,  Map<String, int> distribution)  $default,) {final _that = this;
switch (_that) {
case _ReviewsSummaryModel():
return $default(_that.average,_that.count,_that.distribution);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double average,  int count,  Map<String, int> distribution)?  $default,) {final _that = this;
switch (_that) {
case _ReviewsSummaryModel() when $default != null:
return $default(_that.average,_that.count,_that.distribution);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReviewsSummaryModel implements ReviewsSummaryModel {
  const _ReviewsSummaryModel({required this.average, required this.count, final  Map<String, int> distribution = const <String, int>{}}): _distribution = distribution;
  factory _ReviewsSummaryModel.fromJson(Map<String, dynamic> json) => _$ReviewsSummaryModelFromJson(json);

@override final  double average;
@override final  int count;
/// `"5": 12, "4": 3, …`.
 final  Map<String, int> _distribution;
/// `"5": 12, "4": 3, …`.
@override@JsonKey() Map<String, int> get distribution {
  if (_distribution is EqualUnmodifiableMapView) return _distribution;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_distribution);
}


/// Create a copy of ReviewsSummaryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewsSummaryModelCopyWith<_ReviewsSummaryModel> get copyWith => __$ReviewsSummaryModelCopyWithImpl<_ReviewsSummaryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewsSummaryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewsSummaryModel&&(identical(other.average, average) || other.average == average)&&(identical(other.count, count) || other.count == count)&&const DeepCollectionEquality().equals(other._distribution, _distribution));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,average,count,const DeepCollectionEquality().hash(_distribution));

@override
String toString() {
  return 'ReviewsSummaryModel(average: $average, count: $count, distribution: $distribution)';
}


}

/// @nodoc
abstract mixin class _$ReviewsSummaryModelCopyWith<$Res> implements $ReviewsSummaryModelCopyWith<$Res> {
  factory _$ReviewsSummaryModelCopyWith(_ReviewsSummaryModel value, $Res Function(_ReviewsSummaryModel) _then) = __$ReviewsSummaryModelCopyWithImpl;
@override @useResult
$Res call({
 double average, int count, Map<String, int> distribution
});




}
/// @nodoc
class __$ReviewsSummaryModelCopyWithImpl<$Res>
    implements _$ReviewsSummaryModelCopyWith<$Res> {
  __$ReviewsSummaryModelCopyWithImpl(this._self, this._then);

  final _ReviewsSummaryModel _self;
  final $Res Function(_ReviewsSummaryModel) _then;

/// Create a copy of ReviewsSummaryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? average = null,Object? count = null,Object? distribution = null,}) {
  return _then(_ReviewsSummaryModel(
average: null == average ? _self.average : average // ignore: cast_nullable_to_non_nullable
as double,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,distribution: null == distribution ? _self._distribution : distribution // ignore: cast_nullable_to_non_nullable
as Map<String, int>,
  ));
}


}


/// @nodoc
mixin _$ReviewModel {

 String get id; String get author; DateTime get date; int get rating; String get text; String? get skuLabel; List<String> get photoUrls; bool get isTranslated; String? get storeReply;
/// Create a copy of ReviewModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewModelCopyWith<ReviewModel> get copyWith => _$ReviewModelCopyWithImpl<ReviewModel>(this as ReviewModel, _$identity);

  /// Serializes this ReviewModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewModel&&(identical(other.id, id) || other.id == id)&&(identical(other.author, author) || other.author == author)&&(identical(other.date, date) || other.date == date)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.text, text) || other.text == text)&&(identical(other.skuLabel, skuLabel) || other.skuLabel == skuLabel)&&const DeepCollectionEquality().equals(other.photoUrls, photoUrls)&&(identical(other.isTranslated, isTranslated) || other.isTranslated == isTranslated)&&(identical(other.storeReply, storeReply) || other.storeReply == storeReply));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,author,date,rating,text,skuLabel,const DeepCollectionEquality().hash(photoUrls),isTranslated,storeReply);

@override
String toString() {
  return 'ReviewModel(id: $id, author: $author, date: $date, rating: $rating, text: $text, skuLabel: $skuLabel, photoUrls: $photoUrls, isTranslated: $isTranslated, storeReply: $storeReply)';
}


}

/// @nodoc
abstract mixin class $ReviewModelCopyWith<$Res>  {
  factory $ReviewModelCopyWith(ReviewModel value, $Res Function(ReviewModel) _then) = _$ReviewModelCopyWithImpl;
@useResult
$Res call({
 String id, String author, DateTime date, int rating, String text, String? skuLabel, List<String> photoUrls, bool isTranslated, String? storeReply
});




}
/// @nodoc
class _$ReviewModelCopyWithImpl<$Res>
    implements $ReviewModelCopyWith<$Res> {
  _$ReviewModelCopyWithImpl(this._self, this._then);

  final ReviewModel _self;
  final $Res Function(ReviewModel) _then;

/// Create a copy of ReviewModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? author = null,Object? date = null,Object? rating = null,Object? text = null,Object? skuLabel = freezed,Object? photoUrls = null,Object? isTranslated = null,Object? storeReply = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,author: null == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,skuLabel: freezed == skuLabel ? _self.skuLabel : skuLabel // ignore: cast_nullable_to_non_nullable
as String?,photoUrls: null == photoUrls ? _self.photoUrls : photoUrls // ignore: cast_nullable_to_non_nullable
as List<String>,isTranslated: null == isTranslated ? _self.isTranslated : isTranslated // ignore: cast_nullable_to_non_nullable
as bool,storeReply: freezed == storeReply ? _self.storeReply : storeReply // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReviewModel].
extension ReviewModelPatterns on ReviewModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewModel value)  $default,){
final _that = this;
switch (_that) {
case _ReviewModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewModel value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String author,  DateTime date,  int rating,  String text,  String? skuLabel,  List<String> photoUrls,  bool isTranslated,  String? storeReply)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReviewModel() when $default != null:
return $default(_that.id,_that.author,_that.date,_that.rating,_that.text,_that.skuLabel,_that.photoUrls,_that.isTranslated,_that.storeReply);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String author,  DateTime date,  int rating,  String text,  String? skuLabel,  List<String> photoUrls,  bool isTranslated,  String? storeReply)  $default,) {final _that = this;
switch (_that) {
case _ReviewModel():
return $default(_that.id,_that.author,_that.date,_that.rating,_that.text,_that.skuLabel,_that.photoUrls,_that.isTranslated,_that.storeReply);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String author,  DateTime date,  int rating,  String text,  String? skuLabel,  List<String> photoUrls,  bool isTranslated,  String? storeReply)?  $default,) {final _that = this;
switch (_that) {
case _ReviewModel() when $default != null:
return $default(_that.id,_that.author,_that.date,_that.rating,_that.text,_that.skuLabel,_that.photoUrls,_that.isTranslated,_that.storeReply);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReviewModel implements ReviewModel {
  const _ReviewModel({required this.id, required this.author, required this.date, required this.rating, required this.text, this.skuLabel, final  List<String> photoUrls = const <String>[], this.isTranslated = false, this.storeReply}): _photoUrls = photoUrls;
  factory _ReviewModel.fromJson(Map<String, dynamic> json) => _$ReviewModelFromJson(json);

@override final  String id;
@override final  String author;
@override final  DateTime date;
@override final  int rating;
@override final  String text;
@override final  String? skuLabel;
 final  List<String> _photoUrls;
@override@JsonKey() List<String> get photoUrls {
  if (_photoUrls is EqualUnmodifiableListView) return _photoUrls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_photoUrls);
}

@override@JsonKey() final  bool isTranslated;
@override final  String? storeReply;

/// Create a copy of ReviewModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewModelCopyWith<_ReviewModel> get copyWith => __$ReviewModelCopyWithImpl<_ReviewModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewModel&&(identical(other.id, id) || other.id == id)&&(identical(other.author, author) || other.author == author)&&(identical(other.date, date) || other.date == date)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.text, text) || other.text == text)&&(identical(other.skuLabel, skuLabel) || other.skuLabel == skuLabel)&&const DeepCollectionEquality().equals(other._photoUrls, _photoUrls)&&(identical(other.isTranslated, isTranslated) || other.isTranslated == isTranslated)&&(identical(other.storeReply, storeReply) || other.storeReply == storeReply));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,author,date,rating,text,skuLabel,const DeepCollectionEquality().hash(_photoUrls),isTranslated,storeReply);

@override
String toString() {
  return 'ReviewModel(id: $id, author: $author, date: $date, rating: $rating, text: $text, skuLabel: $skuLabel, photoUrls: $photoUrls, isTranslated: $isTranslated, storeReply: $storeReply)';
}


}

/// @nodoc
abstract mixin class _$ReviewModelCopyWith<$Res> implements $ReviewModelCopyWith<$Res> {
  factory _$ReviewModelCopyWith(_ReviewModel value, $Res Function(_ReviewModel) _then) = __$ReviewModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String author, DateTime date, int rating, String text, String? skuLabel, List<String> photoUrls, bool isTranslated, String? storeReply
});




}
/// @nodoc
class __$ReviewModelCopyWithImpl<$Res>
    implements _$ReviewModelCopyWith<$Res> {
  __$ReviewModelCopyWithImpl(this._self, this._then);

  final _ReviewModel _self;
  final $Res Function(_ReviewModel) _then;

/// Create a copy of ReviewModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? author = null,Object? date = null,Object? rating = null,Object? text = null,Object? skuLabel = freezed,Object? photoUrls = null,Object? isTranslated = null,Object? storeReply = freezed,}) {
  return _then(_ReviewModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,author: null == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,skuLabel: freezed == skuLabel ? _self.skuLabel : skuLabel // ignore: cast_nullable_to_non_nullable
as String?,photoUrls: null == photoUrls ? _self._photoUrls : photoUrls // ignore: cast_nullable_to_non_nullable
as List<String>,isTranslated: null == isTranslated ? _self.isTranslated : isTranslated // ignore: cast_nullable_to_non_nullable
as bool,storeReply: freezed == storeReply ? _self.storeReply : storeReply // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ReviewTargetModel {

 String get orderNumber; String get itemId; String get productId; String get title; String get imageUrl; String? get skuLabel;
/// Create a copy of ReviewTargetModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewTargetModelCopyWith<ReviewTargetModel> get copyWith => _$ReviewTargetModelCopyWithImpl<ReviewTargetModel>(this as ReviewTargetModel, _$identity);

  /// Serializes this ReviewTargetModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewTargetModel&&(identical(other.orderNumber, orderNumber) || other.orderNumber == orderNumber)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.title, title) || other.title == title)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.skuLabel, skuLabel) || other.skuLabel == skuLabel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,orderNumber,itemId,productId,title,imageUrl,skuLabel);

@override
String toString() {
  return 'ReviewTargetModel(orderNumber: $orderNumber, itemId: $itemId, productId: $productId, title: $title, imageUrl: $imageUrl, skuLabel: $skuLabel)';
}


}

/// @nodoc
abstract mixin class $ReviewTargetModelCopyWith<$Res>  {
  factory $ReviewTargetModelCopyWith(ReviewTargetModel value, $Res Function(ReviewTargetModel) _then) = _$ReviewTargetModelCopyWithImpl;
@useResult
$Res call({
 String orderNumber, String itemId, String productId, String title, String imageUrl, String? skuLabel
});




}
/// @nodoc
class _$ReviewTargetModelCopyWithImpl<$Res>
    implements $ReviewTargetModelCopyWith<$Res> {
  _$ReviewTargetModelCopyWithImpl(this._self, this._then);

  final ReviewTargetModel _self;
  final $Res Function(ReviewTargetModel) _then;

/// Create a copy of ReviewTargetModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? orderNumber = null,Object? itemId = null,Object? productId = null,Object? title = null,Object? imageUrl = null,Object? skuLabel = freezed,}) {
  return _then(_self.copyWith(
orderNumber: null == orderNumber ? _self.orderNumber : orderNumber // ignore: cast_nullable_to_non_nullable
as String,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,skuLabel: freezed == skuLabel ? _self.skuLabel : skuLabel // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReviewTargetModel].
extension ReviewTargetModelPatterns on ReviewTargetModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewTargetModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewTargetModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewTargetModel value)  $default,){
final _that = this;
switch (_that) {
case _ReviewTargetModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewTargetModel value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewTargetModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String orderNumber,  String itemId,  String productId,  String title,  String imageUrl,  String? skuLabel)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReviewTargetModel() when $default != null:
return $default(_that.orderNumber,_that.itemId,_that.productId,_that.title,_that.imageUrl,_that.skuLabel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String orderNumber,  String itemId,  String productId,  String title,  String imageUrl,  String? skuLabel)  $default,) {final _that = this;
switch (_that) {
case _ReviewTargetModel():
return $default(_that.orderNumber,_that.itemId,_that.productId,_that.title,_that.imageUrl,_that.skuLabel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String orderNumber,  String itemId,  String productId,  String title,  String imageUrl,  String? skuLabel)?  $default,) {final _that = this;
switch (_that) {
case _ReviewTargetModel() when $default != null:
return $default(_that.orderNumber,_that.itemId,_that.productId,_that.title,_that.imageUrl,_that.skuLabel);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReviewTargetModel implements ReviewTargetModel {
  const _ReviewTargetModel({required this.orderNumber, required this.itemId, required this.productId, required this.title, required this.imageUrl, this.skuLabel});
  factory _ReviewTargetModel.fromJson(Map<String, dynamic> json) => _$ReviewTargetModelFromJson(json);

@override final  String orderNumber;
@override final  String itemId;
@override final  String productId;
@override final  String title;
@override final  String imageUrl;
@override final  String? skuLabel;

/// Create a copy of ReviewTargetModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewTargetModelCopyWith<_ReviewTargetModel> get copyWith => __$ReviewTargetModelCopyWithImpl<_ReviewTargetModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewTargetModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewTargetModel&&(identical(other.orderNumber, orderNumber) || other.orderNumber == orderNumber)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.title, title) || other.title == title)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.skuLabel, skuLabel) || other.skuLabel == skuLabel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,orderNumber,itemId,productId,title,imageUrl,skuLabel);

@override
String toString() {
  return 'ReviewTargetModel(orderNumber: $orderNumber, itemId: $itemId, productId: $productId, title: $title, imageUrl: $imageUrl, skuLabel: $skuLabel)';
}


}

/// @nodoc
abstract mixin class _$ReviewTargetModelCopyWith<$Res> implements $ReviewTargetModelCopyWith<$Res> {
  factory _$ReviewTargetModelCopyWith(_ReviewTargetModel value, $Res Function(_ReviewTargetModel) _then) = __$ReviewTargetModelCopyWithImpl;
@override @useResult
$Res call({
 String orderNumber, String itemId, String productId, String title, String imageUrl, String? skuLabel
});




}
/// @nodoc
class __$ReviewTargetModelCopyWithImpl<$Res>
    implements _$ReviewTargetModelCopyWith<$Res> {
  __$ReviewTargetModelCopyWithImpl(this._self, this._then);

  final _ReviewTargetModel _self;
  final $Res Function(_ReviewTargetModel) _then;

/// Create a copy of ReviewTargetModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? orderNumber = null,Object? itemId = null,Object? productId = null,Object? title = null,Object? imageUrl = null,Object? skuLabel = freezed,}) {
  return _then(_ReviewTargetModel(
orderNumber: null == orderNumber ? _self.orderNumber : orderNumber // ignore: cast_nullable_to_non_nullable
as String,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,skuLabel: freezed == skuLabel ? _self.skuLabel : skuLabel // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$MyReviewModel {

 String get id; String get productId; String get title; String get imageUrl; int get rating; String get text; DateTime get date;/// moderation, published, rejected.
 String get status; String? get rejectReason; String? get storeReply;
/// Create a copy of MyReviewModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyReviewModelCopyWith<MyReviewModel> get copyWith => _$MyReviewModelCopyWithImpl<MyReviewModel>(this as MyReviewModel, _$identity);

  /// Serializes this MyReviewModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyReviewModel&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.title, title) || other.title == title)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.text, text) || other.text == text)&&(identical(other.date, date) || other.date == date)&&(identical(other.status, status) || other.status == status)&&(identical(other.rejectReason, rejectReason) || other.rejectReason == rejectReason)&&(identical(other.storeReply, storeReply) || other.storeReply == storeReply));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,productId,title,imageUrl,rating,text,date,status,rejectReason,storeReply);

@override
String toString() {
  return 'MyReviewModel(id: $id, productId: $productId, title: $title, imageUrl: $imageUrl, rating: $rating, text: $text, date: $date, status: $status, rejectReason: $rejectReason, storeReply: $storeReply)';
}


}

/// @nodoc
abstract mixin class $MyReviewModelCopyWith<$Res>  {
  factory $MyReviewModelCopyWith(MyReviewModel value, $Res Function(MyReviewModel) _then) = _$MyReviewModelCopyWithImpl;
@useResult
$Res call({
 String id, String productId, String title, String imageUrl, int rating, String text, DateTime date, String status, String? rejectReason, String? storeReply
});




}
/// @nodoc
class _$MyReviewModelCopyWithImpl<$Res>
    implements $MyReviewModelCopyWith<$Res> {
  _$MyReviewModelCopyWithImpl(this._self, this._then);

  final MyReviewModel _self;
  final $Res Function(MyReviewModel) _then;

/// Create a copy of MyReviewModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? productId = null,Object? title = null,Object? imageUrl = null,Object? rating = null,Object? text = null,Object? date = null,Object? status = null,Object? rejectReason = freezed,Object? storeReply = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,rejectReason: freezed == rejectReason ? _self.rejectReason : rejectReason // ignore: cast_nullable_to_non_nullable
as String?,storeReply: freezed == storeReply ? _self.storeReply : storeReply // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MyReviewModel].
extension MyReviewModelPatterns on MyReviewModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MyReviewModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MyReviewModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MyReviewModel value)  $default,){
final _that = this;
switch (_that) {
case _MyReviewModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MyReviewModel value)?  $default,){
final _that = this;
switch (_that) {
case _MyReviewModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String productId,  String title,  String imageUrl,  int rating,  String text,  DateTime date,  String status,  String? rejectReason,  String? storeReply)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MyReviewModel() when $default != null:
return $default(_that.id,_that.productId,_that.title,_that.imageUrl,_that.rating,_that.text,_that.date,_that.status,_that.rejectReason,_that.storeReply);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String productId,  String title,  String imageUrl,  int rating,  String text,  DateTime date,  String status,  String? rejectReason,  String? storeReply)  $default,) {final _that = this;
switch (_that) {
case _MyReviewModel():
return $default(_that.id,_that.productId,_that.title,_that.imageUrl,_that.rating,_that.text,_that.date,_that.status,_that.rejectReason,_that.storeReply);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String productId,  String title,  String imageUrl,  int rating,  String text,  DateTime date,  String status,  String? rejectReason,  String? storeReply)?  $default,) {final _that = this;
switch (_that) {
case _MyReviewModel() when $default != null:
return $default(_that.id,_that.productId,_that.title,_that.imageUrl,_that.rating,_that.text,_that.date,_that.status,_that.rejectReason,_that.storeReply);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MyReviewModel implements MyReviewModel {
  const _MyReviewModel({required this.id, required this.productId, required this.title, required this.imageUrl, required this.rating, required this.text, required this.date, required this.status, this.rejectReason, this.storeReply});
  factory _MyReviewModel.fromJson(Map<String, dynamic> json) => _$MyReviewModelFromJson(json);

@override final  String id;
@override final  String productId;
@override final  String title;
@override final  String imageUrl;
@override final  int rating;
@override final  String text;
@override final  DateTime date;
/// moderation, published, rejected.
@override final  String status;
@override final  String? rejectReason;
@override final  String? storeReply;

/// Create a copy of MyReviewModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MyReviewModelCopyWith<_MyReviewModel> get copyWith => __$MyReviewModelCopyWithImpl<_MyReviewModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MyReviewModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyReviewModel&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.title, title) || other.title == title)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.text, text) || other.text == text)&&(identical(other.date, date) || other.date == date)&&(identical(other.status, status) || other.status == status)&&(identical(other.rejectReason, rejectReason) || other.rejectReason == rejectReason)&&(identical(other.storeReply, storeReply) || other.storeReply == storeReply));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,productId,title,imageUrl,rating,text,date,status,rejectReason,storeReply);

@override
String toString() {
  return 'MyReviewModel(id: $id, productId: $productId, title: $title, imageUrl: $imageUrl, rating: $rating, text: $text, date: $date, status: $status, rejectReason: $rejectReason, storeReply: $storeReply)';
}


}

/// @nodoc
abstract mixin class _$MyReviewModelCopyWith<$Res> implements $MyReviewModelCopyWith<$Res> {
  factory _$MyReviewModelCopyWith(_MyReviewModel value, $Res Function(_MyReviewModel) _then) = __$MyReviewModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String productId, String title, String imageUrl, int rating, String text, DateTime date, String status, String? rejectReason, String? storeReply
});




}
/// @nodoc
class __$MyReviewModelCopyWithImpl<$Res>
    implements _$MyReviewModelCopyWith<$Res> {
  __$MyReviewModelCopyWithImpl(this._self, this._then);

  final _MyReviewModel _self;
  final $Res Function(_MyReviewModel) _then;

/// Create a copy of MyReviewModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? productId = null,Object? title = null,Object? imageUrl = null,Object? rating = null,Object? text = null,Object? date = null,Object? status = null,Object? rejectReason = freezed,Object? storeReply = freezed,}) {
  return _then(_MyReviewModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,rejectReason: freezed == rejectReason ? _self.rejectReason : rejectReason // ignore: cast_nullable_to_non_nullable
as String?,storeReply: freezed == storeReply ? _self.storeReply : storeReply // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
