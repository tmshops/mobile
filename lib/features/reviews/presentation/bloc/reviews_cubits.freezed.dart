// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reviews_cubits.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductReviewsState {

 bool get isLoading; ReviewFilter get filter;/// Kept while a filter loads, so the header does not jump.
 ReviewsSummary? get summary; List<ProductReview> get items; String? get nextCursor; bool get isLoadingMore; bool get isNotFound; Failure? get failure; Failure? get moreFailure;
/// Create a copy of ProductReviewsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductReviewsStateCopyWith<ProductReviewsState> get copyWith => _$ProductReviewsStateCopyWithImpl<ProductReviewsState>(this as ProductReviewsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductReviewsState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.filter, filter) || other.filter == filter)&&(identical(other.summary, summary) || other.summary == summary)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.isNotFound, isNotFound) || other.isNotFound == isNotFound)&&(identical(other.failure, failure) || other.failure == failure)&&(identical(other.moreFailure, moreFailure) || other.moreFailure == moreFailure));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,filter,summary,const DeepCollectionEquality().hash(items),nextCursor,isLoadingMore,isNotFound,failure,moreFailure);

@override
String toString() {
  return 'ProductReviewsState(isLoading: $isLoading, filter: $filter, summary: $summary, items: $items, nextCursor: $nextCursor, isLoadingMore: $isLoadingMore, isNotFound: $isNotFound, failure: $failure, moreFailure: $moreFailure)';
}


}

/// @nodoc
abstract mixin class $ProductReviewsStateCopyWith<$Res>  {
  factory $ProductReviewsStateCopyWith(ProductReviewsState value, $Res Function(ProductReviewsState) _then) = _$ProductReviewsStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, ReviewFilter filter, ReviewsSummary? summary, List<ProductReview> items, String? nextCursor, bool isLoadingMore, bool isNotFound, Failure? failure, Failure? moreFailure
});


$ReviewsSummaryCopyWith<$Res>? get summary;

}
/// @nodoc
class _$ProductReviewsStateCopyWithImpl<$Res>
    implements $ProductReviewsStateCopyWith<$Res> {
  _$ProductReviewsStateCopyWithImpl(this._self, this._then);

  final ProductReviewsState _self;
  final $Res Function(ProductReviewsState) _then;

/// Create a copy of ProductReviewsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? filter = null,Object? summary = freezed,Object? items = null,Object? nextCursor = freezed,Object? isLoadingMore = null,Object? isNotFound = null,Object? failure = freezed,Object? moreFailure = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,filter: null == filter ? _self.filter : filter // ignore: cast_nullable_to_non_nullable
as ReviewFilter,summary: freezed == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as ReviewsSummary?,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<ProductReview>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,isNotFound: null == isNotFound ? _self.isNotFound : isNotFound // ignore: cast_nullable_to_non_nullable
as bool,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,moreFailure: freezed == moreFailure ? _self.moreFailure : moreFailure // ignore: cast_nullable_to_non_nullable
as Failure?,
  ));
}
/// Create a copy of ProductReviewsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewsSummaryCopyWith<$Res>? get summary {
    if (_self.summary == null) {
    return null;
  }

  return $ReviewsSummaryCopyWith<$Res>(_self.summary!, (value) {
    return _then(_self.copyWith(summary: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProductReviewsState].
extension ProductReviewsStatePatterns on ProductReviewsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductReviewsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductReviewsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductReviewsState value)  $default,){
final _that = this;
switch (_that) {
case _ProductReviewsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductReviewsState value)?  $default,){
final _that = this;
switch (_that) {
case _ProductReviewsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  ReviewFilter filter,  ReviewsSummary? summary,  List<ProductReview> items,  String? nextCursor,  bool isLoadingMore,  bool isNotFound,  Failure? failure,  Failure? moreFailure)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductReviewsState() when $default != null:
return $default(_that.isLoading,_that.filter,_that.summary,_that.items,_that.nextCursor,_that.isLoadingMore,_that.isNotFound,_that.failure,_that.moreFailure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  ReviewFilter filter,  ReviewsSummary? summary,  List<ProductReview> items,  String? nextCursor,  bool isLoadingMore,  bool isNotFound,  Failure? failure,  Failure? moreFailure)  $default,) {final _that = this;
switch (_that) {
case _ProductReviewsState():
return $default(_that.isLoading,_that.filter,_that.summary,_that.items,_that.nextCursor,_that.isLoadingMore,_that.isNotFound,_that.failure,_that.moreFailure);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  ReviewFilter filter,  ReviewsSummary? summary,  List<ProductReview> items,  String? nextCursor,  bool isLoadingMore,  bool isNotFound,  Failure? failure,  Failure? moreFailure)?  $default,) {final _that = this;
switch (_that) {
case _ProductReviewsState() when $default != null:
return $default(_that.isLoading,_that.filter,_that.summary,_that.items,_that.nextCursor,_that.isLoadingMore,_that.isNotFound,_that.failure,_that.moreFailure);case _:
  return null;

}
}

}

