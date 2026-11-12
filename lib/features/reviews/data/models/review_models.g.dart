// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReviewsPageModel _$ReviewsPageModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_ReviewsPageModel', json, ($checkedConvert) {
      final val = _ReviewsPageModel(
        summary: $checkedConvert(
          'summary',
          (v) => ReviewsSummaryModel.fromJson(v as Map<String, dynamic>),
        ),
        items: $checkedConvert(
          'items',
          (v) => (v as List<dynamic>)
              .map((e) => ReviewModel.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
        nextCursor: $checkedConvert('next_cursor', (v) => v as String?),
      );
      return val;
    }, fieldKeyMap: const {'nextCursor': 'next_cursor'});

Map<String, dynamic> _$ReviewsPageModelToJson(_ReviewsPageModel instance) =>
    <String, dynamic>{
      'summary': instance.summary.toJson(),
      'items': instance.items.map((e) => e.toJson()).toList(),
      'next_cursor': instance.nextCursor,
    };

_ReviewsSummaryModel _$ReviewsSummaryModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_ReviewsSummaryModel', json, ($checkedConvert) {
      final val = _ReviewsSummaryModel(
        average: $checkedConvert('average', (v) => (v as num).toDouble()),
        count: $checkedConvert('count', (v) => (v as num).toInt()),
        distribution: $checkedConvert(
          'distribution',
          (v) =>
              (v as Map<String, dynamic>?)?.map(
                (k, e) => MapEntry(k, (e as num).toInt()),
              ) ??
              const <String, int>{},
        ),
      );
      return val;
    });

Map<String, dynamic> _$ReviewsSummaryModelToJson(
  _ReviewsSummaryModel instance,
) => <String, dynamic>{
  'average': instance.average,
  'count': instance.count,
  'distribution': instance.distribution,
};

_ReviewModel _$ReviewModelFromJson(Map<String, dynamic> json) => $checkedCreate(
  '_ReviewModel',
  json,
  ($checkedConvert) {
    final val = _ReviewModel(
      id: $checkedConvert('id', (v) => v as String),
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
      storeReply: $checkedConvert('store_reply', (v) => v as String?),
    );
    return val;
  },
  fieldKeyMap: const {
    'skuLabel': 'sku_label',
    'photoUrls': 'photo_urls',
    'isTranslated': 'is_translated',
    'storeReply': 'store_reply',
  },
);

Map<String, dynamic> _$ReviewModelToJson(_ReviewModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'author': instance.author,
      'date': instance.date.toIso8601String(),
      'rating': instance.rating,
      'text': instance.text,
      'sku_label': instance.skuLabel,
      'photo_urls': instance.photoUrls,
      'is_translated': instance.isTranslated,
      'store_reply': instance.storeReply,
    };

_ReviewTargetModel _$ReviewTargetModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_ReviewTargetModel',
      json,
      ($checkedConvert) {
        final val = _ReviewTargetModel(
          orderNumber: $checkedConvert('order_number', (v) => v as String),
          itemId: $checkedConvert('item_id', (v) => v as String),
          productId: $checkedConvert('product_id', (v) => v as String),
          title: $checkedConvert('title', (v) => v as String),
          imageUrl: $checkedConvert('image_url', (v) => v as String),
          skuLabel: $checkedConvert('sku_label', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'orderNumber': 'order_number',
        'itemId': 'item_id',
        'productId': 'product_id',
        'imageUrl': 'image_url',
        'skuLabel': 'sku_label',
      },
    );

Map<String, dynamic> _$ReviewTargetModelToJson(_ReviewTargetModel instance) =>
    <String, dynamic>{
      'order_number': instance.orderNumber,
      'item_id': instance.itemId,
      'product_id': instance.productId,
      'title': instance.title,
      'image_url': instance.imageUrl,
      'sku_label': instance.skuLabel,
    };

_MyReviewModel _$MyReviewModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_MyReviewModel',
      json,
      ($checkedConvert) {
        final val = _MyReviewModel(
          id: $checkedConvert('id', (v) => v as String),
          productId: $checkedConvert('product_id', (v) => v as String),
          title: $checkedConvert('title', (v) => v as String),
          imageUrl: $checkedConvert('image_url', (v) => v as String),
          rating: $checkedConvert('rating', (v) => (v as num).toInt()),
          text: $checkedConvert('text', (v) => v as String),
          date: $checkedConvert('date', (v) => DateTime.parse(v as String)),
          status: $checkedConvert('status', (v) => v as String),
          rejectReason: $checkedConvert('reject_reason', (v) => v as String?),
          storeReply: $checkedConvert('store_reply', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'productId': 'product_id',
        'imageUrl': 'image_url',
        'rejectReason': 'reject_reason',
        'storeReply': 'store_reply',
      },
    );

Map<String, dynamic> _$MyReviewModelToJson(_MyReviewModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product_id': instance.productId,
      'title': instance.title,
      'image_url': instance.imageUrl,
      'rating': instance.rating,
      'text': instance.text,
      'date': instance.date.toIso8601String(),
      'status': instance.status,
      'reject_reason': instance.rejectReason,
      'store_reply': instance.storeReply,
    };
