// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductDetailsModel _$ProductDetailsModelFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  '_ProductDetailsModel',
  json,
  ($checkedConvert) {
    final val = _ProductDetailsModel(
      id: $checkedConvert('id', (v) => v as String),
      title: $checkedConvert('title', (v) => v as String),
      serverTime: $checkedConvert(
        'server_time',
        (v) => DateTime.parse(v as String),
      ),
      media: $checkedConvert(
        'media',
        (v) => (v as List<dynamic>)
            .map((e) => MediaModel.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
      price: $checkedConvert('price', (v) => (v as num).toInt()),
      oldPrice: $checkedConvert('old_price', (v) => (v as num?)?.toInt()),
      promoEndsAt: $checkedConvert(
        'promo_ends_at',
        (v) => v == null ? null : DateTime.parse(v as String),
      ),
      priceTiers: $checkedConvert(
        'price_tiers',
        (v) =>
            (v as List<dynamic>?)
                ?.map((e) => PriceTierModel.fromJson(e as Map<String, dynamic>))
                .toList() ??
            const <PriceTierModel>[],
      ),
      rating: $checkedConvert('rating', (v) => (v as num?)?.toDouble()),
      reviewCount: $checkedConvert(
        'review_count',
        (v) => (v as num?)?.toInt() ?? 0,
      ),
      soldCount: $checkedConvert('sold_count', (v) => (v as num?)?.toInt()),
      properties: $checkedConvert(
        'properties',
        (v) =>
            (v as List<dynamic>?)
                ?.map(
                  (e) => SkuPropertyModel.fromJson(e as Map<String, dynamic>),
                )
                .toList() ??
            const <SkuPropertyModel>[],
      ),
      skus: $checkedConvert(
        'skus',
        (v) =>
            (v as List<dynamic>?)
                ?.map((e) => SkuModel.fromJson(e as Map<String, dynamic>))
                .toList() ??
            const <SkuModel>[],
      ),
      sizeChart: $checkedConvert(
        'size_chart',
        (v) => v == null
            ? null
            : SizeChartModel.fromJson(v as Map<String, dynamic>),
      ),
      descriptionHtml: $checkedConvert(
        'description_html',
        (v) => v as String? ?? '',
      ),
      specs: $checkedConvert(
        'specs',
        (v) =>
            (v as List<dynamic>?)
                ?.map((e) => SpecRowModel.fromJson(e as Map<String, dynamic>))
                .toList() ??
            const <SpecRowModel>[],
      ),
      seller: $checkedConvert(
        'seller',
        (v) =>
            v == null ? null : SellerModel.fromJson(v as Map<String, dynamic>),
      ),
      reviews: $checkedConvert(
        'reviews',
        (v) => v == null
            ? null
            : ReviewsSummaryModel.fromJson(v as Map<String, dynamic>),
      ),
      isAvailable: $checkedConvert('is_available', (v) => v as bool? ?? true),
      similar: $checkedConvert(
        'similar',
        (v) =>
            (v as List<dynamic>?)
                ?.map(
                  (e) =>
                      ProductSummaryModel.fromJson(e as Map<String, dynamic>),
                )
                .toList() ??
            const <ProductSummaryModel>[],
      ),
      boughtTogether: $checkedConvert(
        'bought_together',
        (v) =>
            (v as List<dynamic>?)
                ?.map(
                  (e) =>
                      ProductSummaryModel.fromJson(e as Map<String, dynamic>),
                )
                .toList() ??
            const <ProductSummaryModel>[],
      ),
      shareUrl: $checkedConvert('share_url', (v) => v as String?),
    );
    return val;
  },
  fieldKeyMap: const {
    'serverTime': 'server_time',
    'oldPrice': 'old_price',
    'promoEndsAt': 'promo_ends_at',
    'priceTiers': 'price_tiers',
    'reviewCount': 'review_count',
    'soldCount': 'sold_count',
    'sizeChart': 'size_chart',
    'descriptionHtml': 'description_html',
    'isAvailable': 'is_available',
    'boughtTogether': 'bought_together',
    'shareUrl': 'share_url',
  },
);

Map<String, dynamic> _$ProductDetailsModelToJson(
  _ProductDetailsModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'server_time': instance.serverTime.toIso8601String(),
  'media': instance.media.map((e) => e.toJson()).toList(),
  'price': instance.price,
  'old_price': instance.oldPrice,
  'promo_ends_at': instance.promoEndsAt?.toIso8601String(),
  'price_tiers': instance.priceTiers.map((e) => e.toJson()).toList(),
  'rating': instance.rating,
  'review_count': instance.reviewCount,
  'sold_count': instance.soldCount,
  'properties': instance.properties.map((e) => e.toJson()).toList(),
  'skus': instance.skus.map((e) => e.toJson()).toList(),
  'size_chart': instance.sizeChart?.toJson(),
  'description_html': instance.descriptionHtml,
  'specs': instance.specs.map((e) => e.toJson()).toList(),
  'seller': instance.seller?.toJson(),
  'reviews': instance.reviews?.toJson(),
  'is_available': instance.isAvailable,
  'similar': instance.similar.map((e) => e.toJson()).toList(),
  'bought_together': instance.boughtTogether.map((e) => e.toJson()).toList(),
  'share_url': instance.shareUrl,
};

_MediaModel _$MediaModelFromJson(Map<String, dynamic> json) => $checkedCreate(
  '_MediaModel',
  json,
  ($checkedConvert) {
    final val = _MediaModel(
      kind: $checkedConvert('kind', (v) => v as String),
      imageUrl: $checkedConvert('image_url', (v) => v as String),
      videoUrl: $checkedConvert('video_url', (v) => v as String?),
      isIllustration: $checkedConvert(
        'is_illustration',
        (v) => v as bool? ?? false,
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'imageUrl': 'image_url',
    'videoUrl': 'video_url',
    'isIllustration': 'is_illustration',
  },
);

Map<String, dynamic> _$MediaModelToJson(_MediaModel instance) =>
    <String, dynamic>{
      'kind': instance.kind,
      'image_url': instance.imageUrl,
      'video_url': instance.videoUrl,
      'is_illustration': instance.isIllustration,
    };

_PriceTierModel _$PriceTierModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_PriceTierModel', json, ($checkedConvert) {
      final val = _PriceTierModel(
        minQuantity: $checkedConvert('min_quantity', (v) => (v as num).toInt()),
        price: $checkedConvert('price', (v) => (v as num).toInt()),
      );
      return val;
    }, fieldKeyMap: const {'minQuantity': 'min_quantity'});

Map<String, dynamic> _$PriceTierModelToJson(_PriceTierModel instance) =>
    <String, dynamic>{
      'min_quantity': instance.minQuantity,
      'price': instance.price,
    };

_SkuPropertyModel _$SkuPropertyModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_SkuPropertyModel', json, ($checkedConvert) {
      final val = _SkuPropertyModel(
        id: $checkedConvert('id', (v) => v as String),
        title: $checkedConvert('title', (v) => v as String),
        values: $checkedConvert(
          'values',
          (v) => (v as List<dynamic>)
              .map((e) => SkuValueModel.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
        isSize: $checkedConvert('is_size', (v) => v as bool? ?? false),
      );
      return val;
    }, fieldKeyMap: const {'isSize': 'is_size'});

Map<String, dynamic> _$SkuPropertyModelToJson(_SkuPropertyModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'values': instance.values.map((e) => e.toJson()).toList(),
      'is_size': instance.isSize,
    };

_SkuValueModel _$SkuValueModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_SkuValueModel', json, ($checkedConvert) {
      final val = _SkuValueModel(
        id: $checkedConvert('id', (v) => v as String),
        label: $checkedConvert('label', (v) => v as String),
        imageUrl: $checkedConvert('image_url', (v) => v as String?),
      );
      return val;
    }, fieldKeyMap: const {'imageUrl': 'image_url'});

