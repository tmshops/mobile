// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalog_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CategoryTreeModel {

 List<CategoryModel> get categories;
/// Create a copy of CategoryTreeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryTreeModelCopyWith<CategoryTreeModel> get copyWith => _$CategoryTreeModelCopyWithImpl<CategoryTreeModel>(this as CategoryTreeModel, _$identity);

  /// Serializes this CategoryTreeModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryTreeModel&&const DeepCollectionEquality().equals(other.categories, categories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(categories));

@override
String toString() {
  return 'CategoryTreeModel(categories: $categories)';
}


}

/// @nodoc
abstract mixin class $CategoryTreeModelCopyWith<$Res>  {
  factory $CategoryTreeModelCopyWith(CategoryTreeModel value, $Res Function(CategoryTreeModel) _then) = _$CategoryTreeModelCopyWithImpl;
@useResult
$Res call({
 List<CategoryModel> categories
});




}
/// @nodoc
class _$CategoryTreeModelCopyWithImpl<$Res>
    implements $CategoryTreeModelCopyWith<$Res> {
  _$CategoryTreeModelCopyWithImpl(this._self, this._then);

  final CategoryTreeModel _self;
  final $Res Function(CategoryTreeModel) _then;

/// Create a copy of CategoryTreeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? categories = null,}) {
  return _then(_self.copyWith(
categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [CategoryTreeModel].
extension CategoryTreeModelPatterns on CategoryTreeModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryTreeModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryTreeModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryTreeModel value)  $default,){
final _that = this;
switch (_that) {
case _CategoryTreeModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryTreeModel value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryTreeModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CategoryModel> categories)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryTreeModel() when $default != null:
return $default(_that.categories);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CategoryModel> categories)  $default,) {final _that = this;
switch (_that) {
case _CategoryTreeModel():
return $default(_that.categories);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CategoryModel> categories)?  $default,) {final _that = this;
switch (_that) {
case _CategoryTreeModel() when $default != null:
return $default(_that.categories);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CategoryTreeModel implements CategoryTreeModel {
  const _CategoryTreeModel({required final  List<CategoryModel> categories}): _categories = categories;
  factory _CategoryTreeModel.fromJson(Map<String, dynamic> json) => _$CategoryTreeModelFromJson(json);

 final  List<CategoryModel> _categories;
@override List<CategoryModel> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}


/// Create a copy of CategoryTreeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryTreeModelCopyWith<_CategoryTreeModel> get copyWith => __$CategoryTreeModelCopyWithImpl<_CategoryTreeModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryTreeModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryTreeModel&&const DeepCollectionEquality().equals(other._categories, _categories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_categories));

@override
String toString() {
  return 'CategoryTreeModel(categories: $categories)';
}


}

/// @nodoc
abstract mixin class _$CategoryTreeModelCopyWith<$Res> implements $CategoryTreeModelCopyWith<$Res> {
  factory _$CategoryTreeModelCopyWith(_CategoryTreeModel value, $Res Function(_CategoryTreeModel) _then) = __$CategoryTreeModelCopyWithImpl;
@override @useResult
$Res call({
 List<CategoryModel> categories
});




}
/// @nodoc
class __$CategoryTreeModelCopyWithImpl<$Res>
    implements _$CategoryTreeModelCopyWith<$Res> {
  __$CategoryTreeModelCopyWithImpl(this._self, this._then);

  final _CategoryTreeModel _self;
  final $Res Function(_CategoryTreeModel) _then;

/// Create a copy of CategoryTreeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? categories = null,}) {
  return _then(_CategoryTreeModel(
categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryModel>,
  ));
}


}


/// @nodoc
mixin _$CategoryModel {

 String get slug; String get name; String? get iconUrl; List<CategoryModel> get children;
/// Create a copy of CategoryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryModelCopyWith<CategoryModel> get copyWith => _$CategoryModelCopyWithImpl<CategoryModel>(this as CategoryModel, _$identity);

  /// Serializes this CategoryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryModel&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.name, name) || other.name == name)&&(identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl)&&const DeepCollectionEquality().equals(other.children, children));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,slug,name,iconUrl,const DeepCollectionEquality().hash(children));

@override
String toString() {
  return 'CategoryModel(slug: $slug, name: $name, iconUrl: $iconUrl, children: $children)';
}


}

