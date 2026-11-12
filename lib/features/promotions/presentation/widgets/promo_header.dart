import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/l10n/l10n.dart';
import '../../../../core/locale/locale_cubit.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/promotion.dart';
import '../bloc/promotions_cubits.dart';
import 'promotion_card.dart';

/// Top of a promotion's page, as a sliver for the product list under it
/// (UI_DESIGN §7.16): collapsing banner with parallax, title, badge and
/// end, conditions, «Скопировать промокод». Provides its own
/// [PromotionCubit].
class PromoHeader extends StatelessWidget {
  const PromoHeader({required this.slug, super.key});

  final String slug;

  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (context) =>
        getIt<PromotionCubit>()
          ..load(context.read<LocaleCubit>().state.languageCode, slug),
    child: BlocListener<LocaleCubit, Locale>(
      listener: (context, locale) =>
          context.read<PromotionCubit>().load(locale.languageCode, slug),
      child: PromoHeaderView(slug: slug),
    ),
  );
}

/// The slivers of [PromoHeader]. Expects [PromotionCubit].
class PromoHeaderView extends StatelessWidget {
  const PromoHeaderView({required this.slug, super.key});

  final String slug;

  static const double _bannerRatio = 2;
  static const double _skeleton = 120;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return BlocBuilder<PromotionCubit, PromotionState>(
      builder: (context, state) {
        final details = state.details;
        final width = MediaQuery.sizeOf(context).width;
        return SliverMainAxisGroup(
          slivers: [
            SliverAppBar(
              pinned: true,
              expandedHeight: width / _bannerRatio,
              automaticallyImplyLeading: false,
              leading: Padding(
                padding: const EdgeInsets.all(AppSpacing.x4),
                child: IconCircleButton(
                  icon: AppIcons.back,
                  style: IconCircleStyle.light,
                  semanticLabel: l10n.actionBack,
                  onPressed: () => Navigator.of(context).maybePop(),
                ),
              ),
              flexibleSpace: _Banner(details: details),
            ),
            SliverToBoxAdapter(
              child: switch (state) {
                PromotionState(:final details?) => _Info(details: details),
                PromotionState(isNotFound: true) => Padding(
                  padding: AppSpacing.screenPadding,
                  child: EmptyState(
                    icon: AppIcons.promo,
                    title: l10n.promoNotFoundTitle,
                    message: l10n.promoNotFoundText,
                  ),
                ),
                PromotionState(:final failure?) => _Retry(
                  failure: failure,
                  onRetry: () => context.read<PromotionCubit>().load(
                    context.read<LocaleCubit>().state.languageCode,
                    slug,
                  ),
                ),
                _ => const Padding(
                  padding: AppSpacing.screenPadding,
                  child: Shimmer(
                    child: SkeletonBox(
                      width: double.infinity,
                      height: _skeleton,
                    ),
                  ),
                ),
              },
            ),
          ],
        );
      },
    );
  }
}

/// The banner; once collapsed, the title takes its place in the bar.
class _Banner extends StatelessWidget {
  const _Banner({required this.details});

  final PromotionDetails? details;

  @override
  Widget build(BuildContext context) {
    final promotion = details?.promotion;
    return LayoutBuilder(
      builder: (context, box) {
        final top = MediaQuery.paddingOf(context).top;
        final isCollapsed = box.maxHeight <= top + kToolbarHeight + 1;
        return FlexibleSpaceBar(
          collapseMode: CollapseMode.parallax,
          titlePadding: const EdgeInsetsDirectional.only(
            start: AppSizes.touchTarget + AppSpacing.x16,
            end: AppSpacing.x16,
            bottom: AppSpacing.x16,
          ),
          title: isCollapsed && promotion != null
              ? Text(
                  promotion.title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: context.text.h3,
                )
              : null,
          background: promotion == null
              ? const Shimmer(
                  child: SkeletonBox(borderRadius: BorderRadius.zero),
                )
              : AppNetworkImage(
                  url: promotion.imageUrl,
                  semanticLabel: promotion.title,
                ),
        );
      },
    );
  }
}

