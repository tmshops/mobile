// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_products_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CategoryProductsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryProductsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CategoryProductsEvent()';
}


}

/// @nodoc
class $CategoryProductsEventCopyWith<$Res>  {
$CategoryProductsEventCopyWith(CategoryProductsEvent _, $Res Function(CategoryProductsEvent) __);
}


/// Adds pattern-matching-related methods to [CategoryProductsEvent].
extension CategoryProductsEventPatterns on CategoryProductsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CategoryProductsStarted value)?  started,TResult Function( CategoryProductsSortChanged value)?  sortChanged,TResult Function( CategoryProductsFiltersApplied value)?  filtersApplied,TResult Function( CategoryProductsRefreshed value)?  refreshed,TResult Function( CategoryProductsNextPageRequested value)?  nextPageRequested,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CategoryProductsStarted() when started != null:
return started(_that);case CategoryProductsSortChanged() when sortChanged != null:
return sortChanged(_that);case CategoryProductsFiltersApplied() when filtersApplied != null:
return filtersApplied(_that);case CategoryProductsRefreshed() when refreshed != null:
return refreshed(_that);case CategoryProductsNextPageRequested() when nextPageRequested != null:
return nextPageRequested(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CategoryProductsStarted value)  started,required TResult Function( CategoryProductsSortChanged value)  sortChanged,required TResult Function( CategoryProductsFiltersApplied value)  filtersApplied,required TResult Function( CategoryProductsRefreshed value)  refreshed,required TResult Function( CategoryProductsNextPageRequested value)  nextPageRequested,}){
final _that = this;
switch (_that) {
case CategoryProductsStarted():
return started(_that);case CategoryProductsSortChanged():
return sortChanged(_that);case CategoryProductsFiltersApplied():
return filtersApplied(_that);case CategoryProductsRefreshed():
return refreshed(_that);case CategoryProductsNextPageRequested():
return nextPageRequested(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CategoryProductsStarted value)?  started,TResult? Function( CategoryProductsSortChanged value)?  sortChanged,TResult? Function( CategoryProductsFiltersApplied value)?  filtersApplied,TResult? Function( CategoryProductsRefreshed value)?  refreshed,TResult? Function( CategoryProductsNextPageRequested value)?  nextPageRequested,}){
final _that = this;
switch (_that) {
case CategoryProductsStarted() when started != null:
return started(_that);case CategoryProductsSortChanged() when sortChanged != null:
return sortChanged(_that);case CategoryProductsFiltersApplied() when filtersApplied != null:
return filtersApplied(_that);case CategoryProductsRefreshed() when refreshed != null:
return refreshed(_that);case CategoryProductsNextPageRequested() when nextPageRequested != null:
return nextPageRequested(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String languageCode,  String slug,  String? promoSlug,  String? searchText,  String? sellerId)?  started,TResult Function( ProductSort sort)?  sortChanged,TResult Function( AppliedFilters filters)?  filtersApplied,TResult Function()?  refreshed,TResult Function()?  nextPageRequested,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CategoryProductsStarted() when started != null:
return started(_that.languageCode,_that.slug,_that.promoSlug,_that.searchText,_that.sellerId);case CategoryProductsSortChanged() when sortChanged != null:
return sortChanged(_that.sort);case CategoryProductsFiltersApplied() when filtersApplied != null:
return filtersApplied(_that.filters);case CategoryProductsRefreshed() when refreshed != null:
return refreshed();case CategoryProductsNextPageRequested() when nextPageRequested != null:
return nextPageRequested();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String languageCode,  String slug,  String? promoSlug,  String? searchText,  String? sellerId)  started,required TResult Function( ProductSort sort)  sortChanged,required TResult Function( AppliedFilters filters)  filtersApplied,required TResult Function()  refreshed,required TResult Function()  nextPageRequested,}) {final _that = this;
switch (_that) {
case CategoryProductsStarted():
return started(_that.languageCode,_that.slug,_that.promoSlug,_that.searchText,_that.sellerId);case CategoryProductsSortChanged():
return sortChanged(_that.sort);case CategoryProductsFiltersApplied():
return filtersApplied(_that.filters);case CategoryProductsRefreshed():
return refreshed();case CategoryProductsNextPageRequested():
return nextPageRequested();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String languageCode,  String slug,  String? promoSlug,  String? searchText,  String? sellerId)?  started,TResult? Function( ProductSort sort)?  sortChanged,TResult? Function( AppliedFilters filters)?  filtersApplied,TResult? Function()?  refreshed,TResult? Function()?  nextPageRequested,}) {final _that = this;
switch (_that) {
case CategoryProductsStarted() when started != null:
return started(_that.languageCode,_that.slug,_that.promoSlug,_that.searchText,_that.sellerId);case CategoryProductsSortChanged() when sortChanged != null:
return sortChanged(_that.sort);case CategoryProductsFiltersApplied() when filtersApplied != null:
return filtersApplied(_that.filters);case CategoryProductsRefreshed() when refreshed != null:
return refreshed();case CategoryProductsNextPageRequested() when nextPageRequested != null:
return nextPageRequested();case _:
  return null;

}
}

}

