// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_section.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeSection {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeSection);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeSection()';
}


}

/// @nodoc
class $HomeSectionCopyWith<$Res>  {
$HomeSectionCopyWith(HomeSection _, $Res Function(HomeSection) __);
}


/// Adds pattern-matching-related methods to [HomeSection].
extension HomeSectionPatterns on HomeSection {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( VideoStoriesSection value)?  videoStories,TResult Function( BannersSection value)?  banners,TResult Function( PasteLinkSection value)?  pasteLink,TResult Function( DailyDealsSection value)?  dailyDeals,TResult Function( CategoriesSection value)?  categories,TResult Function( ProductsSection value)?  products,TResult Function( HowWeWorkSection value)?  howWeWork,required TResult orElse(),}){
final _that = this;
switch (_that) {
case VideoStoriesSection() when videoStories != null:
return videoStories(_that);case BannersSection() when banners != null:
return banners(_that);case PasteLinkSection() when pasteLink != null:
return pasteLink(_that);case DailyDealsSection() when dailyDeals != null:
return dailyDeals(_that);case CategoriesSection() when categories != null:
return categories(_that);case ProductsSection() when products != null:
return products(_that);case HowWeWorkSection() when howWeWork != null:
return howWeWork(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( VideoStoriesSection value)  videoStories,required TResult Function( BannersSection value)  banners,required TResult Function( PasteLinkSection value)  pasteLink,required TResult Function( DailyDealsSection value)  dailyDeals,required TResult Function( CategoriesSection value)  categories,required TResult Function( ProductsSection value)  products,required TResult Function( HowWeWorkSection value)  howWeWork,}){
final _that = this;
switch (_that) {
case VideoStoriesSection():
return videoStories(_that);case BannersSection():
return banners(_that);case PasteLinkSection():
return pasteLink(_that);case DailyDealsSection():
return dailyDeals(_that);case CategoriesSection():
return categories(_that);case ProductsSection():
return products(_that);case HowWeWorkSection():
return howWeWork(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( VideoStoriesSection value)?  videoStories,TResult? Function( BannersSection value)?  banners,TResult? Function( PasteLinkSection value)?  pasteLink,TResult? Function( DailyDealsSection value)?  dailyDeals,TResult? Function( CategoriesSection value)?  categories,TResult? Function( ProductsSection value)?  products,TResult? Function( HowWeWorkSection value)?  howWeWork,}){
final _that = this;
switch (_that) {
case VideoStoriesSection() when videoStories != null:
return videoStories(_that);case BannersSection() when banners != null:
return banners(_that);case PasteLinkSection() when pasteLink != null:
return pasteLink(_that);case DailyDealsSection() when dailyDeals != null:
return dailyDeals(_that);case CategoriesSection() when categories != null:
return categories(_that);case ProductsSection() when products != null:
return products(_that);case HowWeWorkSection() when howWeWork != null:
return howWeWork(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( List<VideoStory> stories)?  videoStories,TResult Function( List<HomeBanner> banners)?  banners,TResult Function( List<String> sources)?  pasteLink,TResult Function( String title,  DateTime endsAt,  List<ProductSummary> products,  HomeLink? seeAll)?  dailyDeals,TResult Function( String title,  List<CategoryShortcut> categories)?  categories,TResult Function( String id,  String title,  List<ProductSummary> products,  HomeLink? seeAll)?  products,TResult Function( String title,  List<String> steps,  List<DeliveryTerm> delivery)?  howWeWork,required TResult orElse(),}) {final _that = this;
switch (_that) {
case VideoStoriesSection() when videoStories != null:
return videoStories(_that.stories);case BannersSection() when banners != null:
return banners(_that.banners);case PasteLinkSection() when pasteLink != null:
return pasteLink(_that.sources);case DailyDealsSection() when dailyDeals != null:
return dailyDeals(_that.title,_that.endsAt,_that.products,_that.seeAll);case CategoriesSection() when categories != null:
return categories(_that.title,_that.categories);case ProductsSection() when products != null:
return products(_that.id,_that.title,_that.products,_that.seeAll);case HowWeWorkSection() when howWeWork != null:
return howWeWork(_that.title,_that.steps,_that.delivery);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( List<VideoStory> stories)  videoStories,required TResult Function( List<HomeBanner> banners)  banners,required TResult Function( List<String> sources)  pasteLink,required TResult Function( String title,  DateTime endsAt,  List<ProductSummary> products,  HomeLink? seeAll)  dailyDeals,required TResult Function( String title,  List<CategoryShortcut> categories)  categories,required TResult Function( String id,  String title,  List<ProductSummary> products,  HomeLink? seeAll)  products,required TResult Function( String title,  List<String> steps,  List<DeliveryTerm> delivery)  howWeWork,}) {final _that = this;
switch (_that) {
case VideoStoriesSection():
return videoStories(_that.stories);case BannersSection():
return banners(_that.banners);case PasteLinkSection():
return pasteLink(_that.sources);case DailyDealsSection():
return dailyDeals(_that.title,_that.endsAt,_that.products,_that.seeAll);case CategoriesSection():
return categories(_that.title,_that.categories);case ProductsSection():
return products(_that.id,_that.title,_that.products,_that.seeAll);case HowWeWorkSection():
return howWeWork(_that.title,_that.steps,_that.delivery);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( List<VideoStory> stories)?  videoStories,TResult? Function( List<HomeBanner> banners)?  banners,TResult? Function( List<String> sources)?  pasteLink,TResult? Function( String title,  DateTime endsAt,  List<ProductSummary> products,  HomeLink? seeAll)?  dailyDeals,TResult? Function( String title,  List<CategoryShortcut> categories)?  categories,TResult? Function( String id,  String title,  List<ProductSummary> products,  HomeLink? seeAll)?  products,TResult? Function( String title,  List<String> steps,  List<DeliveryTerm> delivery)?  howWeWork,}) {final _that = this;
switch (_that) {
case VideoStoriesSection() when videoStories != null:
return videoStories(_that.stories);case BannersSection() when banners != null:
return banners(_that.banners);case PasteLinkSection() when pasteLink != null:
return pasteLink(_that.sources);case DailyDealsSection() when dailyDeals != null:
return dailyDeals(_that.title,_that.endsAt,_that.products,_that.seeAll);case CategoriesSection() when categories != null:
return categories(_that.title,_that.categories);case ProductsSection() when products != null:
return products(_that.id,_that.title,_that.products,_that.seeAll);case HowWeWorkSection() when howWeWork != null:
return howWeWork(_that.title,_that.steps,_that.delivery);case _:
  return null;

}
}

}

/// @nodoc


class VideoStoriesSection implements HomeSection {
  const VideoStoriesSection({required final  List<VideoStory> stories}): _stories = stories;
  

 final  List<VideoStory> _stories;
 List<VideoStory> get stories {
  if (_stories is EqualUnmodifiableListView) return _stories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_stories);
}


/// Create a copy of HomeSection
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VideoStoriesSectionCopyWith<VideoStoriesSection> get copyWith => _$VideoStoriesSectionCopyWithImpl<VideoStoriesSection>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoStoriesSection&&const DeepCollectionEquality().equals(other._stories, _stories));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_stories));

