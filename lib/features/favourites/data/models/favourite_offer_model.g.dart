// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favourite_offer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FavouriteOfferModel _$FavouriteOfferModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_FavouriteOfferModel',
      json,
      ($checkedConvert) {
        final val = _FavouriteOfferModel(
          product: $checkedConvert(
            'product',
            (v) => ProductSummaryModel.fromJson(v as Map<String, dynamic>),
          ),
          isAvailable: $checkedConvert('is_available', (v) => v as bool),
          sellerName: $checkedConvert('seller_name', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'isAvailable': 'is_available',
        'sellerName': 'seller_name',
      },
    );

Map<String, dynamic> _$FavouriteOfferModelToJson(
  _FavouriteOfferModel instance,
) => <String, dynamic>{
  'product': instance.product.toJson(),
  'is_available': instance.isAvailable,
  'seller_name': instance.sellerName,
};
