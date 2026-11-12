// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CartQuoteModel _$CartQuoteModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_CartQuoteModel', json, ($checkedConvert) {
      final val = _CartQuoteModel(
        lines: $checkedConvert(
          'lines',
          (v) => (v as List<dynamic>)
              .map((e) => LineQuoteModel.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
        sellers: $checkedConvert(
          'sellers',
          (v) => (v as List<dynamic>)
              .map((e) => SellerQuoteModel.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
        summary: $checkedConvert(
          'summary',
          (v) => CartSummaryModel.fromJson(v as Map<String, dynamic>),
        ),
        minOrderSum: $checkedConvert(
          'min_order_sum',
          (v) => (v as num).toInt(),
        ),
        promo: $checkedConvert(
          'promo',
          (v) => v == null
              ? null
              : PromoResultModel.fromJson(v as Map<String, dynamic>),
        ),
      );
      return val;
    }, fieldKeyMap: const {'minOrderSum': 'min_order_sum'});

Map<String, dynamic> _$CartQuoteModelToJson(_CartQuoteModel instance) =>
    <String, dynamic>{
      'lines': instance.lines.map((e) => e.toJson()).toList(),
      'sellers': instance.sellers.map((e) => e.toJson()).toList(),
      'summary': instance.summary.toJson(),
      'min_order_sum': instance.minOrderSum,
      'promo': instance.promo?.toJson(),
    };

_LineQuoteModel _$LineQuoteModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_LineQuoteModel',
      json,
      ($checkedConvert) {
        final val = _LineQuoteModel(
          productId: $checkedConvert('product_id', (v) => v as String),
          skuId: $checkedConvert('sku_id', (v) => v as String?),
          price: $checkedConvert('price', (v) => (v as num).toInt()),
          stock: $checkedConvert('stock', (v) => (v as num).toInt()),
          isAvailable: $checkedConvert('is_available', (v) => v as bool),
        );
        return val;
      },
      fieldKeyMap: const {
        'productId': 'product_id',
        'skuId': 'sku_id',
        'isAvailable': 'is_available',
      },
    );

Map<String, dynamic> _$LineQuoteModelToJson(_LineQuoteModel instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'sku_id': instance.skuId,
      'price': instance.price,
      'stock': instance.stock,
      'is_available': instance.isAvailable,
    };

_SellerQuoteModel _$SellerQuoteModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_SellerQuoteModel', json, ($checkedConvert) {
      final val = _SellerQuoteModel(
        name: $checkedConvert('name', (v) => v as String),
        source: $checkedConvert('source', (v) => v as String),
        chinaDelivery: $checkedConvert(
          'china_delivery',
          (v) => (v as num).toInt(),
        ),
      );
      return val;
    }, fieldKeyMap: const {'chinaDelivery': 'china_delivery'});

Map<String, dynamic> _$SellerQuoteModelToJson(_SellerQuoteModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'source': instance.source,
      'china_delivery': instance.chinaDelivery,
    };

_CartSummaryModel _$CartSummaryModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_CartSummaryModel',
      json,
      ($checkedConvert) {
        final val = _CartSummaryModel(
          items: $checkedConvert('items', (v) => (v as num).toInt()),
          chinaDelivery: $checkedConvert(
            'china_delivery',
            (v) => (v as num).toInt(),
          ),
          internationalEstimate: $checkedConvert(
            'international_estimate',
            (v) => (v as num).toInt(),
          ),
          discount: $checkedConvert('discount', (v) => (v as num).toInt()),
          total: $checkedConvert('total', (v) => (v as num).toInt()),
        );
        return val;
      },
      fieldKeyMap: const {
        'chinaDelivery': 'china_delivery',
        'internationalEstimate': 'international_estimate',
      },
    );

Map<String, dynamic> _$CartSummaryModelToJson(_CartSummaryModel instance) =>
    <String, dynamic>{
      'items': instance.items,
      'china_delivery': instance.chinaDelivery,
      'international_estimate': instance.internationalEstimate,
      'discount': instance.discount,
      'total': instance.total,
    };

_PromoResultModel _$PromoResultModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_PromoResultModel', json, ($checkedConvert) {
      final val = _PromoResultModel(
        code: $checkedConvert('code', (v) => v as String),
        status: $checkedConvert('status', (v) => v as String),
        message: $checkedConvert('message', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$PromoResultModelToJson(_PromoResultModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'status': instance.status,
      'message': instance.message,
    };
