// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variants_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
