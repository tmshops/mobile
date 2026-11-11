import 'dart:async';

import 'package:flutter/material.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/utils/money_format.dart';
import '../../../../core/widgets/widgets.dart';
import 'kit_samples.dart';
import 'kit_section.dart';

/// Buttons in every state. Tap a button to see its loading state.
class KitButtonsSection extends StatefulWidget {
  const KitButtonsSection({super.key});

  @override
  State<KitButtonsSection> createState() => _KitButtonsSectionState();
}

class _KitButtonsSectionState extends State<KitButtonsSection> {
  static const _fakeRequest = Duration(seconds: 2);

  String? _loadingId;
  bool _isLiked = false;
  bool _isFavourite = true;

  void _simulate(String id) {
    setState(() => _loadingId = id);
    Timer(_fakeRequest, () {
      if (mounted) setState(() => _loadingId = null);
    });
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final s = KitSamples.of(context);
    return KitSection(
      title: 'Buttons',
      children: [
        const KitLabel('Primary · default / loading on tap / disabled'),
        PrimaryButton(
          label: l10n.actionBuyNow,
          isLoading: _loadingId == 'p',
          onPressed: () => _simulate('p'),
        ),
        PrimaryButton(label: l10n.actionNext, onPressed: null),
        const KitLabel('Secondary · default / medium 44 / disabled'),
        SecondaryButton(
          label: l10n.actionAddToCart,
          icon: AppIcons.cart,
          isLoading: _loadingId == 's',
          onPressed: () => _simulate('s'),
        ),
        SecondaryButton(
          label: l10n.actionAddToCart,
          size: AppButtonSize.medium,
          onPressed: () {},
        ),
        SecondaryButton(label: l10n.actionAddToCart, onPressed: null),
        const KitLabel('Tertiary · brand / neutral / danger / disabled'),
        Wrap(
          children: [
            TertiaryButton(label: s.quickOrder, onPressed: () {}),
            TertiaryButton(
              label: l10n.actionCancel,
              tone: TertiaryTone.neutral,
              onPressed: () {},
            ),
            TertiaryButton(
              label: l10n.actionRemove,
              tone: TertiaryTone.danger,
              onPressed: () {},
            ),
            TertiaryButton(label: l10n.actionRetry, onPressed: null),
          ],
        ),
        const KitLabel('IconCircleButton · dark (video) / light (photo)'),
        _IconCircles(
          isLiked: _isLiked,
          isFavourite: _isFavourite,
          onLike: () => setState(() => _isLiked = !_isLiked),
          onFavourite: () => setState(() => _isFavourite = !_isFavourite),
        ),
      ],
    );
  }
}

class _IconCircles extends StatelessWidget {
  const _IconCircles({
    required this.isLiked,
    required this.isFavourite,
    required this.onLike,
    required this.onFavourite,
  });

  final bool isLiked;
  final bool isFavourite;
  final VoidCallback onLike;
  final VoidCallback onFavourite;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final l10n = context.l10n;
    return Container(
      padding: AppSpacing.cardPadding,
      decoration: BoxDecoration(
        color: c.surface,
        borderRadius: AppRadii.cardBorder,
      ),
      child: Wrap(
        spacing: AppSpacing.x16,
        crossAxisAlignment: WrapCrossAlignment.start,
        children: [
          IconCircleButton(
            icon: AppIcons.heart,
            activeIcon: AppIcons.heartFilled,
            activeColor: c.danger,
            isActive: isLiked,
            count: MoneyFormat.compact(l10n, isLiked ? 1251 : 1250),
            semanticLabel: l10n.favouriteAdd,
            onPressed: onLike,
          ),
          IconCircleButton(
            icon: AppIcons.share,
            semanticLabel: l10n.actionShare,
            onPressed: () {},
          ),
          IconCircleButton(
            icon: AppIcons.heart,
            activeIcon: AppIcons.heartFilled,
            activeColor: c.danger,
            isActive: isFavourite,
            style: IconCircleStyle.light,
            semanticLabel: isFavourite
                ? l10n.favouriteRemove
                : l10n.favouriteAdd,
            onPressed: onFavourite,
          ),
          IconCircleButton(
            icon: AppIcons.share,
            style: IconCircleStyle.light,
            semanticLabel: l10n.actionShare,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
