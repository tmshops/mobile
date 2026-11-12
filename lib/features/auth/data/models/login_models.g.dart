// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CodeRequestModel _$CodeRequestModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_CodeRequestModel',
      json,
      ($checkedConvert) {
        final val = _CodeRequestModel(
          requestId: $checkedConvert('request_id', (v) => v as String),
          codeLength: $checkedConvert('code_length', (v) => (v as num).toInt()),
          channel: $checkedConvert('channel', (v) => v as String),
          destination: $checkedConvert('destination', (v) => v as String),
          resendAfter: $checkedConvert(
            'resend_after',
            (v) => (v as num).toInt(),
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'requestId': 'request_id',
        'codeLength': 'code_length',
        'resendAfter': 'resend_after',
      },
    );

Map<String, dynamic> _$CodeRequestModelToJson(_CodeRequestModel instance) =>
    <String, dynamic>{
      'request_id': instance.requestId,
      'code_length': instance.codeLength,
      'channel': instance.channel,
      'destination': instance.destination,
      'resend_after': instance.resendAfter,
    };

_LoginResponseModel _$LoginResponseModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_LoginResponseModel',
      json,
      ($checkedConvert) {
        final val = _LoginResponseModel(
          accessToken: $checkedConvert('access_token', (v) => v as String),
          refreshToken: $checkedConvert('refresh_token', (v) => v as String),
          profile: $checkedConvert(
            'profile',
            (v) => UserProfileModel.fromJson(v as Map<String, dynamic>),
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'accessToken': 'access_token',
        'refreshToken': 'refresh_token',
      },
    );

Map<String, dynamic> _$LoginResponseModelToJson(_LoginResponseModel instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
      'profile': instance.profile.toJson(),
    };