@override
String toString() {
  return 'HomeSection.videoStories(stories: $stories)';
}


}

/// @nodoc
abstract mixin class $VideoStoriesSectionCopyWith<$Res> implements $HomeSectionCopyWith<$Res> {
  factory $VideoStoriesSectionCopyWith(VideoStoriesSection value, $Res Function(VideoStoriesSection) _then) = _$VideoStoriesSectionCopyWithImpl;
@useResult
$Res call({
 List<VideoStory> stories
});




}
/// @nodoc
class _$VideoStoriesSectionCopyWithImpl<$Res>
    implements $VideoStoriesSectionCopyWith<$Res> {
  _$VideoStoriesSectionCopyWithImpl(this._self, this._then);

  final VideoStoriesSection _self;
  final $Res Function(VideoStoriesSection) _then;

/// Create a copy of HomeSection
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? stories = null,}) {
  return _then(VideoStoriesSection(
stories: null == stories ? _self._stories : stories // ignore: cast_nullable_to_non_nullable
as List<VideoStory>,
  ));
}


}

/// @nodoc


class BannersSection implements HomeSection {
  const BannersSection({required final  List<HomeBanner> banners}): _banners = banners;
  

 final  List<HomeBanner> _banners;
 List<HomeBanner> get banners {
  if (_banners is EqualUnmodifiableListView) return _banners;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_banners);
}


/// Create a copy of HomeSection
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BannersSectionCopyWith<BannersSection> get copyWith => _$BannersSectionCopyWithImpl<BannersSection>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BannersSection&&const DeepCollectionEquality().equals(other._banners, _banners));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_banners));

@override
String toString() {
  return 'HomeSection.banners(banners: $banners)';
}


}

