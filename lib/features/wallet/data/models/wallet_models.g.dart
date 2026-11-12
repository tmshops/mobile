// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WalletSummaryModel _$WalletSummaryModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_WalletSummaryModel', json, ($checkedConvert) {
      final val = _WalletSummaryModel(
        balance: $checkedConvert('balance', (v) => (v as num).toInt()),
        debt: $checkedConvert('debt', (v) => (v as num).toInt()),
      );
      return val;
    });

Map<String, dynamic> _$WalletSummaryModelToJson(_WalletSummaryModel instance) =>
    <String, dynamic>{'balance': instance.balance, 'debt': instance.debt};

_OperationsPageModel _$OperationsPageModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_OperationsPageModel', json, ($checkedConvert) {
      final val = _OperationsPageModel(
        items: $checkedConvert(
          'items',
          (v) => (v as List<dynamic>)
              .map((e) => OperationModel.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
        nextCursor: $checkedConvert('next_cursor', (v) => v as String?),
      );
      return val;
    }, fieldKeyMap: const {'nextCursor': 'next_cursor'});

Map<String, dynamic> _$OperationsPageModelToJson(
  _OperationsPageModel instance,
) => <String, dynamic>{
  'items': instance.items.map((e) => e.toJson()).toList(),
  'next_cursor': instance.nextCursor,
};

_OperationModel _$OperationModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_OperationModel',
      json,
      ($checkedConvert) {
        final val = _OperationModel(
          id: $checkedConvert('id', (v) => v as String),
          type: $checkedConvert('type', (v) => v as String),
          title: $checkedConvert('title', (v) => v as String),
          amount: $checkedConvert('amount', (v) => (v as num).toInt()),
          createdAt: $checkedConvert(
            'created_at',
            (v) => DateTime.parse(v as String),
          ),
          orderNumber: $checkedConvert('order_number', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'createdAt': 'created_at',
        'orderNumber': 'order_number',
      },
    );

Map<String, dynamic> _$OperationModelToJson(_OperationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'title': instance.title,
      'amount': instance.amount,
      'created_at': instance.createdAt.toIso8601String(),
      'order_number': instance.orderNumber,
    };

_SurchargeModel _$SurchargeModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_SurchargeModel',
      json,
      ($checkedConvert) {
        final val = _SurchargeModel(
          id: $checkedConvert('id', (v) => v as String),
          reason: $checkedConvert('reason', (v) => v as String),
          title: $checkedConvert('title', (v) => v as String),
          amount: $checkedConvert('amount', (v) => (v as num).toInt()),
          createdAt: $checkedConvert(
            'created_at',
            (v) => DateTime.parse(v as String),
          ),
          lines: $checkedConvert(
            'lines',
            (v) =>
                (v as List<dynamic>?)
                    ?.map(
                      (e) => BillLineModel.fromJson(e as Map<String, dynamic>),
                    )
                    .toList() ??
                const <BillLineModel>[],
          ),
          orderNumber: $checkedConvert('order_number', (v) => v as String?),
          parcelNumber: $checkedConvert('parcel_number', (v) => v as String?),
          deadline: $checkedConvert(
            'deadline',
            (v) => v == null ? null : DateTime.parse(v as String),
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'createdAt': 'created_at',
        'orderNumber': 'order_number',
        'parcelNumber': 'parcel_number',
      },
    );

Map<String, dynamic> _$SurchargeModelToJson(_SurchargeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'reason': instance.reason,
      'title': instance.title,
      'amount': instance.amount,
      'created_at': instance.createdAt.toIso8601String(),
      'lines': instance.lines.map((e) => e.toJson()).toList(),
      'order_number': instance.orderNumber,
      'parcel_number': instance.parcelNumber,
      'deadline': instance.deadline?.toIso8601String(),
    };

_BillLineModel _$BillLineModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_BillLineModel', json, ($checkedConvert) {
      final val = _BillLineModel(
        label: $checkedConvert('label', (v) => v as String),
        value: $checkedConvert('value', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$BillLineModelToJson(_BillLineModel instance) =>
    <String, dynamic>{'label': instance.label, 'value': instance.value};

_RefundModel _$RefundModelFromJson(Map<String, dynamic> json) => $checkedCreate(
  '_RefundModel',
  json,
  ($checkedConvert) {
    final val = _RefundModel(
      id: $checkedConvert('id', (v) => v as String),
      title: $checkedConvert('title', (v) => v as String),
      amount: $checkedConvert('amount', (v) => (v as num).toInt()),
      destination: $checkedConvert('destination', (v) => v as String),
      status: $checkedConvert('status', (v) => v as String),
      createdAt: $checkedConvert(
        'created_at',
        (v) => DateTime.parse(v as String),
      ),
      orderNumber: $checkedConvert('order_number', (v) => v as String?),
    );
    return val;
  },
  fieldKeyMap: const {'createdAt': 'created_at', 'orderNumber': 'order_number'},
);

Map<String, dynamic> _$RefundModelToJson(_RefundModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'amount': instance.amount,
      'destination': instance.destination,
      'status': instance.status,
      'created_at': instance.createdAt.toIso8601String(),
      'order_number': instance.orderNumber,
    };
