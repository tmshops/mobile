// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promotion_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PromotionModel _$PromotionModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_PromotionModel',
      json,
      ($checkedConvert) {
        final val = _PromotionModel(
          slug: $checkedConvert('slug', (v) => v as String),
          type: $checkedConvert('type', (v) => v as String),
          title: $checkedConvert('title', (v) => v as String),
          subtitle: $checkedConvert('subtitle', (v) => v as String),
          imageUrl: $checkedConvert('image_url', (v) => v as String),
          endsAt: $checkedConvert(
            'ends_at',
            (v) => DateTime.parse(v as String),
          ),
        );
        return val;
      },
      fieldKeyMap: const {'imageUrl': 'image_url', 'endsAt': 'ends_at'},
    );

Map<String, dynamic> _$PromotionModelToJson(_PromotionModel instance) =>
    <String, dynamic>{
      'slug': instance.slug,
      'type': instance.type,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'image_url': instance.imageUrl,
      'ends_at': instance.endsAt.toIso8601String(),
    };

_PromotionDetailsModel _$PromotionDetailsModelFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  '_PromotionDetailsModel',
  json,
  ($checkedConvert) {
    final val = _PromotionDetailsModel(
      slug: $checkedConvert('slug', (v) => v as String),
      type: $checkedConvert('type', (v) => v as String),
      title: $checkedConvert('title', (v) => v as String),
      subtitle: $checkedConvert('subtitle', (v) => v as String),
      imageUrl: $checkedConvert('image_url', (v) => v as String),
      endsAt: $checkedConvert('ends_at', (v) => DateTime.parse(v as String)),
      conditions: $checkedConvert(
        'conditions',
        (v) =>
            (v as List<dynamic>?)
                ?.map((e) => ConditionModel.fromJson(e as Map<String, dynamic>))
                .toList() ??
            const <ConditionModel>[],
      ),
      promoCode: $checkedConvert('promo_code', (v) => v as String?),
      isEnded: $checkedConvert('is_ended', (v) => v as bool? ?? false),
    );
    return val;
  },
  fieldKeyMap: const {
    'imageUrl': 'image_url',
    'endsAt': 'ends_at',
    'promoCode': 'promo_code',
    'isEnded': 'is_ended',
  },
);

Map<String, dynamic> _$PromotionDetailsModelToJson(
  _PromotionDetailsModel instance,
) => <String, dynamic>{
  'slug': instance.slug,
  'type': instance.type,
  'title': instance.title,
  'subtitle': instance.subtitle,
  'image_url': instance.imageUrl,
  'ends_at': instance.endsAt.toIso8601String(),
  'conditions': instance.conditions.map((e) => e.toJson()).toList(),
  'promo_code': instance.promoCode,
  'is_ended': instance.isEnded,
};

_ConditionModel _$ConditionModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_ConditionModel', json, ($checkedConvert) {
      final val = _ConditionModel(
        kind: $checkedConvert('kind', (v) => v as String),
        text: $checkedConvert('text', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$ConditionModelToJson(_ConditionModel instance) =>
    <String, dynamic>{'kind': instance.kind, 'text': instance.text};
