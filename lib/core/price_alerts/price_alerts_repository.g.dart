// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_alerts_repository.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PriceAlertModel _$PriceAlertModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_PriceAlertModel',
      json,
      ($checkedConvert) {
        final val = _PriceAlertModel(
          product: $checkedConvert(
            'product',
            (v) => ProductSummaryModel.fromJson(v as Map<String, dynamic>),
          ),
          subscribedPrice: $checkedConvert(
            'subscribed_price',
            (v) => (v as num).toInt(),
          ),
        );
        return val;
      },
      fieldKeyMap: const {'subscribedPrice': 'subscribed_price'},
    );

Map<String, dynamic> _$PriceAlertModelToJson(_PriceAlertModel instance) =>
    <String, dynamic>{
      'product': instance.product.toJson(),
      'subscribed_price': instance.subscribedPrice,
    };
