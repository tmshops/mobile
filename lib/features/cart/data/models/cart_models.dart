import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_models.freezed.dart';
part 'cart_models.g.dart';

/// `POST /cart/quote` response.
@freezed
abstract class CartQuoteModel with _$CartQuoteModel {
  const factory CartQuoteModel({
    required List<LineQuoteModel> lines,
    required List<SellerQuoteModel> sellers,
    required CartSummaryModel summary,
    required int minOrderSum,
    PromoResultModel? promo,
  }) = _CartQuoteModel;

  factory CartQuoteModel.fromJson(Map<String, dynamic> json) =>
      _$CartQuoteModelFromJson(json);
}

@freezed
abstract class LineQuoteModel with _$LineQuoteModel {
  const factory LineQuoteModel({
    required String productId,
    String? skuId,
    required int price,
    required int stock,
    required bool isAvailable,
  }) = _LineQuoteModel;

  factory LineQuoteModel.fromJson(Map<String, dynamic> json) =>
      _$LineQuoteModelFromJson(json);
}

@freezed
abstract class SellerQuoteModel with _$SellerQuoteModel {
  const factory SellerQuoteModel({
    required String name,
    required String source,
    required int chinaDelivery,
  }) = _SellerQuoteModel;

  factory SellerQuoteModel.fromJson(Map<String, dynamic> json) =>
      _$SellerQuoteModelFromJson(json);
}

@freezed
abstract class CartSummaryModel with _$CartSummaryModel {
  const factory CartSummaryModel({
    required int items,
    required int chinaDelivery,
    required int internationalEstimate,
    required int discount,
    required int total,
  }) = _CartSummaryModel;

  factory CartSummaryModel.fromJson(Map<String, dynamic> json) =>
      _$CartSummaryModelFromJson(json);
}

@freezed
abstract class PromoResultModel with _$PromoResultModel {
  const factory PromoResultModel({
    required String code,

    /// `applied` or `invalid`.
    required String status,
    String? message,
  }) = _PromoResultModel;

  factory PromoResultModel.fromJson(Map<String, dynamic> json) =>
      _$PromoResultModelFromJson(json);
}

/// `GET /products/{id}/variants`.
@freezed
abstract class VariantsModel with _$VariantsModel {
  const factory VariantsModel({
    required List<VariantPropertyModel> properties,
    required List<VariantSkuModel> skus,
  }) = _VariantsModel;

  factory VariantsModel.fromJson(Map<String, dynamic> json) =>
      _$VariantsModelFromJson(json);
}

@freezed
abstract class VariantPropertyModel with _$VariantPropertyModel {
  const factory VariantPropertyModel({
    required String id,
    required String title,
    required List<VariantValueModel> values,
    @Default(false) bool isSize,
  }) = _VariantPropertyModel;

  factory VariantPropertyModel.fromJson(Map<String, dynamic> json) =>
      _$VariantPropertyModelFromJson(json);
}

@freezed
abstract class VariantValueModel with _$VariantValueModel {
  const factory VariantValueModel({
    required String id,
    required String label,
    String? imageUrl,
  }) = _VariantValueModel;

  factory VariantValueModel.fromJson(Map<String, dynamic> json) =>
      _$VariantValueModelFromJson(json);
}

@freezed
abstract class VariantSkuModel with _$VariantSkuModel {
  const factory VariantSkuModel({
    required String id,
    required Map<String, String> values,
    required int price,
    int? oldPrice,
    required int stock,
  }) = _VariantSkuModel;

  factory VariantSkuModel.fromJson(Map<String, dynamic> json) =>
      _$VariantSkuModelFromJson(json);
}
