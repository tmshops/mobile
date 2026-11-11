import 'package:flutter/material.dart';

import '../../../../core/theme/theme.dart';
import '../../../../core/widgets/widgets.dart';
import 'kit_samples.dart';
import 'kit_section.dart';

/// Prices, tiles, carousel, banner and countdown.
class KitProductSection extends StatefulWidget {
  const KitProductSection({super.key});

  @override
  State<KitProductSection> createState() => _KitProductSectionState();
}

class _KitProductSectionState extends State<KitProductSection> {
  static const _dealLength = Duration(hours: 5, minutes: 12);
  static const _promoLength = Duration(days: 2, hours: 4);

  final Set<int> _favourites = {1};
  late final DateTime _dealEnds = DateTime.now().add(_dealLength);
  late final DateTime _promoEnds = DateTime.now().add(_promoLength);

  void _toggle(int i) => setState(
    () => _favourites.contains(i) ? _favourites.remove(i) : _favourites.add(i),
  );

  Widget _tile(BuildContext context, int i, {bool isCompact = false}) {
    final s = KitSamples.of(context);
    const prices = [216, 1216, 489, 340, 159, 2450];
    const oldPrices = [260, null, 650, null, 199, null];
    return ProductTile(
      imageUrl: KitSamples.image(i),
      title: s.titles[i % s.titles.length],
      price: prices[i % prices.length],
      oldPrice: oldPrices[i % oldPrices.length],
      badges: [
        if (i == 0) const ProductBadge.hit(),
        if (oldPrices[i % oldPrices.length] case final old?)
          ProductBadge.discount(
            ((old - prices[i % prices.length]) * 100 / old).round(),
          ),
        if (i == 3) const ProductBadge.newArrival(),
      ],
      soldCount: const [1250, 87, 15400, 3, 999950, 640][i % 6],
      isFavourite: _favourites.contains(i),
      onFavouriteToggle: () => _toggle(i),
      isIllustration: i == 3,
      isCompact: isCompact,
      onTap: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    final s = KitSamples.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const KitSection(
          title: 'PriceTag · S / M / L',
          children: [
            PriceTag(price: 216, oldPrice: 260, size: PriceTagSize.s),
            PriceTag(price: 1216, oldPrice: 1620),
            PriceTag(price: 12160, oldPrice: 16200, size: PriceTagSize.l),
            PriceTag(price: 489),
          ],
        ),
        KitSection(
          title: 'ProductTile · 2-column grid',
          children: [
            // Rows instead of a fixed-extent grid so tiles grow with text
            // scale in the preview.
            for (var row = 0; row < 2; row++)
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: _tile(context, row * 2)),
                  const SizedBox(width: AppSpacing.x12),
                  Expanded(child: _tile(context, row * 2 + 1)),
                ],
              ),
          ],
        ),
        KitSection(
          title: 'ProductListRow · list view',
          children: [
            for (var i = 0; i < 2; i++)
              ProductListRow(
                imageUrl: KitSamples.image(i + 4),
                title: s.titles[i + 2],
                price: const [489, 1390][i],
                oldPrice: const [650, null][i],
                soldCount: const [15400, 87][i],
                badges: [if (i == 0) const ProductBadge.discount(25)],
                isIllustration: i == 1,
                onTap: () {},
              ),
          ],
        ),
        KitSection(
          title: 'ProductCarousel + CountdownTimer',
          isPadded: false,
          children: [
            ProductCarousel(
              title: s.dailyDeals,
              headerTrailing: CountdownTimer(endsAt: _dealEnds),
              itemCount: 6,
              onSeeAll: () {},
              itemBuilder: (context, i) => _tile(context, i, isCompact: true),
            ),
            ProductCarousel(
              title: s.hits,
              itemCount: 6,
              onSeeAll: () {},
              itemBuilder: (context, i) =>
                  _tile(context, i + 2, isCompact: true),
            ),
          ],
        ),
        KitSection(
          title: 'PromoBannerCarousel',
          isPadded: false,
          children: [
            PromoBannerCarousel(
              items: [
                for (var i = 0; i < 4; i++)
                  PromoBannerItem(
                    imageUrl: 'https://picsum.photos/seed/banner$i/1200/600',
                    semanticLabel: s.banner,
                    onTap: () {},
                  ),
              ],
            ),
          ],
        ),
        KitSection(
          title: 'CountdownTimer · > 1 day / payment deadline',
          children: [
            Wrap(
              spacing: AppSpacing.x8,
              runSpacing: AppSpacing.x8,
              children: [
                CountdownTimer(endsAt: _promoEnds),
                CountdownTimer(endsAt: _dealEnds, tone: StatusTone.warning),
              ],
            ),
          ],
        ),
        KitSection(
          title: 'Badges',
          children: [
            Wrap(
              spacing: AppSpacing.x8,
              children: const [
                ProductBadge.hit(),
                ProductBadge.discount(25),
                ProductBadge.newArrival(),
                IllustrationMarker(),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
