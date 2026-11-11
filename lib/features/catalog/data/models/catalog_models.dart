import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/product/data/product_summary_model.dart';

part 'catalog_models.freezed.dart';
part 'catalog_models.g.dart';

/// `GET /catalog/tree`.
@freezed
abstract class CategoryTreeModel with _$CategoryTreeModel {
  const factory CategoryTreeModel({required List<CategoryModel> categories}) =
      _CategoryTreeModel;

  factory CategoryTreeModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryTreeModelFromJson(json);
}

@freezed
abstract class CategoryModel with _$CategoryModel {
  const factory CategoryModel({
    required String slug,
    required String name,
    String? iconUrl,
    @Default(<CategoryModel>[]) List<CategoryModel> children,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
}

/// `GET /catalog/products?category=…&sort=…&f_<facet>=…&cursor=…`.
@freezed
abstract class ProductListPageModel with _$ProductListPageModel {
  const factory ProductListPageModel({
    required List<ProductSummaryModel> items,
    required int total,
    String? nextCursor,
    CategoryBannerModel? banner,
  }) = _ProductListPageModel;

  factory ProductListPageModel.fromJson(Map<String, dynamic> json) =>
      _$ProductListPageModelFromJson(json);
}

@freezed
abstract class CategoryBannerModel with _$CategoryBannerModel {
  const factory CategoryBannerModel({
    required String imageUrl,
    required String title,
  }) = _CategoryBannerModel;

  factory CategoryBannerModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryBannerModelFromJson(json);
}

/// `GET /catalog/facets?category=…&f_<facet>=…` (same filter params).
@freezed
abstract class FacetsResultModel with _$FacetsResultModel {
  const factory FacetsResultModel({
    required List<FacetModel> facets,
    required int total,
  }) = _FacetsResultModel;

  factory FacetsResultModel.fromJson(Map<String, dynamic> json) =>
      _$FacetsResultModelFromJson(json);
}

/// Unknown facet `type`s parse as [UnknownFacetModel] and are skipped.
@Freezed(unionKey: 'type', fallbackUnion: 'unknown')
sealed class FacetModel with _$FacetModel {
  const factory FacetModel.range({
    required String id,
    required String title,
    required int min,
    required int max,
  }) = RangeFacetModel;

  const factory FacetModel.options({
    required String id,
    required String title,

    /// `chips`, `swatches`, `searchable_list`; unknown values draw as chips.
    @Default('chips') String display,
    required List<FacetOptionModel> options,
  }) = OptionsFacetModel;

  const factory FacetModel.toggle({
    required String id,
    required String title,
    required int count,
  }) = ToggleFacetModel;

  const factory FacetModel.unknown() = UnknownFacetModel;

  factory FacetModel.fromJson(Map<String, dynamic> json) =>
      _$FacetModelFromJson(json);
}

@freezed
abstract class FacetOptionModel with _$FacetOptionModel {
  const factory FacetOptionModel({
    required String value,
    required String label,
    required int count,

    /// `#RRGGBB` for swatches.
    String? color,
  }) = _FacetOptionModel;

  factory FacetOptionModel.fromJson(Map<String, dynamic> json) =>
      _$FacetOptionModelFromJson(json);
}
