// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeResponseModel {

/// Server clock at response time, for countdown correction.
 DateTime get serverTime; List<HomeSectionModel> get sections;
/// Create a copy of HomeResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeResponseModelCopyWith<HomeResponseModel> get copyWith => _$HomeResponseModelCopyWithImpl<HomeResponseModel>(this as HomeResponseModel, _$identity);

  /// Serializes this HomeResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeResponseModel&&(identical(other.serverTime, serverTime) || other.serverTime == serverTime)&&const DeepCollectionEquality().equals(other.sections, sections));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,serverTime,const DeepCollectionEquality().hash(sections));

@override
String toString() {
  return 'HomeResponseModel(serverTime: $serverTime, sections: $sections)';
}


}

/// @nodoc
abstract mixin class $HomeResponseModelCopyWith<$Res>  {
  factory $HomeResponseModelCopyWith(HomeResponseModel value, $Res Function(HomeResponseModel) _then) = _$HomeResponseModelCopyWithImpl;
@useResult
$Res call({
 DateTime serverTime, List<HomeSectionModel> sections
});




}
/// @nodoc
class _$HomeResponseModelCopyWithImpl<$Res>
    implements $HomeResponseModelCopyWith<$Res> {
  _$HomeResponseModelCopyWithImpl(this._self, this._then);

  final HomeResponseModel _self;
  final $Res Function(HomeResponseModel) _then;

/// Create a copy of HomeResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? serverTime = null,Object? sections = null,}) {
  return _then(_self.copyWith(
serverTime: null == serverTime ? _self.serverTime : serverTime // ignore: cast_nullable_to_non_nullable
as DateTime,sections: null == sections ? _self.sections : sections // ignore: cast_nullable_to_non_nullable
as List<HomeSectionModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeResponseModel].
extension HomeResponseModelPatterns on HomeResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _HomeResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _HomeResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime serverTime,  List<HomeSectionModel> sections)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeResponseModel() when $default != null:
return $default(_that.serverTime,_that.sections);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime serverTime,  List<HomeSectionModel> sections)  $default,) {final _that = this;
switch (_that) {
case _HomeResponseModel():
return $default(_that.serverTime,_that.sections);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime serverTime,  List<HomeSectionModel> sections)?  $default,) {final _that = this;
switch (_that) {
case _HomeResponseModel() when $default != null:
return $default(_that.serverTime,_that.sections);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HomeResponseModel implements HomeResponseModel {
  const _HomeResponseModel({required this.serverTime, required final  List<HomeSectionModel> sections}): _sections = sections;
  factory _HomeResponseModel.fromJson(Map<String, dynamic> json) => _$HomeResponseModelFromJson(json);

/// Server clock at response time, for countdown correction.
@override final  DateTime serverTime;
 final  List<HomeSectionModel> _sections;
@override List<HomeSectionModel> get sections {
  if (_sections is EqualUnmodifiableListView) return _sections;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sections);
}


/// Create a copy of HomeResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeResponseModelCopyWith<_HomeResponseModel> get copyWith => __$HomeResponseModelCopyWithImpl<_HomeResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HomeResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeResponseModel&&(identical(other.serverTime, serverTime) || other.serverTime == serverTime)&&const DeepCollectionEquality().equals(other._sections, _sections));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,serverTime,const DeepCollectionEquality().hash(_sections));

@override
String toString() {
  return 'HomeResponseModel(serverTime: $serverTime, sections: $sections)';
}


}

/// @nodoc
abstract mixin class _$HomeResponseModelCopyWith<$Res> implements $HomeResponseModelCopyWith<$Res> {
  factory _$HomeResponseModelCopyWith(_HomeResponseModel value, $Res Function(_HomeResponseModel) _then) = __$HomeResponseModelCopyWithImpl;
@override @useResult
$Res call({
 DateTime serverTime, List<HomeSectionModel> sections
});




}
/// @nodoc
class __$HomeResponseModelCopyWithImpl<$Res>
    implements _$HomeResponseModelCopyWith<$Res> {
  __$HomeResponseModelCopyWithImpl(this._self, this._then);

  final _HomeResponseModel _self;
  final $Res Function(_HomeResponseModel) _then;

/// Create a copy of HomeResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? serverTime = null,Object? sections = null,}) {
  return _then(_HomeResponseModel(
serverTime: null == serverTime ? _self.serverTime : serverTime // ignore: cast_nullable_to_non_nullable
as DateTime,sections: null == sections ? _self._sections : sections // ignore: cast_nullable_to_non_nullable
as List<HomeSectionModel>,
  ));
}


}

HomeSectionModel _$HomeSectionModelFromJson(
  Map<String, dynamic> json
) {
        switch (json['type']) {
                  case 'video_stories':
          return VideoStoriesSectionModel.fromJson(
            json
          );
                case 'banners':
          return BannersSectionModel.fromJson(
            json
          );
                case 'paste_link':
          return PasteLinkSectionModel.fromJson(
            json
          );
                case 'daily_deals':
          return DailyDealsSectionModel.fromJson(
            json
          );
                case 'categories':
          return CategoriesSectionModel.fromJson(
            json
          );
                case 'products':
          return ProductsSectionModel.fromJson(
            json
          );
                case 'how_we_work':
          return HowWeWorkSectionModel.fromJson(
            json
          );
        
          default:
            return UnknownSectionModel.fromJson(
  json
);
        }
      
}

/// @nodoc
mixin _$HomeSectionModel {



  /// Serializes this HomeSectionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeSectionModel);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeSectionModel()';
}


}

/// @nodoc
class $HomeSectionModelCopyWith<$Res>  {
$HomeSectionModelCopyWith(HomeSectionModel _, $Res Function(HomeSectionModel) __);
}