/// @nodoc


class _ProductReviewsState extends ProductReviewsState {
  const _ProductReviewsState({this.isLoading = true, this.filter = ReviewFilter.all, this.summary, final  List<ProductReview> items = const <ProductReview>[], this.nextCursor, this.isLoadingMore = false, this.isNotFound = false, this.failure, this.moreFailure}): _items = items,super._();
  

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  ReviewFilter filter;
/// Kept while a filter loads, so the header does not jump.
@override final  ReviewsSummary? summary;
 final  List<ProductReview> _items;
@override@JsonKey() List<ProductReview> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  String? nextCursor;
@override@JsonKey() final  bool isLoadingMore;
@override@JsonKey() final  bool isNotFound;
@override final  Failure? failure;
@override final  Failure? moreFailure;

/// Create a copy of ProductReviewsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductReviewsStateCopyWith<_ProductReviewsState> get copyWith => __$ProductReviewsStateCopyWithImpl<_ProductReviewsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductReviewsState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.filter, filter) || other.filter == filter)&&(identical(other.summary, summary) || other.summary == summary)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.isNotFound, isNotFound) || other.isNotFound == isNotFound)&&(identical(other.failure, failure) || other.failure == failure)&&(identical(other.moreFailure, moreFailure) || other.moreFailure == moreFailure));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,filter,summary,const DeepCollectionEquality().hash(_items),nextCursor,isLoadingMore,isNotFound,failure,moreFailure);

@override
String toString() {
  return 'ProductReviewsState(isLoading: $isLoading, filter: $filter, summary: $summary, items: $items, nextCursor: $nextCursor, isLoadingMore: $isLoadingMore, isNotFound: $isNotFound, failure: $failure, moreFailure: $moreFailure)';
}


}

/// @nodoc
abstract mixin class _$ProductReviewsStateCopyWith<$Res> implements $ProductReviewsStateCopyWith<$Res> {
  factory _$ProductReviewsStateCopyWith(_ProductReviewsState value, $Res Function(_ProductReviewsState) _then) = __$ProductReviewsStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, ReviewFilter filter, ReviewsSummary? summary, List<ProductReview> items, String? nextCursor, bool isLoadingMore, bool isNotFound, Failure? failure, Failure? moreFailure
});


@override $ReviewsSummaryCopyWith<$Res>? get summary;

}
/// @nodoc
class __$ProductReviewsStateCopyWithImpl<$Res>
    implements _$ProductReviewsStateCopyWith<$Res> {
  __$ProductReviewsStateCopyWithImpl(this._self, this._then);

  final _ProductReviewsState _self;
  final $Res Function(_ProductReviewsState) _then;

/// Create a copy of ProductReviewsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? filter = null,Object? summary = freezed,Object? items = null,Object? nextCursor = freezed,Object? isLoadingMore = null,Object? isNotFound = null,Object? failure = freezed,Object? moreFailure = freezed,}) {
  return _then(_ProductReviewsState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,filter: null == filter ? _self.filter : filter // ignore: cast_nullable_to_non_nullable
as ReviewFilter,summary: freezed == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as ReviewsSummary?,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<ProductReview>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,isNotFound: null == isNotFound ? _self.isNotFound : isNotFound // ignore: cast_nullable_to_non_nullable
as bool,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,moreFailure: freezed == moreFailure ? _self.moreFailure : moreFailure // ignore: cast_nullable_to_non_nullable
as Failure?,
  ));
}

/// Create a copy of ProductReviewsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewsSummaryCopyWith<$Res>? get summary {
    if (_self.summary == null) {
    return null;
  }

  return $ReviewsSummaryCopyWith<$Res>(_self.summary!, (value) {
    return _then(_self.copyWith(summary: value));
  });
}
}

