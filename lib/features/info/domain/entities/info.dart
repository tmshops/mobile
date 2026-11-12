import 'package:freezed_annotation/freezed_annotation.dart';

part 'info.freezed.dart';

/// The pages of «Информация» (TZ §5.19), in menu order. [slug] is both
/// the API path (GET /info/{slug}) and the app route.
enum InfoTopic {
  about('about'),
  delivery('delivery'),
  pickupPoints('pickup-points'),
  returns('returns'),
  faq('faq'),
  contacts('contacts'),
  offer('offer'),
  privacy('privacy');

  const InfoTopic(this.slug);

  final String slug;

  static InfoTopic? fromSlug(String slug) =>
      values.where((t) => t.slug == slug).firstOrNull;

  /// Plain HTML pages; the others have their own layout.
  bool get isArticle => switch (this) {
    about || returns || offer || privacy => true,
    delivery || pickupPoints || faq || contacts => false,
  };
}

/// A server-written page: «О нас», «Возврат», «Оферта», «Политика».
@freezed
abstract class InfoArticle with _$InfoArticle {
  const factory InfoArticle({
    required String title,

    /// Sanitised on render: only safe tags are drawn.
    required String html,
  }) = _InfoArticle;
}

/// Picks the icon of a delivery type; unknown types get a plain one.
enum DeliveryKind { express, air, truck, other }

/// One way to deliver, as on checkout but without a price for a cart.
@freezed
abstract class DeliveryTypeTerm with _$DeliveryTypeTerm {
  const factory DeliveryTypeTerm({
    /// API code, the key of [RegionTariff.perKg].
    required String code,
    required DeliveryKind kind,
    required String name,

    /// «7–10 дней».
    required String term,

    /// «от 1 кг», «от 5 кг».
    required String minWeight,
  }) = _DeliveryTypeTerm;
}

/// A row of the tariff table: price per kg of each type in one region.
@freezed
abstract class RegionTariff with _$RegionTariff {
  const factory RegionTariff({
    required String region,

    /// Type code → TMT per kg. A missing type is not delivered there.
    required Map<String, int> perKg,
  }) = _RegionTariff;
}

/// «Доставка и оплата»: delivery types, tariffs and the payment rules.
@freezed
abstract class DeliveryTerms with _$DeliveryTerms {
  const factory DeliveryTerms({
    required List<DeliveryTypeTerm> types,
    required List<RegionTariff> tariffs,

    /// Payment methods and conditions, written on the server.
    required String html,
  }) = _DeliveryTerms;

  const DeliveryTerms._();

  /// The cheapest price per kg of [code] over all regions, for «от 18 TMT
  /// за кг»; `null` when no region has that type.
  int? lowestPerKg(String code) {
    int? lowest;
    for (final tariff in tariffs) {
      final price = tariff.perKg[code];
      if (price != null && (lowest == null || price < lowest)) lowest = price;
    }
    return lowest;
  }
}

@freezed
abstract class FaqItem with _$FaqItem {
  const factory FaqItem({
    required String id,
    required String question,

    /// HTML.
    required String answer,
  }) = _FaqItem;
}

@freezed
abstract class FaqSection with _$FaqSection {
  const factory FaqSection({
    required String title,
    required List<FaqItem> items,
  }) = _FaqSection;
}

/// Sections with only the questions that match [query] (case-insensitive,
/// in the question or the answer text); empty sections are dropped.
List<FaqSection> searchFaq(List<FaqSection> sections, String query) {
  final needle = query.trim().toLowerCase();
  if (needle.isEmpty) return sections;
  bool matches(FaqItem item) =>
      item.question.toLowerCase().contains(needle) ||
      _plainText(item.answer).toLowerCase().contains(needle);
  return [
    for (final s in sections)
      if (s.items.where(matches).toList() case final items
          when items.isNotEmpty)
        s.copyWith(items: items),
  ];
}

/// Tag names must not match a search for «p» or «strong».
String _plainText(String html) => html.replaceAll(RegExp('<[^>]*>'), ' ');

@freezed
abstract class PickupPointInfo with _$PickupPointInfo {
  const factory PickupPointInfo({
    required String id,
    required String region,
    required String name,
    required String address,
    required String hours,
    required String phone,
  }) = _PickupPointInfo;
}

/// «Контакты»: how to reach the store.
@freezed
abstract class StoreContacts with _$StoreContacts {
  const factory StoreContacts({
    required List<String> phones,
    required String address,
    required String hours,
    String? telegram,
    String? whatsapp,
    String? email,
  }) = _StoreContacts;
}

/// Points grouped by region, regions in the order they first appear.
List<(String region, List<PickupPointInfo> points)> pickupPointsByRegion(
  List<PickupPointInfo> points,
) {
  final groups = <String, List<PickupPointInfo>>{};
  for (final p in points) {
    groups.putIfAbsent(p.region, () => []).add(p);
  }
  return [for (final e in groups.entries) (e.key, e.value)];
}
