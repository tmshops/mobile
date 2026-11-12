// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_config_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppConfigModel _$AppConfigModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_AppConfigModel',
      json,
      ($checkedConvert) {
        final val = _AppConfigModel(
          minVersion: $checkedConvert('min_version', (v) => v as String),
          storeUrl: $checkedConvert('store_url', (v) => v as String),
          support: $checkedConvert(
            'support',
            (v) => SupportContactsModel.fromJson(v as Map<String, dynamic>),
          ),
          isMaintenance: $checkedConvert(
            'is_maintenance',
            (v) => v as bool? ?? false,
          ),
          maintenanceMessage: $checkedConvert(
            'maintenance_message',
            (v) => v as String?,
          ),
          isAccountBlocked: $checkedConvert(
            'is_account_blocked',
            (v) => v as bool? ?? false,
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'minVersion': 'min_version',
        'storeUrl': 'store_url',
        'isMaintenance': 'is_maintenance',
        'maintenanceMessage': 'maintenance_message',
        'isAccountBlocked': 'is_account_blocked',
      },
    );

Map<String, dynamic> _$AppConfigModelToJson(_AppConfigModel instance) =>
    <String, dynamic>{
      'min_version': instance.minVersion,
      'store_url': instance.storeUrl,
      'support': instance.support.toJson(),
      'is_maintenance': instance.isMaintenance,
      'maintenance_message': instance.maintenanceMessage,
      'is_account_blocked': instance.isAccountBlocked,
    };

_SupportContactsModel _$SupportContactsModelFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('_SupportContactsModel', json, ($checkedConvert) {
  final val = _SupportContactsModel(
    phone: $checkedConvert('phone', (v) => v as String),
    telegram: $checkedConvert('telegram', (v) => v as String?),
    whatsapp: $checkedConvert('whatsapp', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$SupportContactsModelToJson(
  _SupportContactsModel instance,
) => <String, dynamic>{
  'phone': instance.phone,
  'telegram': instance.telegram,
  'whatsapp': instance.whatsapp,
};
