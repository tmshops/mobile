// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductReview {

 String get id; String get author; DateTime get date; int get rating; String get text;/// «Цвет: чёрный, размер M».
 String? get skuLabel; List<String> get photoUrls;/// Imported from the marketplace and machine-translated.
 bool get isTranslated; String? get storeReply;
/// Create a copy of ProductReview
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductReviewCopyWith<ProductReview> get copyWith => _$ProductReviewCopyWithImpl<ProductReview>(this as ProductReview, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductReview&&(identical(other.id, id) || other.id == id)&&(identical(other.author, author) || other.author == author)&&(identical(other.date, date) || other.date == date)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.text, text) || other.text == text)&&(identical(other.skuLabel, skuLabel) || other.skuLabel == skuLabel)&&const DeepCollectionEquality().equals(other.photoUrls, photoUrls)&&(identical(other.isTranslated, isTranslated) || other.isTranslated == isTranslated)&&(identical(other.storeReply, storeReply) || other.storeReply == storeReply));
}


@override
int get hashCode => Object.hash(runtimeType,id,author,date,rating,text,skuLabel,const DeepCollectionEquality().hash(photoUrls),isTranslated,storeReply);

@override
String toString() {
  return 'ProductReview(id: $id, author: $author, date: $date, rating: $rating, text: $text, skuLabel: $skuLabel, photoUrls: $photoUrls, isTranslated: $isTranslated, storeReply: $storeReply)';
}


}

/// @nodoc
abstract mixin class $ProductReviewCopyWith<$Res>  {
  factory $ProductReviewCopyWith(ProductReview value, $Res Function(ProductReview) _then) = _$ProductReviewCopyWithImpl;
@useResult
$Res call({
 String id, String author, DateTime date, int rating, String text, String? skuLabel, List<String> photoUrls, bool isTranslated, String? storeReply
});




}
/// @nodoc
class _$ProductReviewCopyWithImpl<$Res>
    implements $ProductReviewCopyWith<$Res> {
  _$ProductReviewCopyWithImpl(this._self, this._then);

  final ProductReview _self;
  final $Res Function(ProductReview) _then;

/// Create a copy of ProductReview
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


/// Adds pattern-matching-related methods to [ProductReview].
extension ProductReviewPatterns on ProductReview {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductReview value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductReview() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductReview value)  $default,){
final _that = this;
switch (_that) {
case _ProductReview():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductReview value)?  $default,){
final _that = this;
switch (_that) {
case _ProductReview() when $default != null:
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
case _ProductReview() when $default != null:
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
case _ProductReview():
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
case _ProductReview() when $default != null:
return $default(_that.id,_that.author,_that.date,_that.rating,_that.text,_that.skuLabel,_that.photoUrls,_that.isTranslated,_that.storeReply);case _:
  return null;

}
}

}

/// @nodoc


class _ProductReview implements ProductReview {
  const _ProductReview({required this.id, required this.author, required this.date, required this.rating, required this.text, this.skuLabel, final  List<String> photoUrls = const <String>[], this.isTranslated = false, this.storeReply}): _photoUrls = photoUrls;
  

@override final  String id;
@override final  String author;
@override final  DateTime date;
@override final  int rating;
@override final  String text;
/// «Цвет: чёрный, размер M».
@override final  String? skuLabel;
 final  List<String> _photoUrls;
@override@JsonKey() List<String> get photoUrls {
  if (_photoUrls is EqualUnmodifiableListView) return _photoUrls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_photoUrls);
}

/// Imported from the marketplace and machine-translated.
@override@JsonKey() final  bool isTranslated;
@override final  String? storeReply;

/// Create a copy of ProductReview
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductReviewCopyWith<_ProductReview> get copyWith => __$ProductReviewCopyWithImpl<_ProductReview>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductReview&&(identical(other.id, id) || other.id == id)&&(identical(other.author, author) || other.author == author)&&(identical(other.date, date) || other.date == date)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.text, text) || other.text == text)&&(identical(other.skuLabel, skuLabel) || other.skuLabel == skuLabel)&&const DeepCollectionEquality().equals(other._photoUrls, _photoUrls)&&(identical(other.isTranslated, isTranslated) || other.isTranslated == isTranslated)&&(identical(other.storeReply, storeReply) || other.storeReply == storeReply));
}


