// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserProfileModel _$UserProfileModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_UserProfileModel',
      json,
      ($checkedConvert) {
        final val = _UserProfileModel(
          id: $checkedConvert('id', (v) => v as String),
          phone: $checkedConvert('phone', (v) => v as String),
          firstName: $checkedConvert('first_name', (v) => v as String? ?? ''),
          lastName: $checkedConvert('last_name', (v) => v as String? ?? ''),
          email: $checkedConvert('email', (v) => v as String?),
          regionId: $checkedConvert('region_id', (v) => v as String?),
          balance: $checkedConvert('balance', (v) => (v as num?)?.toInt() ?? 0),
          debt: $checkedConvert('debt', (v) => (v as num?)?.toInt() ?? 0),
          bonuses: $checkedConvert('bonuses', (v) => (v as num?)?.toInt() ?? 0),
          isWholesale: $checkedConvert(
            'is_wholesale',
            (v) => v as bool? ?? false,
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'firstName': 'first_name',
        'lastName': 'last_name',
        'regionId': 'region_id',
        'isWholesale': 'is_wholesale',
      },
    );

Map<String, dynamic> _$UserProfileModelToJson(_UserProfileModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'phone': instance.phone,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'region_id': instance.regionId,
      'balance': instance.balance,
      'debt': instance.debt,
      'bonuses': instance.bonuses,
      'is_wholesale': instance.isWholesale,
    };
