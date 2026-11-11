// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_destination.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeDestination {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeDestination);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeDestination()';
}


}

/// @nodoc
class $HomeDestinationCopyWith<$Res>  {
$HomeDestinationCopyWith(HomeDestination _, $Res Function(HomeDestination) __);
}


/// Adds pattern-matching-related methods to [HomeDestination].
extension HomeDestinationPatterns on HomeDestination {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SearchDestination value)?  search,TResult Function( PhotoSearchDestination value)?  photoSearch,TResult Function( PasteLinkDestination value)?  pasteLink,TResult Function( NotificationsDestination value)?  notifications,TResult Function( VideoFeedDestination value)?  videoFeed,TResult Function( ProductDestination value)?  product,TResult Function( CategoryDestination value)?  category,TResult Function( AllCategoriesDestination value)?  allCategories,TResult Function( LinkDestination value)?  link,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SearchDestination() when search != null:
return search(_that);case PhotoSearchDestination() when photoSearch != null:
return photoSearch(_that);case PasteLinkDestination() when pasteLink != null:
return pasteLink(_that);case NotificationsDestination() when notifications != null:
return notifications(_that);case VideoFeedDestination() when videoFeed != null:
return videoFeed(_that);case ProductDestination() when product != null:
return product(_that);case CategoryDestination() when category != null:
return category(_that);case AllCategoriesDestination() when allCategories != null:
return allCategories(_that);case LinkDestination() when link != null:
return link(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SearchDestination value)  search,required TResult Function( PhotoSearchDestination value)  photoSearch,required TResult Function( PasteLinkDestination value)  pasteLink,required TResult Function( NotificationsDestination value)  notifications,required TResult Function( VideoFeedDestination value)  videoFeed,required TResult Function( ProductDestination value)  product,required TResult Function( CategoryDestination value)  category,required TResult Function( AllCategoriesDestination value)  allCategories,required TResult Function( LinkDestination value)  link,}){
final _that = this;
switch (_that) {
case SearchDestination():
return search(_that);case PhotoSearchDestination():
return photoSearch(_that);case PasteLinkDestination():
return pasteLink(_that);case NotificationsDestination():
return notifications(_that);case VideoFeedDestination():
return videoFeed(_that);case ProductDestination():
return product(_that);case CategoryDestination():
return category(_that);case AllCategoriesDestination():
return allCategories(_that);case LinkDestination():
return link(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SearchDestination value)?  search,TResult? Function( PhotoSearchDestination value)?  photoSearch,TResult? Function( PasteLinkDestination value)?  pasteLink,TResult? Function( NotificationsDestination value)?  notifications,TResult? Function( VideoFeedDestination value)?  videoFeed,TResult? Function( ProductDestination value)?  product,TResult? Function( CategoryDestination value)?  category,TResult? Function( AllCategoriesDestination value)?  allCategories,TResult? Function( LinkDestination value)?  link,}){
final _that = this;
switch (_that) {
case SearchDestination() when search != null:
return search(_that);case PhotoSearchDestination() when photoSearch != null:
return photoSearch(_that);case PasteLinkDestination() when pasteLink != null:
return pasteLink(_that);case NotificationsDestination() when notifications != null:
return notifications(_that);case VideoFeedDestination() when videoFeed != null:
return videoFeed(_that);case ProductDestination() when product != null:
return product(_that);case CategoryDestination() when category != null:
return category(_that);case AllCategoriesDestination() when allCategories != null:
return allCategories(_that);case LinkDestination() when link != null:
return link(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  search,TResult Function()?  photoSearch,TResult Function()?  pasteLink,TResult Function()?  notifications,TResult Function( String storyId)?  videoFeed,TResult Function( String id,  ProductSummary? preview)?  product,TResult Function( String slug)?  category,TResult Function()?  allCategories,TResult Function( HomeLink link)?  link,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SearchDestination() when search != null:
return search();case PhotoSearchDestination() when photoSearch != null:
return photoSearch();case PasteLinkDestination() when pasteLink != null:
return pasteLink();case NotificationsDestination() when notifications != null:
return notifications();case VideoFeedDestination() when videoFeed != null:
return videoFeed(_that.storyId);case ProductDestination() when product != null:
return product(_that.id,_that.preview);case CategoryDestination() when category != null:
return category(_that.slug);case AllCategoriesDestination() when allCategories != null:
return allCategories();case LinkDestination() when link != null:
return link(_that.link);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  search,required TResult Function()  photoSearch,required TResult Function()  pasteLink,required TResult Function()  notifications,required TResult Function( String storyId)  videoFeed,required TResult Function( String id,  ProductSummary? preview)  product,required TResult Function( String slug)  category,required TResult Function()  allCategories,required TResult Function( HomeLink link)  link,}) {final _that = this;
switch (_that) {
case SearchDestination():
return search();case PhotoSearchDestination():
return photoSearch();case PasteLinkDestination():
return pasteLink();case NotificationsDestination():
return notifications();case VideoFeedDestination():
return videoFeed(_that.storyId);case ProductDestination():
return product(_that.id,_that.preview);case CategoryDestination():
return category(_that.slug);case AllCategoriesDestination():
return allCategories();case LinkDestination():
return link(_that.link);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  search,TResult? Function()?  photoSearch,TResult? Function()?  pasteLink,TResult? Function()?  notifications,TResult? Function( String storyId)?  videoFeed,TResult? Function( String id,  ProductSummary? preview)?  product,TResult? Function( String slug)?  category,TResult? Function()?  allCategories,TResult? Function( HomeLink link)?  link,}) {final _that = this;
switch (_that) {
case SearchDestination() when search != null:
return search();case PhotoSearchDestination() when photoSearch != null:
return photoSearch();case PasteLinkDestination() when pasteLink != null:
return pasteLink();case NotificationsDestination() when notifications != null:
return notifications();case VideoFeedDestination() when videoFeed != null:
return videoFeed(_that.storyId);case ProductDestination() when product != null:
return product(_that.id,_that.preview);case CategoryDestination() when category != null:
return category(_that.slug);case AllCategoriesDestination() when allCategories != null:
return allCategories();case LinkDestination() when link != null:
return link(_that.link);case _:
  return null;

}
}

}