/// @nodoc
mixin _$WriteReviewState {

 bool get isLoading; ReviewTarget? get target;/// Not received yet, or already reviewed.
 bool get isNotReviewable;/// 0 until the customer picks stars.
 int get rating; String get text; bool get isSending; bool get isSent;/// Loading the item failed.
 Failure? get loadFailure;/// Sending failed; the form stays filled.
 Failure? get sendFailure;
/// Create a copy of WriteReviewState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WriteReviewStateCopyWith<WriteReviewState> get copyWith => _$WriteReviewStateCopyWithImpl<WriteReviewState>(this as WriteReviewState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WriteReviewState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.target, target) || other.target == target)&&(identical(other.isNotReviewable, isNotReviewable) || other.isNotReviewable == isNotReviewable)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.text, text) || other.text == text)&&(identical(other.isSending, isSending) || other.isSending == isSending)&&(identical(other.isSent, isSent) || other.isSent == isSent)&&(identical(other.loadFailure, loadFailure) || other.loadFailure == loadFailure)&&(identical(other.sendFailure, sendFailure) || other.sendFailure == sendFailure));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,target,isNotReviewable,rating,text,isSending,isSent,loadFailure,sendFailure);

@override
String toString() {
  return 'WriteReviewState(isLoading: $isLoading, target: $target, isNotReviewable: $isNotReviewable, rating: $rating, text: $text, isSending: $isSending, isSent: $isSent, loadFailure: $loadFailure, sendFailure: $sendFailure)';
}


}

/// @nodoc
abstract mixin class $WriteReviewStateCopyWith<$Res>  {
  factory $WriteReviewStateCopyWith(WriteReviewState value, $Res Function(WriteReviewState) _then) = _$WriteReviewStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, ReviewTarget? target, bool isNotReviewable, int rating, String text, bool isSending, bool isSent, Failure? loadFailure, Failure? sendFailure
});


$ReviewTargetCopyWith<$Res>? get target;

}
/// @nodoc
class _$WriteReviewStateCopyWithImpl<$Res>
    implements $WriteReviewStateCopyWith<$Res> {
  _$WriteReviewStateCopyWithImpl(this._self, this._then);

  final WriteReviewState _self;
  final $Res Function(WriteReviewState) _then;

/// Create a copy of WriteReviewState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? target = freezed,Object? isNotReviewable = null,Object? rating = null,Object? text = null,Object? isSending = null,Object? isSent = null,Object? loadFailure = freezed,Object? sendFailure = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,target: freezed == target ? _self.target : target // ignore: cast_nullable_to_non_nullable
as ReviewTarget?,isNotReviewable: null == isNotReviewable ? _self.isNotReviewable : isNotReviewable // ignore: cast_nullable_to_non_nullable
as bool,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,isSending: null == isSending ? _self.isSending : isSending // ignore: cast_nullable_to_non_nullable
as bool,isSent: null == isSent ? _self.isSent : isSent // ignore: cast_nullable_to_non_nullable
as bool,loadFailure: freezed == loadFailure ? _self.loadFailure : loadFailure // ignore: cast_nullable_to_non_nullable
as Failure?,sendFailure: freezed == sendFailure ? _self.sendFailure : sendFailure // ignore: cast_nullable_to_non_nullable
as Failure?,
  ));
}
/// Create a copy of WriteReviewState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewTargetCopyWith<$Res>? get target {
    if (_self.target == null) {
    return null;
  }

  return $ReviewTargetCopyWith<$Res>(_self.target!, (value) {
    return _then(_self.copyWith(target: value));
  });
}
}