@override
int get hashCode => Object.hash(runtimeType,id,author,date,rating,text,skuLabel,const DeepCollectionEquality().hash(_photoUrls),isTranslated,storeReply);

@override
String toString() {
  return 'ProductReview(id: $id, author: $author, date: $date, rating: $rating, text: $text, skuLabel: $skuLabel, photoUrls: $photoUrls, isTranslated: $isTranslated, storeReply: $storeReply)';
}


}

/// @nodoc
abstract mixin class _$ProductReviewCopyWith<$Res> implements $ProductReviewCopyWith<$Res> {
  factory _$ProductReviewCopyWith(_ProductReview value, $Res Function(_ProductReview) _then) = __$ProductReviewCopyWithImpl;
@override @useResult
$Res call({
 String id, String author, DateTime date, int rating, String text, String? skuLabel, List<String> photoUrls, bool isTranslated, String? storeReply
});




}
/// @nodoc
class __$ProductReviewCopyWithImpl<$Res>
    implements _$ProductReviewCopyWith<$Res> {
  __$ProductReviewCopyWithImpl(this._self, this._then);

  final _ProductReview _self;
  final $Res Function(_ProductReview) _then;

/// Create a copy of ProductReview
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? author = null,Object? date = null,Object? rating = null,Object? text = null,Object? skuLabel = freezed,Object? photoUrls = null,Object? isTranslated = null,Object? storeReply = freezed,}) {
  return _then(_ProductReview(
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
mixin _$ReviewsSummary {

 double get average; int get count;/// Stars (1–5) → how many reviews gave them.
 Map<int, int> get distribution;
/// Create a copy of ReviewsSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewsSummaryCopyWith<ReviewsSummary> get copyWith => _$ReviewsSummaryCopyWithImpl<ReviewsSummary>(this as ReviewsSummary, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewsSummary&&(identical(other.average, average) || other.average == average)&&(identical(other.count, count) || other.count == count)&&const DeepCollectionEquality().equals(other.distribution, distribution));
}


@override
int get hashCode => Object.hash(runtimeType,average,count,const DeepCollectionEquality().hash(distribution));

@override
String toString() {
  return 'ReviewsSummary(average: $average, count: $count, distribution: $distribution)';
}


}

/// @nodoc
abstract mixin class $ReviewsSummaryCopyWith<$Res>  {
  factory $ReviewsSummaryCopyWith(ReviewsSummary value, $Res Function(ReviewsSummary) _then) = _$ReviewsSummaryCopyWithImpl;
@useResult
$Res call({
 double average, int count, Map<int, int> distribution
});




}
/// @nodoc
class _$ReviewsSummaryCopyWithImpl<$Res>
    implements $ReviewsSummaryCopyWith<$Res> {
  _$ReviewsSummaryCopyWithImpl(this._self, this._then);

  final ReviewsSummary _self;
  final $Res Function(ReviewsSummary) _then;

/// Create a copy of ReviewsSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? average = null,Object? count = null,Object? distribution = null,}) {
  return _then(_self.copyWith(
average: null == average ? _self.average : average // ignore: cast_nullable_to_non_nullable
as double,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,distribution: null == distribution ? _self.distribution : distribution // ignore: cast_nullable_to_non_nullable
as Map<int, int>,
  ));
}

}


/// Adds pattern-matching-related methods to [ReviewsSummary].
extension ReviewsSummaryPatterns on ReviewsSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewsSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewsSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewsSummary value)  $default,){
final _that = this;
switch (_that) {
case _ReviewsSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewsSummary value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewsSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double average,  int count,  Map<int, int> distribution)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReviewsSummary() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double average,  int count,  Map<int, int> distribution)  $default,) {final _that = this;
switch (_that) {
case _ReviewsSummary():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double average,  int count,  Map<int, int> distribution)?  $default,) {final _that = this;
switch (_that) {
case _ReviewsSummary() when $default != null:
return $default(_that.average,_that.count,_that.distribution);case _:
  return null;

}
}

}

/// @nodoc