Map<String, dynamic> _$SkuValueModelToJson(_SkuValueModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'image_url': instance.imageUrl,
    };

_SkuModel _$SkuModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_SkuModel', json, ($checkedConvert) {
      final val = _SkuModel(
        id: $checkedConvert('id', (v) => v as String),
        values: $checkedConvert(
          'values',
          (v) => Map<String, String>.from(v as Map),
        ),
        price: $checkedConvert('price', (v) => (v as num).toInt()),
        oldPrice: $checkedConvert('old_price', (v) => (v as num?)?.toInt()),
        stock: $checkedConvert('stock', (v) => (v as num).toInt()),
      );
      return val;
    }, fieldKeyMap: const {'oldPrice': 'old_price'});

Map<String, dynamic> _$SkuModelToJson(_SkuModel instance) => <String, dynamic>{
  'id': instance.id,
  'values': instance.values,
  'price': instance.price,
  'old_price': instance.oldPrice,
  'stock': instance.stock,
};

_SizeChartModel _$SizeChartModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_SizeChartModel', json, ($checkedConvert) {
      final val = _SizeChartModel(
        headers: $checkedConvert(
          'headers',
          (v) => (v as List<dynamic>).map((e) => e as String).toList(),
        ),
        rows: $checkedConvert(
          'rows',
          (v) => (v as List<dynamic>)
              .map((e) => (e as List<dynamic>).map((e) => e as String).toList())
              .toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$SizeChartModelToJson(_SizeChartModel instance) =>
    <String, dynamic>{'headers': instance.headers, 'rows': instance.rows};

_SpecRowModel _$SpecRowModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_SpecRowModel', json, ($checkedConvert) {
      final val = _SpecRowModel(
        name: $checkedConvert('name', (v) => v as String),
        value: $checkedConvert('value', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$SpecRowModelToJson(_SpecRowModel instance) =>
    <String, dynamic>{'name': instance.name, 'value': instance.value};

_SellerModel _$SellerModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_SellerModel', json, ($checkedConvert) {
      final val = _SellerModel(
        id: $checkedConvert('id', (v) => v as String?),
        name: $checkedConvert('name', (v) => v as String),
        source: $checkedConvert('source', (v) => v as String),
        rating: $checkedConvert('rating', (v) => (v as num?)?.toDouble()),
        salesCount: $checkedConvert('sales_count', (v) => (v as num?)?.toInt()),
      );
      return val;
    }, fieldKeyMap: const {'salesCount': 'sales_count'});

Map<String, dynamic> _$SellerModelToJson(_SellerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'source': instance.source,
      'rating': instance.rating,
      'sales_count': instance.salesCount,
    };

_ReviewsSummaryModel _$ReviewsSummaryModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_ReviewsSummaryModel', json, ($checkedConvert) {
      final val = _ReviewsSummaryModel(
        average: $checkedConvert('average', (v) => (v as num).toDouble()),
        count: $checkedConvert('count', (v) => (v as num).toInt()),
        photoUrls: $checkedConvert(
          'photo_urls',
          (v) =>
              (v as List<dynamic>?)?.map((e) => e as String).toList() ??
              const <String>[],
        ),
        items: $checkedConvert(
          'items',
          (v) =>
              (v as List<dynamic>?)
                  ?.map((e) => ReviewModel.fromJson(e as Map<String, dynamic>))
                  .toList() ??
              const <ReviewModel>[],
        ),
      );
      return val;
    }, fieldKeyMap: const {'photoUrls': 'photo_urls'});