/// @nodoc


class CategoryProductsStarted implements CategoryProductsEvent {
  const CategoryProductsStarted({required this.languageCode, required this.slug, this.promoSlug, this.searchText, this.sellerId});
  

 final  String languageCode;
 final  String slug;
/// A promotion's products instead of category [slug] (pass '').
 final  String? promoSlug;
/// Search results instead of category [slug] (pass '').
 final  String? searchText;
/// A seller's products instead of category [slug] (pass '').
 final  String? sellerId;

/// Create a copy of CategoryProductsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryProductsStartedCopyWith<CategoryProductsStarted> get copyWith => _$CategoryProductsStartedCopyWithImpl<CategoryProductsStarted>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryProductsStarted&&(identical(other.languageCode, languageCode) || other.languageCode == languageCode)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.promoSlug, promoSlug) || other.promoSlug == promoSlug)&&(identical(other.searchText, searchText) || other.searchText == searchText)&&(identical(other.sellerId, sellerId) || other.sellerId == sellerId));
}


@override
int get hashCode => Object.hash(runtimeType,languageCode,slug,promoSlug,searchText,sellerId);

@override
String toString() {
  return 'CategoryProductsEvent.started(languageCode: $languageCode, slug: $slug, promoSlug: $promoSlug, searchText: $searchText, sellerId: $sellerId)';
}


}

