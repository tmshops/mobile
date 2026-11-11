// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Category {

 String get slug; String get name; String? get iconUrl; List<Category> get children;
/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryCopyWith<Category> get copyWith => _$CategoryCopyWithImpl<Category>(this as Category, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Category&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.name, name) || other.name == name)&&(identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl)&&const DeepCollectionEquality().equals(other.children, children));
}


@override
int get hashCode => Object.hash(runtimeType,slug,name,iconUrl,const DeepCollectionEquality().hash(children));

@override
String toString() {
  return 'Category(slug: $slug, name: $name, iconUrl: $iconUrl, children: $children)';
}


}

/// @nodoc
abstract mixin class $CategoryCopyWith<$Res>  {
  factory $CategoryCopyWith(Category value, $Res Function(Category) _then) = _$CategoryCopyWithImpl;
@useResult
$Res call({
 String slug, String name, String? iconUrl, List<Category> children
});




}
/// @nodoc
class _$CategoryCopyWithImpl<$Res>
    implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._self, this._then);

  final Category _self;
  final $Res Function(Category) _then;

/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? slug = null,Object? name = null,Object? iconUrl = freezed,Object? children = null,}) {
  return _then(_self.copyWith(
slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,iconUrl: freezed == iconUrl ? _self.iconUrl : iconUrl // ignore: cast_nullable_to_non_nullable
as String?,children: null == children ? _self.children : children // ignore: cast_nullable_to_non_nullable
as List<Category>,
  ));
}

}


/// Adds pattern-matching-related methods to [Category].
extension CategoryPatterns on Category {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Category value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Category() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Category value)  $default,){
final _that = this;
switch (_that) {
case _Category():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Category value)?  $default,){
final _that = this;
switch (_that) {
case _Category() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String slug,  String name,  String? iconUrl,  List<Category> children)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Category() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String slug,  String name,  String? iconUrl,  List<Category> children)  $default,) {final _that = this;
switch (_that) {
case _Category():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String slug,  String name,  String? iconUrl,  List<Category> children)?  $default,) {final _that = this;
switch (_that) {
case _Category() when $default != null:
return $default(_that.slug,_that.name,_that.iconUrl,_that.children);case _:
  return null;

}
}

}

/// @nodoc


class _Category extends Category {
  const _Category({required this.slug, required this.name, this.iconUrl, final  List<Category> children = const <Category>[]}): _children = children,super._();
  

@override final  String slug;
@override final  String name;
@override final  String? iconUrl;
 final  List<Category> _children;
@override@JsonKey() List<Category> get children {
  if (_children is EqualUnmodifiableListView) return _children;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_children);
}


/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryCopyWith<_Category> get copyWith => __$CategoryCopyWithImpl<_Category>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Category&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.name, name) || other.name == name)&&(identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl)&&const DeepCollectionEquality().equals(other._children, _children));
}


@override
int get hashCode => Object.hash(runtimeType,slug,name,iconUrl,const DeepCollectionEquality().hash(_children));

@override
String toString() {
  return 'Category(slug: $slug, name: $name, iconUrl: $iconUrl, children: $children)';
}


}

/// @nodoc
abstract mixin class _$CategoryCopyWith<$Res> implements $CategoryCopyWith<$Res> {
  factory _$CategoryCopyWith(_Category value, $Res Function(_Category) _then) = __$CategoryCopyWithImpl;
@override @useResult
$Res call({
 String slug, String name, String? iconUrl, List<Category> children
});




}
/// @nodoc
class __$CategoryCopyWithImpl<$Res>
    implements _$CategoryCopyWith<$Res> {
  __$CategoryCopyWithImpl(this._self, this._then);

  final _Category _self;
  final $Res Function(_Category) _then;

/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? slug = null,Object? name = null,Object? iconUrl = freezed,Object? children = null,}) {
  return _then(_Category(
slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,iconUrl: freezed == iconUrl ? _self.iconUrl : iconUrl // ignore: cast_nullable_to_non_nullable
as String?,children: null == children ? _self._children : children // ignore: cast_nullable_to_non_nullable
as List<Category>,
  ));
}


}

/// @nodoc
mixin _$CategoryTree {

 List<Category> get roots; DateTime get fetchedAt; bool get isFromCache;
/// Create a copy of CategoryTree
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryTreeCopyWith<CategoryTree> get copyWith => _$CategoryTreeCopyWithImpl<CategoryTree>(this as CategoryTree, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryTree&&const DeepCollectionEquality().equals(other.roots, roots)&&(identical(other.fetchedAt, fetchedAt) || other.fetchedAt == fetchedAt)&&(identical(other.isFromCache, isFromCache) || other.isFromCache == isFromCache));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(roots),fetchedAt,isFromCache);

