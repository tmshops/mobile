import 'package:flutter/material.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/utils/money_format.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/product_query.dart';

/// «100–500 TMT», «от 100 TMT», «до 500 TMT».
String priceRangeLabel(AppLocalizations l10n, PriceRange range) =>
    switch ((range.min, range.max)) {
      (final min?, final max?) => l10n.priceRangeChip(
        MoneyFormat.group(min),
        MoneyFormat.group(max),
      ),
      (final min?, null) => l10n.priceFromChip(MoneyFormat.group(min)),
      (null, final max?) => l10n.priceToChip(MoneyFormat.group(max)),
      (null, null) => '',
    };

/// Removable chips for every applied filter, plus «Сбросить все».
class ActiveFiltersRow extends StatelessWidget {
  const ActiveFiltersRow({
    required this.filters,
    required this.onChanged,
    super.key,
  });

  final AppliedFilters filters;
  final ValueChanged<AppliedFilters> onChanged;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.x12),
      child: Row(
        children: [
          if (!filters.price.isEmpty)
            _Chip(
              label: priceRangeLabel(l10n, filters.price),
              onRemove: () =>
                  onChanged(filters.copyWith(price: const PriceRange())),
            ),
          for (final MapEntry(key: facetId, value: picked)
              in filters.choices.entries)
            for (final choice in picked)
              _Chip(
                label: choice.label,
                onRemove: () =>
                    onChanged(filters.toggleChoice(facetId, choice)),
              ),
          for (final MapEntry(key: facetId, value: title)
              in filters.toggles.entries)
            _Chip(
              label: title,
              onRemove: () =>
                  onChanged(filters.setToggle(facetId, title, on: false)),
            ),
          TertiaryButton(
            label: l10n.catalogClearFilters,
            tone: TertiaryTone.neutral,
            onPressed: () => onChanged(const AppliedFilters()),
          ),
        ],
      ),
    );
  }
}

class _Chip extends StatelessWidget {
  const _Chip({required this.label, required this.onRemove});

  final String label;
  final VoidCallback onRemove;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.symmetric(horizontal: AppSpacing.x4),
    child: RemovableChip(label: label, onRemove: onRemove),
  );
}
