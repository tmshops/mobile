import 'package:flutter/material.dart';

import '../../../../core/theme/theme.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/home_link.dart';
import '../../domain/entities/home_section.dart';
import '../../../../core/product/domain/product_summary.dart';
import '../home_destination.dart';
import 'category_shortcuts.dart';
import '../../../../core/product/presentation/product_summary_tile.dart';
import 'how_we_work_card.dart';
import 'paste_link_card.dart';
import 'video_stories_strip.dart';

/// Renders one server-driven section, with the 24-dp gap above it.
class HomeSectionView extends StatelessWidget {
  const HomeSectionView({
    required this.section,
    required this.onNavigate,
    required this.onDealsExpired,
    this.isFirst = false,
    super.key,
  });

  final HomeSection section;
  final HomeNavigator onNavigate;

  /// «Скидки дня» timer reached zero: Home reloads to get the next deals.
  final VoidCallback onDealsExpired;
  final bool isFirst;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: isFirst ? AppSpacing.x8 : AppSpacing.section,
      ),
      child: switch (section) {
        VideoStoriesSection(:final stories) => VideoStoriesStrip(
          stories: stories,
          onOpen: (s) => onNavigate(HomeDestination.videoFeed(s.id)),
        ),
        BannersSection(:final banners) => PromoBannerCarousel(
          items: [
            for (final banner in banners)
              PromoBannerItem(
                imageUrl: banner.imageUrl,
                semanticLabel: banner.title,
                onTap: switch (banner.link) {
                  final link? => () => onNavigate(HomeDestination.link(link)),
                  null => null,
                },
              ),
          ],
        ),
        PasteLinkSection(:final sources) => PasteLinkCard(
          sources: sources,
          onTap: () => onNavigate(const HomeDestination.pasteLink()),
        ),
        DailyDealsSection(
          :final title,
          :final endsAt,
          :final products,
          :final seeAll,
        ) =>
          _Carousel(
            title: title,
            products: products,
            onNavigate: onNavigate,
            seeAll: seeAll == null
                ? null
                : () => onNavigate(HomeDestination.link(seeAll)),
            headerTrailing: CountdownTimer(
              endsAt: endsAt,
              onFinished: onDealsExpired,
            ),
          ),
        CategoriesSection(:final title, :final categories) => CategoryShortcuts(
          title: title,
          categories: categories,
          onCategory: (c) => onNavigate(HomeDestination.category(c.slug)),
          onAll: () => onNavigate(const HomeDestination.allCategories()),
        ),
        ProductsSection(:final title, :final products, :final seeAll) =>
          _Carousel(
            title: title,
            products: products,
            onNavigate: onNavigate,
            seeAll: switch (seeAll) {
              null => null,
              CollectionLink(:final id) => () => onNavigate(
                HomeDestination.collection(id, title),
              ),
              final link => () => onNavigate(HomeDestination.link(link)),
            },
          ),
        final HowWeWorkSection section => HowWeWorkCard(section: section),
      },
    );
  }
}

class _Carousel extends StatelessWidget {
  const _Carousel({
    required this.title,
    required this.products,
    required this.onNavigate,
    required this.seeAll,
    this.headerTrailing,
  });

  final String title;
  final List<ProductSummary> products;
  final HomeNavigator onNavigate;
  final VoidCallback? seeAll;
  final Widget? headerTrailing;

  @override
  Widget build(BuildContext context) {
    return ProductCarousel(
      title: title,
      headerTrailing: headerTrailing,
      onSeeAll: seeAll,
      itemCount: products.length,
      itemBuilder: (context, i) => ProductSummaryTile(
        product: products[i],
        isCompact: true,
        onTap: () => onNavigate(
          HomeDestination.product(products[i].id, preview: products[i]),
        ),
      ),
    );
  }
}
