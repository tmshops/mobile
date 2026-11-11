// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_link.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeLink {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeLink);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeLink()';
}


}

/// @nodoc
class $HomeLinkCopyWith<$Res>  {
$HomeLinkCopyWith(HomeLink _, $Res Function(HomeLink) __);
}


/// Adds pattern-matching-related methods to [HomeLink].
extension HomeLinkPatterns on HomeLink {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ProductLink value)?  product,TResult Function( CategoryLink value)?  category,TResult Function( PromoLink value)?  promo,TResult Function( CollectionLink value)?  collection,TResult Function( ExternalLink value)?  external,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ProductLink() when product != null:
return product(_that);case CategoryLink() when category != null:
return category(_that);case PromoLink() when promo != null:
return promo(_that);case CollectionLink() when collection != null:
return collection(_that);case ExternalLink() when external != null:
return external(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ProductLink value)  product,required TResult Function( CategoryLink value)  category,required TResult Function( PromoLink value)  promo,required TResult Function( CollectionLink value)  collection,required TResult Function( ExternalLink value)  external,}){
final _that = this;
switch (_that) {
case ProductLink():
return product(_that);case CategoryLink():
return category(_that);case PromoLink():
return promo(_that);case CollectionLink():
return collection(_that);case ExternalLink():
return external(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ProductLink value)?  product,TResult? Function( CategoryLink value)?  category,TResult? Function( PromoLink value)?  promo,TResult? Function( CollectionLink value)?  collection,TResult? Function( ExternalLink value)?  external,}){
final _that = this;
switch (_that) {
case ProductLink() when product != null:
return product(_that);case CategoryLink() when category != null:
return category(_that);case PromoLink() when promo != null:
return promo(_that);case CollectionLink() when collection != null:
return collection(_that);case ExternalLink() when external != null:
return external(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String id)?  product,TResult Function( String slug)?  category,TResult Function( String id)?  promo,TResult Function( String id)?  collection,TResult Function( Uri uri)?  external,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ProductLink() when product != null:
return product(_that.id);case CategoryLink() when category != null:
return category(_that.slug);case PromoLink() when promo != null:
return promo(_that.id);case CollectionLink() when collection != null:
return collection(_that.id);case ExternalLink() when external != null:
return external(_that.uri);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String id)  product,required TResult Function( String slug)  category,required TResult Function( String id)  promo,required TResult Function( String id)  collection,required TResult Function( Uri uri)  external,}) {final _that = this;
switch (_that) {
case ProductLink():
return product(_that.id);case CategoryLink():
return category(_that.slug);case PromoLink():
return promo(_that.id);case CollectionLink():
return collection(_that.id);case ExternalLink():
return external(_that.uri);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String id)?  product,TResult? Function( String slug)?  category,TResult? Function( String id)?  promo,TResult? Function( String id)?  collection,TResult? Function( Uri uri)?  external,}) {final _that = this;
switch (_that) {
case ProductLink() when product != null:
return product(_that.id);case CategoryLink() when category != null:
return category(_that.slug);case PromoLink() when promo != null:
return promo(_that.id);case CollectionLink() when collection != null:
return collection(_that.id);case ExternalLink() when external != null:
return external(_that.uri);case _:
  return null;

}
}

}

/// @nodoc


class ProductLink implements HomeLink {
  const ProductLink(this.id);
  

 final  String id;

/// Create a copy of HomeLink
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductLinkCopyWith<ProductLink> get copyWith => _$ProductLinkCopyWithImpl<ProductLink>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductLink&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'HomeLink.product(id: $id)';
}


}

