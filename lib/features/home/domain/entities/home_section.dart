import 'package:freezed_annotation/freezed_annotation.dart';

import 'home_link.dart';
import '../../../../core/product/domain/product_summary.dart';

part 'home_section.freezed.dart';

/// One server-driven Home block (TZ §5.3). Order and content come from the
/// server; types this app version does not know are dropped in the data
/// layer and never reach here.
@freezed
sealed class HomeSection with _$HomeSection {
  /// Entry into the full-screen video feed.
  const factory HomeSection.videoStories({required List<VideoStory> stories}) =
      VideoStoriesSection;

  const factory HomeSection.banners({required List<HomeBanner> banners}) =
      BannersSection;

  /// «Вставьте ссылку» card. [sources] are marketplace names for the hint.
  const factory HomeSection.pasteLink({required List<String> sources}) =
      PasteLinkSection;

  /// «Скидки дня». [endsAt] is already shifted to the device clock.
  const factory HomeSection.dailyDeals({
    required String title,
    required DateTime endsAt,
    required List<ProductSummary> products,
    HomeLink? seeAll,
  }) = DailyDealsSection;

  const factory HomeSection.categories({
    required String title,
    required List<CategoryShortcut> categories,
  }) = CategoriesSection;

  /// «Хиты», «Новинки», «Рекомендуем», «Вы смотрели».
  const factory HomeSection.products({
    required String id,
    required String title,
    required List<ProductSummary> products,
    HomeLink? seeAll,
  }) = ProductsSection;

  /// «Как мы работаем».
  const factory HomeSection.howWeWork({
    required String title,
    required List<String> steps,
    required List<DeliveryTerm> delivery,
  }) = HowWeWorkSection;
}

@freezed
abstract class VideoStory with _$VideoStory {
  const factory VideoStory({
    required String id,
    required String title,
    required String posterUrl,
    @Default(false) bool isViewed,
  }) = _VideoStory;
}

@freezed
abstract class HomeBanner with _$HomeBanner {
  const factory HomeBanner({
    required String id,
    required String imageUrl,

    /// Read by screen readers; banners are images with text baked in.
    required String title,
    HomeLink? link,
  }) = _HomeBanner;
}

@freezed
abstract class CategoryShortcut with _$CategoryShortcut {
  const factory CategoryShortcut({
    required String slug,
    required String name,
    required String iconUrl,
  }) = _CategoryShortcut;
}

enum DeliveryKind { air, express, truck }

@freezed
abstract class DeliveryTerm with _$DeliveryTerm {
  const factory DeliveryTerm({
    required DeliveryKind kind,
    required String name,

    /// Server text, e.g. «2–3 недели».
    required String term,
  }) = _DeliveryTerm;
}