/// @nodoc
abstract mixin class $CategoryProductsStartedCopyWith<$Res> implements $CategoryProductsEventCopyWith<$Res> {
  factory $CategoryProductsStartedCopyWith(CategoryProductsStarted value, $Res Function(CategoryProductsStarted) _then) = _$CategoryProductsStartedCopyWithImpl;
@useResult
$Res call({
 String languageCode, String slug, String? promoSlug, String? searchText, String? sellerId
});




}
/// @nodoc
class _$CategoryProductsStartedCopyWithImpl<$Res>
    implements $CategoryProductsStartedCopyWith<$Res> {
  _$CategoryProductsStartedCopyWithImpl(this._self, this._then);

  final CategoryProductsStarted _self;
  final $Res Function(CategoryProductsStarted) _then;

/// Create a copy of CategoryProductsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? languageCode = null,Object? slug = null,Object? promoSlug = freezed,Object? searchText = freezed,Object? sellerId = freezed,}) {
  return _then(CategoryProductsStarted(
languageCode: null == languageCode ? _self.languageCode : languageCode // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,promoSlug: freezed == promoSlug ? _self.promoSlug : promoSlug // ignore: cast_nullable_to_non_nullable
as String?,searchText: freezed == searchText ? _self.searchText : searchText // ignore: cast_nullable_to_non_nullable
as String?,sellerId: freezed == sellerId ? _self.sellerId : sellerId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class CategoryProductsSortChanged implements CategoryProductsEvent {
  const CategoryProductsSortChanged(this.sort);
  

 final  ProductSort sort;

/// Create a copy of CategoryProductsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryProductsSortChangedCopyWith<CategoryProductsSortChanged> get copyWith => _$CategoryProductsSortChangedCopyWithImpl<CategoryProductsSortChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryProductsSortChanged&&(identical(other.sort, sort) || other.sort == sort));
}


@override
int get hashCode => Object.hash(runtimeType,sort);

@override
String toString() {
  return 'CategoryProductsEvent.sortChanged(sort: $sort)';
}


}

/// @nodoc
abstract mixin class $CategoryProductsSortChangedCopyWith<$Res> implements $CategoryProductsEventCopyWith<$Res> {
  factory $CategoryProductsSortChangedCopyWith(CategoryProductsSortChanged value, $Res Function(CategoryProductsSortChanged) _then) = _$CategoryProductsSortChangedCopyWithImpl;
@useResult
$Res call({
 ProductSort sort
});




}
/// @nodoc
class _$CategoryProductsSortChangedCopyWithImpl<$Res>
    implements $CategoryProductsSortChangedCopyWith<$Res> {
  _$CategoryProductsSortChangedCopyWithImpl(this._self, this._then);

  final CategoryProductsSortChanged _self;
  final $Res Function(CategoryProductsSortChanged) _then;

/// Create a copy of CategoryProductsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? sort = null,}) {
  return _then(CategoryProductsSortChanged(
null == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as ProductSort,
  ));
}


}

/// @nodoc


class CategoryProductsFiltersApplied implements CategoryProductsEvent {
  const CategoryProductsFiltersApplied(this.filters);
  

 final  AppliedFilters filters;

/// Create a copy of CategoryProductsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryProductsFiltersAppliedCopyWith<CategoryProductsFiltersApplied> get copyWith => _$CategoryProductsFiltersAppliedCopyWithImpl<CategoryProductsFiltersApplied>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryProductsFiltersApplied&&(identical(other.filters, filters) || other.filters == filters));
}


@override
int get hashCode => Object.hash(runtimeType,filters);

@override
String toString() {
  return 'CategoryProductsEvent.filtersApplied(filters: $filters)';
}


}

/// @nodoc
abstract mixin class $CategoryProductsFiltersAppliedCopyWith<$Res> implements $CategoryProductsEventCopyWith<$Res> {
  factory $CategoryProductsFiltersAppliedCopyWith(CategoryProductsFiltersApplied value, $Res Function(CategoryProductsFiltersApplied) _then) = _$CategoryProductsFiltersAppliedCopyWithImpl;
@useResult
$Res call({
 AppliedFilters filters
});


$AppliedFiltersCopyWith<$Res> get filters;

}
/// @nodoc
class _$CategoryProductsFiltersAppliedCopyWithImpl<$Res>
    implements $CategoryProductsFiltersAppliedCopyWith<$Res> {
  _$CategoryProductsFiltersAppliedCopyWithImpl(this._self, this._then);

  final CategoryProductsFiltersApplied _self;
  final $Res Function(CategoryProductsFiltersApplied) _then;

/// Create a copy of CategoryProductsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? filters = null,}) {
  return _then(CategoryProductsFiltersApplied(
null == filters ? _self.filters : filters // ignore: cast_nullable_to_non_nullable
as AppliedFilters,
  ));
}

/// Create a copy of CategoryProductsEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppliedFiltersCopyWith<$Res> get filters {
  
  return $AppliedFiltersCopyWith<$Res>(_self.filters, (value) {
    return _then(_self.copyWith(filters: value));
  });
}
}

/// @nodoc


class CategoryProductsRefreshed implements CategoryProductsEvent {
  const CategoryProductsRefreshed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryProductsRefreshed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CategoryProductsEvent.refreshed()';
}


}




