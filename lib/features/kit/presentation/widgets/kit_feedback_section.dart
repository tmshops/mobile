import 'package:flutter/material.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/widgets/widgets.dart';
import 'kit_samples.dart';
import 'kit_section.dart';

/// Skeletons, empty / error / offline states, toast and bottom sheet.
class KitFeedbackSection extends StatelessWidget {
  const KitFeedbackSection({super.key});

  static const double _serviceHeight = 440;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final s = KitSamples.of(context);
    return KitSection(
      title: 'Loading · Empty · Error · Service · Offline · Toast · Sheet',
      children: [
        const Row(
          children: [
            Expanded(child: SkeletonTile()),
            SizedBox(width: AppSpacing.x12),
            Expanded(child: SkeletonTile()),
          ],
        ),
        const SkeletonList(itemCount: 2),
        EmptyState(
          icon: AppIcons.cart,
          title: s.emptyTitle,
          message: s.emptyText,
          actionLabel: l10n.actionGoToCatalog,
          onAction: () {},
        ),
        ErrorState(onRetry: () {}),
        // ServiceView scrolls on its own, so it gets a bounded box here.
        SizedBox(
          height: _serviceHeight,
          child: ServiceView(
            icon: AppIcons.maintenance,
            title: l10n.serviceMaintenanceTitle,
            message: l10n.serviceMaintenanceText,
            actionLabel: l10n.serviceMaintenanceAction,
            actionIcon: AppIcons.retry,
            onAction: () {},
          ),
        ),
        const ClipRRect(
          borderRadius: AppRadii.imageBorder,
          child: OfflineBanner(),
        ),
        SecondaryButton(
          label: 'Show toast',
          onPressed: () => showAppToast(
            context,
            message: s.toast,
            icon: AppIcons.checkCircle,
            actionLabel: l10n.actionUndo,
            onAction: () {},
          ),
        ),
        SecondaryButton(
          label: 'Open bottom sheet',
          onPressed: () => showAppBottomSheet<void>(
            context: context,
            builder: (_) => const _DemoSheet(),
          ),
        ),
      ],
    );
  }
}

class _DemoSheet extends StatefulWidget {
  const _DemoSheet();

  @override
  State<_DemoSheet> createState() => _DemoSheetState();
}

class _DemoSheetState extends State<_DemoSheet> {
  int _quantity = 1;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final s = KitSamples.of(context);
    return AppBottomSheet(
      title: s.sheetTitle,
      action: PrimaryButton(
        label: l10n.actionAddToCart,
        onPressed: () => Navigator.of(context).pop(),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const PriceTag(price: 216, oldPrice: 260, size: PriceTagSize.l),
          const SizedBox(height: AppSpacing.x16),
          QuantityStepper(
            value: _quantity,
            onChanged: (v) => setState(() => _quantity = v),
          ),
          const SizedBox(height: AppSpacing.x16),
          AppTextField(label: s.commentLabel, maxLines: 3),
        ],
      ),
    );
  }
}