/// Adds pattern-matching-related methods to [HomeSectionModel].
extension HomeSectionModelPatterns on HomeSectionModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( VideoStoriesSectionModel value)?  videoStories,TResult Function( BannersSectionModel value)?  banners,TResult Function( PasteLinkSectionModel value)?  pasteLink,TResult Function( DailyDealsSectionModel value)?  dailyDeals,TResult Function( CategoriesSectionModel value)?  categories,TResult Function( ProductsSectionModel value)?  products,TResult Function( HowWeWorkSectionModel value)?  howWeWork,TResult Function( UnknownSectionModel value)?  unknown,required TResult orElse(),}){
final _that = this;
switch (_that) {
case VideoStoriesSectionModel() when videoStories != null:
return videoStories(_that);case BannersSectionModel() when banners != null:
return banners(_that);case PasteLinkSectionModel() when pasteLink != null:
return pasteLink(_that);case DailyDealsSectionModel() when dailyDeals != null:
return dailyDeals(_that);case CategoriesSectionModel() when categories != null:
return categories(_that);case ProductsSectionModel() when products != null:
return products(_that);case HowWeWorkSectionModel() when howWeWork != null:
return howWeWork(_that);case UnknownSectionModel() when unknown != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( VideoStoriesSectionModel value)  videoStories,required TResult Function( BannersSectionModel value)  banners,required TResult Function( PasteLinkSectionModel value)  pasteLink,required TResult Function( DailyDealsSectionModel value)  dailyDeals,required TResult Function( CategoriesSectionModel value)  categories,required TResult Function( ProductsSectionModel value)  products,required TResult Function( HowWeWorkSectionModel value)  howWeWork,required TResult Function( UnknownSectionModel value)  unknown,}){
final _that = this;
switch (_that) {
case VideoStoriesSectionModel():
return videoStories(_that);case BannersSectionModel():
return banners(_that);case PasteLinkSectionModel():
return pasteLink(_that);case DailyDealsSectionModel():
return dailyDeals(_that);case CategoriesSectionModel():
return categories(_that);case ProductsSectionModel():
return products(_that);case HowWeWorkSectionModel():
return howWeWork(_that);case UnknownSectionModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( VideoStoriesSectionModel value)?  videoStories,TResult? Function( BannersSectionModel value)?  banners,TResult? Function( PasteLinkSectionModel value)?  pasteLink,TResult? Function( DailyDealsSectionModel value)?  dailyDeals,TResult? Function( CategoriesSectionModel value)?  categories,TResult? Function( ProductsSectionModel value)?  products,TResult? Function( HowWeWorkSectionModel value)?  howWeWork,TResult? Function( UnknownSectionModel value)?  unknown,}){
final _that = this;
switch (_that) {
case VideoStoriesSectionModel() when videoStories != null:
return videoStories(_that);case BannersSectionModel() when banners != null:
return banners(_that);case PasteLinkSectionModel() when pasteLink != null:
return pasteLink(_that);case DailyDealsSectionModel() when dailyDeals != null:
return dailyDeals(_that);case CategoriesSectionModel() when categories != null:
return categories(_that);case ProductsSectionModel() when products != null:
return products(_that);case HowWeWorkSectionModel() when howWeWork != null:
return howWeWork(_that);case UnknownSectionModel() when unknown != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( List<VideoStoryModel> stories)?  videoStories,TResult Function( List<BannerModel> banners)?  banners,TResult Function( List<String> sources)?  pasteLink,TResult Function( String title,  DateTime endsAt,  List<ProductSummaryModel> products,  LinkModel? seeAll)?  dailyDeals,TResult Function( String title,  List<CategoryShortcutModel> categories)?  categories,TResult Function( String id,  String title,  List<ProductSummaryModel> products,  LinkModel? seeAll)?  products,TResult Function( String title,  List<String> steps,  List<DeliveryTermModel> delivery)?  howWeWork,TResult Function()?  unknown,required TResult orElse(),}) {final _that = this;
switch (_that) {
case VideoStoriesSectionModel() when videoStories != null:
return videoStories(_that.stories);case BannersSectionModel() when banners != null:
return banners(_that.banners);case PasteLinkSectionModel() when pasteLink != null:
return pasteLink(_that.sources);case DailyDealsSectionModel() when dailyDeals != null:
return dailyDeals(_that.title,_that.endsAt,_that.products,_that.seeAll);case CategoriesSectionModel() when categories != null:
return categories(_that.title,_that.categories);case ProductsSectionModel() when products != null:
return products(_that.id,_that.title,_that.products,_that.seeAll);case HowWeWorkSectionModel() when howWeWork != null:
return howWeWork(_that.title,_that.steps,_that.delivery);case UnknownSectionModel() when unknown != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( List<VideoStoryModel> stories)  videoStories,required TResult Function( List<BannerModel> banners)  banners,required TResult Function( List<String> sources)  pasteLink,required TResult Function( String title,  DateTime endsAt,  List<ProductSummaryModel> products,  LinkModel? seeAll)  dailyDeals,required TResult Function( String title,  List<CategoryShortcutModel> categories)  categories,required TResult Function( String id,  String title,  List<ProductSummaryModel> products,  LinkModel? seeAll)  products,required TResult Function( String title,  List<String> steps,  List<DeliveryTermModel> delivery)  howWeWork,required TResult Function()  unknown,}) {final _that = this;
switch (_that) {
case VideoStoriesSectionModel():
return videoStories(_that.stories);case BannersSectionModel():
return banners(_that.banners);case PasteLinkSectionModel():
return pasteLink(_that.sources);case DailyDealsSectionModel():
return dailyDeals(_that.title,_that.endsAt,_that.products,_that.seeAll);case CategoriesSectionModel():
return categories(_that.title,_that.categories);case ProductsSectionModel():
return products(_that.id,_that.title,_that.products,_that.seeAll);case HowWeWorkSectionModel():
return howWeWork(_that.title,_that.steps,_that.delivery);case UnknownSectionModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( List<VideoStoryModel> stories)?  videoStories,TResult? Function( List<BannerModel> banners)?  banners,TResult? Function( List<String> sources)?  pasteLink,TResult? Function( String title,  DateTime endsAt,  List<ProductSummaryModel> products,  LinkModel? seeAll)?  dailyDeals,TResult? Function( String title,  List<CategoryShortcutModel> categories)?  categories,TResult? Function( String id,  String title,  List<ProductSummaryModel> products,  LinkModel? seeAll)?  products,TResult? Function( String title,  List<String> steps,  List<DeliveryTermModel> delivery)?  howWeWork,TResult? Function()?  unknown,}) {final _that = this;
switch (_that) {
case VideoStoriesSectionModel() when videoStories != null:
return videoStories(_that.stories);case BannersSectionModel() when banners != null:
return banners(_that.banners);case PasteLinkSectionModel() when pasteLink != null:
return pasteLink(_that.sources);case DailyDealsSectionModel() when dailyDeals != null:
return dailyDeals(_that.title,_that.endsAt,_that.products,_that.seeAll);case CategoriesSectionModel() when categories != null:
return categories(_that.title,_that.categories);case ProductsSectionModel() when products != null:
return products(_that.id,_that.title,_that.products,_that.seeAll);case HowWeWorkSectionModel() when howWeWork != null:
return howWeWork(_that.title,_that.steps,_that.delivery);case UnknownSectionModel() when unknown != null:
return unknown();case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class VideoStoriesSectionModel implements HomeSectionModel {
  const VideoStoriesSectionModel({required final  List<VideoStoryModel> stories, final  String? $type}): _stories = stories,$type = $type ?? 'video_stories';
  factory VideoStoriesSectionModel.fromJson(Map<String, dynamic> json) => _$VideoStoriesSectionModelFromJson(json);

 final  List<VideoStoryModel> _stories;
 List<VideoStoryModel> get stories {
  if (_stories is EqualUnmodifiableListView) return _stories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_stories);
}


@JsonKey(name: 'type')
final String $type;


/// Create a copy of HomeSectionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VideoStoriesSectionModelCopyWith<VideoStoriesSectionModel> get copyWith => _$VideoStoriesSectionModelCopyWithImpl<VideoStoriesSectionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VideoStoriesSectionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoStoriesSectionModel&&const DeepCollectionEquality().equals(other._stories, _stories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_stories));

@override
String toString() {
  return 'HomeSectionModel.videoStories(stories: $stories)';
}


}

/// @nodoc
abstract mixin class $VideoStoriesSectionModelCopyWith<$Res> implements $HomeSectionModelCopyWith<$Res> {
  factory $VideoStoriesSectionModelCopyWith(VideoStoriesSectionModel value, $Res Function(VideoStoriesSectionModel) _then) = _$VideoStoriesSectionModelCopyWithImpl;
@useResult
$Res call({
 List<VideoStoryModel> stories
});




}
/// @nodoc
class _$VideoStoriesSectionModelCopyWithImpl<$Res>
    implements $VideoStoriesSectionModelCopyWith<$Res> {
  _$VideoStoriesSectionModelCopyWithImpl(this._self, this._then);

  final VideoStoriesSectionModel _self;
  final $Res Function(VideoStoriesSectionModel) _then;

/// Create a copy of HomeSectionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? stories = null,}) {
  return _then(VideoStoriesSectionModel(
stories: null == stories ? _self._stories : stories // ignore: cast_nullable_to_non_nullable
as List<VideoStoryModel>,
  ));
}


}