class _ReviewsSummary implements ReviewsSummary {
  const _ReviewsSummary({required this.average, required this.count, required final  Map<int, int> distribution}): _distribution = distribution;
  

@override final  double average;
@override final  int count;
/// Stars (1–5) → how many reviews gave them.
 final  Map<int, int> _distribution;
/// Stars (1–5) → how many reviews gave them.
@override Map<int, int> get distribution {
  if (_distribution is EqualUnmodifiableMapView) return _distribution;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_distribution);
}


/// Create a copy of ReviewsSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewsSummaryCopyWith<_ReviewsSummary> get copyWith => __$ReviewsSummaryCopyWithImpl<_ReviewsSummary>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewsSummary&&(identical(other.average, average) || other.average == average)&&(identical(other.count, count) || other.count == count)&&const DeepCollectionEquality().equals(other._distribution, _distribution));
}


@override
int get hashCode => Object.hash(runtimeType,average,count,const DeepCollectionEquality().hash(_distribution));

@override
String toString() {
  return 'ReviewsSummary(average: $average, count: $count, distribution: $distribution)';
}


}

/// @nodoc
abstract mixin class _$ReviewsSummaryCopyWith<$Res> implements $ReviewsSummaryCopyWith<$Res> {
  factory _$ReviewsSummaryCopyWith(_ReviewsSummary value, $Res Function(_ReviewsSummary) _then) = __$ReviewsSummaryCopyWithImpl;
@override @useResult
$Res call({
 double average, int count, Map<int, int> distribution
});




}
/// @nodoc
class __$ReviewsSummaryCopyWithImpl<$Res>
    implements _$ReviewsSummaryCopyWith<$Res> {
  __$ReviewsSummaryCopyWithImpl(this._self, this._then);

  final _ReviewsSummary _self;
  final $Res Function(_ReviewsSummary) _then;

/// Create a copy of ReviewsSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? average = null,Object? count = null,Object? distribution = null,}) {
  return _then(_ReviewsSummary(
average: null == average ? _self.average : average // ignore: cast_nullable_to_non_nullable
as double,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,distribution: null == distribution ? _self._distribution : distribution // ignore: cast_nullable_to_non_nullable
as Map<int, int>,
  ));
}


}

/// @nodoc
mixin _$ReviewsPage {

 ReviewsSummary get summary; List<ProductReview> get items; String? get nextCursor;
/// Create a copy of ReviewsPage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewsPageCopyWith<ReviewsPage> get copyWith => _$ReviewsPageCopyWithImpl<ReviewsPage>(this as ReviewsPage, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewsPage&&(identical(other.summary, summary) || other.summary == summary)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor));
}


@override
int get hashCode => Object.hash(runtimeType,summary,const DeepCollectionEquality().hash(items),nextCursor);

@override
String toString() {
  return 'ReviewsPage(summary: $summary, items: $items, nextCursor: $nextCursor)';
}


}

/// @nodoc
abstract mixin class $ReviewsPageCopyWith<$Res>  {
  factory $ReviewsPageCopyWith(ReviewsPage value, $Res Function(ReviewsPage) _then) = _$ReviewsPageCopyWithImpl;
@useResult
$Res call({
 ReviewsSummary summary, List<ProductReview> items, String? nextCursor
});


$ReviewsSummaryCopyWith<$Res> get summary;

}
/// @nodoc
class _$ReviewsPageCopyWithImpl<$Res>
    implements $ReviewsPageCopyWith<$Res> {
  _$ReviewsPageCopyWithImpl(this._self, this._then);

  final ReviewsPage _self;
  final $Res Function(ReviewsPage) _then;

/// Create a copy of ReviewsPage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? summary = null,Object? items = null,Object? nextCursor = freezed,}) {
  return _then(_self.copyWith(
summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as ReviewsSummary,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<ProductReview>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of ReviewsPage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewsSummaryCopyWith<$Res> get summary {
  
  return $ReviewsSummaryCopyWith<$Res>(_self.summary, (value) {
    return _then(_self.copyWith(summary: value));
  });
}
}


/// Adds pattern-matching-related methods to [ReviewsPage].
extension ReviewsPagePatterns on ReviewsPage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewsPage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewsPage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewsPage value)  $default,){
final _that = this;
switch (_that) {
case _ReviewsPage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewsPage value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewsPage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ReviewsSummary summary,  List<ProductReview> items,  String? nextCursor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReviewsPage() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ReviewsSummary summary,  List<ProductReview> items,  String? nextCursor)  $default,) {final _that = this;
switch (_that) {
case _ReviewsPage():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ReviewsSummary summary,  List<ProductReview> items,  String? nextCursor)?  $default,) {final _that = this;
switch (_that) {
case _ReviewsPage() when $default != null:
return $default(_that.summary,_that.items,_that.nextCursor);case _:
  return null;

}
}

}

