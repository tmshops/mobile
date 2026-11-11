import 'package:flutter/material.dart';

import '../../l10n/l10n.dart';
import '../../theme/theme.dart';
import '../buttons/tertiary_button.dart';
import '../media/app_network_image.dart';
import 'app_chip.dart';

/// One choosable SKU value (a colour or a size).
@immutable
class SkuOption {
  const SkuOption({
    required this.id,
    required this.label,
    this.imageUrl,
    this.isAvailable = true,
  });

  final String id;
  final String label;

  /// Colour options show a thumbnail instead of text.
  final String? imageUrl;
  final bool isAvailable;
}

/// Colour thumbnails + size chips + «Размерная сетка» link.
///
/// Group titles (e.g. «Цвет: чёрный») come from the caller because they
/// are server-provided property names.
class SkuSelector extends StatelessWidget {
  const SkuSelector({
    required this.colorTitle,
    required this.colors,
    required this.selectedColorId,
    required this.onColorSelected,
    required this.sizeTitle,
    required this.sizes,
    required this.selectedSizeId,
    required this.onSizeSelected,
    this.onSizeChartTap,
    super.key,
  });

  final String colorTitle;
  final List<SkuOption> colors;
  final String? selectedColorId;
  final ValueChanged<SkuOption> onColorSelected;

  final String sizeTitle;
  final List<SkuOption> sizes;
  final String? selectedSizeId;
  final ValueChanged<SkuOption> onSizeSelected;

  /// `null` hides the size chart link.
  final VoidCallback? onSizeChartTap;

  @override
  Widget build(BuildContext context) {
    final sizeChart = onSizeChartTap;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (colors.isNotEmpty) ...[
          Text(colorTitle, style: context.text.h3),
          const SizedBox(height: AppSpacing.x8),
          Wrap(
            spacing: AppSpacing.x8,
            runSpacing: AppSpacing.x8,
            children: [
              for (final option in colors)
                ColorSwatchTile(
                  option: option,
                  isSelected: option.id == selectedColorId,
                  onTap: () => onColorSelected(option),
                ),
            ],
          ),
          const SizedBox(height: AppSpacing.x16),
        ],
        if (sizes.isNotEmpty) ...[
          Row(
            children: [
              Expanded(child: Text(sizeTitle, style: context.text.h3)),
              if (sizeChart != null)
                Flexible(
                  child: TertiaryButton(
                    label: context.l10n.skuSizeChart,
                    icon: AppIcons.ruler,
                    onPressed: sizeChart,
                  ),
                ),
            ],
          ),
          Wrap(
            spacing: AppSpacing.x8,
            children: [
              for (final option in sizes)
                AppChip(
                  label: option.label,
                  isSelected: option.id == selectedSizeId,
                  isAvailable: option.isAvailable,
                  onTap: () => onSizeSelected(option),
                ),
            ],
          ),
        ],
      ],
    );
  }
}

/// 56-dp colour thumbnail. Selected = 2-dp orange border + check.
class ColorSwatchTile extends StatelessWidget {
  const ColorSwatchTile({
    required this.option,
    required this.isSelected,
    required this.onTap,
    super.key,
  });

  final SkuOption option;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final url = option.imageUrl;
    final isAvailable = option.isAvailable;
    return Semantics(
      button: true,
      selected: isSelected,
      enabled: isAvailable,
      label: isAvailable
          ? option.label
          : context.l10n.skuUnavailable(option.label),
      excludeSemantics: true,
      child: GestureDetector(
        onTap: isAvailable ? onTap : null,
        child: Opacity(
          opacity: isAvailable ? 1 : AppOpacity.disabled,
          child: Container(
            width: AppSizes.swatch,
            height: AppSizes.swatch,
            decoration: BoxDecoration(
              borderRadius: AppRadii.imageBorder,
              border: Border.all(
                color: isSelected ? c.primary : c.divider,
                width: isSelected ? AppSizes.selectedBorder : AppSizes.hairline,
              ),
            ),
            child: ClipRRect(
              borderRadius: AppRadii.imageBorder,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  if (url != null)
                    AppNetworkImage(url: url)
                  else
                    Center(
                      child: Text(
                        option.label,
                        maxLines: 2,
                        textAlign: TextAlign.center,
                        style: context.text.micro,
                      ),
                    ),
                  if (!isAvailable) const _StrikeThrough(),
                  if (isSelected) const _SelectedCheck(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _SelectedCheck extends StatelessWidget {
  const _SelectedCheck();

  static const double _size = 18;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        width: _size,
        height: _size,
        decoration: BoxDecoration(
          color: c.primary,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(AppRadii.badge),
          ),
        ),
        child: Icon(
          AppIcons.check,
          size: AppSizes.iconTiny,
          color: c.onPrimary,
        ),
      ),
    );
  }
}

class _StrikeThrough extends StatelessWidget {
  const _StrikeThrough();

  @override
  Widget build(BuildContext context) {
    return CustomPaint(painter: _DiagonalPainter(context.colors.inkSecondary));
  }
}

class _DiagonalPainter extends CustomPainter {
  const _DiagonalPainter(this.color);

  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = AppSizes.inputBorder;
    canvas.drawLine(Offset(size.width, 0), Offset(0, size.height), paint);
  }

  @override
  bool shouldRepaint(_DiagonalPainter oldDelegate) =>
      oldDelegate.color != color;
}
