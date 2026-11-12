import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/di/injection.dart';
import '../../../../../core/l10n/l10n.dart';
import '../../../../../core/theme/theme.dart';
import '../../../../../core/utils/money_format.dart';
import '../../../../../core/widgets/widgets.dart';
import '../../../domain/entities/facet.dart';
import '../../../domain/entities/product_query.dart';
import '../../bloc/filters_bloc.dart';
import '../active_filters_row.dart';
import 'options_filters.dart';
import 'price_range_filter.dart';

/// Opens the full-height filters sheet. Returns the filters to apply, or
/// `null` when the user closed it without «Показать».
Future<AppliedFilters?> showFiltersSheet(
  BuildContext context, {
  required String languageCode,
  required String categorySlug,
  required AppliedFilters applied,
  String? promoSlug,
}) => showAppBottomSheet<AppliedFilters>(
  context: context,
  builder: (_) => BlocProvider(
    create: (_) => getIt<FiltersBloc>()
      ..add(
        FiltersEvent.started(
          languageCode: languageCode,
          categorySlug: categorySlug,
          applied: applied,
          promoSlug: promoSlug,
        ),
      ),
    child: const FiltersSheet(),
  ),
);

/// Draft filters with live counts; nothing changes on the list until
/// «Показать N товаров» (UI_DESIGN §7.4).
class FiltersSheet extends StatelessWidget {
  const FiltersSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FiltersBloc, FiltersState>(
      builder: (context, state) {
        final bloc = context.read<FiltersBloc>();
        void change(AppliedFilters draft) =>
            bloc.add(FiltersEvent.changed(draft));
        final failure = state.failure;
        return AppBottomSheet(
          title: context.l10n.catalogFilters,
          isFullHeight: true,
          action: _Footer(
            state: state,
            onReset: () => change(const AppliedFilters()),
          ),
          child: switch (state) {
            FiltersState(facets: [], isCounting: true) => const SkeletonList(
              itemCount: 6,
            ),
            FiltersState(facets: []) when failure != null => FailureView(
              failure: failure,
              onRetry: () => change(state.draft),
            ),
            _ => _FacetGroups(
              facets: state.facets,
              draft: state.draft,
              onChanged: change,
            ),
          },
        );
      },
    );
  }
}

class _FacetGroups extends StatelessWidget {
  const _FacetGroups({
    required this.facets,
    required this.draft,
    required this.onChanged,
  });

  final List<Facet> facets;
  final AppliedFilters draft;
  final ValueChanged<AppliedFilters> onChanged;

  /// The first groups start open; later ones fold to keep the sheet short.
  static const _openGroups = 4;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        for (final (i, facet) in facets.indexed) ...[
          if (i > 0) const Divider(),
          switch (facet) {
            RangeFacet() => CollapsibleSection(
              title: facet.title,
              summary: draft.price.isEmpty
                  ? null
                  : priceRangeLabel(l10n, draft.price),
              initiallyExpanded: i < _openGroups,
              child: PriceRangeFilter(
                facet: facet,
                value: draft.price,
                onChanged: (price) => onChanged(draft.copyWith(price: price)),
              ),
            ),
            OptionsFacet(:final id) => CollapsibleSection(
              title: facet.title,
              summary: switch (draft.choices[id]?.length ?? 0) {
                0 => null,
                final n => l10n.filtersSelected(n),
              },
              initiallyExpanded: i < _openGroups,
              child: OptionsFilter(
                facet: facet,
                filters: draft,
                onToggle: (option) => onChanged(
                  draft.toggleChoice(
                    id,
                    FilterChoice(value: option.value, label: option.label),
                  ),
                ),
              ),
            ),
            ToggleFacet(:final id, :final title, :final count) => _ToggleRow(
              title: title,
              count: count,
              isOn: draft.toggles.containsKey(id),
              onChanged: (on) => onChanged(draft.setToggle(id, title, on: on)),
            ),
          },
        ],
      ],
    );
  }
}

class _ToggleRow extends StatelessWidget {
  const _ToggleRow({
    required this.title,
    required this.count,
    required this.isOn,
    required this.onChanged,
  });

  final String title;
  final int count;
  final bool isOn;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return MergeSemantics(
      child: InkWell(
        onTap: () => onChanged(!isOn),
        child: ConstrainedBox(
          constraints: const BoxConstraints(minHeight: AppSizes.buttonLarge),
          child: Row(
            children: [
              Expanded(child: Text(title, style: context.text.h3)),
              Text(
                '$count',
                style: context.text.caption.copyWith(
                  color: context.colors.inkTertiary,
                ),
              ),
              const SizedBox(width: AppSpacing.x8),
              Switch(value: isOn, onChanged: onChanged),
            ],
          ),
        ),
      ),
    );
  }
}

class _Footer extends StatelessWidget {
  const _Footer({required this.state, required this.onReset});

  final FiltersState state;
  final VoidCallback onReset;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final total = state.total;
    // Counting failed (e.g. offline): still allow applying, without a number.
    final label = switch (total) {
      null => l10n.filtersApply,
      0 => l10n.filtersNothing,
      final n => l10n.filtersShow(n, MoneyFormat.group(n)),
    };
    return Padding(
      padding: const EdgeInsets.only(top: AppSpacing.x12),
      child: Row(
        children: [
          Expanded(
            child: SecondaryButton(
              label: l10n.filtersReset,
              onPressed: state.draft.isEmpty ? null : onReset,
            ),
          ),
          const SizedBox(width: AppSpacing.x12),
          Expanded(
            flex: 2,
            child: PrimaryButton(
              label: label,
              isLoading: state.isCounting,
              onPressed: total == 0
                  ? null
                  : () => Navigator.of(context).pop(state.draft),
            ),
          ),
        ],
      ),
    );
  }
}