/// @nodoc


class _ReviewsPage implements ReviewsPage {
  const _ReviewsPage({required this.summary, required final  List<ProductReview> items, this.nextCursor}): _items = items;
  

@override final  ReviewsSummary summary;
 final  List<ProductReview> _items;
@override List<ProductReview> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  String? nextCursor;

/// Create a copy of ReviewsPage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewsPageCopyWith<_ReviewsPage> get copyWith => __$ReviewsPageCopyWithImpl<_ReviewsPage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewsPage&&(identical(other.summary, summary) || other.summary == summary)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor));
}


@override
int get hashCode => Object.hash(runtimeType,summary,const DeepCollectionEquality().hash(_items),nextCursor);

@override
String toString() {
  return 'ReviewsPage(summary: $summary, items: $items, nextCursor: $nextCursor)';
}


}

/// @nodoc
abstract mixin class _$ReviewsPageCopyWith<$Res> implements $ReviewsPageCopyWith<$Res> {
  factory _$ReviewsPageCopyWith(_ReviewsPage value, $Res Function(_ReviewsPage) _then) = __$ReviewsPageCopyWithImpl;
@override @useResult
$Res call({
 ReviewsSummary summary, List<ProductReview> items, String? nextCursor
});


@override $ReviewsSummaryCopyWith<$Res> get summary;

}
/// @nodoc
class __$ReviewsPageCopyWithImpl<$Res>
    implements _$ReviewsPageCopyWith<$Res> {
  __$ReviewsPageCopyWithImpl(this._self, this._then);

  final _ReviewsPage _self;
  final $Res Function(_ReviewsPage) _then;

/// Create a copy of ReviewsPage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? summary = null,Object? items = null,Object? nextCursor = freezed,}) {
  return _then(_ReviewsPage(
summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as ReviewsSummary,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<ProductReview>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of ReviewsPage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewsSummaryCopyWith<$Res> get summary {
  
  return $ReviewsSummaryCopyWith<$Res>(_self.summary, (value) {
    return _then(_self.copyWith(summary: value));
  });
}
}

/// @nodoc
mixin _$ReviewTarget {

 String get orderNumber; String get itemId; String get productId; String get title; String get imageUrl; String? get skuLabel;
/// Create a copy of ReviewTarget
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewTargetCopyWith<ReviewTarget> get copyWith => _$ReviewTargetCopyWithImpl<ReviewTarget>(this as ReviewTarget, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewTarget&&(identical(other.orderNumber, orderNumber) || other.orderNumber == orderNumber)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.title, title) || other.title == title)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.skuLabel, skuLabel) || other.skuLabel == skuLabel));
}


@override
int get hashCode => Object.hash(runtimeType,orderNumber,itemId,productId,title,imageUrl,skuLabel);

@override
String toString() {
  return 'ReviewTarget(orderNumber: $orderNumber, itemId: $itemId, productId: $productId, title: $title, imageUrl: $imageUrl, skuLabel: $skuLabel)';
}


}

/// @nodoc
abstract mixin class $ReviewTargetCopyWith<$Res>  {
  factory $ReviewTargetCopyWith(ReviewTarget value, $Res Function(ReviewTarget) _then) = _$ReviewTargetCopyWithImpl;
@useResult
$Res call({
 String orderNumber, String itemId, String productId, String title, String imageUrl, String? skuLabel
});




}
/// @nodoc
class _$ReviewTargetCopyWithImpl<$Res>
    implements $ReviewTargetCopyWith<$Res> {
  _$ReviewTargetCopyWithImpl(this._self, this._then);

  final ReviewTarget _self;
  final $Res Function(ReviewTarget) _then;

/// Create a copy of ReviewTarget
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


/// Adds pattern-matching-related methods to [ReviewTarget].
extension ReviewTargetPatterns on ReviewTarget {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewTarget value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewTarget() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewTarget value)  $default,){
final _that = this;
switch (_that) {
case _ReviewTarget():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewTarget value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewTarget() when $default != null:
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
case _ReviewTarget() when $default != null:
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
case _ReviewTarget():
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
case _ReviewTarget() when $default != null:
return $default(_that.orderNumber,_that.itemId,_that.productId,_that.title,_that.imageUrl,_that.skuLabel);case _:
  return null;

}
}

}

