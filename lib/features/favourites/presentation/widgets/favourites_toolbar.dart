import 'package:flutter/material.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/widgets/widgets.dart';
import '../bloc/favourite_card.dart';

String favouritesSortLabel(AppLocalizations l10n, FavouritesSort sort) =>
    switch (sort) {
      FavouritesSort.recent => l10n.favouritesSortRecent,
      FavouritesSort.price => l10n.favouritesSortPrice,
      FavouritesSort.discount => l10n.favouritesSortDiscount,
    };

/// Count and sort on the left; in «Выбрать» mode, «Выбрать все» instead
/// of sort.
class FavouritesToolbar extends StatelessWidget {
  const FavouritesToolbar({
    required this.count,
    required this.sort,
    required this.isSelecting,
    required this.isAllSelected,
    required this.onSort,
    required this.onToggleAll,
    super.key,
  });

  final int count;
  final FavouritesSort sort;
  final bool isSelecting;
  final bool isAllSelected;
  final ValueChanged<FavouritesSort> onSort;
  final VoidCallback onToggleAll;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final c = context.colors;
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        AppSpacing.screen,
        0,
        AppSpacing.x4,
        AppSpacing.x8,
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              l10n.ordersItemCount(count),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: context.text.body.copyWith(color: c.inkSecondary),
            ),
          ),
          if (isSelecting)
            TertiaryButton(
              label: isAllSelected
                  ? l10n.favouritesUnselectAll
                  : l10n.favouritesSelectAll,
              onPressed: onToggleAll,
            )
          else
            Flexible(
              child: TertiaryButton(
                label: favouritesSortLabel(l10n, sort),
                icon: AppIcons.sort,
                tone: TertiaryTone.neutral,
                onPressed: () async {
                  final chosen = await _showSortSheet(context, sort);
                  if (chosen != null) onSort(chosen);
                },
              ),
            ),
        ],
      ),
    );
  }
}

Future<FavouritesSort?> _showSortSheet(
  BuildContext context,
  FavouritesSort current,
) => showAppBottomSheet<FavouritesSort>(
  context: context,
  builder: (context) => AppBottomSheet(
    title: context.l10n.catalogSortTitle,
    child: Column(
      children: [
        for (final sort in FavouritesSort.values)
          _SortRow(
            label: favouritesSortLabel(context.l10n, sort),
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
              if (isSelected)
                Icon(AppIcons.check, color: context.colors.primary),
            ],
          ),
        ),
      ),
    );
  }
}

/// «Войдите, чтобы избранное было на всех устройствах» (guest).
class GuestSyncBanner extends StatelessWidget {
  const GuestSyncBanner({required this.onLogin, super.key});

  final VoidCallback onLogin;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final l10n = context.l10n;
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        AppSpacing.screen,
        0,
        AppSpacing.screen,
        AppSpacing.x12,
      ),
      child: Material(
        color: c.primarySoft,
        borderRadius: AppRadii.cardBorder,
        child: InkWell(
          onTap: onLogin,
          borderRadius: AppRadii.cardBorder,
          child: Padding(
            padding: const EdgeInsets.all(AppSpacing.x12),
            child: Row(
              children: [
                Icon(AppIcons.user, color: c.primary),
                const SizedBox(width: AppSpacing.x12),
                Expanded(
                  child: Text(
                    l10n.favouritesGuestBanner,
                    style: context.text.body,
                  ),
                ),
                const SizedBox(width: AppSpacing.x8),
                Text(
                  l10n.profileSignIn,
                  style: context.text.bodyStrong.copyWith(
                    color: c.primaryPressed,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// Today's prices could not be fetched: tiles show the saved copy.
class RefreshFailedNote extends StatelessWidget {
  const RefreshFailedNote({required this.onRetry, super.key});

  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final l10n = context.l10n;
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        AppSpacing.screen,
        0,
        AppSpacing.x4,
        AppSpacing.x8,
      ),
      child: Row(
        children: [
          Icon(AppIcons.offline, size: AppSizes.iconDense, color: c.warning),
          const SizedBox(width: AppSpacing.x8),
          Expanded(
            child: Text(
              l10n.favouritesRefreshFailed,
              style: context.text.caption.copyWith(color: c.inkSecondary),
            ),
          ),
          TertiaryButton(label: l10n.actionRetry, onPressed: onRetry),
        ],
      ),
    );
  }
}
