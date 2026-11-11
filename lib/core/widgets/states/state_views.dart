import 'package:flutter/material.dart';

import '../../l10n/l10n.dart';
import '../../theme/theme.dart';
import '../buttons/primary_button.dart';
import '../buttons/secondary_button.dart';

/// Flat spot illustration in the orange palette: a soft disc with an icon
/// and two accent dots. Stands in until real illustrations are drawn, and
/// keeps every empty / error state in one consistent style.
class SpotIllustration extends StatelessWidget {
  const SpotIllustration({
    required this.icon,
    this.isDanger = false,
    super.key,
  });

  final IconData icon;

  /// Soft red variant for failures.
  final bool isDanger;

  static const double _size = 120;
  static const double _iconSize = 52;
  static const double _bigDot = 14;
  static const double _smallDot = 8;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final main = isDanger ? c.danger : c.primary;
    final soft = isDanger
        ? c.danger.withValues(alpha: AppOpacity.tint)
        : c.primarySoft;
    return ExcludeSemantics(
      child: SizedBox.square(
        dimension: _size,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(color: soft, shape: BoxShape.circle),
              alignment: Alignment.center,
              child: Icon(icon, size: _iconSize, color: main),
            ),
            Positioned(
              top: AppSpacing.x8,
              right: AppSpacing.x8,
              child: _Dot(size: _bigDot, color: c.accent),
            ),
            Positioned(
              bottom: AppSpacing.x16,
              left: AppSpacing.x4,
              child: _Dot(size: _smallDot, color: main),
            ),
          ],
        ),
      ),
    );
  }
}

class _Dot extends StatelessWidget {
  const _Dot({required this.size, required this.color});

  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) => Container(
    width: size,
    height: size,
    decoration: BoxDecoration(color: color, shape: BoxShape.circle),
  );
}

/// Centred illustration + title + text + one action.
class EmptyState extends StatelessWidget {
  const EmptyState({
    required this.icon,
    required this.title,
    this.message,
    this.actionLabel,
    this.onAction,
    super.key,
  });

  final IconData icon;
  final String title;
  final String? message;
  final String? actionLabel;
  final VoidCallback? onAction;

  @override
  Widget build(BuildContext context) {
    final label = actionLabel;
    return _CenteredState(
      illustration: SpotIllustration(icon: icon),
      title: title,
      message: message,
      action: label == null
          ? null
          : PrimaryButton(label: label, onPressed: onAction, isExpanded: false),
    );
  }
}

/// Error message + «Повторить». Never shows raw exception text: callers pass
/// a mapped, localised message or rely on the generic one.
class ErrorState extends StatelessWidget {
  const ErrorState({
    required this.onRetry,
    this.title,
    this.message,
    this.icon = AppIcons.sad,
    super.key,
  });

  final VoidCallback onRetry;
  final String? title;
  final String? message;

  /// e.g. [AppIcons.offline] for the no-connection variant.
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return _CenteredState(
      illustration: SpotIllustration(icon: icon, isDanger: true),
      title: title ?? l10n.errorGenericTitle,
      message: message ?? l10n.errorGenericMessage,
      action: SecondaryButton(
        label: l10n.actionRetry,
        icon: AppIcons.retry,
        onPressed: onRetry,
        isExpanded: false,
      ),
    );
  }
}

class _CenteredState extends StatelessWidget {
  const _CenteredState({
    required this.illustration,
    required this.title,
    this.message,
    this.action,
  });

  final Widget illustration;
  final String title;
  final String? message;
  final Widget? action;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final text = message;
    final button = action;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.x32,
        vertical: AppSpacing.x24,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          illustration,
          const SizedBox(height: AppSpacing.x20),
          Text(title, textAlign: TextAlign.center, style: context.text.h2),
          if (text != null) ...[
            const SizedBox(height: AppSpacing.x8),
            Text(
              text,
              textAlign: TextAlign.center,
              style: context.text.body.copyWith(color: c.inkSecondary),
            ),
          ],
          if (button != null) ...[
            const SizedBox(height: AppSpacing.x24),
            button,
          ],
        ],
      ),
    );
  }
}

/// Thin graphite bar shown at the top while offline.
class OfflineBanner extends StatelessWidget {
  const OfflineBanner({super.key});

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return Semantics(
      liveRegion: true,
      child: ColoredBox(
        color: c.graphite,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.screen,
            vertical: AppSpacing.x8,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                AppIcons.offline,
                size: AppSizes.iconSmall,
                color: c.onGraphite,
              ),
              const SizedBox(width: AppSpacing.x8),
              Flexible(
                child: Text(
                  context.l10n.offlineBanner,
                  style: context.text.caption.copyWith(color: c.onGraphite),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