/// @nodoc
abstract mixin class $BannersSectionCopyWith<$Res> implements $HomeSectionCopyWith<$Res> {
  factory $BannersSectionCopyWith(BannersSection value, $Res Function(BannersSection) _then) = _$BannersSectionCopyWithImpl;
@useResult
$Res call({
 List<HomeBanner> banners
});




}
/// @nodoc
class _$BannersSectionCopyWithImpl<$Res>
    implements $BannersSectionCopyWith<$Res> {
  _$BannersSectionCopyWithImpl(this._self, this._then);

  final BannersSection _self;
  final $Res Function(BannersSection) _then;

/// Create a copy of HomeSection
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? banners = null,}) {
  return _then(BannersSection(
banners: null == banners ? _self._banners : banners // ignore: cast_nullable_to_non_nullable
as List<HomeBanner>,
  ));
}


}

/// @nodoc


class PasteLinkSection implements HomeSection {
  const PasteLinkSection({required final  List<String> sources}): _sources = sources;
  

 final  List<String> _sources;
 List<String> get sources {
  if (_sources is EqualUnmodifiableListView) return _sources;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sources);
}


/// Create a copy of HomeSection
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PasteLinkSectionCopyWith<PasteLinkSection> get copyWith => _$PasteLinkSectionCopyWithImpl<PasteLinkSection>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PasteLinkSection&&const DeepCollectionEquality().equals(other._sources, _sources));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_sources));

@override
String toString() {
  return 'HomeSection.pasteLink(sources: $sources)';
}


}

/// @nodoc
abstract mixin class $PasteLinkSectionCopyWith<$Res> implements $HomeSectionCopyWith<$Res> {
  factory $PasteLinkSectionCopyWith(PasteLinkSection value, $Res Function(PasteLinkSection) _then) = _$PasteLinkSectionCopyWithImpl;
@useResult
$Res call({
 List<String> sources
});




}
/// @nodoc
class _$PasteLinkSectionCopyWithImpl<$Res>
    implements $PasteLinkSectionCopyWith<$Res> {
  _$PasteLinkSectionCopyWithImpl(this._self, this._then);

  final PasteLinkSection _self;
  final $Res Function(PasteLinkSection) _then;

/// Create a copy of HomeSection
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? sources = null,}) {
  return _then(PasteLinkSection(
sources: null == sources ? _self._sources : sources // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

/// @nodoc


class DailyDealsSection implements HomeSection {
  const DailyDealsSection({required this.title, required this.endsAt, required final  List<ProductSummary> products, this.seeAll}): _products = products;
  

 final  String title;
 final  DateTime endsAt;
 final  List<ProductSummary> _products;
 List<ProductSummary> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}

 final  HomeLink? seeAll;

/// Create a copy of HomeSection
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DailyDealsSectionCopyWith<DailyDealsSection> get copyWith => _$DailyDealsSectionCopyWithImpl<DailyDealsSection>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DailyDealsSection&&(identical(other.title, title) || other.title == title)&&(identical(other.endsAt, endsAt) || other.endsAt == endsAt)&&const DeepCollectionEquality().equals(other._products, _products)&&(identical(other.seeAll, seeAll) || other.seeAll == seeAll));
}


@override
int get hashCode => Object.hash(runtimeType,title,endsAt,const DeepCollectionEquality().hash(_products),seeAll);

@override
String toString() {
  return 'HomeSection.dailyDeals(title: $title, endsAt: $endsAt, products: $products, seeAll: $seeAll)';
}


}

/// @nodoc
abstract mixin class $DailyDealsSectionCopyWith<$Res> implements $HomeSectionCopyWith<$Res> {
  factory $DailyDealsSectionCopyWith(DailyDealsSection value, $Res Function(DailyDealsSection) _then) = _$DailyDealsSectionCopyWithImpl;
@useResult
$Res call({
 String title, DateTime endsAt, List<ProductSummary> products, HomeLink? seeAll
});


$HomeLinkCopyWith<$Res>? get seeAll;

}
/// @nodoc
class _$DailyDealsSectionCopyWithImpl<$Res>
    implements $DailyDealsSectionCopyWith<$Res> {
  _$DailyDealsSectionCopyWithImpl(this._self, this._then);

  final DailyDealsSection _self;
  final $Res Function(DailyDealsSection) _then;

/// Create a copy of HomeSection
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? title = null,Object? endsAt = null,Object? products = null,Object? seeAll = freezed,}) {
  return _then(DailyDealsSection(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,endsAt: null == endsAt ? _self.endsAt : endsAt // ignore: cast_nullable_to_non_nullable
as DateTime,products: null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<ProductSummary>,seeAll: freezed == seeAll ? _self.seeAll : seeAll // ignore: cast_nullable_to_non_nullable
as HomeLink?,
  ));
}

/// Create a copy of HomeSection
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomeLinkCopyWith<$Res>? get seeAll {
    if (_self.seeAll == null) {
    return null;
  }

  return $HomeLinkCopyWith<$Res>(_self.seeAll!, (value) {
    return _then(_self.copyWith(seeAll: value));
  });
}
}