/// @nodoc
@JsonSerializable()

class BannersSectionModel implements HomeSectionModel {
  const BannersSectionModel({required final  List<BannerModel> banners, final  String? $type}): _banners = banners,$type = $type ?? 'banners';
  factory BannersSectionModel.fromJson(Map<String, dynamic> json) => _$BannersSectionModelFromJson(json);

 final  List<BannerModel> _banners;
 List<BannerModel> get banners {
  if (_banners is EqualUnmodifiableListView) return _banners;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_banners);
}


@JsonKey(name: 'type')
final String $type;


/// Create a copy of HomeSectionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BannersSectionModelCopyWith<BannersSectionModel> get copyWith => _$BannersSectionModelCopyWithImpl<BannersSectionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BannersSectionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BannersSectionModel&&const DeepCollectionEquality().equals(other._banners, _banners));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_banners));

@override
String toString() {
  return 'HomeSectionModel.banners(banners: $banners)';
}


}

/// @nodoc
abstract mixin class $BannersSectionModelCopyWith<$Res> implements $HomeSectionModelCopyWith<$Res> {
  factory $BannersSectionModelCopyWith(BannersSectionModel value, $Res Function(BannersSectionModel) _then) = _$BannersSectionModelCopyWithImpl;
@useResult
$Res call({
 List<BannerModel> banners
});




}
/// @nodoc
class _$BannersSectionModelCopyWithImpl<$Res>
    implements $BannersSectionModelCopyWith<$Res> {
  _$BannersSectionModelCopyWithImpl(this._self, this._then);

  final BannersSectionModel _self;
  final $Res Function(BannersSectionModel) _then;

/// Create a copy of HomeSectionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? banners = null,}) {
  return _then(BannersSectionModel(
banners: null == banners ? _self._banners : banners // ignore: cast_nullable_to_non_nullable
as List<BannerModel>,
  ));
}


}

/// @nodoc
@JsonSerializable()

class PasteLinkSectionModel implements HomeSectionModel {
  const PasteLinkSectionModel({required final  List<String> sources, final  String? $type}): _sources = sources,$type = $type ?? 'paste_link';
  factory PasteLinkSectionModel.fromJson(Map<String, dynamic> json) => _$PasteLinkSectionModelFromJson(json);

 final  List<String> _sources;
 List<String> get sources {
  if (_sources is EqualUnmodifiableListView) return _sources;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sources);
}


@JsonKey(name: 'type')
final String $type;


/// Create a copy of HomeSectionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PasteLinkSectionModelCopyWith<PasteLinkSectionModel> get copyWith => _$PasteLinkSectionModelCopyWithImpl<PasteLinkSectionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PasteLinkSectionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PasteLinkSectionModel&&const DeepCollectionEquality().equals(other._sources, _sources));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_sources));

@override
String toString() {
  return 'HomeSectionModel.pasteLink(sources: $sources)';
}


}

/// @nodoc
abstract mixin class $PasteLinkSectionModelCopyWith<$Res> implements $HomeSectionModelCopyWith<$Res> {
  factory $PasteLinkSectionModelCopyWith(PasteLinkSectionModel value, $Res Function(PasteLinkSectionModel) _then) = _$PasteLinkSectionModelCopyWithImpl;
@useResult
$Res call({
 List<String> sources
});




}
/// @nodoc
class _$PasteLinkSectionModelCopyWithImpl<$Res>
    implements $PasteLinkSectionModelCopyWith<$Res> {
  _$PasteLinkSectionModelCopyWithImpl(this._self, this._then);

  final PasteLinkSectionModel _self;
  final $Res Function(PasteLinkSectionModel) _then;

/// Create a copy of HomeSectionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? sources = null,}) {
  return _then(PasteLinkSectionModel(
sources: null == sources ? _self._sources : sources // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

/// @nodoc
@JsonSerializable()

class DailyDealsSectionModel implements HomeSectionModel {
  const DailyDealsSectionModel({required this.title, required this.endsAt, required final  List<ProductSummaryModel> products, this.seeAll, final  String? $type}): _products = products,$type = $type ?? 'daily_deals';
  factory DailyDealsSectionModel.fromJson(Map<String, dynamic> json) => _$DailyDealsSectionModelFromJson(json);

 final  String title;
 final  DateTime endsAt;
 final  List<ProductSummaryModel> _products;
 List<ProductSummaryModel> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}

 final  LinkModel? seeAll;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of HomeSectionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DailyDealsSectionModelCopyWith<DailyDealsSectionModel> get copyWith => _$DailyDealsSectionModelCopyWithImpl<DailyDealsSectionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DailyDealsSectionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DailyDealsSectionModel&&(identical(other.title, title) || other.title == title)&&(identical(other.endsAt, endsAt) || other.endsAt == endsAt)&&const DeepCollectionEquality().equals(other._products, _products)&&(identical(other.seeAll, seeAll) || other.seeAll == seeAll));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,endsAt,const DeepCollectionEquality().hash(_products),seeAll);

@override
String toString() {
  return 'HomeSectionModel.dailyDeals(title: $title, endsAt: $endsAt, products: $products, seeAll: $seeAll)';
}


}

