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

_VariantsModel _$VariantsModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_VariantsModel', json, ($checkedConvert) {
      final val = _VariantsModel(
        properties: $checkedConvert(
          'properties',
          (v) => (v as List<dynamic>)
              .map(
                (e) => VariantPropertyModel.fromJson(e as Map<String, dynamic>),
              )
              .toList(),
        ),
        skus: $checkedConvert(
          'skus',
          (v) => (v as List<dynamic>)
              .map((e) => VariantSkuModel.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$VariantsModelToJson(_VariantsModel instance) =>
    <String, dynamic>{
      'properties': instance.properties.map((e) => e.toJson()).toList(),
      'skus': instance.skus.map((e) => e.toJson()).toList(),
    };

_VariantPropertyModel _$VariantPropertyModelFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('_VariantPropertyModel', json, ($checkedConvert) {
  final val = _VariantPropertyModel(
    id: $checkedConvert('id', (v) => v as String),
    title: $checkedConvert('title', (v) => v as String),
    values: $checkedConvert(
      'values',
      (v) => (v as List<dynamic>)
          .map((e) => VariantValueModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
    isSize: $checkedConvert('is_size', (v) => v as bool? ?? false),
  );
  return val;
}, fieldKeyMap: const {'isSize': 'is_size'});

Map<String, dynamic> _$VariantPropertyModelToJson(
  _VariantPropertyModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'values': instance.values.map((e) => e.toJson()).toList(),
  'is_size': instance.isSize,
};

_VariantValueModel _$VariantValueModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_VariantValueModel', json, ($checkedConvert) {
      final val = _VariantValueModel(
        id: $checkedConvert('id', (v) => v as String),
        label: $checkedConvert('label', (v) => v as String),
        imageUrl: $checkedConvert('image_url', (v) => v as String?),
      );
      return val;
    }, fieldKeyMap: const {'imageUrl': 'image_url'});

Map<String, dynamic> _$VariantValueModelToJson(_VariantValueModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'image_url': instance.imageUrl,
    };

_VariantSkuModel _$VariantSkuModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_VariantSkuModel', json, ($checkedConvert) {
      final val = _VariantSkuModel(
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

Map<String, dynamic> _$VariantSkuModelToJson(_VariantSkuModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'values': instance.values,
      'price': instance.price,
      'old_price': instance.oldPrice,
      'stock': instance.stock,
    };