/// @nodoc


class CategoriesSection implements HomeSection {
  const CategoriesSection({required this.title, required final  List<CategoryShortcut> categories}): _categories = categories;
  

 final  String title;
 final  List<CategoryShortcut> _categories;
 List<CategoryShortcut> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}


/// Create a copy of HomeSection
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoriesSectionCopyWith<CategoriesSection> get copyWith => _$CategoriesSectionCopyWithImpl<CategoriesSection>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoriesSection&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other._categories, _categories));
}


@override
int get hashCode => Object.hash(runtimeType,title,const DeepCollectionEquality().hash(_categories));

@override
String toString() {
  return 'HomeSection.categories(title: $title, categories: $categories)';
}


}

/// @nodoc
abstract mixin class $CategoriesSectionCopyWith<$Res> implements $HomeSectionCopyWith<$Res> {
  factory $CategoriesSectionCopyWith(CategoriesSection value, $Res Function(CategoriesSection) _then) = _$CategoriesSectionCopyWithImpl;
@useResult
$Res call({
 String title, List<CategoryShortcut> categories
});




}
/// @nodoc
class _$CategoriesSectionCopyWithImpl<$Res>
    implements $CategoriesSectionCopyWith<$Res> {
  _$CategoriesSectionCopyWithImpl(this._self, this._then);

  final CategoriesSection _self;
  final $Res Function(CategoriesSection) _then;

/// Create a copy of HomeSection
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? title = null,Object? categories = null,}) {
  return _then(CategoriesSection(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryShortcut>,
  ));
}


}

/// @nodoc


class ProductsSection implements HomeSection {
  const ProductsSection({required this.id, required this.title, required final  List<ProductSummary> products, this.seeAll}): _products = products;
  

 final  String id;
 final  String title;
 final  List<ProductSummary> _products;
 List<ProductSummary> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}

 final  HomeLink? seeAll;

/// Create a copy of HomeSection
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductsSectionCopyWith<ProductsSection> get copyWith => _$ProductsSectionCopyWithImpl<ProductsSection>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductsSection&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other._products, _products)&&(identical(other.seeAll, seeAll) || other.seeAll == seeAll));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,const DeepCollectionEquality().hash(_products),seeAll);

@override
String toString() {
  return 'HomeSection.products(id: $id, title: $title, products: $products, seeAll: $seeAll)';
}


}

/// @nodoc
abstract mixin class $ProductsSectionCopyWith<$Res> implements $HomeSectionCopyWith<$Res> {
  factory $ProductsSectionCopyWith(ProductsSection value, $Res Function(ProductsSection) _then) = _$ProductsSectionCopyWithImpl;
@useResult
$Res call({
 String id, String title, List<ProductSummary> products, HomeLink? seeAll
});


$HomeLinkCopyWith<$Res>? get seeAll;

}
/// @nodoc
class _$ProductsSectionCopyWithImpl<$Res>
    implements $ProductsSectionCopyWith<$Res> {
  _$ProductsSectionCopyWithImpl(this._self, this._then);

  final ProductsSection _self;
  final $Res Function(ProductsSection) _then;

/// Create a copy of HomeSection
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? products = null,Object? seeAll = freezed,}) {
  return _then(ProductsSection(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,products: null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<ProductSummary>,seeAll: freezed == seeAll ? _self.seeAll : seeAll // ignore: cast_nullable_to_non_nullable
as HomeLink?,
  ));
}

/// Create a copy of HomeSection
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomeLinkCopyWith<$Res>? get seeAll {
    if (_self.seeAll == null) {
    return null;
  }

  return $HomeLinkCopyWith<$Res>(_self.seeAll!, (value) {
    return _then(_self.copyWith(seeAll: value));
  });
}
}

/// @nodoc


class HowWeWorkSection implements HomeSection {
  const HowWeWorkSection({required this.title, required final  List<String> steps, required final  List<DeliveryTerm> delivery}): _steps = steps,_delivery = delivery;
  

 final  String title;
 final  List<String> _steps;
 List<String> get steps {
  if (_steps is EqualUnmodifiableListView) return _steps;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_steps);
}

 final  List<DeliveryTerm> _delivery;
 List<DeliveryTerm> get delivery {
  if (_delivery is EqualUnmodifiableListView) return _delivery;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_delivery);
}


/// Create a copy of HomeSection
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HowWeWorkSectionCopyWith<HowWeWorkSection> get copyWith => _$HowWeWorkSectionCopyWithImpl<HowWeWorkSection>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HowWeWorkSection&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other._steps, _steps)&&const DeepCollectionEquality().equals(other._delivery, _delivery));
}