class _Info extends StatelessWidget {
  const _Info({required this.details});

  final PromotionDetails details;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final c = context.colors;
    final p = details.promotion;
    final code = details.promoCode;
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        AppSpacing.screen,
        AppSpacing.x16,
        AppSpacing.screen,
        AppSpacing.x8,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Wrap(
            spacing: AppSpacing.x8,
            runSpacing: AppSpacing.x8,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              PromotionBadge(type: p.type),
              if (!details.isEnded) PromotionEnds(endsAt: p.endsAt),
            ],
          ),
          const SizedBox(height: AppSpacing.x8),
          Semantics(header: true, child: Text(p.title, style: context.text.h1)),
          const SizedBox(height: AppSpacing.x4),
          Text(
            p.subtitle,
            style: context.text.body.copyWith(color: c.inkSecondary),
          ),
          if (details.isEnded) ...[
            const SizedBox(height: AppSpacing.x12),
            DecoratedBox(
              decoration: BoxDecoration(
                color: c.warning.withValues(alpha: AppOpacity.tint),
                borderRadius: AppRadii.cardBorder,
              ),
              child: Padding(
                padding: const EdgeInsets.all(AppSpacing.x12),
                child: Row(
                  children: [
                    Icon(AppIcons.clock, color: c.warning),
                    const SizedBox(width: AppSpacing.x12),
                    Expanded(
                      child: Text(l10n.promoEnded, style: context.text.body),
                    ),
                  ],
                ),
              ),
            ),
          ],
          if (details.conditions.isNotEmpty) ...[
            const SizedBox(height: AppSpacing.x16),
            DecoratedBox(
              decoration: BoxDecoration(
                color: c.surface,
                borderRadius: AppRadii.cardBorder,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSpacing.x16,
                  vertical: AppSpacing.x8,
                ),
                child: Column(
                  children: [
                    for (final condition in details.conditions)
                      _ConditionRow(condition: condition),
                  ],
                ),
              ),
            ),
          ],
          if (code != null && !details.isEnded) ...[
            const SizedBox(height: AppSpacing.x12),
            AppChip(
              icon: AppIcons.copy,
              label: l10n.promoCopyCode(code),
              onTap: () => _copy(context, code),
            ),
          ],
        ],
      ),
    );
  }

  Future<void> _copy(BuildContext context, String code) async {
    final l10n = context.l10n;
    await Clipboard.setData(ClipboardData(text: code));
    if (!context.mounted) return;
    showAppToast(context, message: l10n.promoCodeCopied, icon: AppIcons.copy);
  }
}

class _ConditionRow extends StatelessWidget {
  const _ConditionRow({required this.condition});

  final PromoCondition condition;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final icon = switch (condition.kind) {
      ConditionKind.amount => AppIcons.promo,
      ConditionKind.until => AppIcons.calendar,
      ConditionKind.scope => AppIcons.navCatalog,
      ConditionKind.combinable => AppIcons.receipt,
      ConditionKind.other => AppIcons.info,
    };
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppSpacing.x8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: AppSizes.iconDense, color: c.primary),
          const SizedBox(width: AppSpacing.x12),
          Expanded(child: Text(condition.text, style: context.text.body)),
        ],
      ),
    );
  }
}

class _Retry extends StatelessWidget {
  const _Retry({required this.failure, required this.onRetry});

  final Failure failure;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) => Padding(
    padding: AppSpacing.screenPadding,
    child: Row(
      children: [
        Expanded(
          child: Text(
            actionFailureText(context.l10n, failure),
            style: context.text.body,
          ),
        ),
        TertiaryButton(label: context.l10n.actionRetry, onPressed: onRetry),
      ],
    ),
  );
}
