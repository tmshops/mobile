// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_list_page.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductListPage {

 List<ProductSummary> get items;/// All products matching the query, across pages.
 int get total;/// `null` when there are no more pages.
 String? get nextCursor;/// Top-of-category banner; sent with the first page only.
 CategoryBanner? get banner;
/// Create a copy of ProductListPage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductListPageCopyWith<ProductListPage> get copyWith => _$ProductListPageCopyWithImpl<ProductListPage>(this as ProductListPage, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductListPage&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.total, total) || other.total == total)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor)&&(identical(other.banner, banner) || other.banner == banner));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),total,nextCursor,banner);

@override
String toString() {
  return 'ProductListPage(items: $items, total: $total, nextCursor: $nextCursor, banner: $banner)';
}


}

/// @nodoc
abstract mixin class $ProductListPageCopyWith<$Res>  {
  factory $ProductListPageCopyWith(ProductListPage value, $Res Function(ProductListPage) _then) = _$ProductListPageCopyWithImpl;
@useResult
$Res call({
 List<ProductSummary> items, int total, String? nextCursor, CategoryBanner? banner
});


$CategoryBannerCopyWith<$Res>? get banner;

}
/// @nodoc
class _$ProductListPageCopyWithImpl<$Res>
    implements $ProductListPageCopyWith<$Res> {
  _$ProductListPageCopyWithImpl(this._self, this._then);

  final ProductListPage _self;
  final $Res Function(ProductListPage) _then;

/// Create a copy of ProductListPage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? total = null,Object? nextCursor = freezed,Object? banner = freezed,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<ProductSummary>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,banner: freezed == banner ? _self.banner : banner // ignore: cast_nullable_to_non_nullable
as CategoryBanner?,
  ));
}
/// Create a copy of ProductListPage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryBannerCopyWith<$Res>? get banner {
    if (_self.banner == null) {
    return null;
  }

  return $CategoryBannerCopyWith<$Res>(_self.banner!, (value) {
    return _then(_self.copyWith(banner: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProductListPage].
extension ProductListPagePatterns on ProductListPage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductListPage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductListPage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductListPage value)  $default,){
final _that = this;
switch (_that) {
case _ProductListPage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductListPage value)?  $default,){
final _that = this;
switch (_that) {
case _ProductListPage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ProductSummary> items,  int total,  String? nextCursor,  CategoryBanner? banner)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductListPage() when $default != null:
return $default(_that.items,_that.total,_that.nextCursor,_that.banner);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ProductSummary> items,  int total,  String? nextCursor,  CategoryBanner? banner)  $default,) {final _that = this;
switch (_that) {
case _ProductListPage():
return $default(_that.items,_that.total,_that.nextCursor,_that.banner);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ProductSummary> items,  int total,  String? nextCursor,  CategoryBanner? banner)?  $default,) {final _that = this;
switch (_that) {
case _ProductListPage() when $default != null:
return $default(_that.items,_that.total,_that.nextCursor,_that.banner);case _:
  return null;

}
}

}

/// @nodoc


class _ProductListPage implements ProductListPage {
  const _ProductListPage({required final  List<ProductSummary> items, required this.total, this.nextCursor, this.banner}): _items = items;
  

 final  List<ProductSummary> _items;
@override List<ProductSummary> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

/// All products matching the query, across pages.
@override final  int total;
/// `null` when there are no more pages.
@override final  String? nextCursor;
/// Top-of-category banner; sent with the first page only.
@override final  CategoryBanner? banner;

/// Create a copy of ProductListPage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductListPageCopyWith<_ProductListPage> get copyWith => __$ProductListPageCopyWithImpl<_ProductListPage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductListPage&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.total, total) || other.total == total)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor)&&(identical(other.banner, banner) || other.banner == banner));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),total,nextCursor,banner);

@override
String toString() {
  return 'ProductListPage(items: $items, total: $total, nextCursor: $nextCursor, banner: $banner)';
}


}