@override
int get hashCode => Object.hash(runtimeType,title,const DeepCollectionEquality().hash(_steps),const DeepCollectionEquality().hash(_delivery));

@override
String toString() {
  return 'HomeSection.howWeWork(title: $title, steps: $steps, delivery: $delivery)';
}


}

/// @nodoc
abstract mixin class $HowWeWorkSectionCopyWith<$Res> implements $HomeSectionCopyWith<$Res> {
  factory $HowWeWorkSectionCopyWith(HowWeWorkSection value, $Res Function(HowWeWorkSection) _then) = _$HowWeWorkSectionCopyWithImpl;
@useResult
$Res call({
 String title, List<String> steps, List<DeliveryTerm> delivery
});




}
/// @nodoc
class _$HowWeWorkSectionCopyWithImpl<$Res>
    implements $HowWeWorkSectionCopyWith<$Res> {
  _$HowWeWorkSectionCopyWithImpl(this._self, this._then);

  final HowWeWorkSection _self;
  final $Res Function(HowWeWorkSection) _then;

/// Create a copy of HomeSection
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? title = null,Object? steps = null,Object? delivery = null,}) {
  return _then(HowWeWorkSection(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,steps: null == steps ? _self._steps : steps // ignore: cast_nullable_to_non_nullable
as List<String>,delivery: null == delivery ? _self._delivery : delivery // ignore: cast_nullable_to_non_nullable
as List<DeliveryTerm>,
  ));
}


}

/// @nodoc
mixin _$VideoStory {

 String get id; String get title; String get posterUrl; bool get isViewed;
/// Create a copy of VideoStory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VideoStoryCopyWith<VideoStory> get copyWith => _$VideoStoryCopyWithImpl<VideoStory>(this as VideoStory, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoStory&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.posterUrl, posterUrl) || other.posterUrl == posterUrl)&&(identical(other.isViewed, isViewed) || other.isViewed == isViewed));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,posterUrl,isViewed);

@override
String toString() {
  return 'VideoStory(id: $id, title: $title, posterUrl: $posterUrl, isViewed: $isViewed)';
}


}

/// @nodoc
abstract mixin class $VideoStoryCopyWith<$Res>  {
  factory $VideoStoryCopyWith(VideoStory value, $Res Function(VideoStory) _then) = _$VideoStoryCopyWithImpl;
@useResult
$Res call({
 String id, String title, String posterUrl, bool isViewed
});




}
/// @nodoc
class _$VideoStoryCopyWithImpl<$Res>
    implements $VideoStoryCopyWith<$Res> {
  _$VideoStoryCopyWithImpl(this._self, this._then);

  final VideoStory _self;
  final $Res Function(VideoStory) _then;

/// Create a copy of VideoStory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? posterUrl = null,Object? isViewed = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,posterUrl: null == posterUrl ? _self.posterUrl : posterUrl // ignore: cast_nullable_to_non_nullable
as String,isViewed: null == isViewed ? _self.isViewed : isViewed // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [VideoStory].
extension VideoStoryPatterns on VideoStory {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VideoStory value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VideoStory() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VideoStory value)  $default,){
final _that = this;
switch (_that) {
case _VideoStory():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VideoStory value)?  $default,){
final _that = this;
switch (_that) {
case _VideoStory() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String posterUrl,  bool isViewed)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VideoStory() when $default != null:
return $default(_that.id,_that.title,_that.posterUrl,_that.isViewed);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String posterUrl,  bool isViewed)  $default,) {final _that = this;
switch (_that) {
case _VideoStory():
return $default(_that.id,_that.title,_that.posterUrl,_that.isViewed);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String posterUrl,  bool isViewed)?  $default,) {final _that = this;
switch (_that) {
case _VideoStory() when $default != null:
return $default(_that.id,_that.title,_that.posterUrl,_that.isViewed);case _:
  return null;

}
}

}

/// @nodoc


class _VideoStory implements VideoStory {
  const _VideoStory({required this.id, required this.title, required this.posterUrl, this.isViewed = false});
  

@override final  String id;
@override final  String title;
@override final  String posterUrl;
@override@JsonKey() final  bool isViewed;

/// Create a copy of VideoStory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VideoStoryCopyWith<_VideoStory> get copyWith => __$VideoStoryCopyWithImpl<_VideoStory>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VideoStory&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.posterUrl, posterUrl) || other.posterUrl == posterUrl)&&(identical(other.isViewed, isViewed) || other.isViewed == isViewed));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,posterUrl,isViewed);

@override
String toString() {
  return 'VideoStory(id: $id, title: $title, posterUrl: $posterUrl, isViewed: $isViewed)';
}


}

