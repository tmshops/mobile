// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeContent {

 List<HomeSection> get sections;/// When this content was downloaded (device clock).
 DateTime get fetchedAt;/// `true` when it came from the local cache.
 bool get isFromCache;
/// Create a copy of HomeContent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeContentCopyWith<HomeContent> get copyWith => _$HomeContentCopyWithImpl<HomeContent>(this as HomeContent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeContent&&const DeepCollectionEquality().equals(other.sections, sections)&&(identical(other.fetchedAt, fetchedAt) || other.fetchedAt == fetchedAt)&&(identical(other.isFromCache, isFromCache) || other.isFromCache == isFromCache));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(sections),fetchedAt,isFromCache);

@override
String toString() {
  return 'HomeContent(sections: $sections, fetchedAt: $fetchedAt, isFromCache: $isFromCache)';
}


}

/// @nodoc
abstract mixin class $HomeContentCopyWith<$Res>  {
  factory $HomeContentCopyWith(HomeContent value, $Res Function(HomeContent) _then) = _$HomeContentCopyWithImpl;
@useResult
$Res call({
 List<HomeSection> sections, DateTime fetchedAt, bool isFromCache
});




}
/// @nodoc
class _$HomeContentCopyWithImpl<$Res>
    implements $HomeContentCopyWith<$Res> {
  _$HomeContentCopyWithImpl(this._self, this._then);

  final HomeContent _self;
  final $Res Function(HomeContent) _then;

/// Create a copy of HomeContent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sections = null,Object? fetchedAt = null,Object? isFromCache = null,}) {
  return _then(_self.copyWith(
sections: null == sections ? _self.sections : sections // ignore: cast_nullable_to_non_nullable
as List<HomeSection>,fetchedAt: null == fetchedAt ? _self.fetchedAt : fetchedAt // ignore: cast_nullable_to_non_nullable
as DateTime,isFromCache: null == isFromCache ? _self.isFromCache : isFromCache // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeContent].
extension HomeContentPatterns on HomeContent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeContent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeContent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeContent value)  $default,){
final _that = this;
switch (_that) {
case _HomeContent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeContent value)?  $default,){
final _that = this;
switch (_that) {
case _HomeContent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<HomeSection> sections,  DateTime fetchedAt,  bool isFromCache)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeContent() when $default != null:
return $default(_that.sections,_that.fetchedAt,_that.isFromCache);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<HomeSection> sections,  DateTime fetchedAt,  bool isFromCache)  $default,) {final _that = this;
switch (_that) {
case _HomeContent():
return $default(_that.sections,_that.fetchedAt,_that.isFromCache);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<HomeSection> sections,  DateTime fetchedAt,  bool isFromCache)?  $default,) {final _that = this;
switch (_that) {
case _HomeContent() when $default != null:
return $default(_that.sections,_that.fetchedAt,_that.isFromCache);case _:
  return null;

}
}

}

/// @nodoc


class _HomeContent implements HomeContent {
  const _HomeContent({required final  List<HomeSection> sections, required this.fetchedAt, this.isFromCache = false}): _sections = sections;
  

 final  List<HomeSection> _sections;
@override List<HomeSection> get sections {
  if (_sections is EqualUnmodifiableListView) return _sections;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sections);
}

/// When this content was downloaded (device clock).
@override final  DateTime fetchedAt;
/// `true` when it came from the local cache.
@override@JsonKey() final  bool isFromCache;

/// Create a copy of HomeContent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeContentCopyWith<_HomeContent> get copyWith => __$HomeContentCopyWithImpl<_HomeContent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeContent&&const DeepCollectionEquality().equals(other._sections, _sections)&&(identical(other.fetchedAt, fetchedAt) || other.fetchedAt == fetchedAt)&&(identical(other.isFromCache, isFromCache) || other.isFromCache == isFromCache));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_sections),fetchedAt,isFromCache);

@override
String toString() {
  return 'HomeContent(sections: $sections, fetchedAt: $fetchedAt, isFromCache: $isFromCache)';
}


}

