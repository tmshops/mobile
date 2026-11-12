// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AccountSettingsModel _$AccountSettingsModelFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('_AccountSettingsModel', json, ($checkedConvert) {
  final val = _AccountSettingsModel(
    codeChannel: $checkedConvert('code_channel', (v) => v as String),
    channels: $checkedConvert(
      'channels',
      (v) => (v as List<dynamic>)
          .map((e) => ChannelModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
    notifications: $checkedConvert(
      'notifications',
      (v) => (v as List<dynamic>)
          .map((e) => TopicModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
  );
  return val;
}, fieldKeyMap: const {'codeChannel': 'code_channel'});

Map<String, dynamic> _$AccountSettingsModelToJson(
  _AccountSettingsModel instance,
) => <String, dynamic>{
  'code_channel': instance.codeChannel,
  'channels': instance.channels.map((e) => e.toJson()).toList(),
  'notifications': instance.notifications.map((e) => e.toJson()).toList(),
};

_ChannelModel _$ChannelModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_ChannelModel', json, ($checkedConvert) {
      final val = _ChannelModel(
        id: $checkedConvert('id', (v) => v as String),
        isLinked: $checkedConvert('is_linked', (v) => v as bool),
        address: $checkedConvert('address', (v) => v as String?),
      );
      return val;
    }, fieldKeyMap: const {'isLinked': 'is_linked'});

Map<String, dynamic> _$ChannelModelToJson(_ChannelModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'is_linked': instance.isLinked,
      'address': instance.address,
    };

_TopicModel _$TopicModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_TopicModel', json, ($checkedConvert) {
      final val = _TopicModel(
        id: $checkedConvert('id', (v) => v as String),
        title: $checkedConvert('title', (v) => v as String),
        isRequired: $checkedConvert('is_required', (v) => v as bool),
        isOn: $checkedConvert('is_on', (v) => v as bool),
      );
      return val;
    }, fieldKeyMap: const {'isRequired': 'is_required', 'isOn': 'is_on'});

Map<String, dynamic> _$TopicModelToJson(_TopicModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'is_required': instance.isRequired,
      'is_on': instance.isOn,
    };

_DeletionCheckModel _$DeletionCheckModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_DeletionCheckModel',
      json,
      ($checkedConvert) {
        final val = _DeletionCheckModel(
          activeOrders: $checkedConvert(
            'active_orders',
            (v) => (v as num).toInt(),
          ),
          debt: $checkedConvert('debt', (v) => (v as num).toInt()),
          balance: $checkedConvert('balance', (v) => (v as num).toInt()),
          canDelete: $checkedConvert('can_delete', (v) => v as bool),
          blockReason: $checkedConvert('block_reason', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'activeOrders': 'active_orders',
        'canDelete': 'can_delete',
        'blockReason': 'block_reason',
      },
    );

Map<String, dynamic> _$DeletionCheckModelToJson(_DeletionCheckModel instance) =>
    <String, dynamic>{
      'active_orders': instance.activeOrders,
      'debt': instance.debt,
      'balance': instance.balance,
      'can_delete': instance.canDelete,
      'block_reason': instance.blockReason,
    };
