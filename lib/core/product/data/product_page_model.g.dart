// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_page_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductPageModel _$ProductPageModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_ProductPageModel', json, ($checkedConvert) {
      final val = _ProductPageModel(
        items: $checkedConvert(
          'items',
          (v) => (v as List<dynamic>)
              .map(
                (e) => ProductSummaryModel.fromJson(e as Map<String, dynamic>),
              )
              .toList(),
        ),
        nextCursor: $checkedConvert('next_cursor', (v) => v as String?),
      );
      return val;
    }, fieldKeyMap: const {'nextCursor': 'next_cursor'});

Map<String, dynamic> _$ProductPageModelToJson(_ProductPageModel instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
      'next_cursor': instance.nextCursor,
    };
