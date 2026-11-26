import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/product/domain/product_summary.dart';
import '../../../../core/product/domain/sku.dart';

export '../../../../core/product/domain/sku.dart';

part 'product_details.freezed.dart';

/// Everything the product page shows (TZ §5.6). Prices are whole TMT,
/// computed by the server.
@freezed
abstract class ProductDetails with _$ProductDetails {
  const factory ProductDetails({
    required String id,
    required String title,
    required List<GalleryMedia> media,
    required int price,
    int? oldPrice,

    /// Promo end, already on the device clock.
    DateTime? promoEndsAt,
    @Default(<PriceTier>[]) List<PriceTier> priceTiers,
    double? rating,
    @Default(0) int reviewCount,
    int? soldCount,

    /// Variant groups (colour, size, set) and the SKUs that combine them.
    @Default(<SkuProperty>[]) List<SkuProperty> properties,
    @Default(<Sku>[]) List<Sku> skus,
    SizeChart? sizeChart,

    /// Raw HTML from the admin panel; rendered with a tag whitelist.
    @Default('') String descriptionHtml,
    @Default(<SpecRow>[]) List<SpecRow> specs,
    Seller? seller,
    ReviewsSummary? reviews,

    /// `false` = taken off sale: page shows «Нет в наличии» + similar.
    @Default(true) bool isAvailable,
    @Default(<ProductSummary>[]) List<ProductSummary> similar,
    @Default(<ProductSummary>[]) List<ProductSummary> boughtTogether,
    String? shareUrl,
  }) = _ProductDetails;

  const ProductDetails._();

  /// The product as a tile: for favourites, price alerts and history.
  ProductSummary get summary {
    final cover = media.firstOrNull;
    return ProductSummary(
      id: id,
      title: title,
      imageUrl: cover?.imageUrl ?? '',
      price: price,
      oldPrice: oldPrice,
      soldCount: soldCount,
      isIllustration: cover?.isIllustration ?? false,
    );
  }
}

enum MediaKind { image, video }

@freezed
abstract class GalleryMedia with _$GalleryMedia {
  const factory GalleryMedia({
    required MediaKind kind,

    /// Image to show; for videos, the poster frame.
    required String imageUrl,
    String? videoUrl,

    /// AI-generated replacement photo (shows «иллюстрация»).
    @Default(false) bool isIllustration,
  }) = _GalleryMedia;
}

/// «от 10 шт — 180 TMT».
@freezed
abstract class PriceTier with _$PriceTier {
  const factory PriceTier({required int minQuantity, required int price}) =
      _PriceTier;
}

/// Chinese sizes against local ones; first column stays pinned.
@freezed
abstract class SizeChart with _$SizeChart {
  const factory SizeChart({
    required List<String> headers,
    required List<List<String>> rows,
  }) = _SizeChart;
}

@freezed
abstract class SpecRow with _$SpecRow {
  const factory SpecRow({required String name, required String value}) =
      _SpecRow;
}

@freezed
abstract class Seller with _$Seller {
  const factory Seller({
    /// For «Все товары продавца»; `null` when the server does not list
    /// the seller's products.
    String? id,
    required String name,

    /// Marketplace name: Taobao, 1688, Tmall.
    required String source,
    double? rating,
    int? salesCount,
  }) = _Seller;
}

@freezed
abstract class ReviewsSummary with _$ReviewsSummary {
  const factory ReviewsSummary({
    required double average,
    required int count,

    /// Strip of customer photos above the reviews.
    @Default(<String>[]) List<String> photoUrls,

    /// A preview: the first two or three reviews.
    @Default(<Review>[]) List<Review> items,
  }) = _ReviewsSummary;
}

@freezed
abstract class Review with _$Review {
  const factory Review({
    required String author,
    required DateTime date,
    required int rating,
    required String text,
    String? skuLabel,
    @Default(<String>[]) List<String> photoUrls,

    /// Imported from the marketplace and machine-translated.
    @Default(false) bool isTranslated,
  }) = _Review;
}

enum DeliveryType { express, air, truck }

/// One delivery row for the selected region (TZ §5.6.4).
@freezed
abstract class DeliveryQuote with _$DeliveryQuote {
  const factory DeliveryQuote({
    required DeliveryType type,
    required String name,

    /// e.g. «7–10 дней», already adjusted for the region.
    required String term,

    /// `null` until the item is weighed: «после взвешивания».
    int? price,

    /// Set when this type is not allowed for the product (batteries by air).
    String? unavailableReason,
  }) = _DeliveryQuote;
}
