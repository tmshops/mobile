// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favourite_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FavouriteModel _$FavouriteModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_FavouriteModel',
      json,
      ($checkedConvert) {
        final val = _FavouriteModel(
          product: $checkedConvert(
            'product',
            (v) => ProductSummaryModel.fromJson(v as Map<String, dynamic>),
          ),
          savedPrice: $checkedConvert('saved_price', (v) => (v as num).toInt()),
          addedAt: $checkedConvert(
            'added_at',
            (v) => DateTime.parse(v as String),
          ),
        );
        return val;
      },
      fieldKeyMap: const {'savedPrice': 'saved_price', 'addedAt': 'added_at'},
    );

Map<String, dynamic> _$FavouriteModelToJson(_FavouriteModel instance) =>
    <String, dynamic>{
      'product': instance.product.toJson(),
      'saved_price': instance.savedPrice,
      'added_at': instance.addedAt.toIso8601String(),
    };