/// @nodoc
abstract mixin class _$VideoStoryCopyWith<$Res> implements $VideoStoryCopyWith<$Res> {
  factory _$VideoStoryCopyWith(_VideoStory value, $Res Function(_VideoStory) _then) = __$VideoStoryCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String posterUrl, bool isViewed
});




}
/// @nodoc
class __$VideoStoryCopyWithImpl<$Res>
    implements _$VideoStoryCopyWith<$Res> {
  __$VideoStoryCopyWithImpl(this._self, this._then);

  final _VideoStory _self;
  final $Res Function(_VideoStory) _then;

/// Create a copy of VideoStory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? posterUrl = null,Object? isViewed = null,}) {
  return _then(_VideoStory(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,posterUrl: null == posterUrl ? _self.posterUrl : posterUrl // ignore: cast_nullable_to_non_nullable
as String,isViewed: null == isViewed ? _self.isViewed : isViewed // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$HomeBanner {

 String get id; String get imageUrl;/// Read by screen readers; banners are images with text baked in.
 String get title; HomeLink? get link;
/// Create a copy of HomeBanner
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeBannerCopyWith<HomeBanner> get copyWith => _$HomeBannerCopyWithImpl<HomeBanner>(this as HomeBanner, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeBanner&&(identical(other.id, id) || other.id == id)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.title, title) || other.title == title)&&(identical(other.link, link) || other.link == link));
}


@override
int get hashCode => Object.hash(runtimeType,id,imageUrl,title,link);

@override
String toString() {
  return 'HomeBanner(id: $id, imageUrl: $imageUrl, title: $title, link: $link)';
}


}

/// @nodoc
abstract mixin class $HomeBannerCopyWith<$Res>  {
  factory $HomeBannerCopyWith(HomeBanner value, $Res Function(HomeBanner) _then) = _$HomeBannerCopyWithImpl;
@useResult
$Res call({
 String id, String imageUrl, String title, HomeLink? link
});


$HomeLinkCopyWith<$Res>? get link;

}
/// @nodoc
class _$HomeBannerCopyWithImpl<$Res>
    implements $HomeBannerCopyWith<$Res> {
  _$HomeBannerCopyWithImpl(this._self, this._then);

  final HomeBanner _self;
  final $Res Function(HomeBanner) _then;

/// Create a copy of HomeBanner
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? imageUrl = null,Object? title = null,Object? link = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,link: freezed == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as HomeLink?,
  ));
}
/// Create a copy of HomeBanner
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomeLinkCopyWith<$Res>? get link {
    if (_self.link == null) {
    return null;
  }

  return $HomeLinkCopyWith<$Res>(_self.link!, (value) {
    return _then(_self.copyWith(link: value));
  });
}
}


/// Adds pattern-matching-related methods to [HomeBanner].
extension HomeBannerPatterns on HomeBanner {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeBanner value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeBanner() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeBanner value)  $default,){
final _that = this;
switch (_that) {
case _HomeBanner():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeBanner value)?  $default,){
final _that = this;
switch (_that) {
case _HomeBanner() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String imageUrl,  String title,  HomeLink? link)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeBanner() when $default != null:
return $default(_that.id,_that.imageUrl,_that.title,_that.link);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String imageUrl,  String title,  HomeLink? link)  $default,) {final _that = this;
switch (_that) {
case _HomeBanner():
return $default(_that.id,_that.imageUrl,_that.title,_that.link);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String imageUrl,  String title,  HomeLink? link)?  $default,) {final _that = this;
switch (_that) {
case _HomeBanner() when $default != null:
return $default(_that.id,_that.imageUrl,_that.title,_that.link);case _:
  return null;

}
}

}

/// @nodoc


class _HomeBanner implements HomeBanner {
  const _HomeBanner({required this.id, required this.imageUrl, required this.title, this.link});
  

@override final  String id;
@override final  String imageUrl;
/// Read by screen readers; banners are images with text baked in.
@override final  String title;
@override final  HomeLink? link;

/// Create a copy of HomeBanner
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeBannerCopyWith<_HomeBanner> get copyWith => __$HomeBannerCopyWithImpl<_HomeBanner>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeBanner&&(identical(other.id, id) || other.id == id)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.title, title) || other.title == title)&&(identical(other.link, link) || other.link == link));
}


@override
int get hashCode => Object.hash(runtimeType,id,imageUrl,title,link);

@override
String toString() {
  return 'HomeBanner(id: $id, imageUrl: $imageUrl, title: $title, link: $link)';
}


}

