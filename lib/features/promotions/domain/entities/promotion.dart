import 'package:freezed_annotation/freezed_annotation.dart';

part 'promotion.freezed.dart';

/// Decides the badge: «Скидка», «Скидка дня», «2+1», «Бесплатная доставка».
enum PromotionType { discount, dayDeal, bundle, freeDelivery, other }

/// A running promotion as a list card (UI_DESIGN §7.16).
@freezed
abstract class Promotion with _$Promotion {
  const factory Promotion({
    required String slug,
    required PromotionType type,

    /// Server texts in the request language.
    required String title,
    required String subtitle,

    /// 2:1 banner.
    required String imageUrl,

    /// Already on the device clock.
    required DateTime endsAt,
  }) = _Promotion;
}

/// What a condition row is about, for its icon.
enum ConditionKind { amount, until, scope, combinable, other }

@freezed
abstract class PromoCondition with _$PromoCondition {
  const factory PromoCondition({
    required ConditionKind kind,

    /// Server text, e.g. «Не суммируется с другими промокодами».
    required String text,
  }) = _PromoCondition;
}

/// A promotion's page: the card plus conditions and an optional code.
@freezed
abstract class PromotionDetails with _$PromotionDetails {
  const factory PromotionDetails({
    required Promotion promotion,
    @Default(<PromoCondition>[]) List<PromoCondition> conditions,
    String? promoCode,

    /// Opened from an old link: the page says it is over.
    @Default(false) bool isEnded,
  }) = _PromotionDetails;
}
