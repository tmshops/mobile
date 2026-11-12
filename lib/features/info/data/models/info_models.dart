import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/info.dart';

part 'info_models.freezed.dart';
part 'info_models.g.dart';

/// GET /info/{about|returns|offer|privacy}.
@freezed
abstract class InfoArticleModel with _$InfoArticleModel {
  const factory InfoArticleModel({
    required String title,
    required String html,
  }) = _InfoArticleModel;

  factory InfoArticleModel.fromJson(Map<String, dynamic> json) =>
      _$InfoArticleModelFromJson(json);
}

/// GET /info/delivery.
@freezed
abstract class DeliveryTermsModel with _$DeliveryTermsModel {
  const factory DeliveryTermsModel({
    required List<DeliveryTypeModel> types,
    required List<RegionTariffModel> tariffs,
    required String html,
  }) = _DeliveryTermsModel;

  factory DeliveryTermsModel.fromJson(Map<String, dynamic> json) =>
      _$DeliveryTermsModelFromJson(json);
}

@freezed
abstract class DeliveryTypeModel with _$DeliveryTypeModel {
  const factory DeliveryTypeModel({
    required String type,
    required String name,
    required String term,
    required String minWeight,
  }) = _DeliveryTypeModel;

  factory DeliveryTypeModel.fromJson(Map<String, dynamic> json) =>
      _$DeliveryTypeModelFromJson(json);
}

@freezed
abstract class RegionTariffModel with _$RegionTariffModel {
  const factory RegionTariffModel({
    required String region,
    required Map<String, int> perKg,
  }) = _RegionTariffModel;

  factory RegionTariffModel.fromJson(Map<String, dynamic> json) =>
      _$RegionTariffModelFromJson(json);
}

/// GET /info/faq.
@freezed
abstract class FaqModel with _$FaqModel {
  const factory FaqModel({required List<FaqSectionModel> sections}) = _FaqModel;

  factory FaqModel.fromJson(Map<String, dynamic> json) =>
      _$FaqModelFromJson(json);
}

@freezed
abstract class FaqSectionModel with _$FaqSectionModel {
  const factory FaqSectionModel({
    required String title,
    required List<FaqItemModel> items,
  }) = _FaqSectionModel;

  factory FaqSectionModel.fromJson(Map<String, dynamic> json) =>
      _$FaqSectionModelFromJson(json);
}

@freezed
abstract class FaqItemModel with _$FaqItemModel {
  const factory FaqItemModel({
    required String id,
    required String question,
    required String answer,
  }) = _FaqItemModel;

  factory FaqItemModel.fromJson(Map<String, dynamic> json) =>
      _$FaqItemModelFromJson(json);
}

/// GET /info/pickup-points.
@freezed
abstract class PickupPointsModel with _$PickupPointsModel {
  const factory PickupPointsModel({required List<PickupPointModel> points}) =
      _PickupPointsModel;

  factory PickupPointsModel.fromJson(Map<String, dynamic> json) =>
      _$PickupPointsModelFromJson(json);
}

@freezed
abstract class PickupPointModel with _$PickupPointModel {
  const factory PickupPointModel({
    required String id,
    required String region,
    required String name,
    required String address,
    required String hours,
    required String phone,
  }) = _PickupPointModel;

  factory PickupPointModel.fromJson(Map<String, dynamic> json) =>
      _$PickupPointModelFromJson(json);
}

/// GET /info/contacts.
@freezed
abstract class ContactsModel with _$ContactsModel {
  const factory ContactsModel({
    required List<String> phones,
    required String address,
    required String hours,
    String? telegram,
    String? whatsapp,
    String? email,
  }) = _ContactsModel;

  factory ContactsModel.fromJson(Map<String, dynamic> json) =>
      _$ContactsModelFromJson(json);
}

extension InfoArticleModelX on InfoArticleModel {
  InfoArticle toEntity() => InfoArticle(title: title, html: html);
}

extension DeliveryTermsModelX on DeliveryTermsModel {
  DeliveryTerms toEntity() => DeliveryTerms(
    types: [
      for (final t in types)
        DeliveryTypeTerm(
          code: t.type,
          kind: switch (t.type) {
            'express' => DeliveryKind.express,
            'air' => DeliveryKind.air,
            'truck' => DeliveryKind.truck,
            _ => DeliveryKind.other,
          },
          name: t.name,
          term: t.term,
          minWeight: t.minWeight,
        ),
    ],
    tariffs: [
      for (final r in tariffs) RegionTariff(region: r.region, perKg: r.perKg),
    ],
    html: html,
  );
}

extension FaqModelX on FaqModel {
  List<FaqSection> toEntity() => [
    for (final s in sections)
      FaqSection(
        title: s.title,
        items: [
          for (final i in s.items)
            FaqItem(id: i.id, question: i.question, answer: i.answer),
        ],
      ),
  ];
}

extension PickupPointsModelX on PickupPointsModel {
  List<PickupPointInfo> toEntity() => [
    for (final p in points)
      PickupPointInfo(
        id: p.id,
        region: p.region,
        name: p.name,
        address: p.address,
        hours: p.hours,
        phone: p.phone,
      ),
  ];
}

extension ContactsModelX on ContactsModel {
  StoreContacts toEntity() => StoreContacts(
    phones: phones,
    address: address,
    hours: hours,
    telegram: telegram,
    whatsapp: whatsapp,
    email: email,
  );
}
