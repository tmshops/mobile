import 'package:flutter/material.dart';

import '../../theme/theme.dart';

/// One row of a menu group: icon, title, optional trailing, chevron.
class MenuRow extends StatelessWidget {
  const MenuRow({
    required this.icon,
    required this.title,
    required this.onTap,
    this.trailing,
    this.isDanger = false,
    super.key,
  });

  final IconData icon;
  final String title;
  final VoidCallback? onTap;
  final Widget? trailing;
  final bool isDanger;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final color = isDanger ? c.danger : c.ink;
    return InkWell(
      onTap: onTap,
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          minHeight: AppSizes.touchTarget + AppSpacing.x4,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.x16,
            vertical: AppSpacing.x8,
          ),
          child: Row(
            children: [
              Icon(
                icon,
                size: AppSizes.icon,
                color: isDanger ? c.danger : c.inkSecondary,
              ),
              const SizedBox(width: AppSpacing.x16),
              Expanded(
                child: Text(
                  title,
                  style: context.text.body.copyWith(color: color),
                ),
              ),
              ?trailing,
              if (!isDanger && trailing == null)
                Icon(
                  AppIcons.chevronRight,
                  size: AppSizes.iconDense,
                  color: c.inkTertiary,
                ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Rounded white group on the grey background (UI_DESIGN §7.11, §7.24).
class MenuGroup extends StatelessWidget {
  const MenuGroup({required this.children, super.key});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        AppSpacing.screen,
        0,
        AppSpacing.screen,
        AppSpacing.x12,
      ),
      child: Material(
        color: c.surface,
        borderRadius: AppRadii.cardBorder,
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            for (final (i, child) in children.indexed) ...[
              if (i > 0)
                Divider(
                  height: AppSizes.hairline,
                  indent: AppSpacing.x16 + AppSizes.icon + AppSpacing.x16,
                  color: c.divider,
                ),
              child,
            ],
          ],
        ),
      ),
    );
  }
}

/// Small heading above a [MenuGroup].
class GroupHeader extends StatelessWidget {
  const GroupHeader(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.fromLTRB(
      AppSpacing.screen + AppSpacing.x4,
      AppSpacing.x8,
      AppSpacing.screen,
      AppSpacing.x8,
    ),
    child: Semantics(
      header: true,
      child: Text(
        text,
        style: context.text.caption.copyWith(
          color: context.colors.inkSecondary,
        ),
      ),
    ),
  );
}