/// @nodoc


class CategoryProductsNextPageRequested implements CategoryProductsEvent {
  const CategoryProductsNextPageRequested();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryProductsNextPageRequested);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CategoryProductsEvent.nextPageRequested()';
}


}




/// @nodoc
mixin _$CategoryProductsState {

 ProductQuery get query;/// Name and subcategories; `null` until found.
 Category? get category; List<ProductSummary> get items; int get total; String? get nextCursor; CategoryBanner? get banner; ProductsStatus get status; Failure? get failure;
/// Create a copy of CategoryProductsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryProductsStateCopyWith<CategoryProductsState> get copyWith => _$CategoryProductsStateCopyWithImpl<CategoryProductsState>(this as CategoryProductsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryProductsState&&(identical(other.query, query) || other.query == query)&&(identical(other.category, category) || other.category == category)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.total, total) || other.total == total)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor)&&(identical(other.banner, banner) || other.banner == banner)&&(identical(other.status, status) || other.status == status)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,query,category,const DeepCollectionEquality().hash(items),total,nextCursor,banner,status,failure);

@override
String toString() {
  return 'CategoryProductsState(query: $query, category: $category, items: $items, total: $total, nextCursor: $nextCursor, banner: $banner, status: $status, failure: $failure)';
}


}

/// @nodoc
abstract mixin class $CategoryProductsStateCopyWith<$Res>  {
  factory $CategoryProductsStateCopyWith(CategoryProductsState value, $Res Function(CategoryProductsState) _then) = _$CategoryProductsStateCopyWithImpl;
@useResult
$Res call({
 ProductQuery query, Category? category, List<ProductSummary> items, int total, String? nextCursor, CategoryBanner? banner, ProductsStatus status, Failure? failure
});


$ProductQueryCopyWith<$Res> get query;$CategoryCopyWith<$Res>? get category;$CategoryBannerCopyWith<$Res>? get banner;

}
/// @nodoc
class _$CategoryProductsStateCopyWithImpl<$Res>
    implements $CategoryProductsStateCopyWith<$Res> {
  _$CategoryProductsStateCopyWithImpl(this._self, this._then);

  final CategoryProductsState _self;
  final $Res Function(CategoryProductsState) _then;

/// Create a copy of CategoryProductsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,Object? category = freezed,Object? items = null,Object? total = null,Object? nextCursor = freezed,Object? banner = freezed,Object? status = null,Object? failure = freezed,}) {
  return _then(_self.copyWith(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as ProductQuery,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as Category?,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<ProductSummary>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,banner: freezed == banner ? _self.banner : banner // ignore: cast_nullable_to_non_nullable
as CategoryBanner?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ProductsStatus,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,
  ));
}
/// Create a copy of CategoryProductsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductQueryCopyWith<$Res> get query {
  
  return $ProductQueryCopyWith<$Res>(_self.query, (value) {
    return _then(_self.copyWith(query: value));
  });
}/// Create a copy of CategoryProductsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $CategoryCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}/// Create a copy of CategoryProductsState
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