/// @nodoc


class SearchDestination implements HomeDestination {
  const SearchDestination();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchDestination);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeDestination.search()';
}


}




/// @nodoc


class PhotoSearchDestination implements HomeDestination {
  const PhotoSearchDestination();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PhotoSearchDestination);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeDestination.photoSearch()';
}


}




/// @nodoc


class PasteLinkDestination implements HomeDestination {
  const PasteLinkDestination();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PasteLinkDestination);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeDestination.pasteLink()';
}


}




/// @nodoc


class NotificationsDestination implements HomeDestination {
  const NotificationsDestination();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationsDestination);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeDestination.notifications()';
}


}




/// @nodoc


class VideoFeedDestination implements HomeDestination {
  const VideoFeedDestination(this.storyId);
  

 final  String storyId;

/// Create a copy of HomeDestination
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VideoFeedDestinationCopyWith<VideoFeedDestination> get copyWith => _$VideoFeedDestinationCopyWithImpl<VideoFeedDestination>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoFeedDestination&&(identical(other.storyId, storyId) || other.storyId == storyId));
}


@override
int get hashCode => Object.hash(runtimeType,storyId);

@override
String toString() {
  return 'HomeDestination.videoFeed(storyId: $storyId)';
}


}

/// @nodoc
abstract mixin class $VideoFeedDestinationCopyWith<$Res> implements $HomeDestinationCopyWith<$Res> {
  factory $VideoFeedDestinationCopyWith(VideoFeedDestination value, $Res Function(VideoFeedDestination) _then) = _$VideoFeedDestinationCopyWithImpl;
@useResult
$Res call({
 String storyId
});




}
/// @nodoc
class _$VideoFeedDestinationCopyWithImpl<$Res>
    implements $VideoFeedDestinationCopyWith<$Res> {
  _$VideoFeedDestinationCopyWithImpl(this._self, this._then);

  final VideoFeedDestination _self;
  final $Res Function(VideoFeedDestination) _then;

/// Create a copy of HomeDestination
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? storyId = null,}) {
  return _then(VideoFeedDestination(
null == storyId ? _self.storyId : storyId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ProductDestination implements HomeDestination {
  const ProductDestination(this.id, {this.preview});
  

 final  String id;
/// The tapped tile, shown while the product page loads.
 final  ProductSummary? preview;

/// Create a copy of HomeDestination
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductDestinationCopyWith<ProductDestination> get copyWith => _$ProductDestinationCopyWithImpl<ProductDestination>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductDestination&&(identical(other.id, id) || other.id == id)&&(identical(other.preview, preview) || other.preview == preview));
}


@override
int get hashCode => Object.hash(runtimeType,id,preview);

@override
String toString() {
  return 'HomeDestination.product(id: $id, preview: $preview)';
}


}

/// @nodoc
abstract mixin class $ProductDestinationCopyWith<$Res> implements $HomeDestinationCopyWith<$Res> {
  factory $ProductDestinationCopyWith(ProductDestination value, $Res Function(ProductDestination) _then) = _$ProductDestinationCopyWithImpl;
@useResult
$Res call({
 String id, ProductSummary? preview
});


$ProductSummaryCopyWith<$Res>? get preview;

}
/// @nodoc
class _$ProductDestinationCopyWithImpl<$Res>
    implements $ProductDestinationCopyWith<$Res> {
  _$ProductDestinationCopyWithImpl(this._self, this._then);

  final ProductDestination _self;
  final $Res Function(ProductDestination) _then;

/// Create a copy of HomeDestination
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? preview = freezed,}) {
  return _then(ProductDestination(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,preview: freezed == preview ? _self.preview : preview // ignore: cast_nullable_to_non_nullable
as ProductSummary?,
  ));
}