/// Adds pattern-matching-related methods to [WriteReviewState].
extension WriteReviewStatePatterns on WriteReviewState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WriteReviewState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WriteReviewState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WriteReviewState value)  $default,){
final _that = this;
switch (_that) {
case _WriteReviewState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WriteReviewState value)?  $default,){
final _that = this;
switch (_that) {
case _WriteReviewState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  ReviewTarget? target,  bool isNotReviewable,  int rating,  String text,  bool isSending,  bool isSent,  Failure? loadFailure,  Failure? sendFailure)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WriteReviewState() when $default != null:
return $default(_that.isLoading,_that.target,_that.isNotReviewable,_that.rating,_that.text,_that.isSending,_that.isSent,_that.loadFailure,_that.sendFailure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  ReviewTarget? target,  bool isNotReviewable,  int rating,  String text,  bool isSending,  bool isSent,  Failure? loadFailure,  Failure? sendFailure)  $default,) {final _that = this;
switch (_that) {
case _WriteReviewState():
return $default(_that.isLoading,_that.target,_that.isNotReviewable,_that.rating,_that.text,_that.isSending,_that.isSent,_that.loadFailure,_that.sendFailure);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  ReviewTarget? target,  bool isNotReviewable,  int rating,  String text,  bool isSending,  bool isSent,  Failure? loadFailure,  Failure? sendFailure)?  $default,) {final _that = this;
switch (_that) {
case _WriteReviewState() when $default != null:
return $default(_that.isLoading,_that.target,_that.isNotReviewable,_that.rating,_that.text,_that.isSending,_that.isSent,_that.loadFailure,_that.sendFailure);case _:
  return null;

}
}

}

/// @nodoc


class _WriteReviewState extends WriteReviewState {
  const _WriteReviewState({this.isLoading = true, this.target, this.isNotReviewable = false, this.rating = 0, this.text = '', this.isSending = false, this.isSent = false, this.loadFailure, this.sendFailure}): super._();
  

@override@JsonKey() final  bool isLoading;
@override final  ReviewTarget? target;
/// Not received yet, or already reviewed.
@override@JsonKey() final  bool isNotReviewable;
/// 0 until the customer picks stars.
@override@JsonKey() final  int rating;
@override@JsonKey() final  String text;
@override@JsonKey() final  bool isSending;
@override@JsonKey() final  bool isSent;
/// Loading the item failed.
@override final  Failure? loadFailure;
/// Sending failed; the form stays filled.
@override final  Failure? sendFailure;

/// Create a copy of WriteReviewState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WriteReviewStateCopyWith<_WriteReviewState> get copyWith => __$WriteReviewStateCopyWithImpl<_WriteReviewState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WriteReviewState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.target, target) || other.target == target)&&(identical(other.isNotReviewable, isNotReviewable) || other.isNotReviewable == isNotReviewable)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.text, text) || other.text == text)&&(identical(other.isSending, isSending) || other.isSending == isSending)&&(identical(other.isSent, isSent) || other.isSent == isSent)&&(identical(other.loadFailure, loadFailure) || other.loadFailure == loadFailure)&&(identical(other.sendFailure, sendFailure) || other.sendFailure == sendFailure));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,target,isNotReviewable,rating,text,isSending,isSent,loadFailure,sendFailure);

@override
String toString() {
  return 'WriteReviewState(isLoading: $isLoading, target: $target, isNotReviewable: $isNotReviewable, rating: $rating, text: $text, isSending: $isSending, isSent: $isSent, loadFailure: $loadFailure, sendFailure: $sendFailure)';
}


}

/// @nodoc
abstract mixin class _$WriteReviewStateCopyWith<$Res> implements $WriteReviewStateCopyWith<$Res> {
  factory _$WriteReviewStateCopyWith(_WriteReviewState value, $Res Function(_WriteReviewState) _then) = __$WriteReviewStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, ReviewTarget? target, bool isNotReviewable, int rating, String text, bool isSending, bool isSent, Failure? loadFailure, Failure? sendFailure
});


@override $ReviewTargetCopyWith<$Res>? get target;

}
/// @nodoc
class __$WriteReviewStateCopyWithImpl<$Res>
    implements _$WriteReviewStateCopyWith<$Res> {
  __$WriteReviewStateCopyWithImpl(this._self, this._then);

  final _WriteReviewState _self;
  final $Res Function(_WriteReviewState) _then;

/// Create a copy of WriteReviewState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? target = freezed,Object? isNotReviewable = null,Object? rating = null,Object? text = null,Object? isSending = null,Object? isSent = null,Object? loadFailure = freezed,Object? sendFailure = freezed,}) {
  return _then(_WriteReviewState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,target: freezed == target ? _self.target : target // ignore: cast_nullable_to_non_nullable
as ReviewTarget?,isNotReviewable: null == isNotReviewable ? _self.isNotReviewable : isNotReviewable // ignore: cast_nullable_to_non_nullable
as bool,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,isSending: null == isSending ? _self.isSending : isSending // ignore: cast_nullable_to_non_nullable
as bool,isSent: null == isSent ? _self.isSent : isSent // ignore: cast_nullable_to_non_nullable
as bool,loadFailure: freezed == loadFailure ? _self.loadFailure : loadFailure // ignore: cast_nullable_to_non_nullable
as Failure?,sendFailure: freezed == sendFailure ? _self.sendFailure : sendFailure // ignore: cast_nullable_to_non_nullable
as Failure?,
  ));
}