/// @nodoc
abstract mixin class $CategoryModelCopyWith<$Res>  {
  factory $CategoryModelCopyWith(CategoryModel value, $Res Function(CategoryModel) _then) = _$CategoryModelCopyWithImpl;
@useResult
$Res call({
 String slug, String name, String? iconUrl, List<CategoryModel> children
});




}
/// @nodoc
class _$CategoryModelCopyWithImpl<$Res>
    implements $CategoryModelCopyWith<$Res> {
  _$CategoryModelCopyWithImpl(this._self, this._then);

  final CategoryModel _self;
  final $Res Function(CategoryModel) _then;

/// Create a copy of CategoryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? slug = null,Object? name = null,Object? iconUrl = freezed,Object? children = null,}) {
  return _then(_self.copyWith(
slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,iconUrl: freezed == iconUrl ? _self.iconUrl : iconUrl // ignore: cast_nullable_to_non_nullable
as String?,children: null == children ? _self.children : children // ignore: cast_nullable_to_non_nullable
as List<CategoryModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [CategoryModel].
extension CategoryModelPatterns on CategoryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryModel value)  $default,){
final _that = this;
switch (_that) {
case _CategoryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryModel value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String slug,  String name,  String? iconUrl,  List<CategoryModel> children)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryModel() when $default != null:
return $default(_that.slug,_that.name,_that.iconUrl,_that.children);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String slug,  String name,  String? iconUrl,  List<CategoryModel> children)  $default,) {final _that = this;
switch (_that) {
case _CategoryModel():
return $default(_that.slug,_that.name,_that.iconUrl,_that.children);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String slug,  String name,  String? iconUrl,  List<CategoryModel> children)?  $default,) {final _that = this;
switch (_that) {
case _CategoryModel() when $default != null:
return $default(_that.slug,_that.name,_that.iconUrl,_that.children);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CategoryModel implements CategoryModel {
  const _CategoryModel({required this.slug, required this.name, this.iconUrl, final  List<CategoryModel> children = const <CategoryModel>[]}): _children = children;
  factory _CategoryModel.fromJson(Map<String, dynamic> json) => _$CategoryModelFromJson(json);

@override final  String slug;
@override final  String name;
@override final  String? iconUrl;
 final  List<CategoryModel> _children;
@override@JsonKey() List<CategoryModel> get children {
  if (_children is EqualUnmodifiableListView) return _children;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_children);
}


/// Create a copy of CategoryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryModelCopyWith<_CategoryModel> get copyWith => __$CategoryModelCopyWithImpl<_CategoryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryModel&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.name, name) || other.name == name)&&(identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl)&&const DeepCollectionEquality().equals(other._children, _children));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,slug,name,iconUrl,const DeepCollectionEquality().hash(_children));

@override
String toString() {
  return 'CategoryModel(slug: $slug, name: $name, iconUrl: $iconUrl, children: $children)';
}


}

/// @nodoc
abstract mixin class _$CategoryModelCopyWith<$Res> implements $CategoryModelCopyWith<$Res> {
  factory _$CategoryModelCopyWith(_CategoryModel value, $Res Function(_CategoryModel) _then) = __$CategoryModelCopyWithImpl;
@override @useResult
$Res call({
 String slug, String name, String? iconUrl, List<CategoryModel> children
});




}
/// @nodoc
class __$CategoryModelCopyWithImpl<$Res>
    implements _$CategoryModelCopyWith<$Res> {
  __$CategoryModelCopyWithImpl(this._self, this._then);

  final _CategoryModel _self;
  final $Res Function(_CategoryModel) _then;

/// Create a copy of CategoryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? slug = null,Object? name = null,Object? iconUrl = freezed,Object? children = null,}) {
  return _then(_CategoryModel(
slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,iconUrl: freezed == iconUrl ? _self.iconUrl : iconUrl // ignore: cast_nullable_to_non_nullable
as String?,children: null == children ? _self._children : children // ignore: cast_nullable_to_non_nullable
as List<CategoryModel>,
  ));
}


}


/// @nodoc
mixin _$ProductListPageModel {

 List<ProductSummaryModel> get items; int get total; String? get nextCursor; CategoryBannerModel? get banner;
/// Create a copy of ProductListPageModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductListPageModelCopyWith<ProductListPageModel> get copyWith => _$ProductListPageModelCopyWithImpl<ProductListPageModel>(this as ProductListPageModel, _$identity);

  /// Serializes this ProductListPageModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductListPageModel&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.total, total) || other.total == total)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor)&&(identical(other.banner, banner) || other.banner == banner));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),total,nextCursor,banner);

@override
String toString() {
  return 'ProductListPageModel(items: $items, total: $total, nextCursor: $nextCursor, banner: $banner)';
}


}