/// @nodoc
abstract mixin class $DailyDealsSectionModelCopyWith<$Res> implements $HomeSectionModelCopyWith<$Res> {
  factory $DailyDealsSectionModelCopyWith(DailyDealsSectionModel value, $Res Function(DailyDealsSectionModel) _then) = _$DailyDealsSectionModelCopyWithImpl;
@useResult
$Res call({
 String title, DateTime endsAt, List<ProductSummaryModel> products, LinkModel? seeAll
});


$LinkModelCopyWith<$Res>? get seeAll;

}
/// @nodoc
class _$DailyDealsSectionModelCopyWithImpl<$Res>
    implements $DailyDealsSectionModelCopyWith<$Res> {
  _$DailyDealsSectionModelCopyWithImpl(this._self, this._then);

  final DailyDealsSectionModel _self;
  final $Res Function(DailyDealsSectionModel) _then;

/// Create a copy of HomeSectionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? title = null,Object? endsAt = null,Object? products = null,Object? seeAll = freezed,}) {
  return _then(DailyDealsSectionModel(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,endsAt: null == endsAt ? _self.endsAt : endsAt // ignore: cast_nullable_to_non_nullable
as DateTime,products: null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<ProductSummaryModel>,seeAll: freezed == seeAll ? _self.seeAll : seeAll // ignore: cast_nullable_to_non_nullable
as LinkModel?,
  ));
}

/// Create a copy of HomeSectionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LinkModelCopyWith<$Res>? get seeAll {
    if (_self.seeAll == null) {
    return null;
  }

  return $LinkModelCopyWith<$Res>(_self.seeAll!, (value) {
    return _then(_self.copyWith(seeAll: value));
  });
}
}

/// @nodoc
@JsonSerializable()

class CategoriesSectionModel implements HomeSectionModel {
  const CategoriesSectionModel({required this.title, required final  List<CategoryShortcutModel> categories, final  String? $type}): _categories = categories,$type = $type ?? 'categories';
  factory CategoriesSectionModel.fromJson(Map<String, dynamic> json) => _$CategoriesSectionModelFromJson(json);

 final  String title;
 final  List<CategoryShortcutModel> _categories;
 List<CategoryShortcutModel> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}


@JsonKey(name: 'type')
final String $type;


/// Create a copy of HomeSectionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoriesSectionModelCopyWith<CategoriesSectionModel> get copyWith => _$CategoriesSectionModelCopyWithImpl<CategoriesSectionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoriesSectionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoriesSectionModel&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other._categories, _categories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,const DeepCollectionEquality().hash(_categories));

@override
String toString() {
  return 'HomeSectionModel.categories(title: $title, categories: $categories)';
}


}

/// @nodoc
abstract mixin class $CategoriesSectionModelCopyWith<$Res> implements $HomeSectionModelCopyWith<$Res> {
  factory $CategoriesSectionModelCopyWith(CategoriesSectionModel value, $Res Function(CategoriesSectionModel) _then) = _$CategoriesSectionModelCopyWithImpl;
@useResult
$Res call({
 String title, List<CategoryShortcutModel> categories
});




}
/// @nodoc
class _$CategoriesSectionModelCopyWithImpl<$Res>
    implements $CategoriesSectionModelCopyWith<$Res> {
  _$CategoriesSectionModelCopyWithImpl(this._self, this._then);

  final CategoriesSectionModel _self;
  final $Res Function(CategoriesSectionModel) _then;

/// Create a copy of HomeSectionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? title = null,Object? categories = null,}) {
  return _then(CategoriesSectionModel(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryShortcutModel>,
  ));
}


}

/// @nodoc
@JsonSerializable()

class ProductsSectionModel implements HomeSectionModel {
  const ProductsSectionModel({required this.id, required this.title, required final  List<ProductSummaryModel> products, this.seeAll, final  String? $type}): _products = products,$type = $type ?? 'products';
  factory ProductsSectionModel.fromJson(Map<String, dynamic> json) => _$ProductsSectionModelFromJson(json);

 final  String id;
 final  String title;
 final  List<ProductSummaryModel> _products;
 List<ProductSummaryModel> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}

 final  LinkModel? seeAll;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of HomeSectionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductsSectionModelCopyWith<ProductsSectionModel> get copyWith => _$ProductsSectionModelCopyWithImpl<ProductsSectionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductsSectionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductsSectionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other._products, _products)&&(identical(other.seeAll, seeAll) || other.seeAll == seeAll));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,const DeepCollectionEquality().hash(_products),seeAll);

@override
String toString() {
  return 'HomeSectionModel.products(id: $id, title: $title, products: $products, seeAll: $seeAll)';
}


}

/// @nodoc
abstract mixin class $ProductsSectionModelCopyWith<$Res> implements $HomeSectionModelCopyWith<$Res> {
  factory $ProductsSectionModelCopyWith(ProductsSectionModel value, $Res Function(ProductsSectionModel) _then) = _$ProductsSectionModelCopyWithImpl;
@useResult
$Res call({
 String id, String title, List<ProductSummaryModel> products, LinkModel? seeAll
});


$LinkModelCopyWith<$Res>? get seeAll;

}
/// @nodoc
class _$ProductsSectionModelCopyWithImpl<$Res>
    implements $ProductsSectionModelCopyWith<$Res> {
  _$ProductsSectionModelCopyWithImpl(this._self, this._then);

  final ProductsSectionModel _self;
  final $Res Function(ProductsSectionModel) _then;

/// Create a copy of HomeSectionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? products = null,Object? seeAll = freezed,}) {
  return _then(ProductsSectionModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,products: null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<ProductSummaryModel>,seeAll: freezed == seeAll ? _self.seeAll : seeAll // ignore: cast_nullable_to_non_nullable
as LinkModel?,
  ));
}