/// Create a copy of WriteReviewState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewTargetCopyWith<$Res>? get target {
    if (_self.target == null) {
    return null;
  }

  return $ReviewTargetCopyWith<$Res>(_self.target!, (value) {
    return _then(_self.copyWith(target: value));
  });
}
}

/// @nodoc
mixin _$MyReviewsState {

 bool get isLoading; List<MyReview> get items; Failure? get failure;
/// Create a copy of MyReviewsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyReviewsStateCopyWith<MyReviewsState> get copyWith => _$MyReviewsStateCopyWithImpl<MyReviewsState>(this as MyReviewsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyReviewsState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(items),failure);

@override
String toString() {
  return 'MyReviewsState(isLoading: $isLoading, items: $items, failure: $failure)';
}


}

/// @nodoc
abstract mixin class $MyReviewsStateCopyWith<$Res>  {
  factory $MyReviewsStateCopyWith(MyReviewsState value, $Res Function(MyReviewsState) _then) = _$MyReviewsStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, List<MyReview> items, Failure? failure
});




}
/// @nodoc
class _$MyReviewsStateCopyWithImpl<$Res>
    implements $MyReviewsStateCopyWith<$Res> {
  _$MyReviewsStateCopyWithImpl(this._self, this._then);

  final MyReviewsState _self;
  final $Res Function(MyReviewsState) _then;

/// Create a copy of MyReviewsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? items = null,Object? failure = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<MyReview>,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,
  ));
}

}


/// Adds pattern-matching-related methods to [MyReviewsState].
extension MyReviewsStatePatterns on MyReviewsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MyReviewsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MyReviewsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MyReviewsState value)  $default,){
final _that = this;
switch (_that) {
case _MyReviewsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MyReviewsState value)?  $default,){
final _that = this;
switch (_that) {
case _MyReviewsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  List<MyReview> items,  Failure? failure)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MyReviewsState() when $default != null:
return $default(_that.isLoading,_that.items,_that.failure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  List<MyReview> items,  Failure? failure)  $default,) {final _that = this;
switch (_that) {
case _MyReviewsState():
return $default(_that.isLoading,_that.items,_that.failure);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  List<MyReview> items,  Failure? failure)?  $default,) {final _that = this;
switch (_that) {
case _MyReviewsState() when $default != null:
return $default(_that.isLoading,_that.items,_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class _MyReviewsState implements MyReviewsState {
  const _MyReviewsState({this.isLoading = true, final  List<MyReview> items = const <MyReview>[], this.failure}): _items = items;
  

@override@JsonKey() final  bool isLoading;
 final  List<MyReview> _items;
@override@JsonKey() List<MyReview> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  Failure? failure;

/// Create a copy of MyReviewsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MyReviewsStateCopyWith<_MyReviewsState> get copyWith => __$MyReviewsStateCopyWithImpl<_MyReviewsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyReviewsState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(_items),failure);

@override
String toString() {
  return 'MyReviewsState(isLoading: $isLoading, items: $items, failure: $failure)';
}


}

/// @nodoc
abstract mixin class _$MyReviewsStateCopyWith<$Res> implements $MyReviewsStateCopyWith<$Res> {
  factory _$MyReviewsStateCopyWith(_MyReviewsState value, $Res Function(_MyReviewsState) _then) = __$MyReviewsStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, List<MyReview> items, Failure? failure
});




}
/// @nodoc
class __$MyReviewsStateCopyWithImpl<$Res>
    implements _$MyReviewsStateCopyWith<$Res> {
  __$MyReviewsStateCopyWithImpl(this._self, this._then);

  final _MyReviewsState _self;
  final $Res Function(_MyReviewsState) _then;

/// Create a copy of MyReviewsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? items = null,Object? failure = freezed,}) {
  return _then(_MyReviewsState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<MyReview>,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,
  ));
}


}

// dart format on
