import '../../../../core/product/data/product_summary_model.dart';
import '../../domain/entities/product_details.dart';
import 'product_models.dart';

extension ProductDetailsModelX on ProductDetailsModel {
  /// [fetchedAt]: device time when the response arrived; the gap to
  /// [ProductDetailsModel.serverTime] moves the promo timer onto the device
  /// clock, as on Home.
  ProductDetails toEntity({required DateTime fetchedAt}) {
    final offset = serverTime.difference(fetchedAt);
    final knownValues = {
      for (final p in properties) p.id: {for (final v in p.values) v.id},
    };
    return ProductDetails(
      id: id,
      title: title,
      media: [for (final m in media) ?m.toEntity()],
      price: price,
      oldPrice: oldPrice,
      promoEndsAt: promoEndsAt?.toLocal().subtract(offset),
      priceTiers: [
        for (final t in priceTiers)
          if (t.minQuantity > 1)
            PriceTier(minQuantity: t.minQuantity, price: t.price),
      ],
      rating: rating,
      reviewCount: reviewCount,
      soldCount: soldCount,
      properties: [
        for (final p in properties)
          if (p.values.isNotEmpty)
            SkuProperty(
              id: p.id,
              title: p.title,
              isSize: p.isSize,
              values: [
                for (final v in p.values)
                  SkuValue(id: v.id, label: v.label, imageUrl: v.imageUrl),
              ],
            ),
      ],
      // A SKU pointing at an unknown value could never be picked: drop it.
      skus: [
        for (final s in skus)
          if (s.values.entries.every(
            (e) => knownValues[e.key]?.contains(e.value) ?? false,
          ))
            Sku(
              id: s.id,
              values: s.values,
              price: s.price,
              oldPrice: s.oldPrice,
              stock: s.stock,
            ),
      ],
      sizeChart: switch (sizeChart) {
        final c? when c.rows.isNotEmpty => SizeChart(
          headers: c.headers,
          rows: c.rows,
        ),
        _ => null,
      },
      descriptionHtml: descriptionHtml,
      specs: [for (final s in specs) SpecRow(name: s.name, value: s.value)],
      seller: switch (seller) {
        final s? => Seller(
          name: s.name,
          source: s.source,
          rating: s.rating,
          salesCount: s.salesCount,
        ),
        null => null,
      },
      reviews: switch (reviews) {
        final r? when r.count > 0 => ReviewsSummary(
          average: r.average,
          count: r.count,
          photoUrls: r.photoUrls,
          items: [for (final i in r.items) i.toEntity()],
        ),
        _ => null,
      },
      isAvailable: isAvailable,
      similar: [for (final p in similar) p.toEntity()],
      boughtTogether: [for (final p in boughtTogether) p.toEntity()],
      shareUrl: shareUrl,
    );
  }
}

extension on MediaModel {
  GalleryMedia? toEntity() => switch (kind) {
    'image' => GalleryMedia(
      kind: MediaKind.image,
      imageUrl: imageUrl,
      isIllustration: isIllustration,
    ),
    'video' when videoUrl != null => GalleryMedia(
      kind: MediaKind.video,
      imageUrl: imageUrl,
      videoUrl: videoUrl,
    ),
    _ => null,
  };
}

extension on ReviewModel {
  Review toEntity() => Review(
    author: author,
    date: date.toLocal(),
    rating: rating.clamp(1, 5),
    text: text,
    skuLabel: skuLabel,
    photoUrls: photoUrls,
    isTranslated: isTranslated,
  );
}

extension DeliveryQuoteModelX on DeliveryQuoteModel {
  DeliveryQuote? toEntity() {
    final deliveryType = switch (type) {
      'express' => DeliveryType.express,
      'air' => DeliveryType.air,
      'truck' => DeliveryType.truck,
      _ => null,
    };
    if (deliveryType == null) return null;
    return DeliveryQuote(
      type: deliveryType,
      name: name,
      term: term,
      price: price,
      unavailableReason: unavailableReason,
    );
  }
}