/// @nodoc
abstract mixin class _$HomeBannerCopyWith<$Res> implements $HomeBannerCopyWith<$Res> {
  factory _$HomeBannerCopyWith(_HomeBanner value, $Res Function(_HomeBanner) _then) = __$HomeBannerCopyWithImpl;
@override @useResult
$Res call({
 String id, String imageUrl, String title, HomeLink? link
});


@override $HomeLinkCopyWith<$Res>? get link;

}
/// @nodoc
class __$HomeBannerCopyWithImpl<$Res>
    implements _$HomeBannerCopyWith<$Res> {
  __$HomeBannerCopyWithImpl(this._self, this._then);

  final _HomeBanner _self;
  final $Res Function(_HomeBanner) _then;

/// Create a copy of HomeBanner
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? imageUrl = null,Object? title = null,Object? link = freezed,}) {
  return _then(_HomeBanner(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,link: freezed == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as HomeLink?,
  ));
}

/// Create a copy of HomeBanner
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomeLinkCopyWith<$Res>? get link {
    if (_self.link == null) {
    return null;
  }

  return $HomeLinkCopyWith<$Res>(_self.link!, (value) {
    return _then(_self.copyWith(link: value));
  });
}
}

/// @nodoc
mixin _$CategoryShortcut {

 String get slug; String get name; String get iconUrl;
/// Create a copy of CategoryShortcut
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryShortcutCopyWith<CategoryShortcut> get copyWith => _$CategoryShortcutCopyWithImpl<CategoryShortcut>(this as CategoryShortcut, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryShortcut&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.name, name) || other.name == name)&&(identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl));
}


@override
int get hashCode => Object.hash(runtimeType,slug,name,iconUrl);

@override
String toString() {
  return 'CategoryShortcut(slug: $slug, name: $name, iconUrl: $iconUrl)';
}


}

/// @nodoc
abstract mixin class $CategoryShortcutCopyWith<$Res>  {
  factory $CategoryShortcutCopyWith(CategoryShortcut value, $Res Function(CategoryShortcut) _then) = _$CategoryShortcutCopyWithImpl;
@useResult
$Res call({
 String slug, String name, String iconUrl
});




}
/// @nodoc
class _$CategoryShortcutCopyWithImpl<$Res>
    implements $CategoryShortcutCopyWith<$Res> {
  _$CategoryShortcutCopyWithImpl(this._self, this._then);

  final CategoryShortcut _self;
  final $Res Function(CategoryShortcut) _then;

/// Create a copy of CategoryShortcut
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? slug = null,Object? name = null,Object? iconUrl = null,}) {
  return _then(_self.copyWith(
slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,iconUrl: null == iconUrl ? _self.iconUrl : iconUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CategoryShortcut].
extension CategoryShortcutPatterns on CategoryShortcut {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryShortcut value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryShortcut() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryShortcut value)  $default,){
final _that = this;
switch (_that) {
case _CategoryShortcut():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryShortcut value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryShortcut() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String slug,  String name,  String iconUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryShortcut() when $default != null:
return $default(_that.slug,_that.name,_that.iconUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String slug,  String name,  String iconUrl)  $default,) {final _that = this;
switch (_that) {
case _CategoryShortcut():
return $default(_that.slug,_that.name,_that.iconUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String slug,  String name,  String iconUrl)?  $default,) {final _that = this;
switch (_that) {
case _CategoryShortcut() when $default != null:
return $default(_that.slug,_that.name,_that.iconUrl);case _:
  return null;

}
}

}

/// @nodoc


class _CategoryShortcut implements CategoryShortcut {
  const _CategoryShortcut({required this.slug, required this.name, required this.iconUrl});
  

@override final  String slug;
@override final  String name;
@override final  String iconUrl;

/// Create a copy of CategoryShortcut
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryShortcutCopyWith<_CategoryShortcut> get copyWith => __$CategoryShortcutCopyWithImpl<_CategoryShortcut>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryShortcut&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.name, name) || other.name == name)&&(identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl));
}


@override
int get hashCode => Object.hash(runtimeType,slug,name,iconUrl);

@override
String toString() {
  return 'CategoryShortcut(slug: $slug, name: $name, iconUrl: $iconUrl)';
}


}

