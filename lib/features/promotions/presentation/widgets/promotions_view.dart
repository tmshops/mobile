import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/locale/locale_cubit.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/widgets/widgets.dart';
import '../bloc/promotions_cubits.dart';
import 'promotion_card.dart';

/// «Акции» (UI_DESIGN §7.16): running promotions, soonest to end first.
/// Expects [PromotionsCubit].
class PromotionsView extends StatelessWidget {
  const PromotionsView({required this.onOpen, this.now, super.key});

  final ValueChanged<String> onOpen;

  /// Clock for the end chips; tests pass a fixed one.
  final DateTime Function()? now;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final cubit = context.read<PromotionsCubit>();
    String language() => context.read<LocaleCubit>().state.languageCode;
    return BlocListener<LocaleCubit, Locale>(
      listener: (_, locale) => cubit.load(locale.languageCode),
      child: Scaffold(
        appBar: AppBar(title: Text(l10n.promoListTitle)),
        body: BlocBuilder<PromotionsCubit, PromotionsState>(
          builder: (context, state) => switch (state) {
            PromotionsState(items: [], isLoading: true) => const SkeletonList(
              itemCount: 3,
            ),
            PromotionsState(items: [], :final failure?) => Center(
              child: SingleChildScrollView(
                child: FailureView(
                  failure: failure,
                  onRetry: () => cubit.load(language()),
                ),
              ),
            ),
            PromotionsState(items: []) => Center(
              child: SingleChildScrollView(
                child: EmptyState(
                  icon: AppIcons.promo,
                  title: l10n.promoEmptyTitle,
                  message: l10n.promoEmptyText,
                ),
              ),
            ),
            PromotionsState(:final items) => RefreshIndicator(
              onRefresh: () => cubit.load(language()),
              child: ListView(
                padding: const EdgeInsets.only(top: AppSpacing.x8),
                children: [
                  for (final p in items)
                    PromotionCard(
                      key: ValueKey(p.slug),
                      promotion: p,
                      onTap: () => onOpen(p.slug),
                      onEnded: () => cubit.ended(p.slug),
                      now: now ?? DateTime.now,
                    ),
                ],
              ),
            ),
          },
        ),
      ),
    );
  }
}
