import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/product/data/product_summary_model.dart';

part 'home_models.freezed.dart';
part 'home_models.g.dart';

/// `GET /home` response (shape agreed until the OpenAPI spec exists).
@freezed
abstract class HomeResponseModel with _$HomeResponseModel {
  const factory HomeResponseModel({
    /// Server clock at response time, for countdown correction.
    required DateTime serverTime,
    required List<HomeSectionModel> sections,
  }) = _HomeResponseModel;

  factory HomeResponseModel.fromJson(Map<String, dynamic> json) =>
      _$HomeResponseModelFromJson(json);
}

/// Server-driven section. Unknown `type`s parse as [UnknownSectionModel]
/// and are skipped, so old app versions keep working (TZ §5.3).
@Freezed(
  unionKey: 'type',
  unionValueCase: FreezedUnionCase.snake,
  fallbackUnion: 'unknown',
)
sealed class HomeSectionModel with _$HomeSectionModel {
  const factory HomeSectionModel.videoStories({
    required List<VideoStoryModel> stories,
  }) = VideoStoriesSectionModel;

  const factory HomeSectionModel.banners({required List<BannerModel> banners}) =
      BannersSectionModel;

  const factory HomeSectionModel.pasteLink({required List<String> sources}) =
      PasteLinkSectionModel;

  const factory HomeSectionModel.dailyDeals({
    required String title,
    required DateTime endsAt,
    required List<ProductSummaryModel> products,
    LinkModel? seeAll,
  }) = DailyDealsSectionModel;

  const factory HomeSectionModel.categories({
    required String title,
    required List<CategoryShortcutModel> categories,
  }) = CategoriesSectionModel;

  const factory HomeSectionModel.products({
    required String id,
    required String title,
    required List<ProductSummaryModel> products,
    LinkModel? seeAll,
  }) = ProductsSectionModel;

  const factory HomeSectionModel.howWeWork({
    required String title,
    required List<String> steps,
    required List<DeliveryTermModel> delivery,
  }) = HowWeWorkSectionModel;

  const factory HomeSectionModel.unknown() = UnknownSectionModel;

  factory HomeSectionModel.fromJson(Map<String, dynamic> json) =>
      _$HomeSectionModelFromJson(json);
}

@freezed
abstract class VideoStoryModel with _$VideoStoryModel {
  const factory VideoStoryModel({
    required String id,
    required String title,
    required String posterUrl,
    @Default(false) bool isViewed,
  }) = _VideoStoryModel;

  factory VideoStoryModel.fromJson(Map<String, dynamic> json) =>
      _$VideoStoryModelFromJson(json);
}

@freezed
abstract class BannerModel with _$BannerModel {
  const factory BannerModel({
    required String id,
    required String imageUrl,
    required String title,
    LinkModel? link,
  }) = _BannerModel;

  factory BannerModel.fromJson(Map<String, dynamic> json) =>
      _$BannerModelFromJson(json);
}

/// `{"type": "product", "value": "123"}`.
@freezed
abstract class LinkModel with _$LinkModel {
  const factory LinkModel({required String type, required String value}) =
      _LinkModel;

  factory LinkModel.fromJson(Map<String, dynamic> json) =>
      _$LinkModelFromJson(json);
}

@freezed
abstract class CategoryShortcutModel with _$CategoryShortcutModel {
  const factory CategoryShortcutModel({
    required String slug,
    required String name,
    required String iconUrl,
  }) = _CategoryShortcutModel;

  factory CategoryShortcutModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryShortcutModelFromJson(json);
}

@freezed
abstract class DeliveryTermModel with _$DeliveryTermModel {
  const factory DeliveryTermModel({
    /// `air`, `express`, `truck`; unknown kinds are skipped.
    required String kind,
    required String name,
    required String term,
  }) = _DeliveryTermModel;

  factory DeliveryTermModel.fromJson(Map<String, dynamic> json) =>
      _$DeliveryTermModelFromJson(json);
}

/// `GET /home/recommendations?cursor=` response.
@freezed
abstract class ProductPageModel with _$ProductPageModel {
  const factory ProductPageModel({
    required List<ProductSummaryModel> items,
    String? nextCursor,
  }) = _ProductPageModel;

  factory ProductPageModel.fromJson(Map<String, dynamic> json) =>
      _$ProductPageModelFromJson(json);
}
