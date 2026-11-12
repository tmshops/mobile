// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CheckoutPreviewModel _$CheckoutPreviewModelFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  '_CheckoutPreviewModel',
  json,
  ($checkedConvert) {
    final val = _CheckoutPreviewModel(
      deliveryOptions: $checkedConvert(
        'delivery_options',
        (v) => (v as List<dynamic>)
            .map((e) => DeliveryChoiceModel.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
      deliveryType: $checkedConvert('delivery_type', (v) => v as String?),
      pickupPoints: $checkedConvert(
        'pickup_points',
        (v) => (v as List<dynamic>)
            .map((e) => PickupPointModel.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
      services: $checkedConvert(
        'services',
        (v) => (v as List<dynamic>)
            .map((e) => ExtraServiceModel.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
      courierPrice: $checkedConvert('courier_price', (v) => (v as num).toInt()),
      courierFreeFrom: $checkedConvert(
        'courier_free_from',
        (v) => (v as num?)?.toInt(),
      ),
      summary: $checkedConvert(
        'summary',
        (v) => CheckoutSummaryModel.fromJson(v as Map<String, dynamic>),
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'deliveryOptions': 'delivery_options',
    'deliveryType': 'delivery_type',
    'pickupPoints': 'pickup_points',
    'courierPrice': 'courier_price',
    'courierFreeFrom': 'courier_free_from',
  },
);

Map<String, dynamic> _$CheckoutPreviewModelToJson(
  _CheckoutPreviewModel instance,
) => <String, dynamic>{
  'delivery_options': instance.deliveryOptions.map((e) => e.toJson()).toList(),
  'delivery_type': instance.deliveryType,
  'pickup_points': instance.pickupPoints.map((e) => e.toJson()).toList(),
  'services': instance.services.map((e) => e.toJson()).toList(),
  'courier_price': instance.courierPrice,
  'courier_free_from': instance.courierFreeFrom,
  'summary': instance.summary.toJson(),
};

_DeliveryChoiceModel _$DeliveryChoiceModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_DeliveryChoiceModel',
      json,
      ($checkedConvert) {
        final val = _DeliveryChoiceModel(
          type: $checkedConvert('type', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          term: $checkedConvert('term', (v) => v as String),
          price: $checkedConvert('price', (v) => (v as num).toInt()),
          unavailableReason: $checkedConvert(
            'unavailable_reason',
            (v) => v as String?,
          ),
        );
        return val;
      },
      fieldKeyMap: const {'unavailableReason': 'unavailable_reason'},
    );

Map<String, dynamic> _$DeliveryChoiceModelToJson(
  _DeliveryChoiceModel instance,
) => <String, dynamic>{
  'type': instance.type,
  'name': instance.name,
  'term': instance.term,
  'price': instance.price,
  'unavailable_reason': instance.unavailableReason,
};

_PickupPointModel _$PickupPointModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_PickupPointModel', json, ($checkedConvert) {
      final val = _PickupPointModel(
        id: $checkedConvert('id', (v) => v as String),
        name: $checkedConvert('name', (v) => v as String),
        address: $checkedConvert('address', (v) => v as String),
        hours: $checkedConvert('hours', (v) => v as String),
        phone: $checkedConvert('phone', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$PickupPointModelToJson(_PickupPointModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'hours': instance.hours,
      'phone': instance.phone,
    };

_ExtraServiceModel _$ExtraServiceModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_ExtraServiceModel', json, ($checkedConvert) {
      final val = _ExtraServiceModel(
        id: $checkedConvert('id', (v) => v as String),
        title: $checkedConvert('title', (v) => v as String),
        price: $checkedConvert('price', (v) => (v as num).toInt()),
      );
      return val;
    });

Map<String, dynamic> _$ExtraServiceModelToJson(_ExtraServiceModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'price': instance.price,
    };

_CheckoutSummaryModel _$CheckoutSummaryModelFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  '_CheckoutSummaryModel',
  json,
  ($checkedConvert) {
    final val = _CheckoutSummaryModel(
      items: $checkedConvert('items', (v) => (v as num).toInt()),
      chinaDelivery: $checkedConvert(
        'china_delivery',
        (v) => (v as num).toInt(),
      ),
      internationalEstimate: $checkedConvert(
        'international_estimate',
        (v) => (v as num).toInt(),
      ),
      courier: $checkedConvert('courier', (v) => (v as num).toInt()),
      services: $checkedConvert('services', (v) => (v as num).toInt()),
      discount: $checkedConvert('discount', (v) => (v as num).toInt()),
      total: $checkedConvert('total', (v) => (v as num).toInt()),
      payNow: $checkedConvert('pay_now', (v) => (v as num).toInt()),
      payLater: $checkedConvert('pay_later', (v) => (v as num).toInt()),
    );
    return val;
  },
  fieldKeyMap: const {
    'chinaDelivery': 'china_delivery',
    'internationalEstimate': 'international_estimate',
    'payNow': 'pay_now',
    'payLater': 'pay_later',
  },
);

Map<String, dynamic> _$CheckoutSummaryModelToJson(
  _CheckoutSummaryModel instance,
) => <String, dynamic>{
  'items': instance.items,
  'china_delivery': instance.chinaDelivery,
  'international_estimate': instance.internationalEstimate,
  'courier': instance.courier,
  'services': instance.services,
  'discount': instance.discount,
  'total': instance.total,
  'pay_now': instance.payNow,
  'pay_later': instance.payLater,
};

_PlaceOrderResponseModel _$PlaceOrderResponseModelFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('_PlaceOrderResponseModel', json, ($checkedConvert) {
  final val = _PlaceOrderResponseModel(
    status: $checkedConvert('status', (v) => v as String),
    order: $checkedConvert(
      'order',
      (v) => v == null
          ? null
          : PlacedOrderModel.fromJson(v as Map<String, dynamic>),
    ),
    preview: $checkedConvert(
      'preview',
      (v) => v == null
          ? null
          : CheckoutPreviewModel.fromJson(v as Map<String, dynamic>),
    ),
  );
  return val;
});

Map<String, dynamic> _$PlaceOrderResponseModelToJson(
  _PlaceOrderResponseModel instance,
) => <String, dynamic>{
  'status': instance.status,
  'order': instance.order?.toJson(),
  'preview': instance.preview?.toJson(),
};

_PlacedOrderModel _$PlacedOrderModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_PlacedOrderModel',
      json,
      ($checkedConvert) {
        final val = _PlacedOrderModel(
          number: $checkedConvert('number', (v) => v as String),
          payNow: $checkedConvert('pay_now', (v) => (v as num).toInt()),
          payment: $checkedConvert('payment', (v) => v as String),
          paymentId: $checkedConvert('payment_id', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'payNow': 'pay_now', 'paymentId': 'payment_id'},
    );

Map<String, dynamic> _$PlacedOrderModelToJson(_PlacedOrderModel instance) =>
    <String, dynamic>{
      'number': instance.number,
      'pay_now': instance.payNow,
      'payment': instance.payment,
      'payment_id': instance.paymentId,
    };

_PaymentStatusModel _$PaymentStatusModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_PaymentStatusModel', json, ($checkedConvert) {
      final val = _PaymentStatusModel(
        status: $checkedConvert('status', (v) => v as String),
        reason: $checkedConvert('reason', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$PaymentStatusModelToJson(_PaymentStatusModel instance) =>
    <String, dynamic>{'status': instance.status, 'reason': instance.reason};
