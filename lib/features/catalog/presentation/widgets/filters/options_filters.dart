import 'package:flutter/material.dart';

import '../../../../../core/l10n/l10n.dart';
import '../../../../../core/theme/theme.dart';
import '../../../../../core/widgets/widgets.dart';
import '../../../domain/entities/facet.dart';
import '../../../domain/entities/product_query.dart';

/// Called with the option the user tapped; the sheet toggles it.
typedef OptionToggle = void Function(FacetOption option);

/// Picks the right widget for an options facet.
class OptionsFilter extends StatelessWidget {
  const OptionsFilter({
    required this.facet,
    required this.filters,
    required this.onToggle,
    super.key,
  });

  final OptionsFacet facet;
  final AppliedFilters filters;
  final OptionToggle onToggle;

  bool _isChosen(FacetOption o) => filters.isChosen(facet.id, o.value);

  @override
  Widget build(BuildContext context) => switch (facet.display) {
    FacetDisplay.chips => Wrap(
      spacing: AppSpacing.x8,
      children: [
        for (final option in facet.options)
          AppChip(
            label: context.l10n.filtersOption(option.label, option.count),
            isSelected: _isChosen(option),
            // A value with no products left can still be un-picked.
            isAvailable: option.count > 0 || _isChosen(option),
            onTap: () => onToggle(option),
          ),
      ],
    ),
    FacetDisplay.swatches => Wrap(
      spacing: AppSpacing.x4,
      runSpacing: AppSpacing.x8,
      children: [
        for (final option in facet.options)
          _Swatch(
            option: option,
            isSelected: _isChosen(option),
            onTap: () => onToggle(option),
          ),
      ],
    ),
    FacetDisplay.searchableList => _SearchableList(
      options: facet.options,
      isChosen: _isChosen,
      onToggle: onToggle,
    ),
  };
}

class _Swatch extends StatelessWidget {
  const _Swatch({
    required this.option,
    required this.isSelected,
    required this.onTap,
  });

  final FacetOption option;
  final bool isSelected;
  final VoidCallback onTap;

  static const double _circle = 36;
  static const double _width = 68;

  /// Above this luminance a swatch counts as light and gets a dark check.
  static const double _lightSwatch = 0.5;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final argb = option.colorArgb;
    final color = argb == null ? c.surface : Color(argb);
    final isEnabled = option.count > 0 || isSelected;
    // The check must read on both white and black swatches.
    final checkColor = color.computeLuminance() > _lightSwatch
        ? c.ink
        : c.onGraphite;
    return Semantics(
      button: true,
      selected: isSelected,
      enabled: isEnabled,
      label: context.l10n.filtersOption(option.label, option.count),
      excludeSemantics: true,
      child: InkWell(
        onTap: isEnabled ? onTap : null,
        borderRadius: AppRadii.imageBorder,
        child: Opacity(
          opacity: isEnabled ? 1 : AppOpacity.disabled,
          child: SizedBox(
            width: _width,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: AppSpacing.x4),
              child: Column(
                children: [
                  AnimatedContainer(
                    duration: AppMotion.of(context, AppMotion.fast),
                    width: _circle,
                    height: _circle,
                    decoration: BoxDecoration(
                      color: color,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: isSelected ? c.primary : c.divider,
                        width: isSelected
                            ? AppSizes.selectedBorder
                            : AppSizes.hairline,
                      ),
                    ),
                    child: isSelected
                        ? Icon(
                            AppIcons.check,
                            size: AppSizes.iconSmall,
                            color: checkColor,
                          )
                        : null,
                  ),
                  const SizedBox(height: AppSpacing.x4),
                  Text(
                    option.label,
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: context.text.micro.copyWith(
                      fontWeight: isSelected
                          ? FontWeight.w700
                          : FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// Long list (brands): search field, first few rows, «Показать все».
class _SearchableList extends StatefulWidget {
  const _SearchableList({
    required this.options,
    required this.isChosen,
    required this.onToggle,
  });

  final List<FacetOption> options;
  final bool Function(FacetOption) isChosen;
  final OptionToggle onToggle;

  @override
  State<_SearchableList> createState() => _SearchableListState();
}

class _SearchableListState extends State<_SearchableList> {
  static const _collapsedCount = 6;
  static const _searchFrom = 8;

  String _query = '';
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final q = _query.trim().toLowerCase();
    // Picked values first, so they stay visible while folded.
    final matching = [
      ...widget.options.where(widget.isChosen),
      ...widget.options.where((o) => !widget.isChosen(o)),
    ].where((o) => q.isEmpty || o.label.toLowerCase().contains(q)).toList();
    final isFolded = !_isExpanded && q.isEmpty;
    final shown = isFolded ? matching.take(_collapsedCount) : matching;
    final hidden = matching.length - _collapsedCount;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (widget.options.length >= _searchFrom)
          Padding(
            padding: const EdgeInsets.only(bottom: AppSpacing.x8),
            child: AppTextField(
              hint: l10n.filtersSearch,
              prefix: const Icon(AppIcons.search, size: AppSizes.iconDense),
              onChanged: (value) => setState(() => _query = value),
            ),
          ),
        for (final option in shown)
          _CheckRow(
            option: option,
            isChosen: widget.isChosen(option),
            onTap: () => widget.onToggle(option),
          ),
        if (q.isEmpty && hidden > 0)
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: TertiaryButton(
              label: _isExpanded
                  ? l10n.filtersShowLess
                  : l10n.filtersShowAll(matching.length),
              onPressed: () => setState(() => _isExpanded = !_isExpanded),
            ),
          ),
      ],
    );
  }
}

class _CheckRow extends StatelessWidget {
  const _CheckRow({
    required this.option,
    required this.isChosen,
    required this.onTap,
  });

  final FacetOption option;
  final bool isChosen;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final isEnabled = option.count > 0 || isChosen;
    return InkWell(
      onTap: isEnabled ? onTap : null,
      child: ConstrainedBox(
        constraints: const BoxConstraints(minHeight: AppSizes.touchTarget),
        child: Row(
          children: [
            Checkbox(
              value: isChosen,
              onChanged: isEnabled ? (_) => onTap() : null,
            ),
            Expanded(
              child: Text(
                option.label,
                style: context.text.body.copyWith(
                  color: isEnabled ? c.ink : c.inkTertiary,
                ),
              ),
            ),
            Text(
              '${option.count}',
              style: context.text.caption.copyWith(
                color: c.inkTertiary,
                fontFeatures: AppTypography.tabularFigures,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