/// Adds pattern-matching-related methods to [CategoryProductsState].
extension CategoryProductsStatePatterns on CategoryProductsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryProductsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryProductsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryProductsState value)  $default,){
final _that = this;
switch (_that) {
case _CategoryProductsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryProductsState value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryProductsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ProductQuery query,  Category? category,  List<ProductSummary> items,  int total,  String? nextCursor,  CategoryBanner? banner,  ProductsStatus status,  Failure? failure)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryProductsState() when $default != null:
return $default(_that.query,_that.category,_that.items,_that.total,_that.nextCursor,_that.banner,_that.status,_that.failure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ProductQuery query,  Category? category,  List<ProductSummary> items,  int total,  String? nextCursor,  CategoryBanner? banner,  ProductsStatus status,  Failure? failure)  $default,) {final _that = this;
switch (_that) {
case _CategoryProductsState():
return $default(_that.query,_that.category,_that.items,_that.total,_that.nextCursor,_that.banner,_that.status,_that.failure);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ProductQuery query,  Category? category,  List<ProductSummary> items,  int total,  String? nextCursor,  CategoryBanner? banner,  ProductsStatus status,  Failure? failure)?  $default,) {final _that = this;
switch (_that) {
case _CategoryProductsState() when $default != null:
return $default(_that.query,_that.category,_that.items,_that.total,_that.nextCursor,_that.banner,_that.status,_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class _CategoryProductsState extends CategoryProductsState {
  const _CategoryProductsState({required this.query, this.category, final  List<ProductSummary> items = const <ProductSummary>[], this.total = 0, this.nextCursor, this.banner, this.status = ProductsStatus.loadingFirst, this.failure}): _items = items,super._();
  

@override final  ProductQuery query;
/// Name and subcategories; `null` until found.
@override final  Category? category;
 final  List<ProductSummary> _items;
@override@JsonKey() List<ProductSummary> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override@JsonKey() final  int total;
@override final  String? nextCursor;
@override final  CategoryBanner? banner;
@override@JsonKey() final  ProductsStatus status;
@override final  Failure? failure;

/// Create a copy of CategoryProductsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryProductsStateCopyWith<_CategoryProductsState> get copyWith => __$CategoryProductsStateCopyWithImpl<_CategoryProductsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryProductsState&&(identical(other.query, query) || other.query == query)&&(identical(other.category, category) || other.category == category)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.total, total) || other.total == total)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor)&&(identical(other.banner, banner) || other.banner == banner)&&(identical(other.status, status) || other.status == status)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,query,category,const DeepCollectionEquality().hash(_items),total,nextCursor,banner,status,failure);

@override
String toString() {
  return 'CategoryProductsState(query: $query, category: $category, items: $items, total: $total, nextCursor: $nextCursor, banner: $banner, status: $status, failure: $failure)';
}


}

/// @nodoc
abstract mixin class _$CategoryProductsStateCopyWith<$Res> implements $CategoryProductsStateCopyWith<$Res> {
  factory _$CategoryProductsStateCopyWith(_CategoryProductsState value, $Res Function(_CategoryProductsState) _then) = __$CategoryProductsStateCopyWithImpl;
@override @useResult
$Res call({
 ProductQuery query, Category? category, List<ProductSummary> items, int total, String? nextCursor, CategoryBanner? banner, ProductsStatus status, Failure? failure
});


@override $ProductQueryCopyWith<$Res> get query;@override $CategoryCopyWith<$Res>? get category;@override $CategoryBannerCopyWith<$Res>? get banner;

}
/// @nodoc
class __$CategoryProductsStateCopyWithImpl<$Res>
    implements _$CategoryProductsStateCopyWith<$Res> {
  __$CategoryProductsStateCopyWithImpl(this._self, this._then);

  final _CategoryProductsState _self;
  final $Res Function(_CategoryProductsState) _then;

/// Create a copy of CategoryProductsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? query = null,Object? category = freezed,Object? items = null,Object? total = null,Object? nextCursor = freezed,Object? banner = freezed,Object? status = null,Object? failure = freezed,}) {
  return _then(_CategoryProductsState(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as ProductQuery,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as Category?,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<ProductSummary>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,banner: freezed == banner ? _self.banner : banner // ignore: cast_nullable_to_non_nullable
as CategoryBanner?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ProductsStatus,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,
  ));
}

/// Create a copy of CategoryProductsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductQueryCopyWith<$Res> get query {
  
  return $ProductQueryCopyWith<$Res>(_self.query, (value) {
    return _then(_self.copyWith(query: value));
  });
}/// Create a copy of CategoryProductsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $CategoryCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}/// Create a copy of CategoryProductsState
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

// dart format on
