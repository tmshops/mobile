import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/product/data/product_summary_model.dart';

part 'product_models.freezed.dart';
part 'product_models.g.dart';

/// `GET /products/{id}` (shape agreed until the OpenAPI spec exists).
@freezed
abstract class ProductDetailsModel with _$ProductDetailsModel {
  const factory ProductDetailsModel({
    required String id,
    required String title,
    required DateTime serverTime,
    required List<MediaModel> media,
    required int price,
    int? oldPrice,
    DateTime? promoEndsAt,
    @Default(<PriceTierModel>[]) List<PriceTierModel> priceTiers,
    double? rating,
    @Default(0) int reviewCount,
    int? soldCount,
    @Default(<SkuPropertyModel>[]) List<SkuPropertyModel> properties,
    @Default(<SkuModel>[]) List<SkuModel> skus,
    SizeChartModel? sizeChart,
    @Default('') String descriptionHtml,
    @Default(<SpecRowModel>[]) List<SpecRowModel> specs,
    SellerModel? seller,
    ReviewsSummaryModel? reviews,
    @Default(true) bool isAvailable,
    @Default(<ProductSummaryModel>[]) List<ProductSummaryModel> similar,
    @Default(<ProductSummaryModel>[]) List<ProductSummaryModel> boughtTogether,
    String? shareUrl,
  }) = _ProductDetailsModel;

  factory ProductDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailsModelFromJson(json);
}

@freezed
abstract class MediaModel with _$MediaModel {
  const factory MediaModel({
    /// `image` or `video`; unknown kinds are skipped.
    required String kind,
    required String imageUrl,
    String? videoUrl,
    @Default(false) bool isIllustration,
  }) = _MediaModel;

  factory MediaModel.fromJson(Map<String, dynamic> json) =>
      _$MediaModelFromJson(json);
}

@freezed
abstract class PriceTierModel with _$PriceTierModel {
  const factory PriceTierModel({required int minQuantity, required int price}) =
      _PriceTierModel;

  factory PriceTierModel.fromJson(Map<String, dynamic> json) =>
      _$PriceTierModelFromJson(json);
}

@freezed
abstract class SkuPropertyModel with _$SkuPropertyModel {
  const factory SkuPropertyModel({
    required String id,
    required String title,
    required List<SkuValueModel> values,
    @Default(false) bool isSize,
  }) = _SkuPropertyModel;

  factory SkuPropertyModel.fromJson(Map<String, dynamic> json) =>
      _$SkuPropertyModelFromJson(json);
}

@freezed
abstract class SkuValueModel with _$SkuValueModel {
  const factory SkuValueModel({
    required String id,
    required String label,
    String? imageUrl,
  }) = _SkuValueModel;

  factory SkuValueModel.fromJson(Map<String, dynamic> json) =>
      _$SkuValueModelFromJson(json);
}

@freezed
abstract class SkuModel with _$SkuModel {
  const factory SkuModel({
    required String id,
    required Map<String, String> values,
    required int price,
    int? oldPrice,
    required int stock,
  }) = _SkuModel;

  factory SkuModel.fromJson(Map<String, dynamic> json) =>
      _$SkuModelFromJson(json);
}

@freezed
abstract class SizeChartModel with _$SizeChartModel {
  const factory SizeChartModel({
    required List<String> headers,
    required List<List<String>> rows,
  }) = _SizeChartModel;

  factory SizeChartModel.fromJson(Map<String, dynamic> json) =>
      _$SizeChartModelFromJson(json);
}

@freezed
abstract class SpecRowModel with _$SpecRowModel {
  const factory SpecRowModel({required String name, required String value}) =
      _SpecRowModel;

  factory SpecRowModel.fromJson(Map<String, dynamic> json) =>
      _$SpecRowModelFromJson(json);
}

@freezed
abstract class SellerModel with _$SellerModel {
  const factory SellerModel({
    required String name,
    required String source,
    double? rating,
    int? salesCount,
  }) = _SellerModel;

  factory SellerModel.fromJson(Map<String, dynamic> json) =>
      _$SellerModelFromJson(json);
}

@freezed
abstract class ReviewsSummaryModel with _$ReviewsSummaryModel {
  const factory ReviewsSummaryModel({
    required double average,
    required int count,
    @Default(<String>[]) List<String> photoUrls,
    @Default(<ReviewModel>[]) List<ReviewModel> items,
  }) = _ReviewsSummaryModel;

  factory ReviewsSummaryModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewsSummaryModelFromJson(json);
}

@freezed
abstract class ReviewModel with _$ReviewModel {
  const factory ReviewModel({
    required String author,
    required DateTime date,
    required int rating,
    required String text,
    String? skuLabel,
    @Default(<String>[]) List<String> photoUrls,
    @Default(false) bool isTranslated,
  }) = _ReviewModel;

  factory ReviewModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewModelFromJson(json);
}

/// `GET /products/{id}/delivery?region=…`.
@freezed
abstract class DeliveryQuoteModel with _$DeliveryQuoteModel {
  const factory DeliveryQuoteModel({
    /// `express`, `air`, `truck`; unknown types are skipped.
    required String type,
    required String name,
    required String term,
    int? price,
    String? unavailableReason,
  }) = _DeliveryQuoteModel;

  factory DeliveryQuoteModel.fromJson(Map<String, dynamic> json) =>
      _$DeliveryQuoteModelFromJson(json);
}
