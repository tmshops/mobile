// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'info_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InfoArticleModel _$InfoArticleModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_InfoArticleModel', json, ($checkedConvert) {
      final val = _InfoArticleModel(
        title: $checkedConvert('title', (v) => v as String),
        html: $checkedConvert('html', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$InfoArticleModelToJson(_InfoArticleModel instance) =>
    <String, dynamic>{'title': instance.title, 'html': instance.html};

_DeliveryTermsModel _$DeliveryTermsModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_DeliveryTermsModel', json, ($checkedConvert) {
      final val = _DeliveryTermsModel(
        types: $checkedConvert(
          'types',
          (v) => (v as List<dynamic>)
              .map((e) => DeliveryTypeModel.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
        tariffs: $checkedConvert(
          'tariffs',
          (v) => (v as List<dynamic>)
              .map((e) => RegionTariffModel.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
        html: $checkedConvert('html', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$DeliveryTermsModelToJson(_DeliveryTermsModel instance) =>
    <String, dynamic>{
      'types': instance.types.map((e) => e.toJson()).toList(),
      'tariffs': instance.tariffs.map((e) => e.toJson()).toList(),
      'html': instance.html,
    };

_DeliveryTypeModel _$DeliveryTypeModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_DeliveryTypeModel', json, ($checkedConvert) {
      final val = _DeliveryTypeModel(
        type: $checkedConvert('type', (v) => v as String),
        name: $checkedConvert('name', (v) => v as String),
        term: $checkedConvert('term', (v) => v as String),
        minWeight: $checkedConvert('min_weight', (v) => v as String),
      );
      return val;
    }, fieldKeyMap: const {'minWeight': 'min_weight'});

Map<String, dynamic> _$DeliveryTypeModelToJson(_DeliveryTypeModel instance) =>
    <String, dynamic>{
      'type': instance.type,
      'name': instance.name,
      'term': instance.term,
      'min_weight': instance.minWeight,
    };

_RegionTariffModel _$RegionTariffModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_RegionTariffModel', json, ($checkedConvert) {
      final val = _RegionTariffModel(
        region: $checkedConvert('region', (v) => v as String),
        perKg: $checkedConvert(
          'per_kg',
          (v) => Map<String, int>.from(v as Map),
        ),
      );
      return val;
    }, fieldKeyMap: const {'perKg': 'per_kg'});

Map<String, dynamic> _$RegionTariffModelToJson(_RegionTariffModel instance) =>
    <String, dynamic>{'region': instance.region, 'per_kg': instance.perKg};

_FaqModel _$FaqModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_FaqModel', json, ($checkedConvert) {
      final val = _FaqModel(
        sections: $checkedConvert(
          'sections',
          (v) => (v as List<dynamic>)
              .map((e) => FaqSectionModel.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$FaqModelToJson(_FaqModel instance) => <String, dynamic>{
  'sections': instance.sections.map((e) => e.toJson()).toList(),
};

_FaqSectionModel _$FaqSectionModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_FaqSectionModel', json, ($checkedConvert) {
      final val = _FaqSectionModel(
        title: $checkedConvert('title', (v) => v as String),
        items: $checkedConvert(
          'items',
          (v) => (v as List<dynamic>)
              .map((e) => FaqItemModel.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$FaqSectionModelToJson(_FaqSectionModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'items': instance.items.map((e) => e.toJson()).toList(),
    };

_FaqItemModel _$FaqItemModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_FaqItemModel', json, ($checkedConvert) {
      final val = _FaqItemModel(
        id: $checkedConvert('id', (v) => v as String),
        question: $checkedConvert('question', (v) => v as String),
        answer: $checkedConvert('answer', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$FaqItemModelToJson(_FaqItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'question': instance.question,
      'answer': instance.answer,
    };

_PickupPointsModel _$PickupPointsModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_PickupPointsModel', json, ($checkedConvert) {
      final val = _PickupPointsModel(
        points: $checkedConvert(
          'points',
          (v) => (v as List<dynamic>)
              .map((e) => PickupPointModel.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$PickupPointsModelToJson(_PickupPointsModel instance) =>
    <String, dynamic>{
      'points': instance.points.map((e) => e.toJson()).toList(),
    };

_PickupPointModel _$PickupPointModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_PickupPointModel', json, ($checkedConvert) {
      final val = _PickupPointModel(
        id: $checkedConvert('id', (v) => v as String),
        region: $checkedConvert('region', (v) => v as String),
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
      'region': instance.region,
      'name': instance.name,
      'address': instance.address,
      'hours': instance.hours,
      'phone': instance.phone,
    };

_ContactsModel _$ContactsModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_ContactsModel', json, ($checkedConvert) {
      final val = _ContactsModel(
        phones: $checkedConvert(
          'phones',
          (v) => (v as List<dynamic>).map((e) => e as String).toList(),
        ),
        address: $checkedConvert('address', (v) => v as String),
        hours: $checkedConvert('hours', (v) => v as String),
        telegram: $checkedConvert('telegram', (v) => v as String?),
        whatsapp: $checkedConvert('whatsapp', (v) => v as String?),
        email: $checkedConvert('email', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$ContactsModelToJson(_ContactsModel instance) =>
    <String, dynamic>{
      'phones': instance.phones,
      'address': instance.address,
      'hours': instance.hours,
      'telegram': instance.telegram,
      'whatsapp': instance.whatsapp,
      'email': instance.email,
    };
