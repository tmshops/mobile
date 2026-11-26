import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/utils/money_format.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/product_details.dart';

/// «Как это работает»: the bought-to-order rules, folded by default.
class HowItWorksBlock extends StatelessWidget {
  const HowItWorksBlock({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final lines = [
      (AppIcons.statusBought, l10n.productHowBuy),
      (AppIcons.close, l10n.productHowCancel),
      (AppIcons.statusWarehouse, l10n.productHowWeight),
    ];
    return CollapsibleSection(
      title: l10n.productHowTitle,
      initiallyExpanded: false,
      child: Column(
        children: [
          for (final (icon, text) in lines)
            Padding(
              padding: const EdgeInsets.only(bottom: AppSpacing.x8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    icon,
                    size: AppSizes.iconDense,
                    color: context.colors.primary,
                  ),
                  const SizedBox(width: AppSpacing.x12),
                  Expanded(child: Text(text, style: context.text.body)),
                ],
              ),
            ),
        ],
      ),
    );
  }
}

/// Section heading used down the page.
class ProductSectionTitle extends StatelessWidget {
  const ProductSectionTitle(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.only(bottom: AppSpacing.x8),
    child: Semantics(header: true, child: Text(text, style: context.text.h2)),
  );
}

/// HTML description folded to ~300 dp with a fade and «Показать полностью»
/// (TZ §5.6.5). Only a whitelist of tags is drawn; scripts never run.
class DescriptionBlock extends StatefulWidget {
  const DescriptionBlock({required this.html, super.key});

  final String html;

  @override
  State<DescriptionBlock> createState() => _DescriptionBlockState();
}

class _DescriptionBlockState extends State<DescriptionBlock> {
  static const double _foldedHeight = 300;
  static const double _fadeHeight = 64;

  final _contentKey = GlobalKey();
  bool _isExpanded = false;
  bool _isLong = false;

  /// Images load later and grow the content: re-measure after layout.
  void _measure() {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      final height = _contentKey.currentContext?.size?.height ?? 0;
      final isLong = height > _foldedHeight;
      if (isLong != _isLong) setState(() => _isLong = isLong);
    });
  }

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    _measure();
    final content = NotificationListener<SizeChangedLayoutNotification>(
      onNotification: (_) {
        _measure();
        return true;
      },
      child: SizeChangedLayoutNotifier(
        child: KeyedSubtree(
          key: _contentKey,
          child: ServerHtml(html: widget.html),
        ),
      ),
    );
    final isFolded = _isLong && !_isExpanded;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProductSectionTitle(context.l10n.productDescription),
        if (!isFolded)
          content
        else
          SizedBox(
            height: _foldedHeight,
            child: Stack(
              children: [
                ClipRect(
                  child: OverflowBox(
                    alignment: Alignment.topCenter,
                    maxHeight: double.infinity,
                    child: content,
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  height: _fadeHeight,
                  child: IgnorePointer(
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            c.background.withValues(alpha: 0),
                            c.background,
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        if (_isLong)
          TertiaryButton(
            label: _isExpanded
                ? context.l10n.actionShowLess
                : context.l10n.productShowAll,
            onPressed: () => setState(() => _isExpanded = !_isExpanded),
          ),
      ],
    );
  }
}

/// Key–value table with zebra rows.
class SpecsTable extends StatelessWidget {
  const SpecsTable({required this.specs, super.key});

  final List<SpecRow> specs;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ProductSectionTitle(context.l10n.productSpecs),
        ClipRRect(
          borderRadius: AppRadii.imageBorder,
          child: Column(
            children: [
              for (final (i, row) in specs.indexed)
                ColoredBox(
                  color: i.isEven ? c.surface : c.background,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppSpacing.x12,
                      vertical: AppSpacing.x8,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(
                            row.name,
                            style: context.text.caption.copyWith(
                              color: c.inkSecondary,
                            ),
                          ),
                        ),
                        const SizedBox(width: AppSpacing.x12),
                        Expanded(
                          child: Text(row.value, style: context.text.body),
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}

/// Seller card: marketplace, rating, sales, «Все товары продавца».
class SellerCard extends StatelessWidget {
  const SellerCard({
    required this.seller,
    required this.onAllProducts,
    super.key,
  });

  final Seller seller;

  /// `null` hides «Все товары»: the seller has no list of their own.
  final VoidCallback? onAllProducts;

  static const double _avatar = 44;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final l10n = context.l10n;
    final rating = seller.rating;
    final sales = seller.salesCount;
    final initial = seller.name.isEmpty ? '' : seller.name.characters.first;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ProductSectionTitle(l10n.productSeller),
        DecoratedBox(
          decoration: BoxDecoration(
            color: c.surface,
            borderRadius: AppRadii.cardBorder,
          ),
          child: Padding(
            padding: AppSpacing.cardPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: _avatar,
                      height: _avatar,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: c.primarySoft,
                        shape: BoxShape.circle,
                      ),
                      child: Text(
                        initial,
                        style: context.text.h3.copyWith(
                          color: c.primaryPressed,
                        ),
                      ),
                    ),
                    const SizedBox(width: AppSpacing.x12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(seller.name, style: context.text.bodyStrong),
                          const SizedBox(height: AppSpacing.x2),
                          Wrap(
                            spacing: AppSpacing.x8,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              SmallPill(
                                label: seller.source,
                                background: c.background,
                                foreground: c.ink,
                              ),
                              if (rating != null && sales != null)
                                Text(
                                  l10n.productSellerStats(
                                    RatingStars.format(rating),
                                    MoneyFormat.compact(l10n, sales),
                                  ),
                                  style: context.text.caption.copyWith(
                                    color: c.inkSecondary,
                                  ),
                                ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                if (onAllProducts case final onAll?)
                  TertiaryButton(
                    label: l10n.productSellerAll,
                    onPressed: onAll,
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