@override
String toString() {
  return 'CategoryTree(roots: $roots, fetchedAt: $fetchedAt, isFromCache: $isFromCache)';
}


}

/// @nodoc
abstract mixin class $CategoryTreeCopyWith<$Res>  {
  factory $CategoryTreeCopyWith(CategoryTree value, $Res Function(CategoryTree) _then) = _$CategoryTreeCopyWithImpl;
@useResult
$Res call({
 List<Category> roots, DateTime fetchedAt, bool isFromCache
});




}
/// @nodoc
class _$CategoryTreeCopyWithImpl<$Res>
    implements $CategoryTreeCopyWith<$Res> {
  _$CategoryTreeCopyWithImpl(this._self, this._then);

  final CategoryTree _self;
  final $Res Function(CategoryTree) _then;

/// Create a copy of CategoryTree
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? roots = null,Object? fetchedAt = null,Object? isFromCache = null,}) {
  return _then(_self.copyWith(
roots: null == roots ? _self.roots : roots // ignore: cast_nullable_to_non_nullable
as List<Category>,fetchedAt: null == fetchedAt ? _self.fetchedAt : fetchedAt // ignore: cast_nullable_to_non_nullable
as DateTime,isFromCache: null == isFromCache ? _self.isFromCache : isFromCache // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CategoryTree].
extension CategoryTreePatterns on CategoryTree {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryTree value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryTree() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryTree value)  $default,){
final _that = this;
switch (_that) {
case _CategoryTree():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryTree value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryTree() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Category> roots,  DateTime fetchedAt,  bool isFromCache)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryTree() when $default != null:
return $default(_that.roots,_that.fetchedAt,_that.isFromCache);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Category> roots,  DateTime fetchedAt,  bool isFromCache)  $default,) {final _that = this;
switch (_that) {
case _CategoryTree():
return $default(_that.roots,_that.fetchedAt,_that.isFromCache);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Category> roots,  DateTime fetchedAt,  bool isFromCache)?  $default,) {final _that = this;
switch (_that) {
case _CategoryTree() when $default != null:
return $default(_that.roots,_that.fetchedAt,_that.isFromCache);case _:
  return null;

}
}

}

/// @nodoc


class _CategoryTree extends CategoryTree {
  const _CategoryTree({required final  List<Category> roots, required this.fetchedAt, this.isFromCache = false}): _roots = roots,super._();
  

 final  List<Category> _roots;
@override List<Category> get roots {
  if (_roots is EqualUnmodifiableListView) return _roots;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_roots);
}

@override final  DateTime fetchedAt;
@override@JsonKey() final  bool isFromCache;

/// Create a copy of CategoryTree
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryTreeCopyWith<_CategoryTree> get copyWith => __$CategoryTreeCopyWithImpl<_CategoryTree>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryTree&&const DeepCollectionEquality().equals(other._roots, _roots)&&(identical(other.fetchedAt, fetchedAt) || other.fetchedAt == fetchedAt)&&(identical(other.isFromCache, isFromCache) || other.isFromCache == isFromCache));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_roots),fetchedAt,isFromCache);

@override
String toString() {
  return 'CategoryTree(roots: $roots, fetchedAt: $fetchedAt, isFromCache: $isFromCache)';
}


}

/// @nodoc
abstract mixin class _$CategoryTreeCopyWith<$Res> implements $CategoryTreeCopyWith<$Res> {
  factory _$CategoryTreeCopyWith(_CategoryTree value, $Res Function(_CategoryTree) _then) = __$CategoryTreeCopyWithImpl;
@override @useResult
$Res call({
 List<Category> roots, DateTime fetchedAt, bool isFromCache
});




}
/// @nodoc
class __$CategoryTreeCopyWithImpl<$Res>
    implements _$CategoryTreeCopyWith<$Res> {
  __$CategoryTreeCopyWithImpl(this._self, this._then);

  final _CategoryTree _self;
  final $Res Function(_CategoryTree) _then;

/// Create a copy of CategoryTree
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? roots = null,Object? fetchedAt = null,Object? isFromCache = null,}) {
  return _then(_CategoryTree(
roots: null == roots ? _self._roots : roots // ignore: cast_nullable_to_non_nullable
as List<Category>,fetchedAt: null == fetchedAt ? _self.fetchedAt : fetchedAt // ignore: cast_nullable_to_non_nullable
as DateTime,isFromCache: null == isFromCache ? _self.isFromCache : isFromCache // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
