// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StatusModel _$StatusModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_StatusModel', json, ($checkedConvert) {
      final val = _StatusModel(
        code: $checkedConvert('code', (v) => v as String),
        title: $checkedConvert('title', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$StatusModelToJson(_StatusModel instance) =>
    <String, dynamic>{'code': instance.code, 'title': instance.title};

_OrdersResponseModel _$OrdersResponseModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_OrdersResponseModel', json, ($checkedConvert) {
      final val = _OrdersResponseModel(
        orders: $checkedConvert(
          'orders',
          (v) => (v as List<dynamic>)
              .map((e) => OrderSummaryModel.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$OrdersResponseModelToJson(
  _OrdersResponseModel instance,
) => <String, dynamic>{
  'orders': instance.orders.map((e) => e.toJson()).toList(),
};

_OrderSummaryModel _$OrderSummaryModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_OrderSummaryModel',
      json,
      ($checkedConvert) {
        final val = _OrderSummaryModel(
          number: $checkedConvert('number', (v) => v as String),
          createdAt: $checkedConvert('created_at', (v) => v as String),
          status: $checkedConvert(
            'status',
            (v) => StatusModel.fromJson(v as Map<String, dynamic>),
          ),
          total: $checkedConvert('total', (v) => (v as num).toInt()),
          itemCount: $checkedConvert('item_count', (v) => (v as num).toInt()),
          previews: $checkedConvert(
            'previews',
            (v) =>
                (v as List<dynamic>?)?.map((e) => e as String).toList() ??
                const <String>[],
          ),
          canRepeat: $checkedConvert('can_repeat', (v) => v as bool? ?? false),
        );
        return val;
      },
      fieldKeyMap: const {
        'createdAt': 'created_at',
        'itemCount': 'item_count',
        'canRepeat': 'can_repeat',
      },
    );

Map<String, dynamic> _$OrderSummaryModelToJson(_OrderSummaryModel instance) =>
    <String, dynamic>{
      'number': instance.number,
      'created_at': instance.createdAt,
      'status': instance.status.toJson(),
      'total': instance.total,
      'item_count': instance.itemCount,
      'previews': instance.previews,
      'can_repeat': instance.canRepeat,
    };

_OrderDetailsModel _$OrderDetailsModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_OrderDetailsModel',
      json,
      ($checkedConvert) {
        final val = _OrderDetailsModel(
          number: $checkedConvert('number', (v) => v as String),
          createdAt: $checkedConvert('created_at', (v) => v as String),
          status: $checkedConvert(
            'status',
            (v) => StatusModel.fromJson(v as Map<String, dynamic>),
          ),
          statusText: $checkedConvert('status_text', (v) => v as String? ?? ''),
          items: $checkedConvert(
            'items',
            (v) => (v as List<dynamic>)
                .map((e) => OrderItemModel.fromJson(e as Map<String, dynamic>))
                .toList(),
          ),
          history: $checkedConvert(
            'history',
            (v) =>
                (v as List<dynamic>?)
                    ?.map(
                      (e) =>
                          StatusEventModel.fromJson(e as Map<String, dynamic>),
                    )
                    .toList() ??
                const <StatusEventModel>[],
          ),
          money: $checkedConvert(
            'money',
            (v) => OrderMoneyModel.fromJson(v as Map<String, dynamic>),
          ),
          receiving: $checkedConvert('receiving', (v) => v as String? ?? ''),
          deliveryTypeName: $checkedConvert(
            'delivery_type_name',
            (v) => v as String? ?? '',
          ),
          canPay: $checkedConvert('can_pay', (v) => v as bool? ?? false),
          payDeadline: $checkedConvert('pay_deadline', (v) => v as String?),
          canCancel: $checkedConvert('can_cancel', (v) => v as bool? ?? false),
          cancelNote: $checkedConvert('cancel_note', (v) => v as String?),
          refundTo: $checkedConvert('refund_to', (v) => v as String?),
          cancelReasons: $checkedConvert(
            'cancel_reasons',
            (v) =>
                (v as List<dynamic>?)
                    ?.map(
                      (e) =>
                          CancelReasonModel.fromJson(e as Map<String, dynamic>),
                    )
                    .toList() ??
                const <CancelReasonModel>[],
          ),
          parcels: $checkedConvert(
            'parcels',
            (v) =>
                (v as List<dynamic>?)
                    ?.map(
                      (e) =>
                          ParcelLinkModel.fromJson(e as Map<String, dynamic>),
                    )
                    .toList() ??
                const <ParcelLinkModel>[],
          ),
          canRepeat: $checkedConvert('can_repeat', (v) => v as bool? ?? false),
        );
        return val;
      },
      fieldKeyMap: const {
        'createdAt': 'created_at',
        'statusText': 'status_text',
        'deliveryTypeName': 'delivery_type_name',
        'canPay': 'can_pay',
        'payDeadline': 'pay_deadline',
        'canCancel': 'can_cancel',
        'cancelNote': 'cancel_note',
        'refundTo': 'refund_to',
        'cancelReasons': 'cancel_reasons',
        'canRepeat': 'can_repeat',
      },
    );

Map<String, dynamic> _$OrderDetailsModelToJson(_OrderDetailsModel instance) =>
    <String, dynamic>{
      'number': instance.number,
      'created_at': instance.createdAt,
      'status': instance.status.toJson(),
      'status_text': instance.statusText,
      'items': instance.items.map((e) => e.toJson()).toList(),
      'history': instance.history.map((e) => e.toJson()).toList(),
      'money': instance.money.toJson(),
      'receiving': instance.receiving,
      'delivery_type_name': instance.deliveryTypeName,
      'can_pay': instance.canPay,
      'pay_deadline': instance.payDeadline,
      'can_cancel': instance.canCancel,
      'cancel_note': instance.cancelNote,
      'refund_to': instance.refundTo,
      'cancel_reasons': instance.cancelReasons.map((e) => e.toJson()).toList(),
      'parcels': instance.parcels.map((e) => e.toJson()).toList(),
      'can_repeat': instance.canRepeat,
    };

_OrderItemModel _$OrderItemModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_OrderItemModel',
      json,
      ($checkedConvert) {
        final val = _OrderItemModel(
          id: $checkedConvert('id', (v) => v as String),
          productId: $checkedConvert('product_id', (v) => v as String),
          title: $checkedConvert('title', (v) => v as String),
          imageUrl: $checkedConvert('image_url', (v) => v as String? ?? ''),
          quantity: $checkedConvert('quantity', (v) => (v as num).toInt()),
          price: $checkedConvert('price', (v) => (v as num).toInt()),
          status: $checkedConvert(
            'status',
            (v) => StatusModel.fromJson(v as Map<String, dynamic>),
          ),
          options: $checkedConvert('options', (v) => v as String?),
          warehousePhotos: $checkedConvert(
            'warehouse_photos',
            (v) =>
                (v as List<dynamic>?)?.map((e) => e as String).toList() ??
                const <String>[],
          ),
          chinaTrack: $checkedConvert('china_track', (v) => v as String?),
          problem: $checkedConvert(
            'problem',
            (v) => v == null
                ? null
                : ItemProblemModel.fromJson(v as Map<String, dynamic>),
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'productId': 'product_id',
        'imageUrl': 'image_url',
        'warehousePhotos': 'warehouse_photos',
        'chinaTrack': 'china_track',
      },
    );

Map<String, dynamic> _$OrderItemModelToJson(_OrderItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product_id': instance.productId,
      'title': instance.title,
      'image_url': instance.imageUrl,
      'quantity': instance.quantity,
      'price': instance.price,
      'status': instance.status.toJson(),
      'options': instance.options,
      'warehouse_photos': instance.warehousePhotos,
      'china_track': instance.chinaTrack,
      'problem': instance.problem?.toJson(),
    };

_ItemProblemModel _$ItemProblemModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_ItemProblemModel', json, ($checkedConvert) {
      final val = _ItemProblemModel(
        title: $checkedConvert('title', (v) => v as String),
        description: $checkedConvert('description', (v) => v as String),
        actions: $checkedConvert(
          'actions',
          (v) =>
              (v as List<dynamic>?)
                  ?.map(
                    (e) =>
                        ProblemActionModel.fromJson(e as Map<String, dynamic>),
                  )
                  .toList() ??
              const <ProblemActionModel>[],
        ),
        photos: $checkedConvert(
          'photos',
          (v) =>
              (v as List<dynamic>?)?.map((e) => e as String).toList() ??
              const <String>[],
        ),
        deadline: $checkedConvert('deadline', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$ItemProblemModelToJson(_ItemProblemModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'actions': instance.actions.map((e) => e.toJson()).toList(),
      'photos': instance.photos,
      'deadline': instance.deadline,
    };

_ProblemActionModel _$ProblemActionModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_ProblemActionModel', json, ($checkedConvert) {
      final val = _ProblemActionModel(
        id: $checkedConvert('id', (v) => v as String),
        title: $checkedConvert('title', (v) => v as String),
        isPrimary: $checkedConvert('is_primary', (v) => v as bool? ?? false),
      );
      return val;
    }, fieldKeyMap: const {'isPrimary': 'is_primary'});

Map<String, dynamic> _$ProblemActionModelToJson(_ProblemActionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'is_primary': instance.isPrimary,
    };

_StatusEventModel _$StatusEventModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_StatusEventModel', json, ($checkedConvert) {
      final val = _StatusEventModel(
        title: $checkedConvert('title', (v) => v as String),
        at: $checkedConvert('at', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$StatusEventModelToJson(_StatusEventModel instance) =>
    <String, dynamic>{'title': instance.title, 'at': instance.at};

_CancelReasonModel _$CancelReasonModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_CancelReasonModel', json, ($checkedConvert) {
      final val = _CancelReasonModel(
        id: $checkedConvert('id', (v) => v as String),
        title: $checkedConvert('title', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$CancelReasonModelToJson(_CancelReasonModel instance) =>
    <String, dynamic>{'id': instance.id, 'title': instance.title};

_ParcelLinkModel _$ParcelLinkModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_ParcelLinkModel', json, ($checkedConvert) {
      final val = _ParcelLinkModel(
        number: $checkedConvert('number', (v) => v as String),
        status: $checkedConvert(
          'status',
          (v) => StatusModel.fromJson(v as Map<String, dynamic>),
        ),
      );
      return val;
    });

Map<String, dynamic> _$ParcelLinkModelToJson(_ParcelLinkModel instance) =>
    <String, dynamic>{
      'number': instance.number,
      'status': instance.status.toJson(),
    };

_OrderMoneyModel _$OrderMoneyModelFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  '_OrderMoneyModel',
  json,
  ($checkedConvert) {
    final val = _OrderMoneyModel(
      items: $checkedConvert('items', (v) => (v as num).toInt()),
      chinaDelivery: $checkedConvert(
        'china_delivery',
        (v) => (v as num?)?.toInt() ?? 0,
      ),
      internationalDelivery: $checkedConvert(
        'international_delivery',
        (v) => (v as num?)?.toInt() ?? 0,
      ),
      isEstimate: $checkedConvert('is_estimate', (v) => v as bool? ?? true),
      courier: $checkedConvert('courier', (v) => (v as num?)?.toInt() ?? 0),
      services: $checkedConvert('services', (v) => (v as num?)?.toInt() ?? 0),
      discount: $checkedConvert('discount', (v) => (v as num?)?.toInt() ?? 0),
      total: $checkedConvert('total', (v) => (v as num).toInt()),
      paid: $checkedConvert('paid', (v) => (v as num?)?.toInt() ?? 0),
      due: $checkedConvert('due', (v) => (v as num?)?.toInt() ?? 0),
    );
    return val;
  },
  fieldKeyMap: const {
    'chinaDelivery': 'china_delivery',
    'internationalDelivery': 'international_delivery',
    'isEstimate': 'is_estimate',
  },
);

Map<String, dynamic> _$OrderMoneyModelToJson(_OrderMoneyModel instance) =>
    <String, dynamic>{
      'items': instance.items,
      'china_delivery': instance.chinaDelivery,
      'international_delivery': instance.internationalDelivery,
      'is_estimate': instance.isEstimate,
      'courier': instance.courier,
      'services': instance.services,
      'discount': instance.discount,
      'total': instance.total,
      'paid': instance.paid,
      'due': instance.due,
    };

_RepeatResponseModel _$RepeatResponseModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_RepeatResponseModel', json, ($checkedConvert) {
      final val = _RepeatResponseModel(
        lines: $checkedConvert(
          'lines',
          (v) => (v as List<dynamic>)
              .map((e) => RepeatLineModel.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
        unavailable: $checkedConvert(
          'unavailable',
          (v) => (v as num?)?.toInt() ?? 0,
        ),
      );
      return val;
    });

Map<String, dynamic> _$RepeatResponseModelToJson(
  _RepeatResponseModel instance,
) => <String, dynamic>{
  'lines': instance.lines.map((e) => e.toJson()).toList(),
  'unavailable': instance.unavailable,
};

_RepeatLineModel _$RepeatLineModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_RepeatLineModel',
      json,
      ($checkedConvert) {
        final val = _RepeatLineModel(
          productId: $checkedConvert('product_id', (v) => v as String),
          title: $checkedConvert('title', (v) => v as String),
          imageUrl: $checkedConvert('image_url', (v) => v as String? ?? ''),
          price: $checkedConvert('price', (v) => (v as num).toInt()),
          quantity: $checkedConvert('quantity', (v) => (v as num).toInt()),
          skuId: $checkedConvert('sku_id', (v) => v as String?),
          skuLabel: $checkedConvert('sku_label', (v) => v as String?),
          sellerName: $checkedConvert('seller_name', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'productId': 'product_id',
        'imageUrl': 'image_url',
        'skuId': 'sku_id',
        'skuLabel': 'sku_label',
        'sellerName': 'seller_name',
      },
    );

Map<String, dynamic> _$RepeatLineModelToJson(_RepeatLineModel instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'title': instance.title,
      'image_url': instance.imageUrl,
      'price': instance.price,
      'quantity': instance.quantity,
      'sku_id': instance.skuId,
      'sku_label': instance.skuLabel,
      'seller_name': instance.sellerName,
    };

_ParcelsResponseModel _$ParcelsResponseModelFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('_ParcelsResponseModel', json, ($checkedConvert) {
  final val = _ParcelsResponseModel(
    parcels: $checkedConvert(
      'parcels',
      (v) => (v as List<dynamic>)
          .map((e) => ParcelSummaryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$ParcelsResponseModelToJson(
  _ParcelsResponseModel instance,
) => <String, dynamic>{
  'parcels': instance.parcels.map((e) => e.toJson()).toList(),
};

_ParcelSummaryModel _$ParcelSummaryModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_ParcelSummaryModel',
      json,
      ($checkedConvert) {
        final val = _ParcelSummaryModel(
          number: $checkedConvert('number', (v) => v as String),
          status: $checkedConvert(
            'status',
            (v) => StatusModel.fromJson(v as Map<String, dynamic>),
          ),
          stage: $checkedConvert('stage', (v) => v as String),
          itemCount: $checkedConvert('item_count', (v) => (v as num).toInt()),
          previews: $checkedConvert(
            'previews',
            (v) =>
                (v as List<dynamic>?)?.map((e) => e as String).toList() ??
                const <String>[],
          ),
          etaFrom: $checkedConvert('eta_from', (v) => v as String?),
          etaTo: $checkedConvert('eta_to', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'itemCount': 'item_count',
        'etaFrom': 'eta_from',
        'etaTo': 'eta_to',
      },
    );

Map<String, dynamic> _$ParcelSummaryModelToJson(_ParcelSummaryModel instance) =>
    <String, dynamic>{
      'number': instance.number,
      'status': instance.status.toJson(),
      'stage': instance.stage,
      'item_count': instance.itemCount,
      'previews': instance.previews,
      'eta_from': instance.etaFrom,
      'eta_to': instance.etaTo,
    };

_ParcelDetailsModel _$ParcelDetailsModelFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  '_ParcelDetailsModel',
  json,
  ($checkedConvert) {
    final val = _ParcelDetailsModel(
      number: $checkedConvert('number', (v) => v as String),
      status: $checkedConvert(
        'status',
        (v) => StatusModel.fromJson(v as Map<String, dynamic>),
      ),
      stage: $checkedConvert('stage', (v) => v as String),
      stageDates: $checkedConvert(
        'stage_dates',
        (v) =>
            (v as Map<String, dynamic>?)?.map(
              (k, e) => MapEntry(k, e as String),
            ) ??
            const <String, String>{},
      ),
      deliveryTypeName: $checkedConvert(
        'delivery_type_name',
        (v) => v as String? ?? '',
      ),
      items: $checkedConvert(
        'items',
        (v) => (v as List<dynamic>)
            .map((e) => ParcelItemModel.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
      history: $checkedConvert(
        'history',
        (v) =>
            (v as List<dynamic>?)
                ?.map(
                  (e) => StatusEventModel.fromJson(e as Map<String, dynamic>),
                )
                .toList() ??
            const <StatusEventModel>[],
      ),
      etaFrom: $checkedConvert('eta_from', (v) => v as String?),
      etaTo: $checkedConvert('eta_to', (v) => v as String?),
      weightGrams: $checkedConvert('weight_grams', (v) => (v as num?)?.toInt()),
      canSendNow: $checkedConvert('can_send_now', (v) => v as bool? ?? false),
      freeStorageUntil: $checkedConvert(
        'free_storage_until',
        (v) => v as String?,
      ),
      surcharge: $checkedConvert(
        'surcharge',
        (v) => v == null
            ? null
            : SurchargeModel.fromJson(v as Map<String, dynamic>),
      ),
      pickup: $checkedConvert(
        'pickup',
        (v) => v == null
            ? null
            : PickupInfoModel.fromJson(v as Map<String, dynamic>),
      ),
      courier: $checkedConvert(
        'courier',
        (v) => v == null
            ? null
            : CourierInfoModel.fromJson(v as Map<String, dynamic>),
      ),
      claimUntil: $checkedConvert('claim_until', (v) => v as String?),
    );
    return val;
  },
  fieldKeyMap: const {
    'stageDates': 'stage_dates',
    'deliveryTypeName': 'delivery_type_name',
    'etaFrom': 'eta_from',
    'etaTo': 'eta_to',
    'weightGrams': 'weight_grams',
    'canSendNow': 'can_send_now',
    'freeStorageUntil': 'free_storage_until',
    'claimUntil': 'claim_until',
  },
);

Map<String, dynamic> _$ParcelDetailsModelToJson(_ParcelDetailsModel instance) =>
    <String, dynamic>{
      'number': instance.number,
      'status': instance.status.toJson(),
      'stage': instance.stage,
      'stage_dates': instance.stageDates,
      'delivery_type_name': instance.deliveryTypeName,
      'items': instance.items.map((e) => e.toJson()).toList(),
      'history': instance.history.map((e) => e.toJson()).toList(),
      'eta_from': instance.etaFrom,
      'eta_to': instance.etaTo,
      'weight_grams': instance.weightGrams,
      'can_send_now': instance.canSendNow,
      'free_storage_until': instance.freeStorageUntil,
      'surcharge': instance.surcharge?.toJson(),
      'pickup': instance.pickup?.toJson(),
      'courier': instance.courier?.toJson(),
      'claim_until': instance.claimUntil,
    };

_ParcelItemModel _$ParcelItemModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_ParcelItemModel',
      json,
      ($checkedConvert) {
        final val = _ParcelItemModel(
          orderNumber: $checkedConvert('order_number', (v) => v as String),
          title: $checkedConvert('title', (v) => v as String),
          imageUrl: $checkedConvert('image_url', (v) => v as String? ?? ''),
          quantity: $checkedConvert('quantity', (v) => (v as num).toInt()),
        );
        return val;
      },
      fieldKeyMap: const {
        'orderNumber': 'order_number',
        'imageUrl': 'image_url',
      },
    );

Map<String, dynamic> _$ParcelItemModelToJson(_ParcelItemModel instance) =>
    <String, dynamic>{
      'order_number': instance.orderNumber,
      'title': instance.title,
      'image_url': instance.imageUrl,
      'quantity': instance.quantity,
    };

_SurchargeModel _$SurchargeModelFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  '_SurchargeModel',
  json,
  ($checkedConvert) {
    final val = _SurchargeModel(
      weightGrams: $checkedConvert('weight_grams', (v) => (v as num).toInt()),
      ratePerKg: $checkedConvert('rate_per_kg', (v) => (v as num).toInt()),
      deliveryCost: $checkedConvert('delivery_cost', (v) => (v as num).toInt()),
      paid: $checkedConvert('paid', (v) => (v as num).toInt()),
      amount: $checkedConvert('amount', (v) => (v as num).toInt()),
    );
    return val;
  },
  fieldKeyMap: const {
    'weightGrams': 'weight_grams',
    'ratePerKg': 'rate_per_kg',
    'deliveryCost': 'delivery_cost',
  },
);

Map<String, dynamic> _$SurchargeModelToJson(_SurchargeModel instance) =>
    <String, dynamic>{
      'weight_grams': instance.weightGrams,
      'rate_per_kg': instance.ratePerKg,
      'delivery_cost': instance.deliveryCost,
      'paid': instance.paid,
      'amount': instance.amount,
    };

_PickupInfoModel _$PickupInfoModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_PickupInfoModel',
      json,
      ($checkedConvert) {
        final val = _PickupInfoModel(
          code: $checkedConvert('code', (v) => v as String),
          pointName: $checkedConvert('point_name', (v) => v as String),
          address: $checkedConvert('address', (v) => v as String),
          hours: $checkedConvert('hours', (v) => v as String),
          phone: $checkedConvert('phone', (v) => v as String),
          amountDue: $checkedConvert(
            'amount_due',
            (v) => (v as num?)?.toInt() ?? 0,
          ),
        );
        return val;
      },
      fieldKeyMap: const {'pointName': 'point_name', 'amountDue': 'amount_due'},
    );

Map<String, dynamic> _$PickupInfoModelToJson(_PickupInfoModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'point_name': instance.pointName,
      'address': instance.address,
      'hours': instance.hours,
      'phone': instance.phone,
      'amount_due': instance.amountDue,
    };

_CourierInfoModel _$CourierInfoModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_CourierInfoModel', json, ($checkedConvert) {
      final val = _CourierInfoModel(
        name: $checkedConvert('name', (v) => v as String),
        phone: $checkedConvert('phone', (v) => v as String),
        amountDue: $checkedConvert(
          'amount_due',
          (v) => (v as num?)?.toInt() ?? 0,
        ),
      );
      return val;
    }, fieldKeyMap: const {'amountDue': 'amount_due'});

Map<String, dynamic> _$CourierInfoModelToJson(_CourierInfoModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'phone': instance.phone,
      'amount_due': instance.amountDue,
    };
