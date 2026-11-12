import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/promotion.dart';

part 'promotion_models.freezed.dart';
part 'promotion_models.g.dart';

/// One item of GET /promotions, and the base of a promotion's page.
@freezed
abstract class PromotionModel with _$PromotionModel {
  const factory PromotionModel({
    required String slug,

    /// discount, day_deal, bundle, free_delivery; others get a plain badge.
    required String type,
    required String title,
    required String subtitle,
    required String imageUrl,
    required DateTime endsAt,
  }) = _PromotionModel;

  factory PromotionModel.fromJson(Map<String, dynamic> json) =>
      _$PromotionModelFromJson(json);
}

/// GET /promotions/{slug}.
@freezed
abstract class PromotionDetailsModel with _$PromotionDetailsModel {
  const factory PromotionDetailsModel({
    required String slug,
    required String type,
    required String title,
    required String subtitle,
    required String imageUrl,
    required DateTime endsAt,
    @Default(<ConditionModel>[]) List<ConditionModel> conditions,
    String? promoCode,
    @Default(false) bool isEnded,
  }) = _PromotionDetailsModel;

  factory PromotionDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$PromotionDetailsModelFromJson(json);
}

@freezed
abstract class ConditionModel with _$ConditionModel {
  const factory ConditionModel({required String kind, required String text}) =
      _ConditionModel;

  factory ConditionModel.fromJson(Map<String, dynamic> json) =>
      _$ConditionModelFromJson(json);
}

PromotionType _typeOf(String type) => switch (type) {
  'discount' => PromotionType.discount,
  'day_deal' => PromotionType.dayDeal,
  'bundle' => PromotionType.bundle,
  'free_delivery' => PromotionType.freeDelivery,
  _ => PromotionType.other,
};

extension PromotionModelX on PromotionModel {
  Promotion toEntity() => Promotion(
    slug: slug,
    type: _typeOf(type),
    title: title,
    subtitle: subtitle,
    imageUrl: imageUrl,
    endsAt: endsAt.toLocal(),
  );
}

extension PromotionDetailsModelX on PromotionDetailsModel {
  PromotionDetails toEntity() => PromotionDetails(
    promotion: Promotion(
      slug: slug,
      type: _typeOf(type),
      title: title,
      subtitle: subtitle,
      imageUrl: imageUrl,
      endsAt: endsAt.toLocal(),
    ),
    conditions: [
      for (final c in conditions)
        PromoCondition(
          kind: switch (c.kind) {
            'amount' => ConditionKind.amount,
            'until' => ConditionKind.until,
            'scope' => ConditionKind.scope,
            'combinable' => ConditionKind.combinable,
            _ => ConditionKind.other,
          },
          text: c.text,
        ),
    ],
    promoCode: promoCode,
    isEnded: isEnded,
  );
}
