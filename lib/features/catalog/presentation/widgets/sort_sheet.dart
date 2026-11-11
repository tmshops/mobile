import 'package:flutter/material.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/product_query.dart';

String sortLabel(AppLocalizations l10n, ProductSort sort) => switch (sort) {
  ProductSort.popular => l10n.sortPopular,
  ProductSort.priceAsc => l10n.sortPriceAsc,
  ProductSort.priceDesc => l10n.sortPriceDesc,
  ProductSort.newest => l10n.sortNewest,
  ProductSort.rating => l10n.sortRating,
  ProductSort.sales => l10n.sortSales,
};

/// Sort choice in a bottom sheet (TZ §5.5). Returns `null` if dismissed.
Future<ProductSort?> showSortSheet(BuildContext context, ProductSort current) =>
    showAppBottomSheet<ProductSort>(
      context: context,
      builder: (context) => AppBottomSheet(
        title: context.l10n.catalogSortTitle,
        child: Column(
          children: [
            for (final sort in ProductSort.values)
              _SortRow(
                label: sortLabel(context.l10n, sort),
                isSelected: sort == current,
                onTap: () => Navigator.of(context).pop(sort),
              ),
          ],
        ),
      ),
    );

class _SortRow extends StatelessWidget {
  const _SortRow({
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return Semantics(
      inMutuallyExclusiveGroup: true,
      checked: isSelected,
      button: true,
      label: label,
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
                  label,
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