/// Create a copy of HomeSectionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LinkModelCopyWith<$Res>? get seeAll {
    if (_self.seeAll == null) {
    return null;
  }

  return $LinkModelCopyWith<$Res>(_self.seeAll!, (value) {
    return _then(_self.copyWith(seeAll: value));
  });
}
}

/// @nodoc
@JsonSerializable()

class HowWeWorkSectionModel implements HomeSectionModel {
  const HowWeWorkSectionModel({required this.title, required final  List<String> steps, required final  List<DeliveryTermModel> delivery, final  String? $type}): _steps = steps,_delivery = delivery,$type = $type ?? 'how_we_work';
  factory HowWeWorkSectionModel.fromJson(Map<String, dynamic> json) => _$HowWeWorkSectionModelFromJson(json);

 final  String title;
 final  List<String> _steps;
 List<String> get steps {
  if (_steps is EqualUnmodifiableListView) return _steps;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_steps);
}

 final  List<DeliveryTermModel> _delivery;
 List<DeliveryTermModel> get delivery {
  if (_delivery is EqualUnmodifiableListView) return _delivery;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_delivery);
}


@JsonKey(name: 'type')
final String $type;


/// Create a copy of HomeSectionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HowWeWorkSectionModelCopyWith<HowWeWorkSectionModel> get copyWith => _$HowWeWorkSectionModelCopyWithImpl<HowWeWorkSectionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HowWeWorkSectionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HowWeWorkSectionModel&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other._steps, _steps)&&const DeepCollectionEquality().equals(other._delivery, _delivery));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,const DeepCollectionEquality().hash(_steps),const DeepCollectionEquality().hash(_delivery));

@override
String toString() {
  return 'HomeSectionModel.howWeWork(title: $title, steps: $steps, delivery: $delivery)';
}


}

/// @nodoc
abstract mixin class $HowWeWorkSectionModelCopyWith<$Res> implements $HomeSectionModelCopyWith<$Res> {
  factory $HowWeWorkSectionModelCopyWith(HowWeWorkSectionModel value, $Res Function(HowWeWorkSectionModel) _then) = _$HowWeWorkSectionModelCopyWithImpl;
@useResult
$Res call({
 String title, List<String> steps, List<DeliveryTermModel> delivery
});




}
/// @nodoc
class _$HowWeWorkSectionModelCopyWithImpl<$Res>
    implements $HowWeWorkSectionModelCopyWith<$Res> {
  _$HowWeWorkSectionModelCopyWithImpl(this._self, this._then);

  final HowWeWorkSectionModel _self;
  final $Res Function(HowWeWorkSectionModel) _then;

/// Create a copy of HomeSectionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? title = null,Object? steps = null,Object? delivery = null,}) {
  return _then(HowWeWorkSectionModel(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,steps: null == steps ? _self._steps : steps // ignore: cast_nullable_to_non_nullable
as List<String>,delivery: null == delivery ? _self._delivery : delivery // ignore: cast_nullable_to_non_nullable
as List<DeliveryTermModel>,
  ));
}


}

/// @nodoc
@JsonSerializable()

class UnknownSectionModel implements HomeSectionModel {
  const UnknownSectionModel({final  String? $type}): $type = $type ?? 'unknown';
  factory UnknownSectionModel.fromJson(Map<String, dynamic> json) => _$UnknownSectionModelFromJson(json);



@JsonKey(name: 'type')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$UnknownSectionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnknownSectionModel);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeSectionModel.unknown()';
}


}





/// @nodoc
mixin _$VideoStoryModel {

 String get id; String get title; String get posterUrl; bool get isViewed;
/// Create a copy of VideoStoryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VideoStoryModelCopyWith<VideoStoryModel> get copyWith => _$VideoStoryModelCopyWithImpl<VideoStoryModel>(this as VideoStoryModel, _$identity);

  /// Serializes this VideoStoryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoStoryModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.posterUrl, posterUrl) || other.posterUrl == posterUrl)&&(identical(other.isViewed, isViewed) || other.isViewed == isViewed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,posterUrl,isViewed);

@override
String toString() {
  return 'VideoStoryModel(id: $id, title: $title, posterUrl: $posterUrl, isViewed: $isViewed)';
}


}

