// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_summary_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductSummaryModel _$ProductSummaryModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_ProductSummaryModel',
      json,
      ($checkedConvert) {
        final val = _ProductSummaryModel(
          id: $checkedConvert('id', (v) => v as String),
          title: $checkedConvert('title', (v) => v as String),
          imageUrl: $checkedConvert('image_url', (v) => v as String),
          price: $checkedConvert('price', (v) => (v as num).toInt()),
          oldPrice: $checkedConvert('old_price', (v) => (v as num?)?.toInt()),
          soldCount: $checkedConvert('sold_count', (v) => (v as num?)?.toInt()),
          marks: $checkedConvert(
            'marks',
            (v) =>
                (v as List<dynamic>?)?.map((e) => e as String).toList() ??
                const <String>[],
          ),
          isIllustration: $checkedConvert(
            'is_illustration',
            (v) => v as bool? ?? false,
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'imageUrl': 'image_url',
        'oldPrice': 'old_price',
        'soldCount': 'sold_count',
        'isIllustration': 'is_illustration',
      },
    );

Map<String, dynamic> _$ProductSummaryModelToJson(
  _ProductSummaryModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'image_url': instance.imageUrl,
  'price': instance.price,
  'old_price': instance.oldPrice,
  'sold_count': instance.soldCount,
  'marks': instance.marks,
  'is_illustration': instance.isIllustration,
};