/// @nodoc
abstract mixin class $ProductLinkCopyWith<$Res> implements $HomeLinkCopyWith<$Res> {
  factory $ProductLinkCopyWith(ProductLink value, $Res Function(ProductLink) _then) = _$ProductLinkCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$ProductLinkCopyWithImpl<$Res>
    implements $ProductLinkCopyWith<$Res> {
  _$ProductLinkCopyWithImpl(this._self, this._then);

  final ProductLink _self;
  final $Res Function(ProductLink) _then;

/// Create a copy of HomeLink
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(ProductLink(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class CategoryLink implements HomeLink {
  const CategoryLink(this.slug);
  

 final  String slug;

/// Create a copy of HomeLink
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryLinkCopyWith<CategoryLink> get copyWith => _$CategoryLinkCopyWithImpl<CategoryLink>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryLink&&(identical(other.slug, slug) || other.slug == slug));
}


@override
int get hashCode => Object.hash(runtimeType,slug);

@override
String toString() {
  return 'HomeLink.category(slug: $slug)';
}


}

/// @nodoc
abstract mixin class $CategoryLinkCopyWith<$Res> implements $HomeLinkCopyWith<$Res> {
  factory $CategoryLinkCopyWith(CategoryLink value, $Res Function(CategoryLink) _then) = _$CategoryLinkCopyWithImpl;
@useResult
$Res call({
 String slug
});




}
/// @nodoc
class _$CategoryLinkCopyWithImpl<$Res>
    implements $CategoryLinkCopyWith<$Res> {
  _$CategoryLinkCopyWithImpl(this._self, this._then);

  final CategoryLink _self;
  final $Res Function(CategoryLink) _then;

/// Create a copy of HomeLink
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? slug = null,}) {
  return _then(CategoryLink(
null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class PromoLink implements HomeLink {
  const PromoLink(this.id);
  

 final  String id;

/// Create a copy of HomeLink
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PromoLinkCopyWith<PromoLink> get copyWith => _$PromoLinkCopyWithImpl<PromoLink>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PromoLink&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'HomeLink.promo(id: $id)';
}


}

/// @nodoc
abstract mixin class $PromoLinkCopyWith<$Res> implements $HomeLinkCopyWith<$Res> {
  factory $PromoLinkCopyWith(PromoLink value, $Res Function(PromoLink) _then) = _$PromoLinkCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$PromoLinkCopyWithImpl<$Res>
    implements $PromoLinkCopyWith<$Res> {
  _$PromoLinkCopyWithImpl(this._self, this._then);

  final PromoLink _self;
  final $Res Function(PromoLink) _then;

/// Create a copy of HomeLink
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(PromoLink(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class CollectionLink implements HomeLink {
  const CollectionLink(this.id);
  

 final  String id;

/// Create a copy of HomeLink
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CollectionLinkCopyWith<CollectionLink> get copyWith => _$CollectionLinkCopyWithImpl<CollectionLink>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CollectionLink&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'HomeLink.collection(id: $id)';
}


}

/// @nodoc
abstract mixin class $CollectionLinkCopyWith<$Res> implements $HomeLinkCopyWith<$Res> {
  factory $CollectionLinkCopyWith(CollectionLink value, $Res Function(CollectionLink) _then) = _$CollectionLinkCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$CollectionLinkCopyWithImpl<$Res>
    implements $CollectionLinkCopyWith<$Res> {
  _$CollectionLinkCopyWithImpl(this._self, this._then);

  final CollectionLink _self;
  final $Res Function(CollectionLink) _then;

/// Create a copy of HomeLink
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(CollectionLink(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ExternalLink implements HomeLink {
  const ExternalLink(this.uri);
  

 final  Uri uri;

/// Create a copy of HomeLink
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExternalLinkCopyWith<ExternalLink> get copyWith => _$ExternalLinkCopyWithImpl<ExternalLink>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExternalLink&&(identical(other.uri, uri) || other.uri == uri));
}


@override
int get hashCode => Object.hash(runtimeType,uri);

@override
String toString() {
  return 'HomeLink.external(uri: $uri)';
}


}

/// @nodoc
abstract mixin class $ExternalLinkCopyWith<$Res> implements $HomeLinkCopyWith<$Res> {
  factory $ExternalLinkCopyWith(ExternalLink value, $Res Function(ExternalLink) _then) = _$ExternalLinkCopyWithImpl;
@useResult
$Res call({
 Uri uri
});




}
/// @nodoc
class _$ExternalLinkCopyWithImpl<$Res>
    implements $ExternalLinkCopyWith<$Res> {
  _$ExternalLinkCopyWithImpl(this._self, this._then);

  final ExternalLink _self;
  final $Res Function(ExternalLink) _then;

/// Create a copy of HomeLink
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? uri = null,}) {
  return _then(ExternalLink(
null == uri ? _self.uri : uri // ignore: cast_nullable_to_non_nullable
as Uri,
  ));
}


}

// dart format on