/// @nodoc
abstract mixin class $VideoStoryModelCopyWith<$Res>  {
  factory $VideoStoryModelCopyWith(VideoStoryModel value, $Res Function(VideoStoryModel) _then) = _$VideoStoryModelCopyWithImpl;
@useResult
$Res call({
 String id, String title, String posterUrl, bool isViewed
});




}
/// @nodoc
class _$VideoStoryModelCopyWithImpl<$Res>
    implements $VideoStoryModelCopyWith<$Res> {
  _$VideoStoryModelCopyWithImpl(this._self, this._then);

  final VideoStoryModel _self;
  final $Res Function(VideoStoryModel) _then;

/// Create a copy of VideoStoryModel
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


/// Adds pattern-matching-related methods to [VideoStoryModel].
extension VideoStoryModelPatterns on VideoStoryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VideoStoryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VideoStoryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VideoStoryModel value)  $default,){
final _that = this;
switch (_that) {
case _VideoStoryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VideoStoryModel value)?  $default,){
final _that = this;
switch (_that) {
case _VideoStoryModel() when $default != null:
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
case _VideoStoryModel() when $default != null:
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
case _VideoStoryModel():
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
case _VideoStoryModel() when $default != null:
return $default(_that.id,_that.title,_that.posterUrl,_that.isViewed);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VideoStoryModel implements VideoStoryModel {
  const _VideoStoryModel({required this.id, required this.title, required this.posterUrl, this.isViewed = false});
  factory _VideoStoryModel.fromJson(Map<String, dynamic> json) => _$VideoStoryModelFromJson(json);

@override final  String id;
@override final  String title;
@override final  String posterUrl;
@override@JsonKey() final  bool isViewed;

/// Create a copy of VideoStoryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VideoStoryModelCopyWith<_VideoStoryModel> get copyWith => __$VideoStoryModelCopyWithImpl<_VideoStoryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VideoStoryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VideoStoryModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.posterUrl, posterUrl) || other.posterUrl == posterUrl)&&(identical(other.isViewed, isViewed) || other.isViewed == isViewed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,posterUrl,isViewed);

@override
String toString() {
  return 'VideoStoryModel(id: $id, title: $title, posterUrl: $posterUrl, isViewed: $isViewed)';
}


}

/// @nodoc
abstract mixin class _$VideoStoryModelCopyWith<$Res> implements $VideoStoryModelCopyWith<$Res> {
  factory _$VideoStoryModelCopyWith(_VideoStoryModel value, $Res Function(_VideoStoryModel) _then) = __$VideoStoryModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String posterUrl, bool isViewed
});




}
/// @nodoc
class __$VideoStoryModelCopyWithImpl<$Res>
    implements _$VideoStoryModelCopyWith<$Res> {
  __$VideoStoryModelCopyWithImpl(this._self, this._then);

  final _VideoStoryModel _self;
  final $Res Function(_VideoStoryModel) _then;

/// Create a copy of VideoStoryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? posterUrl = null,Object? isViewed = null,}) {
  return _then(_VideoStoryModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,posterUrl: null == posterUrl ? _self.posterUrl : posterUrl // ignore: cast_nullable_to_non_nullable
as String,isViewed: null == isViewed ? _self.isViewed : isViewed // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$BannerModel {

 String get id; String get imageUrl; String get title; LinkModel? get link;
/// Create a copy of BannerModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BannerModelCopyWith<BannerModel> get copyWith => _$BannerModelCopyWithImpl<BannerModel>(this as BannerModel, _$identity);

  /// Serializes this BannerModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BannerModel&&(identical(other.id, id) || other.id == id)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.title, title) || other.title == title)&&(identical(other.link, link) || other.link == link));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,imageUrl,title,link);

@override
String toString() {
  return 'BannerModel(id: $id, imageUrl: $imageUrl, title: $title, link: $link)';
}


}

/// @nodoc
abstract mixin class $BannerModelCopyWith<$Res>  {
  factory $BannerModelCopyWith(BannerModel value, $Res Function(BannerModel) _then) = _$BannerModelCopyWithImpl;
@useResult
$Res call({
 String id, String imageUrl, String title, LinkModel? link
});


$LinkModelCopyWith<$Res>? get link;

}
/// @nodoc
class _$BannerModelCopyWithImpl<$Res>
    implements $BannerModelCopyWith<$Res> {
  _$BannerModelCopyWithImpl(this._self, this._then);

  final BannerModel _self;
  final $Res Function(BannerModel) _then;

/// Create a copy of BannerModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? imageUrl = null,Object? title = null,Object? link = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,link: freezed == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as LinkModel?,
  ));
}
/// Create a copy of BannerModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LinkModelCopyWith<$Res>? get link {
    if (_self.link == null) {
    return null;
  }

  return $LinkModelCopyWith<$Res>(_self.link!, (value) {
    return _then(_self.copyWith(link: value));
  });
}
}


/// Adds pattern-matching-related methods to [BannerModel].
extension BannerModelPatterns on BannerModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BannerModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BannerModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BannerModel value)  $default,){
final _that = this;
switch (_that) {
case _BannerModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BannerModel value)?  $default,){
final _that = this;
switch (_that) {
case _BannerModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String imageUrl,  String title,  LinkModel? link)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BannerModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String imageUrl,  String title,  LinkModel? link)  $default,) {final _that = this;
switch (_that) {
case _BannerModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String imageUrl,  String title,  LinkModel? link)?  $default,) {final _that = this;
switch (_that) {
case _BannerModel() when $default != null:
return $default(_that.id,_that.imageUrl,_that.title,_that.link);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BannerModel implements BannerModel {
  const _BannerModel({required this.id, required this.imageUrl, required this.title, this.link});
  factory _BannerModel.fromJson(Map<String, dynamic> json) => _$BannerModelFromJson(json);

@override final  String id;
@override final  String imageUrl;
@override final  String title;
@override final  LinkModel? link;

/// Create a copy of BannerModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BannerModelCopyWith<_BannerModel> get copyWith => __$BannerModelCopyWithImpl<_BannerModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BannerModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BannerModel&&(identical(other.id, id) || other.id == id)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.title, title) || other.title == title)&&(identical(other.link, link) || other.link == link));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,imageUrl,title,link);

@override
String toString() {
  return 'BannerModel(id: $id, imageUrl: $imageUrl, title: $title, link: $link)';
}


}

/// @nodoc
abstract mixin class _$BannerModelCopyWith<$Res> implements $BannerModelCopyWith<$Res> {
  factory _$BannerModelCopyWith(_BannerModel value, $Res Function(_BannerModel) _then) = __$BannerModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String imageUrl, String title, LinkModel? link
});


@override $LinkModelCopyWith<$Res>? get link;

}
/// @nodoc
class __$BannerModelCopyWithImpl<$Res>
    implements _$BannerModelCopyWith<$Res> {
  __$BannerModelCopyWithImpl(this._self, this._then);

  final _BannerModel _self;
  final $Res Function(_BannerModel) _then;

/// Create a copy of BannerModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? imageUrl = null,Object? title = null,Object? link = freezed,}) {
  return _then(_BannerModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,link: freezed == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as LinkModel?,
  ));
}

/// Create a copy of BannerModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LinkModelCopyWith<$Res>? get link {
    if (_self.link == null) {
    return null;
  }

  return $LinkModelCopyWith<$Res>(_self.link!, (value) {
    return _then(_self.copyWith(link: value));
  });
}
}


/// @nodoc
mixin _$LinkModel {

 String get type; String get value;
/// Create a copy of LinkModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LinkModelCopyWith<LinkModel> get copyWith => _$LinkModelCopyWithImpl<LinkModel>(this as LinkModel, _$identity);

  /// Serializes this LinkModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LinkModel&&(identical(other.type, type) || other.type == type)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,value);

@override
String toString() {
  return 'LinkModel(type: $type, value: $value)';
}


}

