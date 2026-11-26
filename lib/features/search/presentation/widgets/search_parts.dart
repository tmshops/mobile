import 'package:flutter/material.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/widgets/widgets.dart';
import '../bloc/search_bloc.dart';

/// «Открыть товар по ссылке» for a typed, pasted or copied link.
class OpenLinkRow extends StatelessWidget {
  const OpenLinkRow({required this.link, required this.onTap, super.key});

  final String link;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        AppSpacing.screen,
        AppSpacing.x12,
        AppSpacing.screen,
        0,
      ),
      child: Material(
        color: c.primarySoft,
        borderRadius: AppRadii.cardBorder,
        child: InkWell(
          borderRadius: AppRadii.cardBorder,
          onTap: onTap,
          child: Padding(
            padding: AppSpacing.cardPadding,
            child: Row(
              children: [
                Icon(AppIcons.link, color: c.primary),
                const SizedBox(width: AppSpacing.x12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        context.l10n.searchOpenLink,
                        style: context.text.bodyStrong,
                      ),
                      Text(
                        link,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: context.text.caption.copyWith(
                          color: c.inkSecondary,
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(AppIcons.chevronRight, color: c.inkTertiary),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// «Вы искали» with «Очистить»; each chip has its own ×.
class HistorySection extends StatelessWidget {
  const HistorySection({
    required this.history,
    required this.onPick,
    required this.onRemove,
    required this.onClear,
    super.key,
  });

  final List<String> history;
  final ValueChanged<String> onPick;
  final ValueChanged<String> onRemove;
  final VoidCallback onClear;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return _Section(
      title: l10n.searchRecent,
      trailing: TertiaryButton(
        label: l10n.searchClearHistory,
        onPressed: onClear,
      ),
      children: [
        for (final query in history)
          _HistoryChip(
            query: query,
            onTap: () => onPick(query),
            onRemove: () => onRemove(query),
          ),
      ],
    );
  }
}

class PopularSection extends StatelessWidget {
  const PopularSection({
    required this.popular,
    required this.onPick,
    super.key,
  });

  final List<String> popular;
  final ValueChanged<String> onPick;

  @override
  Widget build(BuildContext context) => _Section(
    title: context.l10n.searchPopular,
    children: [
      for (final query in popular)
        AppChip(label: query, onTap: () => onPick(query)),
    ],
  );
}

class _Section extends StatelessWidget {
  const _Section({required this.title, required this.children, this.trailing});

  final String title;
  final Widget? trailing;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        AppSpacing.screen,
        AppSpacing.x16,
        AppSpacing.screen,
        0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: AppSizes.touchTarget,
            child: Row(
              children: [
                Expanded(
                  child: Semantics(
                    header: true,
                    child: Text(title, style: context.text.h3),
                  ),
                ),
                ?trailing,
              ],
            ),
          ),
          Wrap(
            spacing: AppSpacing.x8,
            runSpacing: AppSpacing.x8,
            children: children,
          ),
        ],
      ),
    );
  }
}

class _HistoryChip extends StatelessWidget {
  const _HistoryChip({
    required this.query,
    required this.onTap,
    required this.onRemove,
  });

  final String query;
  final VoidCallback onTap;
  final VoidCallback onRemove;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return Material(
      color: c.surface,
      borderRadius: AppRadii.chipBorder,
      child: InkWell(
        borderRadius: AppRadii.chipBorder,
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsetsDirectional.only(start: AppSpacing.x12),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                AppIcons.clock,
                size: AppSizes.iconSmall,
                color: c.inkSecondary,
              ),
              const SizedBox(width: AppSpacing.x4),
              Flexible(
                child: Text(
                  query,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: context.text.body,
                ),
              ),
              IconButton(
                visualDensity: VisualDensity.compact,
                iconSize: AppSizes.iconSmall,
                tooltip: context.l10n.searchRemoveQuery(query),
                icon: Icon(AppIcons.close, color: c.inkSecondary),
                onPressed: onRemove,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// While typing: «Возможно, вы искали…», then hints with the typed part
/// in bold, or one row that searches exactly what was typed.
class HintsList extends StatelessWidget {
  const HintsList({required this.state, required this.onPick, super.key});

  final SearchState state;
  final ValueChanged<String> onPick;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final typed = state.text.trim();
    final fix = state.hints.didYouMean;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (state.isLoadingHints)
          const LinearProgressIndicator(minHeight: AppSizes.hairline),
        if (fix != null)
          ListTile(
            leading: const Icon(AppIcons.sparkle),
            title: Text(
              l10n.searchDidYouMean(fix),
              style: context.text.body.copyWith(color: context.colors.primary),
            ),
            onTap: () => onPick(fix),
          ),
        for (final hint in state.hints.suggestions)
          ListTile(
            leading: const Icon(AppIcons.search),
            title: _Highlighted(text: hint, part: typed),
            onTap: () => onPick(hint),
          ),
        if (!state.hints.suggestions.any(
          (h) => h.toLowerCase() == typed.toLowerCase(),
        ))
          ListTile(
            leading: const Icon(AppIcons.search),
            title: Text(l10n.searchFor(typed)),
            onTap: () => onPick(typed),
          ),
      ],
    );
  }
}

/// [text] with [part] (any letter case) in bold.
class _Highlighted extends StatelessWidget {
  const _Highlighted({required this.text, required this.part});

  final String text;
  final String part;

  @override
  Widget build(BuildContext context) {
    final style = context.text.body;
    final start = text.toLowerCase().indexOf(part.toLowerCase());
    if (part.isEmpty || start < 0) return Text(text, style: style);
    final end = start + part.length;
    return Text.rich(
      TextSpan(
        style: style,
        children: [
          TextSpan(text: text.substring(0, start)),
          TextSpan(
            text: text.substring(start, end),
            style: context.text.bodyStrong,
          ),
          TextSpan(text: text.substring(end)),
        ],
      ),
    );
  }
}
