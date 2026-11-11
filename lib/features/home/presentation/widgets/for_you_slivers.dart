import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/widgets/widgets.dart';
import '../bloc/for_you_bloc.dart';
import '../home_destination.dart';
import '../../../../core/product/presentation/product_summary_tile.dart';

/// «Для вас»: header, 2-column grid and a bottom loader / retry row.
///
/// Rows of two tiles rather than a fixed-extent grid, so tiles grow with
/// Turkmen titles and large text instead of clipping.
class ForYouSlivers extends StatelessWidget {
  const ForYouSlivers({required this.onNavigate, super.key});

  final HomeNavigator onNavigate;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ForYouBloc, ForYouState>(
      builder: (context, state) {
        final items = state.items;
        final rows = (items.length + 1) ~/ 2;
        return SliverMainAxisGroup(
          slivers: [
            if (items.isNotEmpty || state.status == ForYouStatus.loadingFirst)
              SliverPadding(
                padding: const EdgeInsets.only(
                  top: AppSpacing.section,
                  bottom: AppSpacing.x12,
                ),
                sliver: SliverToBoxAdapter(
                  child: SectionHeader(title: context.l10n.homeForYou),
                ),
              ),
            SliverPadding(
              padding: AppSpacing.screenPadding,
              sliver: SliverList.separated(
                itemCount: rows,
                separatorBuilder: (_, _) =>
                    const SizedBox(height: AppSpacing.x16),
                itemBuilder: (context, row) => Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for (var col = 0; col < 2; col++) ...[
                      if (col == 1) const SizedBox(width: AppSpacing.x12),
                      Expanded(
                        child: switch (row * 2 + col) {
                          final i when i < items.length => ProductSummaryTile(
                            product: items[i],
                            onTap: () => onNavigate(
                              HomeDestination.product(
                                items[i].id,
                                preview: items[i],
                              ),
                            ),
                          ),
                          _ => const SizedBox.shrink(),
                        },
                      ),
                    ],
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(child: _Footer(state: state)),
          ],
        );
      },
    );
  }
}

class _Footer extends StatelessWidget {
  const _Footer({required this.state});

  final ForYouState state;

  @override
  Widget build(BuildContext context) {
    final Widget? child = switch (state.status) {
      ForYouStatus.loadingFirst => const Padding(
        padding: AppSpacing.screenPadding,
        child: Row(
          children: [
            Expanded(child: SkeletonTile()),
            SizedBox(width: AppSpacing.x12),
            Expanded(child: SkeletonTile()),
          ],
        ),
      ),
      ForYouStatus.loadingMore => const Center(
        child: SizedBox.square(
          dimension: AppSizes.icon,
          child: CircularProgressIndicator(
            strokeWidth: AppSizes.selectedBorder,
          ),
        ),
      ),
      ForYouStatus.failure => Column(
        children: [
          Text(
            context.l10n.homeForYouError,
            textAlign: TextAlign.center,
            style: context.text.caption.copyWith(
              color: context.colors.inkSecondary,
            ),
          ),
          TertiaryButton(
            label: context.l10n.actionRetry,
            icon: AppIcons.retry,
            onPressed: () => context.read<ForYouBloc>().add(
              const ForYouEvent.nextPageRequested(),
            ),
          ),
        ],
      ),
      ForYouStatus.initial || ForYouStatus.idle => null,
    };
    return Padding(
      padding: const EdgeInsets.only(
        top: AppSpacing.x16,
        bottom: AppSpacing.x32,
      ),
      child: child,
    );
  }
}