/// @nodoc


class _ReviewTarget implements ReviewTarget {
  const _ReviewTarget({required this.orderNumber, required this.itemId, required this.productId, required this.title, required this.imageUrl, this.skuLabel});
  

@override final  String orderNumber;
@override final  String itemId;
@override final  String productId;
@override final  String title;
@override final  String imageUrl;
@override final  String? skuLabel;

/// Create a copy of ReviewTarget
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewTargetCopyWith<_ReviewTarget> get copyWith => __$ReviewTargetCopyWithImpl<_ReviewTarget>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewTarget&&(identical(other.orderNumber, orderNumber) || other.orderNumber == orderNumber)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.title, title) || other.title == title)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.skuLabel, skuLabel) || other.skuLabel == skuLabel));
}


@override
int get hashCode => Object.hash(runtimeType,orderNumber,itemId,productId,title,imageUrl,skuLabel);

@override
String toString() {
  return 'ReviewTarget(orderNumber: $orderNumber, itemId: $itemId, productId: $productId, title: $title, imageUrl: $imageUrl, skuLabel: $skuLabel)';
}


}

/// @nodoc
abstract mixin class _$ReviewTargetCopyWith<$Res> implements $ReviewTargetCopyWith<$Res> {
  factory _$ReviewTargetCopyWith(_ReviewTarget value, $Res Function(_ReviewTarget) _then) = __$ReviewTargetCopyWithImpl;
@override @useResult
$Res call({
 String orderNumber, String itemId, String productId, String title, String imageUrl, String? skuLabel
});




}
/// @nodoc
class __$ReviewTargetCopyWithImpl<$Res>
    implements _$ReviewTargetCopyWith<$Res> {
  __$ReviewTargetCopyWithImpl(this._self, this._then);

  final _ReviewTarget _self;
  final $Res Function(_ReviewTarget) _then;

/// Create a copy of ReviewTarget
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? orderNumber = null,Object? itemId = null,Object? productId = null,Object? title = null,Object? imageUrl = null,Object? skuLabel = freezed,}) {
  return _then(_ReviewTarget(
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
mixin _$MyReview {

 String get id; String get productId; String get title; String get imageUrl; int get rating; String get text; DateTime get date; MyReviewStatus get status;/// Server text for a rejected review.
 String? get rejectReason; String? get storeReply;
/// Create a copy of MyReview
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyReviewCopyWith<MyReview> get copyWith => _$MyReviewCopyWithImpl<MyReview>(this as MyReview, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyReview&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.title, title) || other.title == title)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.text, text) || other.text == text)&&(identical(other.date, date) || other.date == date)&&(identical(other.status, status) || other.status == status)&&(identical(other.rejectReason, rejectReason) || other.rejectReason == rejectReason)&&(identical(other.storeReply, storeReply) || other.storeReply == storeReply));
}


@override
int get hashCode => Object.hash(runtimeType,id,productId,title,imageUrl,rating,text,date,status,rejectReason,storeReply);

@override
String toString() {
  return 'MyReview(id: $id, productId: $productId, title: $title, imageUrl: $imageUrl, rating: $rating, text: $text, date: $date, status: $status, rejectReason: $rejectReason, storeReply: $storeReply)';
}


}