/// @nodoc
abstract mixin class _$ProductListPageCopyWith<$Res> implements $ProductListPageCopyWith<$Res> {
  factory _$ProductListPageCopyWith(_ProductListPage value, $Res Function(_ProductListPage) _then) = __$ProductListPageCopyWithImpl;
@override @useResult
$Res call({
 List<ProductSummary> items, int total, String? nextCursor, CategoryBanner? banner
});


@override $CategoryBannerCopyWith<$Res>? get banner;

}
/// @nodoc
class __$ProductListPageCopyWithImpl<$Res>
    implements _$ProductListPageCopyWith<$Res> {
  __$ProductListPageCopyWithImpl(this._self, this._then);

  final _ProductListPage _self;
  final $Res Function(_ProductListPage) _then;

/// Create a copy of ProductListPage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? total = null,Object? nextCursor = freezed,Object? banner = freezed,}) {
  return _then(_ProductListPage(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<ProductSummary>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,banner: freezed == banner ? _self.banner : banner // ignore: cast_nullable_to_non_nullable
as CategoryBanner?,
  ));
}

/// Create a copy of ProductListPage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryBannerCopyWith<$Res>? get banner {
    if (_self.banner == null) {
    return null;
  }

  return $CategoryBannerCopyWith<$Res>(_self.banner!, (value) {
    return _then(_self.copyWith(banner: value));
  });
}
}

/// @nodoc
mixin _$CategoryBanner {

 String get imageUrl; String get title;
/// Create a copy of CategoryBanner
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryBannerCopyWith<CategoryBanner> get copyWith => _$CategoryBannerCopyWithImpl<CategoryBanner>(this as CategoryBanner, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryBanner&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.title, title) || other.title == title));
}


@override
int get hashCode => Object.hash(runtimeType,imageUrl,title);

@override
String toString() {
  return 'CategoryBanner(imageUrl: $imageUrl, title: $title)';
}


}

/// @nodoc
abstract mixin class $CategoryBannerCopyWith<$Res>  {
  factory $CategoryBannerCopyWith(CategoryBanner value, $Res Function(CategoryBanner) _then) = _$CategoryBannerCopyWithImpl;
@useResult
$Res call({
 String imageUrl, String title
});




}
/// @nodoc
class _$CategoryBannerCopyWithImpl<$Res>
    implements $CategoryBannerCopyWith<$Res> {
  _$CategoryBannerCopyWithImpl(this._self, this._then);

  final CategoryBanner _self;
  final $Res Function(CategoryBanner) _then;

/// Create a copy of CategoryBanner
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? imageUrl = null,Object? title = null,}) {
  return _then(_self.copyWith(
imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CategoryBanner].
extension CategoryBannerPatterns on CategoryBanner {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryBanner value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryBanner() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryBanner value)  $default,){
final _that = this;
switch (_that) {
case _CategoryBanner():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryBanner value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryBanner() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String imageUrl,  String title)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryBanner() when $default != null:
return $default(_that.imageUrl,_that.title);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String imageUrl,  String title)  $default,) {final _that = this;
switch (_that) {
case _CategoryBanner():
return $default(_that.imageUrl,_that.title);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String imageUrl,  String title)?  $default,) {final _that = this;
switch (_that) {
case _CategoryBanner() when $default != null:
return $default(_that.imageUrl,_that.title);case _:
  return null;

}
}

}

/// @nodoc


class _CategoryBanner implements CategoryBanner {
  const _CategoryBanner({required this.imageUrl, required this.title});
  

@override final  String imageUrl;
@override final  String title;

/// Create a copy of CategoryBanner
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryBannerCopyWith<_CategoryBanner> get copyWith => __$CategoryBannerCopyWithImpl<_CategoryBanner>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryBanner&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.title, title) || other.title == title));
}


@override
int get hashCode => Object.hash(runtimeType,imageUrl,title);

@override
String toString() {
  return 'CategoryBanner(imageUrl: $imageUrl, title: $title)';
}


}

/// @nodoc
abstract mixin class _$CategoryBannerCopyWith<$Res> implements $CategoryBannerCopyWith<$Res> {
  factory _$CategoryBannerCopyWith(_CategoryBanner value, $Res Function(_CategoryBanner) _then) = __$CategoryBannerCopyWithImpl;
@override @useResult
$Res call({
 String imageUrl, String title
});




}
/// @nodoc
class __$CategoryBannerCopyWithImpl<$Res>
    implements _$CategoryBannerCopyWith<$Res> {
  __$CategoryBannerCopyWithImpl(this._self, this._then);

  final _CategoryBanner _self;
  final $Res Function(_CategoryBanner) _then;

/// Create a copy of CategoryBanner
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? imageUrl = null,Object? title = null,}) {
  return _then(_CategoryBanner(
imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
