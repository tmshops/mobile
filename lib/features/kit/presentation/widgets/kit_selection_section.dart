import 'package:flutter/material.dart';

import '../../../../core/theme/theme.dart';
import '../../../../core/widgets/widgets.dart';
import 'kit_samples.dart';
import 'kit_section.dart';

/// SKU selector, quantity stepper and chips.
class KitSelectionSection extends StatefulWidget {
  const KitSelectionSection({super.key});

  @override
  State<KitSelectionSection> createState() => _KitSelectionSectionState();
}

class _KitSelectionSectionState extends State<KitSelectionSection> {
  static const _sizes = ['XS', 'S', 'M', 'L', 'XL', 'XXL'];

  String? _colorId = 'c0';
  String? _sizeId;
  int _quantity = 1;
  final Set<int> _filters = {1};
  final List<String> _active = ['Nike', 'Adidas', 'Li-Ning'];

  @override
  Widget build(BuildContext context) {
    final s = KitSamples.of(context);
    return KitSection(
      title: 'SkuSelector · QuantityStepper · Chips',
      children: [
        SkuSelector(
          colorTitle: s.colorTitle,
          colors: [
            for (var i = 0; i < s.colorNames.length; i++)
              SkuOption(
                id: 'c$i',
                label: s.colorNames[i],
                imageUrl: KitSamples.image(i + 10, size: 160),
                isAvailable: i != 2,
              ),
          ],
          selectedColorId: _colorId,
          onColorSelected: (o) => setState(() => _colorId = o.id),
          sizeTitle: s.sizeTitle,
          sizes: [
            for (final size in _sizes)
              SkuOption(id: size, label: size, isAvailable: size != 'XL'),
          ],
          selectedSizeId: _sizeId,
          onSizeSelected: (o) => setState(() => _sizeId = o.id),
          onSizeChartTap: () {},
        ),
        const KitLabel('QuantityStepper · min 1, max 5, hold to repeat'),
        Align(
          alignment: Alignment.centerLeft,
          child: QuantityStepper(
            value: _quantity,
            max: 5,
            onChanged: (v) => setState(() => _quantity = v),
          ),
        ),
        const KitLabel('Filter chips · tap to select'),
        Wrap(
          spacing: AppSpacing.x8,
          children: [
            for (var i = 0; i < s.filters.length; i++)
              AppChip(
                label: s.filters[i],
                isSelected: _filters.contains(i),
                onTap: () => setState(
                  () => _filters.contains(i)
                      ? _filters.remove(i)
                      : _filters.add(i),
                ),
              ),
          ],
        ),
        const KitLabel('CollapsibleSection · tap the header'),
        CollapsibleSection(
          title: s.sizeTitle,
          summary: s.filters[1],
          child: Wrap(
            spacing: AppSpacing.x8,
            children: [
              for (final size in _sizes) AppChip(label: size, onTap: () {}),
            ],
          ),
        ),
        const KitLabel('Active filters · tap to remove'),
        Wrap(
          spacing: AppSpacing.x8,
          children: [
            for (final label in _active)
              RemovableChip(
                label: label,
                onRemove: () => setState(() => _active.remove(label)),
              ),
          ],
        ),
      ],
    );
  }
}
