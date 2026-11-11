import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_link.freezed.dart';

/// Where a banner or «Все →» leads (TZ §5.3).
@freezed
sealed class HomeLink with _$HomeLink {
  const factory HomeLink.product(String id) = ProductLink;
  const factory HomeLink.category(String slug) = CategoryLink;
  const factory HomeLink.promo(String id) = PromoLink;
  const factory HomeLink.collection(String id) = CollectionLink;
  const factory HomeLink.external(Uri uri) = ExternalLink;
}