/// @nodoc
abstract mixin class $MyReviewCopyWith<$Res>  {
  factory $MyReviewCopyWith(MyReview value, $Res Function(MyReview) _then) = _$MyReviewCopyWithImpl;
@useResult
$Res call({
 String id, String productId, String title, String imageUrl, int rating, String text, DateTime date, MyReviewStatus status, String? rejectReason, String? storeReply
});




}
/// @nodoc
class _$MyReviewCopyWithImpl<$Res>
    implements $MyReviewCopyWith<$Res> {
  _$MyReviewCopyWithImpl(this._self, this._then);

  final MyReview _self;
  final $Res Function(MyReview) _then;

/// Create a copy of MyReview
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
as MyReviewStatus,rejectReason: freezed == rejectReason ? _self.rejectReason : rejectReason // ignore: cast_nullable_to_non_nullable
as String?,storeReply: freezed == storeReply ? _self.storeReply : storeReply // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MyReview].
extension MyReviewPatterns on MyReview {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MyReview value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MyReview() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MyReview value)  $default,){
final _that = this;
switch (_that) {
case _MyReview():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MyReview value)?  $default,){
final _that = this;
switch (_that) {
case _MyReview() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String productId,  String title,  String imageUrl,  int rating,  String text,  DateTime date,  MyReviewStatus status,  String? rejectReason,  String? storeReply)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MyReview() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String productId,  String title,  String imageUrl,  int rating,  String text,  DateTime date,  MyReviewStatus status,  String? rejectReason,  String? storeReply)  $default,) {final _that = this;
switch (_that) {
case _MyReview():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String productId,  String title,  String imageUrl,  int rating,  String text,  DateTime date,  MyReviewStatus status,  String? rejectReason,  String? storeReply)?  $default,) {final _that = this;
switch (_that) {
case _MyReview() when $default != null:
return $default(_that.id,_that.productId,_that.title,_that.imageUrl,_that.rating,_that.text,_that.date,_that.status,_that.rejectReason,_that.storeReply);case _:
  return null;

}
}

}

/// @nodoc


class _MyReview implements MyReview {
  const _MyReview({required this.id, required this.productId, required this.title, required this.imageUrl, required this.rating, required this.text, required this.date, required this.status, this.rejectReason, this.storeReply});
  

@override final  String id;
@override final  String productId;
@override final  String title;
@override final  String imageUrl;
@override final  int rating;
@override final  String text;
@override final  DateTime date;
@override final  MyReviewStatus status;
/// Server text for a rejected review.
@override final  String? rejectReason;
@override final  String? storeReply;

/// Create a copy of MyReview
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MyReviewCopyWith<_MyReview> get copyWith => __$MyReviewCopyWithImpl<_MyReview>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyReview&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.title, title) || other.title == title)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.text, text) || other.text == text)&&(identical(other.date, date) || other.date == date)&&(identical(other.status, status) || other.status == status)&&(identical(other.rejectReason, rejectReason) || other.rejectReason == rejectReason)&&(identical(other.storeReply, storeReply) || other.storeReply == storeReply));
}


@override
int get hashCode => Object.hash(runtimeType,id,productId,title,imageUrl,rating,text,date,status,rejectReason,storeReply);

@override
String toString() {
  return 'MyReview(id: $id, productId: $productId, title: $title, imageUrl: $imageUrl, rating: $rating, text: $text, date: $date, status: $status, rejectReason: $rejectReason, storeReply: $storeReply)';
}


}

/// @nodoc
abstract mixin class _$MyReviewCopyWith<$Res> implements $MyReviewCopyWith<$Res> {
  factory _$MyReviewCopyWith(_MyReview value, $Res Function(_MyReview) _then) = __$MyReviewCopyWithImpl;
@override @useResult
$Res call({
 String id, String productId, String title, String imageUrl, int rating, String text, DateTime date, MyReviewStatus status, String? rejectReason, String? storeReply
});




}
/// @nodoc
class __$MyReviewCopyWithImpl<$Res>
    implements _$MyReviewCopyWith<$Res> {
  __$MyReviewCopyWithImpl(this._self, this._then);

  final _MyReview _self;
  final $Res Function(_MyReview) _then;

/// Create a copy of MyReview
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? productId = null,Object? title = null,Object? imageUrl = null,Object? rating = null,Object? text = null,Object? date = null,Object? status = null,Object? rejectReason = freezed,Object? storeReply = freezed,}) {
  return _then(_MyReview(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MyReviewStatus,rejectReason: freezed == rejectReason ? _self.rejectReason : rejectReason // ignore: cast_nullable_to_non_nullable
as String?,storeReply: freezed == storeReply ? _self.storeReply : storeReply // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
