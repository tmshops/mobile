import 'package:flutter/material.dart';

import '../l10n/l10n.dart';
import '../theme/theme.dart';
import '../widgets/widgets.dart';
import 'region.dart';

/// Region choice in a bottom sheet. Returns the picked id, or `null`.
Future<String?> showRegionPicker(
  BuildContext context, {
  required List<Region> regions,
  required String selectedId,
}) => showAppBottomSheet<String>(
  context: context,
  builder: (context) => AppBottomSheet(
    title: context.l10n.regionTitle,
    child: Column(
      children: [
        for (final region in regions)
          _RegionRow(
            name: region.name,
            isSelected: region.id == selectedId,
            onTap: () => Navigator.of(context).pop(region.id),
          ),
      ],
    ),
  ),
);

class _RegionRow extends StatelessWidget {
  const _RegionRow({
    required this.name,
    required this.isSelected,
    required this.onTap,
  });

  final String name;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return Semantics(
      inMutuallyExclusiveGroup: true,
      checked: isSelected,
      button: true,
      label: name,
      excludeSemantics: true,
      child: InkWell(
        onTap: onTap,
        borderRadius: AppRadii.buttonBorder,
        child: ConstrainedBox(
          constraints: const BoxConstraints(minHeight: AppSizes.buttonLarge),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  name,
                  style: isSelected
                      ? context.text.bodyStrong
                      : context.text.body,
                ),
              ),
              if (isSelected) Icon(AppIcons.check, color: c.primary),
            ],
          ),
        ),
      ),
    );
  }
}