Map<String, dynamic> _$ReviewsSummaryModelToJson(
  _ReviewsSummaryModel instance,
) => <String, dynamic>{
  'average': instance.average,
  'count': instance.count,
  'photo_urls': instance.photoUrls,
  'items': instance.items.map((e) => e.toJson()).toList(),
};

_ReviewModel _$ReviewModelFromJson(Map<String, dynamic> json) => $checkedCreate(
  '_ReviewModel',
  json,
  ($checkedConvert) {
    final val = _ReviewModel(
      author: $checkedConvert('author', (v) => v as String),
      date: $checkedConvert('date', (v) => DateTime.parse(v as String)),
      rating: $checkedConvert('rating', (v) => (v as num).toInt()),
      text: $checkedConvert('text', (v) => v as String),
      skuLabel: $checkedConvert('sku_label', (v) => v as String?),
      photoUrls: $checkedConvert(
        'photo_urls',
        (v) =>
            (v as List<dynamic>?)?.map((e) => e as String).toList() ??
            const <String>[],
      ),
      isTranslated: $checkedConvert(
        'is_translated',
        (v) => v as bool? ?? false,
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'skuLabel': 'sku_label',
    'photoUrls': 'photo_urls',
    'isTranslated': 'is_translated',
  },
);

Map<String, dynamic> _$ReviewModelToJson(_ReviewModel instance) =>
    <String, dynamic>{
      'author': instance.author,
      'date': instance.date.toIso8601String(),
      'rating': instance.rating,
      'text': instance.text,
      'sku_label': instance.skuLabel,
      'photo_urls': instance.photoUrls,
      'is_translated': instance.isTranslated,
    };

_DeliveryQuoteModel _$DeliveryQuoteModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_DeliveryQuoteModel',
      json,
      ($checkedConvert) {
        final val = _DeliveryQuoteModel(
          type: $checkedConvert('type', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          term: $checkedConvert('term', (v) => v as String),
          price: $checkedConvert('price', (v) => (v as num?)?.toInt()),
          unavailableReason: $checkedConvert(
            'unavailable_reason',
            (v) => v as String?,
          ),
        );
        return val;
      },
      fieldKeyMap: const {'unavailableReason': 'unavailable_reason'},
    );

Map<String, dynamic> _$DeliveryQuoteModelToJson(_DeliveryQuoteModel instance) =>
    <String, dynamic>{
      'type': instance.type,
      'name': instance.name,
      'term': instance.term,
      'price': instance.price,
      'unavailable_reason': instance.unavailableReason,
    };