/// @nodoc
abstract mixin class _$HomeContentCopyWith<$Res> implements $HomeContentCopyWith<$Res> {
  factory _$HomeContentCopyWith(_HomeContent value, $Res Function(_HomeContent) _then) = __$HomeContentCopyWithImpl;
@override @useResult
$Res call({
 List<HomeSection> sections, DateTime fetchedAt, bool isFromCache
});




}
/// @nodoc
class __$HomeContentCopyWithImpl<$Res>
    implements _$HomeContentCopyWith<$Res> {
  __$HomeContentCopyWithImpl(this._self, this._then);

  final _HomeContent _self;
  final $Res Function(_HomeContent) _then;

/// Create a copy of HomeContent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sections = null,Object? fetchedAt = null,Object? isFromCache = null,}) {
  return _then(_HomeContent(
sections: null == sections ? _self._sections : sections // ignore: cast_nullable_to_non_nullable
as List<HomeSection>,fetchedAt: null == fetchedAt ? _self.fetchedAt : fetchedAt // ignore: cast_nullable_to_non_nullable
as DateTime,isFromCache: null == isFromCache ? _self.isFromCache : isFromCache // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$ProductPage {

 List<ProductSummary> get items;/// `null` when there are no more pages.
 String? get nextCursor;
/// Create a copy of ProductPage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductPageCopyWith<ProductPage> get copyWith => _$ProductPageCopyWithImpl<ProductPage>(this as ProductPage, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductPage&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),nextCursor);

@override
String toString() {
  return 'ProductPage(items: $items, nextCursor: $nextCursor)';
}


}

/// @nodoc
abstract mixin class $ProductPageCopyWith<$Res>  {
  factory $ProductPageCopyWith(ProductPage value, $Res Function(ProductPage) _then) = _$ProductPageCopyWithImpl;
@useResult
$Res call({
 List<ProductSummary> items, String? nextCursor
});




}
/// @nodoc
class _$ProductPageCopyWithImpl<$Res>
    implements $ProductPageCopyWith<$Res> {
  _$ProductPageCopyWithImpl(this._self, this._then);

  final ProductPage _self;
  final $Res Function(ProductPage) _then;

/// Create a copy of ProductPage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? nextCursor = freezed,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<ProductSummary>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductPage].
extension ProductPagePatterns on ProductPage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductPage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductPage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductPage value)  $default,){
final _that = this;
switch (_that) {
case _ProductPage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductPage value)?  $default,){
final _that = this;
switch (_that) {
case _ProductPage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ProductSummary> items,  String? nextCursor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductPage() when $default != null:
return $default(_that.items,_that.nextCursor);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ProductSummary> items,  String? nextCursor)  $default,) {final _that = this;
switch (_that) {
case _ProductPage():
return $default(_that.items,_that.nextCursor);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ProductSummary> items,  String? nextCursor)?  $default,) {final _that = this;
switch (_that) {
case _ProductPage() when $default != null:
return $default(_that.items,_that.nextCursor);case _:
  return null;

}
}

}

/// @nodoc


class _ProductPage implements ProductPage {
  const _ProductPage({required final  List<ProductSummary> items, this.nextCursor}): _items = items;
  

 final  List<ProductSummary> _items;
@override List<ProductSummary> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

/// `null` when there are no more pages.
@override final  String? nextCursor;

/// Create a copy of ProductPage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductPageCopyWith<_ProductPage> get copyWith => __$ProductPageCopyWithImpl<_ProductPage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductPage&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),nextCursor);

@override
String toString() {
  return 'ProductPage(items: $items, nextCursor: $nextCursor)';
}


}

/// @nodoc
abstract mixin class _$ProductPageCopyWith<$Res> implements $ProductPageCopyWith<$Res> {
  factory _$ProductPageCopyWith(_ProductPage value, $Res Function(_ProductPage) _then) = __$ProductPageCopyWithImpl;
@override @useResult
$Res call({
 List<ProductSummary> items, String? nextCursor
});




}
/// @nodoc
class __$ProductPageCopyWithImpl<$Res>
    implements _$ProductPageCopyWith<$Res> {
  __$ProductPageCopyWithImpl(this._self, this._then);

  final _ProductPage _self;
  final $Res Function(_ProductPage) _then;

/// Create a copy of ProductPage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? nextCursor = freezed,}) {
  return _then(_ProductPage(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<ProductSummary>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