/// @nodoc
abstract mixin class $ProductListPageModelCopyWith<$Res>  {
  factory $ProductListPageModelCopyWith(ProductListPageModel value, $Res Function(ProductListPageModel) _then) = _$ProductListPageModelCopyWithImpl;
@useResult
$Res call({
 List<ProductSummaryModel> items, int total, String? nextCursor, CategoryBannerModel? banner
});


$CategoryBannerModelCopyWith<$Res>? get banner;

}
/// @nodoc
class _$ProductListPageModelCopyWithImpl<$Res>
    implements $ProductListPageModelCopyWith<$Res> {
  _$ProductListPageModelCopyWithImpl(this._self, this._then);

  final ProductListPageModel _self;
  final $Res Function(ProductListPageModel) _then;

/// Create a copy of ProductListPageModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? total = null,Object? nextCursor = freezed,Object? banner = freezed,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<ProductSummaryModel>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,banner: freezed == banner ? _self.banner : banner // ignore: cast_nullable_to_non_nullable
as CategoryBannerModel?,
  ));
}
/// Create a copy of ProductListPageModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryBannerModelCopyWith<$Res>? get banner {
    if (_self.banner == null) {
    return null;
  }

  return $CategoryBannerModelCopyWith<$Res>(_self.banner!, (value) {
    return _then(_self.copyWith(banner: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProductListPageModel].
extension ProductListPageModelPatterns on ProductListPageModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductListPageModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductListPageModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductListPageModel value)  $default,){
final _that = this;
switch (_that) {
case _ProductListPageModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductListPageModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProductListPageModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ProductSummaryModel> items,  int total,  String? nextCursor,  CategoryBannerModel? banner)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductListPageModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ProductSummaryModel> items,  int total,  String? nextCursor,  CategoryBannerModel? banner)  $default,) {final _that = this;
switch (_that) {
case _ProductListPageModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ProductSummaryModel> items,  int total,  String? nextCursor,  CategoryBannerModel? banner)?  $default,) {final _that = this;
switch (_that) {
case _ProductListPageModel() when $default != null:
return $default(_that.items,_that.total,_that.nextCursor,_that.banner);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductListPageModel implements ProductListPageModel {
  const _ProductListPageModel({required final  List<ProductSummaryModel> items, required this.total, this.nextCursor, this.banner}): _items = items;
  factory _ProductListPageModel.fromJson(Map<String, dynamic> json) => _$ProductListPageModelFromJson(json);

 final  List<ProductSummaryModel> _items;
@override List<ProductSummaryModel> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  int total;
@override final  String? nextCursor;
@override final  CategoryBannerModel? banner;

/// Create a copy of ProductListPageModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductListPageModelCopyWith<_ProductListPageModel> get copyWith => __$ProductListPageModelCopyWithImpl<_ProductListPageModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductListPageModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductListPageModel&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.total, total) || other.total == total)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor)&&(identical(other.banner, banner) || other.banner == banner));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),total,nextCursor,banner);

@override
String toString() {
  return 'ProductListPageModel(items: $items, total: $total, nextCursor: $nextCursor, banner: $banner)';
}


}

/// @nodoc
abstract mixin class _$ProductListPageModelCopyWith<$Res> implements $ProductListPageModelCopyWith<$Res> {
  factory _$ProductListPageModelCopyWith(_ProductListPageModel value, $Res Function(_ProductListPageModel) _then) = __$ProductListPageModelCopyWithImpl;
@override @useResult
$Res call({
 List<ProductSummaryModel> items, int total, String? nextCursor, CategoryBannerModel? banner
});


@override $CategoryBannerModelCopyWith<$Res>? get banner;

}
/// @nodoc
class __$ProductListPageModelCopyWithImpl<$Res>
    implements _$ProductListPageModelCopyWith<$Res> {
  __$ProductListPageModelCopyWithImpl(this._self, this._then);

  final _ProductListPageModel _self;
  final $Res Function(_ProductListPageModel) _then;

/// Create a copy of ProductListPageModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? total = null,Object? nextCursor = freezed,Object? banner = freezed,}) {
  return _then(_ProductListPageModel(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<ProductSummaryModel>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,banner: freezed == banner ? _self.banner : banner // ignore: cast_nullable_to_non_nullable
as CategoryBannerModel?,
  ));
}

/// Create a copy of ProductListPageModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryBannerModelCopyWith<$Res>? get banner {
    if (_self.banner == null) {
    return null;
  }

  return $CategoryBannerModelCopyWith<$Res>(_self.banner!, (value) {
    return _then(_self.copyWith(banner: value));
  });
}
}