/// Create a copy of HomeDestination
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductSummaryCopyWith<$Res>? get preview {
    if (_self.preview == null) {
    return null;
  }

  return $ProductSummaryCopyWith<$Res>(_self.preview!, (value) {
    return _then(_self.copyWith(preview: value));
  });
}
}

/// @nodoc


class CategoryDestination implements HomeDestination {
  const CategoryDestination(this.slug);
  

 final  String slug;

/// Create a copy of HomeDestination
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryDestinationCopyWith<CategoryDestination> get copyWith => _$CategoryDestinationCopyWithImpl<CategoryDestination>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryDestination&&(identical(other.slug, slug) || other.slug == slug));
}


@override
int get hashCode => Object.hash(runtimeType,slug);

@override
String toString() {
  return 'HomeDestination.category(slug: $slug)';
}


}

/// @nodoc
abstract mixin class $CategoryDestinationCopyWith<$Res> implements $HomeDestinationCopyWith<$Res> {
  factory $CategoryDestinationCopyWith(CategoryDestination value, $Res Function(CategoryDestination) _then) = _$CategoryDestinationCopyWithImpl;
@useResult
$Res call({
 String slug
});




}
/// @nodoc
class _$CategoryDestinationCopyWithImpl<$Res>
    implements $CategoryDestinationCopyWith<$Res> {
  _$CategoryDestinationCopyWithImpl(this._self, this._then);

  final CategoryDestination _self;
  final $Res Function(CategoryDestination) _then;

/// Create a copy of HomeDestination
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? slug = null,}) {
  return _then(CategoryDestination(
null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class AllCategoriesDestination implements HomeDestination {
  const AllCategoriesDestination();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AllCategoriesDestination);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeDestination.allCategories()';
}


}




/// @nodoc


class LinkDestination implements HomeDestination {
  const LinkDestination(this.link);
  

 final  HomeLink link;

/// Create a copy of HomeDestination
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LinkDestinationCopyWith<LinkDestination> get copyWith => _$LinkDestinationCopyWithImpl<LinkDestination>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LinkDestination&&(identical(other.link, link) || other.link == link));
}


@override
int get hashCode => Object.hash(runtimeType,link);

@override
String toString() {
  return 'HomeDestination.link(link: $link)';
}


}

/// @nodoc
abstract mixin class $LinkDestinationCopyWith<$Res> implements $HomeDestinationCopyWith<$Res> {
  factory $LinkDestinationCopyWith(LinkDestination value, $Res Function(LinkDestination) _then) = _$LinkDestinationCopyWithImpl;
@useResult
$Res call({
 HomeLink link
});


$HomeLinkCopyWith<$Res> get link;

}
/// @nodoc
class _$LinkDestinationCopyWithImpl<$Res>
    implements $LinkDestinationCopyWith<$Res> {
  _$LinkDestinationCopyWithImpl(this._self, this._then);

  final LinkDestination _self;
  final $Res Function(LinkDestination) _then;

/// Create a copy of HomeDestination
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? link = null,}) {
  return _then(LinkDestination(
null == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as HomeLink,
  ));
}

/// Create a copy of HomeDestination
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomeLinkCopyWith<$Res> get link {
  
  return $HomeLinkCopyWith<$Res>(_self.link, (value) {
    return _then(_self.copyWith(link: value));
  });
}
}

// dart format on
