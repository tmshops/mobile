import '../../domain/entities/home_content.dart';
import '../../domain/entities/home_link.dart';
import '../../domain/entities/home_section.dart';
import '../../../../core/product/data/product_summary_model.dart';
import 'home_models.dart';

extension HomeResponseModelX on HomeResponseModel {
  /// [fetchedAt] is the device time when the response arrived. The gap to
  /// [HomeResponseModel.serverTime] shifts countdowns onto the device clock,
  /// so a wrong phone clock does not end «Скидки дня» early (TZ §5.3).
  HomeContent toEntity({
    required DateTime fetchedAt,
    bool isFromCache = false,
  }) {
    final clockOffset = serverTime.difference(fetchedAt);
    return HomeContent(
      fetchedAt: fetchedAt,
      isFromCache: isFromCache,
      sections: [
        for (final section in sections)
          ?section.toEntity(clockOffset: clockOffset),
      ],
    );
  }
}

extension HomeSectionModelX on HomeSectionModel {
  /// `null` for sections this version cannot show (unknown or empty).
  HomeSection? toEntity({required Duration clockOffset}) {
    final section = switch (this) {
      VideoStoriesSectionModel(:final stories) => HomeSection.videoStories(
        stories: [for (final s in stories) s.toEntity()],
      ),
      BannersSectionModel(:final banners) => HomeSection.banners(
        banners: [for (final b in banners) b.toEntity()],
      ),
      PasteLinkSectionModel(:final sources) => HomeSection.pasteLink(
        sources: sources,
      ),
      DailyDealsSectionModel(
        :final title,
        :final endsAt,
        :final products,
        :final seeAll,
      ) =>
        HomeSection.dailyDeals(
          title: title,
          endsAt: endsAt.toLocal().subtract(clockOffset),
          products: [for (final p in products) p.toEntity()],
          seeAll: seeAll?.toEntity(),
        ),
      CategoriesSectionModel(:final title, :final categories) =>
        HomeSection.categories(
          title: title,
          categories: [for (final c in categories) c.toEntity()],
        ),
      ProductsSectionModel(
        :final id,
        :final title,
        :final products,
        :final seeAll,
      ) =>
        HomeSection.products(
          id: id,
          title: title,
          products: [for (final p in products) p.toEntity()],
          seeAll: seeAll?.toEntity(),
        ),
      HowWeWorkSectionModel(:final title, :final steps, :final delivery) =>
        HomeSection.howWeWork(
          title: title,
          steps: steps,
          delivery: [for (final d in delivery) ?d.toEntity()],
        ),
      UnknownSectionModel() => null,
    };
    return section != null && section.hasContent ? section : null;
  }
}

extension on HomeSection {
  bool get hasContent => switch (this) {
    VideoStoriesSection(:final stories) => stories.isNotEmpty,
    BannersSection(:final banners) => banners.isNotEmpty,
    PasteLinkSection() => true,
    DailyDealsSection(:final products) => products.isNotEmpty,
    CategoriesSection(:final categories) => categories.isNotEmpty,
    ProductsSection(:final products) => products.isNotEmpty,
    HowWeWorkSection(:final steps) => steps.isNotEmpty,
  };
}

extension on VideoStoryModel {
  VideoStory toEntity() => VideoStory(
    id: id,
    title: title,
    posterUrl: posterUrl,
    isViewed: isViewed,
  );
}

extension on BannerModel {
  HomeBanner toEntity() => HomeBanner(
    id: id,
    imageUrl: imageUrl,
    title: title,
    link: link?.toEntity(),
  );
}

extension on CategoryShortcutModel {
  CategoryShortcut toEntity() =>
      CategoryShortcut(slug: slug, name: name, iconUrl: iconUrl);
}

extension on DeliveryTermModel {
  DeliveryTerm? toEntity() {
    final deliveryKind = switch (kind) {
      'air' => DeliveryKind.air,
      'express' => DeliveryKind.express,
      'truck' => DeliveryKind.truck,
      _ => null,
    };
    if (deliveryKind == null) return null;
    return DeliveryTerm(kind: deliveryKind, name: name, term: term);
  }
}

extension on LinkModel {
  /// Unknown link types become `null`: the banner shows but does nothing.
  HomeLink? toEntity() => switch (type) {
    'product' => HomeLink.product(value),
    'category' => HomeLink.category(value),
    'promo' => HomeLink.promo(value),
    'collection' => HomeLink.collection(value),
    'external' => switch (Uri.tryParse(value)) {
      final uri? when uri.hasScheme => HomeLink.external(uri),
      _ => null,
    },
    _ => null,
  };
}