/// @nodoc
mixin _$CategoryBannerModel {

 String get imageUrl; String get title;
/// Create a copy of CategoryBannerModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryBannerModelCopyWith<CategoryBannerModel> get copyWith => _$CategoryBannerModelCopyWithImpl<CategoryBannerModel>(this as CategoryBannerModel, _$identity);

  /// Serializes this CategoryBannerModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryBannerModel&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.title, title) || other.title == title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,imageUrl,title);

@override
String toString() {
  return 'CategoryBannerModel(imageUrl: $imageUrl, title: $title)';
}


}

/// @nodoc
abstract mixin class $CategoryBannerModelCopyWith<$Res>  {
  factory $CategoryBannerModelCopyWith(CategoryBannerModel value, $Res Function(CategoryBannerModel) _then) = _$CategoryBannerModelCopyWithImpl;
@useResult
$Res call({
 String imageUrl, String title
});




}
/// @nodoc
class _$CategoryBannerModelCopyWithImpl<$Res>
    implements $CategoryBannerModelCopyWith<$Res> {
  _$CategoryBannerModelCopyWithImpl(this._self, this._then);

  final CategoryBannerModel _self;
  final $Res Function(CategoryBannerModel) _then;

/// Create a copy of CategoryBannerModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? imageUrl = null,Object? title = null,}) {
  return _then(_self.copyWith(
imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CategoryBannerModel].
extension CategoryBannerModelPatterns on CategoryBannerModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryBannerModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryBannerModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryBannerModel value)  $default,){
final _that = this;
switch (_that) {
case _CategoryBannerModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryBannerModel value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryBannerModel() when $default != null:
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
case _CategoryBannerModel() when $default != null:
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
case _CategoryBannerModel():
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
case _CategoryBannerModel() when $default != null:
return $default(_that.imageUrl,_that.title);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CategoryBannerModel implements CategoryBannerModel {
  const _CategoryBannerModel({required this.imageUrl, required this.title});
  factory _CategoryBannerModel.fromJson(Map<String, dynamic> json) => _$CategoryBannerModelFromJson(json);

@override final  String imageUrl;
@override final  String title;

/// Create a copy of CategoryBannerModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryBannerModelCopyWith<_CategoryBannerModel> get copyWith => __$CategoryBannerModelCopyWithImpl<_CategoryBannerModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryBannerModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryBannerModel&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.title, title) || other.title == title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,imageUrl,title);

@override
String toString() {
  return 'CategoryBannerModel(imageUrl: $imageUrl, title: $title)';
}


}

/// @nodoc
abstract mixin class _$CategoryBannerModelCopyWith<$Res> implements $CategoryBannerModelCopyWith<$Res> {
  factory _$CategoryBannerModelCopyWith(_CategoryBannerModel value, $Res Function(_CategoryBannerModel) _then) = __$CategoryBannerModelCopyWithImpl;
@override @useResult
$Res call({
 String imageUrl, String title
});




}
/// @nodoc
class __$CategoryBannerModelCopyWithImpl<$Res>
    implements _$CategoryBannerModelCopyWith<$Res> {
  __$CategoryBannerModelCopyWithImpl(this._self, this._then);

  final _CategoryBannerModel _self;
  final $Res Function(_CategoryBannerModel) _then;

/// Create a copy of CategoryBannerModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? imageUrl = null,Object? title = null,}) {
  return _then(_CategoryBannerModel(
imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$FacetsResultModel {

 List<FacetModel> get facets; int get total;
/// Create a copy of FacetsResultModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FacetsResultModelCopyWith<FacetsResultModel> get copyWith => _$FacetsResultModelCopyWithImpl<FacetsResultModel>(this as FacetsResultModel, _$identity);

  /// Serializes this FacetsResultModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FacetsResultModel&&const DeepCollectionEquality().equals(other.facets, facets)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(facets),total);

@override
String toString() {
  return 'FacetsResultModel(facets: $facets, total: $total)';
}


}

/// @nodoc
abstract mixin class $FacetsResultModelCopyWith<$Res>  {
  factory $FacetsResultModelCopyWith(FacetsResultModel value, $Res Function(FacetsResultModel) _then) = _$FacetsResultModelCopyWithImpl;
@useResult
$Res call({
 List<FacetModel> facets, int total
});




}
/// @nodoc
class _$FacetsResultModelCopyWithImpl<$Res>
    implements $FacetsResultModelCopyWith<$Res> {
  _$FacetsResultModelCopyWithImpl(this._self, this._then);

  final FacetsResultModel _self;
  final $Res Function(FacetsResultModel) _then;

/// Create a copy of FacetsResultModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? facets = null,Object? total = null,}) {
  return _then(_self.copyWith(
facets: null == facets ? _self.facets : facets // ignore: cast_nullable_to_non_nullable
as List<FacetModel>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [FacetsResultModel].
extension FacetsResultModelPatterns on FacetsResultModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FacetsResultModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FacetsResultModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FacetsResultModel value)  $default,){
final _that = this;
switch (_that) {
case _FacetsResultModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FacetsResultModel value)?  $default,){
final _that = this;
switch (_that) {
case _FacetsResultModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<FacetModel> facets,  int total)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FacetsResultModel() when $default != null:
return $default(_that.facets,_that.total);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<FacetModel> facets,  int total)  $default,) {final _that = this;
switch (_that) {
case _FacetsResultModel():
return $default(_that.facets,_that.total);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<FacetModel> facets,  int total)?  $default,) {final _that = this;
switch (_that) {
case _FacetsResultModel() when $default != null:
return $default(_that.facets,_that.total);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FacetsResultModel implements FacetsResultModel {
  const _FacetsResultModel({required final  List<FacetModel> facets, required this.total}): _facets = facets;
  factory _FacetsResultModel.fromJson(Map<String, dynamic> json) => _$FacetsResultModelFromJson(json);

 final  List<FacetModel> _facets;
@override List<FacetModel> get facets {
  if (_facets is EqualUnmodifiableListView) return _facets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_facets);
}

@override final  int total;

/// Create a copy of FacetsResultModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FacetsResultModelCopyWith<_FacetsResultModel> get copyWith => __$FacetsResultModelCopyWithImpl<_FacetsResultModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FacetsResultModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FacetsResultModel&&const DeepCollectionEquality().equals(other._facets, _facets)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_facets),total);

@override
String toString() {
  return 'FacetsResultModel(facets: $facets, total: $total)';
}


}

/// @nodoc
abstract mixin class _$FacetsResultModelCopyWith<$Res> implements $FacetsResultModelCopyWith<$Res> {
  factory _$FacetsResultModelCopyWith(_FacetsResultModel value, $Res Function(_FacetsResultModel) _then) = __$FacetsResultModelCopyWithImpl;
@override @useResult
$Res call({
 List<FacetModel> facets, int total
});




}
/// @nodoc
class __$FacetsResultModelCopyWithImpl<$Res>
    implements _$FacetsResultModelCopyWith<$Res> {
  __$FacetsResultModelCopyWithImpl(this._self, this._then);

  final _FacetsResultModel _self;
  final $Res Function(_FacetsResultModel) _then;

/// Create a copy of FacetsResultModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? facets = null,Object? total = null,}) {
  return _then(_FacetsResultModel(
facets: null == facets ? _self._facets : facets // ignore: cast_nullable_to_non_nullable
as List<FacetModel>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

FacetModel _$FacetModelFromJson(
  Map<String, dynamic> json
) {
        switch (json['type']) {
                  case 'range':
          return RangeFacetModel.fromJson(
            json
          );
                case 'options':
          return OptionsFacetModel.fromJson(
            json
          );
                case 'toggle':
          return ToggleFacetModel.fromJson(
            json
          );
        
          default:
            return UnknownFacetModel.fromJson(
  json
);
        }
      
}

/// @nodoc
mixin _$FacetModel {



  /// Serializes this FacetModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FacetModel);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FacetModel()';
}


}

/// @nodoc
class $FacetModelCopyWith<$Res>  {
$FacetModelCopyWith(FacetModel _, $Res Function(FacetModel) __);
}


/// Adds pattern-matching-related methods to [FacetModel].
extension FacetModelPatterns on FacetModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( RangeFacetModel value)?  range,TResult Function( OptionsFacetModel value)?  options,TResult Function( ToggleFacetModel value)?  toggle,TResult Function( UnknownFacetModel value)?  unknown,required TResult orElse(),}){
final _that = this;
switch (_that) {
case RangeFacetModel() when range != null:
return range(_that);case OptionsFacetModel() when options != null:
return options(_that);case ToggleFacetModel() when toggle != null:
return toggle(_that);case UnknownFacetModel() when unknown != null:
return unknown(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( RangeFacetModel value)  range,required TResult Function( OptionsFacetModel value)  options,required TResult Function( ToggleFacetModel value)  toggle,required TResult Function( UnknownFacetModel value)  unknown,}){
final _that = this;
switch (_that) {
case RangeFacetModel():
return range(_that);case OptionsFacetModel():
return options(_that);case ToggleFacetModel():
return toggle(_that);case UnknownFacetModel():
return unknown(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( RangeFacetModel value)?  range,TResult? Function( OptionsFacetModel value)?  options,TResult? Function( ToggleFacetModel value)?  toggle,TResult? Function( UnknownFacetModel value)?  unknown,}){
final _that = this;
switch (_that) {
case RangeFacetModel() when range != null:
return range(_that);case OptionsFacetModel() when options != null:
return options(_that);case ToggleFacetModel() when toggle != null:
return toggle(_that);case UnknownFacetModel() when unknown != null:
return unknown(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String id,  String title,  int min,  int max)?  range,TResult Function( String id,  String title,  String display,  List<FacetOptionModel> options)?  options,TResult Function( String id,  String title,  int count)?  toggle,TResult Function()?  unknown,required TResult orElse(),}) {final _that = this;
switch (_that) {
case RangeFacetModel() when range != null:
return range(_that.id,_that.title,_that.min,_that.max);case OptionsFacetModel() when options != null:
return options(_that.id,_that.title,_that.display,_that.options);case ToggleFacetModel() when toggle != null:
return toggle(_that.id,_that.title,_that.count);case UnknownFacetModel() when unknown != null:
return unknown();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String id,  String title,  int min,  int max)  range,required TResult Function( String id,  String title,  String display,  List<FacetOptionModel> options)  options,required TResult Function( String id,  String title,  int count)  toggle,required TResult Function()  unknown,}) {final _that = this;
switch (_that) {
case RangeFacetModel():
return range(_that.id,_that.title,_that.min,_that.max);case OptionsFacetModel():
return options(_that.id,_that.title,_that.display,_that.options);case ToggleFacetModel():
return toggle(_that.id,_that.title,_that.count);case UnknownFacetModel():
return unknown();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String id,  String title,  int min,  int max)?  range,TResult? Function( String id,  String title,  String display,  List<FacetOptionModel> options)?  options,TResult? Function( String id,  String title,  int count)?  toggle,TResult? Function()?  unknown,}) {final _that = this;
switch (_that) {
case RangeFacetModel() when range != null:
return range(_that.id,_that.title,_that.min,_that.max);case OptionsFacetModel() when options != null:
return options(_that.id,_that.title,_that.display,_that.options);case ToggleFacetModel() when toggle != null:
return toggle(_that.id,_that.title,_that.count);case UnknownFacetModel() when unknown != null:
return unknown();case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class RangeFacetModel implements FacetModel {
  const RangeFacetModel({required this.id, required this.title, required this.min, required this.max, final  String? $type}): $type = $type ?? 'range';
  factory RangeFacetModel.fromJson(Map<String, dynamic> json) => _$RangeFacetModelFromJson(json);

 final  String id;
 final  String title;
 final  int min;
 final  int max;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of FacetModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RangeFacetModelCopyWith<RangeFacetModel> get copyWith => _$RangeFacetModelCopyWithImpl<RangeFacetModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RangeFacetModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RangeFacetModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.min, min) || other.min == min)&&(identical(other.max, max) || other.max == max));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,min,max);

@override
String toString() {
  return 'FacetModel.range(id: $id, title: $title, min: $min, max: $max)';
}


}

/// @nodoc
abstract mixin class $RangeFacetModelCopyWith<$Res> implements $FacetModelCopyWith<$Res> {
  factory $RangeFacetModelCopyWith(RangeFacetModel value, $Res Function(RangeFacetModel) _then) = _$RangeFacetModelCopyWithImpl;
@useResult
$Res call({
 String id, String title, int min, int max
});




}
/// @nodoc
class _$RangeFacetModelCopyWithImpl<$Res>
    implements $RangeFacetModelCopyWith<$Res> {
  _$RangeFacetModelCopyWithImpl(this._self, this._then);

  final RangeFacetModel _self;
  final $Res Function(RangeFacetModel) _then;

/// Create a copy of FacetModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? min = null,Object? max = null,}) {
  return _then(RangeFacetModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,min: null == min ? _self.min : min // ignore: cast_nullable_to_non_nullable
as int,max: null == max ? _self.max : max // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
@JsonSerializable()

class OptionsFacetModel implements FacetModel {
  const OptionsFacetModel({required this.id, required this.title, this.display = 'chips', required final  List<FacetOptionModel> options, final  String? $type}): _options = options,$type = $type ?? 'options';
  factory OptionsFacetModel.fromJson(Map<String, dynamic> json) => _$OptionsFacetModelFromJson(json);

 final  String id;
 final  String title;
/// `chips`, `swatches`, `searchable_list`; unknown values draw as chips.
@JsonKey() final  String display;
 final  List<FacetOptionModel> _options;
 List<FacetOptionModel> get options {
  if (_options is EqualUnmodifiableListView) return _options;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_options);
}


@JsonKey(name: 'type')
final String $type;


/// Create a copy of FacetModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OptionsFacetModelCopyWith<OptionsFacetModel> get copyWith => _$OptionsFacetModelCopyWithImpl<OptionsFacetModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OptionsFacetModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OptionsFacetModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.display, display) || other.display == display)&&const DeepCollectionEquality().equals(other._options, _options));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,display,const DeepCollectionEquality().hash(_options));

@override
String toString() {
  return 'FacetModel.options(id: $id, title: $title, display: $display, options: $options)';
}


}

/// @nodoc
abstract mixin class $OptionsFacetModelCopyWith<$Res> implements $FacetModelCopyWith<$Res> {
  factory $OptionsFacetModelCopyWith(OptionsFacetModel value, $Res Function(OptionsFacetModel) _then) = _$OptionsFacetModelCopyWithImpl;
@useResult
$Res call({
 String id, String title, String display, List<FacetOptionModel> options
});




}
/// @nodoc
class _$OptionsFacetModelCopyWithImpl<$Res>
    implements $OptionsFacetModelCopyWith<$Res> {
  _$OptionsFacetModelCopyWithImpl(this._self, this._then);

  final OptionsFacetModel _self;
  final $Res Function(OptionsFacetModel) _then;

/// Create a copy of FacetModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? display = null,Object? options = null,}) {
  return _then(OptionsFacetModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,display: null == display ? _self.display : display // ignore: cast_nullable_to_non_nullable
as String,options: null == options ? _self._options : options // ignore: cast_nullable_to_non_nullable
as List<FacetOptionModel>,
  ));
}


}

/// @nodoc
@JsonSerializable()

class ToggleFacetModel implements FacetModel {
  const ToggleFacetModel({required this.id, required this.title, required this.count, final  String? $type}): $type = $type ?? 'toggle';
  factory ToggleFacetModel.fromJson(Map<String, dynamic> json) => _$ToggleFacetModelFromJson(json);

 final  String id;
 final  String title;
 final  int count;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of FacetModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ToggleFacetModelCopyWith<ToggleFacetModel> get copyWith => _$ToggleFacetModelCopyWithImpl<ToggleFacetModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ToggleFacetModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ToggleFacetModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.count, count) || other.count == count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,count);

@override
String toString() {
  return 'FacetModel.toggle(id: $id, title: $title, count: $count)';
}


}

/// @nodoc
abstract mixin class $ToggleFacetModelCopyWith<$Res> implements $FacetModelCopyWith<$Res> {
  factory $ToggleFacetModelCopyWith(ToggleFacetModel value, $Res Function(ToggleFacetModel) _then) = _$ToggleFacetModelCopyWithImpl;
@useResult
$Res call({
 String id, String title, int count
});




}
/// @nodoc
class _$ToggleFacetModelCopyWithImpl<$Res>
    implements $ToggleFacetModelCopyWith<$Res> {
  _$ToggleFacetModelCopyWithImpl(this._self, this._then);

  final ToggleFacetModel _self;
  final $Res Function(ToggleFacetModel) _then;

/// Create a copy of FacetModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? count = null,}) {
  return _then(ToggleFacetModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
@JsonSerializable()

class UnknownFacetModel implements FacetModel {
  const UnknownFacetModel({final  String? $type}): $type = $type ?? 'unknown';
  factory UnknownFacetModel.fromJson(Map<String, dynamic> json) => _$UnknownFacetModelFromJson(json);



@JsonKey(name: 'type')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$UnknownFacetModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnknownFacetModel);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FacetModel.unknown()';
}


}





/// @nodoc
mixin _$FacetOptionModel {

 String get value; String get label; int get count;/// `#RRGGBB` for swatches.
 String? get color;
/// Create a copy of FacetOptionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FacetOptionModelCopyWith<FacetOptionModel> get copyWith => _$FacetOptionModelCopyWithImpl<FacetOptionModel>(this as FacetOptionModel, _$identity);

  /// Serializes this FacetOptionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FacetOptionModel&&(identical(other.value, value) || other.value == value)&&(identical(other.label, label) || other.label == label)&&(identical(other.count, count) || other.count == count)&&(identical(other.color, color) || other.color == color));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value,label,count,color);

@override
String toString() {
  return 'FacetOptionModel(value: $value, label: $label, count: $count, color: $color)';
}


}

/// @nodoc
abstract mixin class $FacetOptionModelCopyWith<$Res>  {
  factory $FacetOptionModelCopyWith(FacetOptionModel value, $Res Function(FacetOptionModel) _then) = _$FacetOptionModelCopyWithImpl;
@useResult
$Res call({
 String value, String label, int count, String? color
});




}
/// @nodoc
class _$FacetOptionModelCopyWithImpl<$Res>
    implements $FacetOptionModelCopyWith<$Res> {
  _$FacetOptionModelCopyWithImpl(this._self, this._then);

  final FacetOptionModel _self;
  final $Res Function(FacetOptionModel) _then;

/// Create a copy of FacetOptionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = null,Object? label = null,Object? count = null,Object? color = freezed,}) {
  return _then(_self.copyWith(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FacetOptionModel].
extension FacetOptionModelPatterns on FacetOptionModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FacetOptionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FacetOptionModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FacetOptionModel value)  $default,){
final _that = this;
switch (_that) {
case _FacetOptionModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FacetOptionModel value)?  $default,){
final _that = this;
switch (_that) {
case _FacetOptionModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String value,  String label,  int count,  String? color)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FacetOptionModel() when $default != null:
return $default(_that.value,_that.label,_that.count,_that.color);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String value,  String label,  int count,  String? color)  $default,) {final _that = this;
switch (_that) {
case _FacetOptionModel():
return $default(_that.value,_that.label,_that.count,_that.color);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String value,  String label,  int count,  String? color)?  $default,) {final _that = this;
switch (_that) {
case _FacetOptionModel() when $default != null:
return $default(_that.value,_that.label,_that.count,_that.color);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FacetOptionModel implements FacetOptionModel {
  const _FacetOptionModel({required this.value, required this.label, required this.count, this.color});
  factory _FacetOptionModel.fromJson(Map<String, dynamic> json) => _$FacetOptionModelFromJson(json);

@override final  String value;
@override final  String label;
@override final  int count;
/// `#RRGGBB` for swatches.
@override final  String? color;

/// Create a copy of FacetOptionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FacetOptionModelCopyWith<_FacetOptionModel> get copyWith => __$FacetOptionModelCopyWithImpl<_FacetOptionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FacetOptionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FacetOptionModel&&(identical(other.value, value) || other.value == value)&&(identical(other.label, label) || other.label == label)&&(identical(other.count, count) || other.count == count)&&(identical(other.color, color) || other.color == color));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value,label,count,color);

@override
String toString() {
  return 'FacetOptionModel(value: $value, label: $label, count: $count, color: $color)';
}


}

/// @nodoc
abstract mixin class _$FacetOptionModelCopyWith<$Res> implements $FacetOptionModelCopyWith<$Res> {
  factory _$FacetOptionModelCopyWith(_FacetOptionModel value, $Res Function(_FacetOptionModel) _then) = __$FacetOptionModelCopyWithImpl;
@override @useResult
$Res call({
 String value, String label, int count, String? color
});




}
/// @nodoc
class __$FacetOptionModelCopyWithImpl<$Res>
    implements _$FacetOptionModelCopyWith<$Res> {
  __$FacetOptionModelCopyWithImpl(this._self, this._then);

  final _FacetOptionModel _self;
  final $Res Function(_FacetOptionModel) _then;

/// Create a copy of FacetOptionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,Object? label = null,Object? count = null,Object? color = freezed,}) {
  return _then(_FacetOptionModel(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