/// @nodoc
abstract mixin class _$CategoryShortcutCopyWith<$Res> implements $CategoryShortcutCopyWith<$Res> {
  factory _$CategoryShortcutCopyWith(_CategoryShortcut value, $Res Function(_CategoryShortcut) _then) = __$CategoryShortcutCopyWithImpl;
@override @useResult
$Res call({
 String slug, String name, String iconUrl
});




}
/// @nodoc
class __$CategoryShortcutCopyWithImpl<$Res>
    implements _$CategoryShortcutCopyWith<$Res> {
  __$CategoryShortcutCopyWithImpl(this._self, this._then);

  final _CategoryShortcut _self;
  final $Res Function(_CategoryShortcut) _then;

/// Create a copy of CategoryShortcut
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? slug = null,Object? name = null,Object? iconUrl = null,}) {
  return _then(_CategoryShortcut(
slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,iconUrl: null == iconUrl ? _self.iconUrl : iconUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$DeliveryTerm {

 DeliveryKind get kind; String get name;/// Server text, e.g. «2–3 недели».
 String get term;
/// Create a copy of DeliveryTerm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeliveryTermCopyWith<DeliveryTerm> get copyWith => _$DeliveryTermCopyWithImpl<DeliveryTerm>(this as DeliveryTerm, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeliveryTerm&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.name, name) || other.name == name)&&(identical(other.term, term) || other.term == term));
}


@override
int get hashCode => Object.hash(runtimeType,kind,name,term);

@override
String toString() {
  return 'DeliveryTerm(kind: $kind, name: $name, term: $term)';
}


}

/// @nodoc
abstract mixin class $DeliveryTermCopyWith<$Res>  {
  factory $DeliveryTermCopyWith(DeliveryTerm value, $Res Function(DeliveryTerm) _then) = _$DeliveryTermCopyWithImpl;
@useResult
$Res call({
 DeliveryKind kind, String name, String term
});




}
/// @nodoc
class _$DeliveryTermCopyWithImpl<$Res>
    implements $DeliveryTermCopyWith<$Res> {
  _$DeliveryTermCopyWithImpl(this._self, this._then);

  final DeliveryTerm _self;
  final $Res Function(DeliveryTerm) _then;

/// Create a copy of DeliveryTerm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? kind = null,Object? name = null,Object? term = null,}) {
  return _then(_self.copyWith(
kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as DeliveryKind,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,term: null == term ? _self.term : term // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DeliveryTerm].
extension DeliveryTermPatterns on DeliveryTerm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeliveryTerm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeliveryTerm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeliveryTerm value)  $default,){
final _that = this;
switch (_that) {
case _DeliveryTerm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeliveryTerm value)?  $default,){
final _that = this;
switch (_that) {
case _DeliveryTerm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DeliveryKind kind,  String name,  String term)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeliveryTerm() when $default != null:
return $default(_that.kind,_that.name,_that.term);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DeliveryKind kind,  String name,  String term)  $default,) {final _that = this;
switch (_that) {
case _DeliveryTerm():
return $default(_that.kind,_that.name,_that.term);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DeliveryKind kind,  String name,  String term)?  $default,) {final _that = this;
switch (_that) {
case _DeliveryTerm() when $default != null:
return $default(_that.kind,_that.name,_that.term);case _:
  return null;

}
}

}

/// @nodoc


class _DeliveryTerm implements DeliveryTerm {
  const _DeliveryTerm({required this.kind, required this.name, required this.term});
  

@override final  DeliveryKind kind;
@override final  String name;
/// Server text, e.g. «2–3 недели».
@override final  String term;

/// Create a copy of DeliveryTerm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeliveryTermCopyWith<_DeliveryTerm> get copyWith => __$DeliveryTermCopyWithImpl<_DeliveryTerm>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeliveryTerm&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.name, name) || other.name == name)&&(identical(other.term, term) || other.term == term));
}


@override
int get hashCode => Object.hash(runtimeType,kind,name,term);

@override
String toString() {
  return 'DeliveryTerm(kind: $kind, name: $name, term: $term)';
}


}

/// @nodoc
abstract mixin class _$DeliveryTermCopyWith<$Res> implements $DeliveryTermCopyWith<$Res> {
  factory _$DeliveryTermCopyWith(_DeliveryTerm value, $Res Function(_DeliveryTerm) _then) = __$DeliveryTermCopyWithImpl;
@override @useResult
$Res call({
 DeliveryKind kind, String name, String term
});




}
/// @nodoc
class __$DeliveryTermCopyWithImpl<$Res>
    implements _$DeliveryTermCopyWith<$Res> {
  __$DeliveryTermCopyWithImpl(this._self, this._then);

  final _DeliveryTerm _self;
  final $Res Function(_DeliveryTerm) _then;

/// Create a copy of DeliveryTerm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? kind = null,Object? name = null,Object? term = null,}) {
  return _then(_DeliveryTerm(
kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as DeliveryKind,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,term: null == term ? _self.term : term // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