/// @nodoc
abstract mixin class $LinkModelCopyWith<$Res>  {
  factory $LinkModelCopyWith(LinkModel value, $Res Function(LinkModel) _then) = _$LinkModelCopyWithImpl;
@useResult
$Res call({
 String type, String value
});




}
/// @nodoc
class _$LinkModelCopyWithImpl<$Res>
    implements $LinkModelCopyWith<$Res> {
  _$LinkModelCopyWithImpl(this._self, this._then);

  final LinkModel _self;
  final $Res Function(LinkModel) _then;

/// Create a copy of LinkModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? value = null,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [LinkModel].
extension LinkModelPatterns on LinkModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LinkModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LinkModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LinkModel value)  $default,){
final _that = this;
switch (_that) {
case _LinkModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LinkModel value)?  $default,){
final _that = this;
switch (_that) {
case _LinkModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String type,  String value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LinkModel() when $default != null:
return $default(_that.type,_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String type,  String value)  $default,) {final _that = this;
switch (_that) {
case _LinkModel():
return $default(_that.type,_that.value);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String type,  String value)?  $default,) {final _that = this;
switch (_that) {
case _LinkModel() when $default != null:
return $default(_that.type,_that.value);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LinkModel implements LinkModel {
  const _LinkModel({required this.type, required this.value});
  factory _LinkModel.fromJson(Map<String, dynamic> json) => _$LinkModelFromJson(json);

@override final  String type;
@override final  String value;

/// Create a copy of LinkModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LinkModelCopyWith<_LinkModel> get copyWith => __$LinkModelCopyWithImpl<_LinkModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LinkModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LinkModel&&(identical(other.type, type) || other.type == type)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,value);

@override
String toString() {
  return 'LinkModel(type: $type, value: $value)';
}


}

/// @nodoc
abstract mixin class _$LinkModelCopyWith<$Res> implements $LinkModelCopyWith<$Res> {
  factory _$LinkModelCopyWith(_LinkModel value, $Res Function(_LinkModel) _then) = __$LinkModelCopyWithImpl;
@override @useResult
$Res call({
 String type, String value
});




}
/// @nodoc
class __$LinkModelCopyWithImpl<$Res>
    implements _$LinkModelCopyWith<$Res> {
  __$LinkModelCopyWithImpl(this._self, this._then);

  final _LinkModel _self;
  final $Res Function(_LinkModel) _then;

/// Create a copy of LinkModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? value = null,}) {
  return _then(_LinkModel(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$CategoryShortcutModel {

 String get slug; String get name; String get iconUrl;
/// Create a copy of CategoryShortcutModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryShortcutModelCopyWith<CategoryShortcutModel> get copyWith => _$CategoryShortcutModelCopyWithImpl<CategoryShortcutModel>(this as CategoryShortcutModel, _$identity);

  /// Serializes this CategoryShortcutModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryShortcutModel&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.name, name) || other.name == name)&&(identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,slug,name,iconUrl);

@override
String toString() {
  return 'CategoryShortcutModel(slug: $slug, name: $name, iconUrl: $iconUrl)';
}


}

/// @nodoc
abstract mixin class $CategoryShortcutModelCopyWith<$Res>  {
  factory $CategoryShortcutModelCopyWith(CategoryShortcutModel value, $Res Function(CategoryShortcutModel) _then) = _$CategoryShortcutModelCopyWithImpl;
@useResult
$Res call({
 String slug, String name, String iconUrl
});




}
/// @nodoc
class _$CategoryShortcutModelCopyWithImpl<$Res>
    implements $CategoryShortcutModelCopyWith<$Res> {
  _$CategoryShortcutModelCopyWithImpl(this._self, this._then);

  final CategoryShortcutModel _self;
  final $Res Function(CategoryShortcutModel) _then;

/// Create a copy of CategoryShortcutModel
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


/// Adds pattern-matching-related methods to [CategoryShortcutModel].
extension CategoryShortcutModelPatterns on CategoryShortcutModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryShortcutModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryShortcutModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryShortcutModel value)  $default,){
final _that = this;
switch (_that) {
case _CategoryShortcutModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryShortcutModel value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryShortcutModel() when $default != null:
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
case _CategoryShortcutModel() when $default != null:
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
case _CategoryShortcutModel():
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
case _CategoryShortcutModel() when $default != null:
return $default(_that.slug,_that.name,_that.iconUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CategoryShortcutModel implements CategoryShortcutModel {
  const _CategoryShortcutModel({required this.slug, required this.name, required this.iconUrl});
  factory _CategoryShortcutModel.fromJson(Map<String, dynamic> json) => _$CategoryShortcutModelFromJson(json);

@override final  String slug;
@override final  String name;
@override final  String iconUrl;

/// Create a copy of CategoryShortcutModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryShortcutModelCopyWith<_CategoryShortcutModel> get copyWith => __$CategoryShortcutModelCopyWithImpl<_CategoryShortcutModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryShortcutModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryShortcutModel&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.name, name) || other.name == name)&&(identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,slug,name,iconUrl);

@override
String toString() {
  return 'CategoryShortcutModel(slug: $slug, name: $name, iconUrl: $iconUrl)';
}


}

/// @nodoc
abstract mixin class _$CategoryShortcutModelCopyWith<$Res> implements $CategoryShortcutModelCopyWith<$Res> {
  factory _$CategoryShortcutModelCopyWith(_CategoryShortcutModel value, $Res Function(_CategoryShortcutModel) _then) = __$CategoryShortcutModelCopyWithImpl;
@override @useResult
$Res call({
 String slug, String name, String iconUrl
});




}
/// @nodoc
class __$CategoryShortcutModelCopyWithImpl<$Res>
    implements _$CategoryShortcutModelCopyWith<$Res> {
  __$CategoryShortcutModelCopyWithImpl(this._self, this._then);

  final _CategoryShortcutModel _self;
  final $Res Function(_CategoryShortcutModel) _then;

/// Create a copy of CategoryShortcutModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? slug = null,Object? name = null,Object? iconUrl = null,}) {
  return _then(_CategoryShortcutModel(
slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,iconUrl: null == iconUrl ? _self.iconUrl : iconUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$DeliveryTermModel {

/// `air`, `express`, `truck`; unknown kinds are skipped.
 String get kind; String get name; String get term;
/// Create a copy of DeliveryTermModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeliveryTermModelCopyWith<DeliveryTermModel> get copyWith => _$DeliveryTermModelCopyWithImpl<DeliveryTermModel>(this as DeliveryTermModel, _$identity);

  /// Serializes this DeliveryTermModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeliveryTermModel&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.name, name) || other.name == name)&&(identical(other.term, term) || other.term == term));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kind,name,term);

@override
String toString() {
  return 'DeliveryTermModel(kind: $kind, name: $name, term: $term)';
}


}

/// @nodoc
abstract mixin class $DeliveryTermModelCopyWith<$Res>  {
  factory $DeliveryTermModelCopyWith(DeliveryTermModel value, $Res Function(DeliveryTermModel) _then) = _$DeliveryTermModelCopyWithImpl;
@useResult
$Res call({
 String kind, String name, String term
});




}
/// @nodoc
class _$DeliveryTermModelCopyWithImpl<$Res>
    implements $DeliveryTermModelCopyWith<$Res> {
  _$DeliveryTermModelCopyWithImpl(this._self, this._then);

  final DeliveryTermModel _self;
  final $Res Function(DeliveryTermModel) _then;

/// Create a copy of DeliveryTermModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? kind = null,Object? name = null,Object? term = null,}) {
  return _then(_self.copyWith(
kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,term: null == term ? _self.term : term // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DeliveryTermModel].
extension DeliveryTermModelPatterns on DeliveryTermModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeliveryTermModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeliveryTermModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeliveryTermModel value)  $default,){
final _that = this;
switch (_that) {
case _DeliveryTermModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeliveryTermModel value)?  $default,){
final _that = this;
switch (_that) {
case _DeliveryTermModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String kind,  String name,  String term)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeliveryTermModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String kind,  String name,  String term)  $default,) {final _that = this;
switch (_that) {
case _DeliveryTermModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String kind,  String name,  String term)?  $default,) {final _that = this;
switch (_that) {
case _DeliveryTermModel() when $default != null:
return $default(_that.kind,_that.name,_that.term);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeliveryTermModel implements DeliveryTermModel {
  const _DeliveryTermModel({required this.kind, required this.name, required this.term});
  factory _DeliveryTermModel.fromJson(Map<String, dynamic> json) => _$DeliveryTermModelFromJson(json);

/// `air`, `express`, `truck`; unknown kinds are skipped.
@override final  String kind;
@override final  String name;
@override final  String term;

/// Create a copy of DeliveryTermModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeliveryTermModelCopyWith<_DeliveryTermModel> get copyWith => __$DeliveryTermModelCopyWithImpl<_DeliveryTermModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeliveryTermModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeliveryTermModel&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.name, name) || other.name == name)&&(identical(other.term, term) || other.term == term));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kind,name,term);

@override
String toString() {
  return 'DeliveryTermModel(kind: $kind, name: $name, term: $term)';
}


}

/// @nodoc
abstract mixin class _$DeliveryTermModelCopyWith<$Res> implements $DeliveryTermModelCopyWith<$Res> {
  factory _$DeliveryTermModelCopyWith(_DeliveryTermModel value, $Res Function(_DeliveryTermModel) _then) = __$DeliveryTermModelCopyWithImpl;
@override @useResult
$Res call({
 String kind, String name, String term
});




}
/// @nodoc
class __$DeliveryTermModelCopyWithImpl<$Res>
    implements _$DeliveryTermModelCopyWith<$Res> {
  __$DeliveryTermModelCopyWithImpl(this._self, this._then);

  final _DeliveryTermModel _self;
  final $Res Function(_DeliveryTermModel) _then;

/// Create a copy of DeliveryTermModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? kind = null,Object? name = null,Object? term = null,}) {
  return _then(_DeliveryTermModel(
kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,term: null == term ? _self.term : term // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ProductPageModel {

 List<ProductSummaryModel> get items; String? get nextCursor;
/// Create a copy of ProductPageModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductPageModelCopyWith<ProductPageModel> get copyWith => _$ProductPageModelCopyWithImpl<ProductPageModel>(this as ProductPageModel, _$identity);

  /// Serializes this ProductPageModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductPageModel&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),nextCursor);

@override
String toString() {
  return 'ProductPageModel(items: $items, nextCursor: $nextCursor)';
}


}

/// @nodoc
abstract mixin class $ProductPageModelCopyWith<$Res>  {
  factory $ProductPageModelCopyWith(ProductPageModel value, $Res Function(ProductPageModel) _then) = _$ProductPageModelCopyWithImpl;
@useResult
$Res call({
 List<ProductSummaryModel> items, String? nextCursor
});




}
/// @nodoc
class _$ProductPageModelCopyWithImpl<$Res>
    implements $ProductPageModelCopyWith<$Res> {
  _$ProductPageModelCopyWithImpl(this._self, this._then);

  final ProductPageModel _self;
  final $Res Function(ProductPageModel) _then;

/// Create a copy of ProductPageModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? nextCursor = freezed,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<ProductSummaryModel>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductPageModel].
extension ProductPageModelPatterns on ProductPageModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductPageModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductPageModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductPageModel value)  $default,){
final _that = this;
switch (_that) {
case _ProductPageModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductPageModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProductPageModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ProductSummaryModel> items,  String? nextCursor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductPageModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ProductSummaryModel> items,  String? nextCursor)  $default,) {final _that = this;
switch (_that) {
case _ProductPageModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ProductSummaryModel> items,  String? nextCursor)?  $default,) {final _that = this;
switch (_that) {
case _ProductPageModel() when $default != null:
return $default(_that.items,_that.nextCursor);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductPageModel implements ProductPageModel {
  const _ProductPageModel({required final  List<ProductSummaryModel> items, this.nextCursor}): _items = items;
  factory _ProductPageModel.fromJson(Map<String, dynamic> json) => _$ProductPageModelFromJson(json);

 final  List<ProductSummaryModel> _items;
@override List<ProductSummaryModel> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  String? nextCursor;

/// Create a copy of ProductPageModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductPageModelCopyWith<_ProductPageModel> get copyWith => __$ProductPageModelCopyWithImpl<_ProductPageModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductPageModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductPageModel&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),nextCursor);

@override
String toString() {
  return 'ProductPageModel(items: $items, nextCursor: $nextCursor)';
}


}

/// @nodoc
abstract mixin class _$ProductPageModelCopyWith<$Res> implements $ProductPageModelCopyWith<$Res> {
  factory _$ProductPageModelCopyWith(_ProductPageModel value, $Res Function(_ProductPageModel) _then) = __$ProductPageModelCopyWithImpl;
@override @useResult
$Res call({
 List<ProductSummaryModel> items, String? nextCursor
});




}
/// @nodoc
class __$ProductPageModelCopyWithImpl<$Res>
    implements _$ProductPageModelCopyWith<$Res> {
  __$ProductPageModelCopyWithImpl(this._self, this._then);

  final _ProductPageModel _self;
  final $Res Function(_ProductPageModel) _then;

/// Create a copy of ProductPageModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? nextCursor = freezed,}) {
  return _then(_ProductPageModel(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<ProductSummaryModel>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
