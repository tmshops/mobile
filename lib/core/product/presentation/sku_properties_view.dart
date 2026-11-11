import 'package:flutter/material.dart';

import '../../l10n/l10n.dart';
import '../../theme/theme.dart';
import '../../widgets/widgets.dart';
import '../domain/sku.dart';
import '../domain/sku_selection.dart';

/// Variant groups: photo thumbnails for visual ones (colour), chips for the
/// rest; values that cannot be bought with the current choice are greyed.
class SkuPropertiesView extends StatelessWidget {
  const SkuPropertiesView({
    required this.selection,
    required this.onSelect,
    this.onSizeChart,
    super.key,
  });

  final SkuSelection selection;
  final void Function(String propertyId, String valueId) onSelect;

  /// `null` hides «Размерная сетка».
  final VoidCallback? onSizeChart;

  @override
  Widget build(BuildContext context) {
    final sizeChart = onSizeChart;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (final property in selection.properties) ...[
          Row(
            children: [
              Expanded(
                child: Text.rich(
                  TextSpan(
                    text: property.title,
                    style: context.text.h3,
                    children: [
                      if (_chosenLabel(property) case final label?)
                        TextSpan(
                          text: ': $label',
                          style: context.text.body.copyWith(
                            color: context.colors.inkSecondary,
                          ),
                        ),
                    ],
                  ),
                ),
              ),
              if (property.isSize && sizeChart != null)
                Flexible(
                  child: TertiaryButton(
                    label: context.l10n.skuSizeChart,
                    icon: AppIcons.ruler,
                    onPressed: sizeChart,
                  ),
                ),
            ],
          ),
          const SizedBox(height: AppSpacing.x8),
          Wrap(
            spacing: AppSpacing.x8,
            runSpacing: AppSpacing.x8,
            children: [
              for (final value in property.values)
                if (property.isVisual)
                  ColorSwatchTile(
                    option: SkuOption(
                      id: value.id,
                      label: value.label,
                      imageUrl: value.imageUrl,
                      isAvailable: selection.isPossible(property.id, value.id),
                    ),
                    isSelected: selection.chosen[property.id] == value.id,
                    onTap: () => onSelect(property.id, value.id),
                  )
                else
                  AppChip(
                    label: value.label,
                    isSelected: selection.chosen[property.id] == value.id,
                    isAvailable: selection.isPossible(property.id, value.id),
                    onTap: () => onSelect(property.id, value.id),
                  ),
            ],
          ),
          const SizedBox(height: AppSpacing.x16),
        ],
      ],
    );
  }

  String? _chosenLabel(SkuProperty property) {
    final id = selection.chosen[property.id];
    for (final value in property.values) {
      if (value.id == id) return value.label;
    }
    return null;
  }
}

/// «В наличии: 12 шт» / «Осталось 3 шт» / «Нет в наличии», with an icon so
/// the state is not told by colour alone.
class StockNote extends StatelessWidget {
  const StockNote({required this.stock, super.key});

  final int stock;

  static const _few = 5;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final l10n = context.l10n;
    final (text, color, icon) = switch (stock) {
      <= 0 => (l10n.productOutOfStock, c.danger, AppIcons.error),
      < _few => (l10n.productFewLeft(stock), c.warning, AppIcons.warning),
      _ => (l10n.productInStock(stock), c.success, AppIcons.checkCircle),
    };
    return Row(
      children: [
        Icon(icon, size: AppSizes.iconSmall, color: color),
        const SizedBox(width: AppSpacing.x4),
        Flexible(child: Text(text, style: context.text.caption)),
      ],
    );
  }
}
