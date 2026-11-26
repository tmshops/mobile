import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/link_import.dart';
import '../bloc/link_import_cubit.dart';

/// Waiting screen of «Товар по ссылке» (UI_DESIGN §7.6): a breathing
/// illustration, the three steps and «Отмена»; on failure, the operator
/// takes over.
class LinkImportView extends StatelessWidget {
  const LinkImportView({
    required this.link,
    required this.onRetry,
    required this.onCancel,
    required this.onDone,
    required this.onSupport,
    super.key,
  });

  final String link;
  final VoidCallback onRetry;
  final VoidCallback onCancel;
  final ValueChanged<String> onDone;
  final VoidCallback onSupport;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return BlocConsumer<LinkImportCubit, LinkImportState>(
      listenWhen: (_, s) => s is LinkImportReady,
      listener: (_, state) {
        if (state case LinkImportReady(:final productId)) onDone(productId);
      },
      builder: (context, state) => Scaffold(
        backgroundColor: context.colors.background,
        appBar: AppBar(title: Text(l10n.linkImportTitle)),
        body: Center(
          child: SingleChildScrollView(
            padding: AppSpacing.screenPadding,
            child: switch (state) {
              LinkImportWorking(:final step) => _Waiting(
                link: link,
                step: step,
                onCancel: onCancel,
              ),
              // Shown for a moment while the product page opens.
              LinkImportReady() => const _Waiting(
                link: '',
                step: null,
                onCancel: null,
              ),
              LinkImportGaveUp() => _Failed(
                onSupport: onSupport,
                onBack: onCancel,
              ),
              LinkImportError(:final failure) => FailureView(
                failure: failure,
                onRetry: onRetry,
              ),
            },
          ),
        ),
      ),
    );
  }
}

class _Waiting extends StatelessWidget {
  const _Waiting({
    required this.link,
    required this.step,
    required this.onCancel,
  });

  final String link;

  /// `null`: every step is done.
  final LinkImportStep? step;
  final VoidCallback? onCancel;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final c = context.colors;
    final current = step?.index ?? LinkImportStep.values.length;
    final cancel = onCancel;
    return Column(
      children: [
        const _Breathing(child: SpotIllustration(icon: AppIcons.link)),
        const SizedBox(height: AppSpacing.x24),
        Text(
          l10n.linkImportWaitTitle,
          style: context.text.h2,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: AppSpacing.x8),
        Text(
          l10n.linkImportWaitText,
          style: context.text.body.copyWith(color: c.inkSecondary),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: AppSpacing.x24),
        for (final s in LinkImportStep.values)
          _StepRow(
            label: switch (s) {
              LinkImportStep.opening => l10n.linkImportStepOpening,
              LinkImportStep.translating => l10n.linkImportStepTranslating,
              LinkImportStep.pricing => l10n.linkImportStepPricing,
            },
            isDone: s.index < current,
            isCurrent: s.index == current,
          ),
        if (link.isNotEmpty) ...[
          const SizedBox(height: AppSpacing.x16),
          Text(
            link,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: context.text.caption.copyWith(color: c.inkTertiary),
          ),
        ],
        if (cancel != null) ...[
          const SizedBox(height: AppSpacing.x24),
          SecondaryButton(label: l10n.actionCancel, onPressed: cancel),
        ],
      ],
    );
  }
}

class _StepRow extends StatelessWidget {
  const _StepRow({
    required this.label,
    required this.isDone,
    required this.isCurrent,
  });

  final String label;
  final bool isDone;
  final bool isCurrent;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppSpacing.x8),
      child: Row(
        children: [
          SizedBox.square(
            dimension: AppSizes.icon,
            child: switch ((isDone, isCurrent)) {
              (true, _) => Icon(AppIcons.checkCircle, color: c.success),
              (_, true) => Padding(
                padding: const EdgeInsets.all(AppSpacing.x2),
                child: CircularProgressIndicator(
                  strokeWidth: AppSizes.selectedBorder,
                  color: c.primary,
                ),
              ),
              _ => Icon(AppIcons.clock, color: c.inkTertiary),
            },
          ),
          const SizedBox(width: AppSpacing.x12),
          Expanded(
            child: Text(
              label,
              style: isCurrent
                  ? context.text.bodyStrong
                  : context.text.body.copyWith(
                      color: isDone ? c.ink : c.inkTertiary,
                    ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Slowly grows and shrinks [child]; still when motion is reduced.
class _Breathing extends StatefulWidget {
  const _Breathing({required this.child});

  final Widget child;

  @override
  State<_Breathing> createState() => _BreathingState();
}

class _BreathingState extends State<_Breathing>
    with SingleTickerProviderStateMixin {
  late final _controller = AnimationController(
    vsync: this,
    duration: AppMotion.pulse,
  );

  static const double _grow = 0.06;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (AppMotion.isReduced(context)) {
      _controller.stop();
    } else if (!_controller.isAnimating) {
      _controller.repeat(reverse: true);
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => ScaleTransition(
    scale: Tween(
      begin: 1.0,
      end: 1 + _grow,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut)),
    child: widget.child,
  );
}

class _Failed extends StatelessWidget {
  const _Failed({required this.onSupport, required this.onBack});

  final VoidCallback onSupport;
  final VoidCallback onBack;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Column(
      children: [
        const SpotIllustration(icon: AppIcons.support),
        const SizedBox(height: AppSpacing.x24),
        Text(
          l10n.linkImportFailedTitle,
          style: context.text.h2,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: AppSpacing.x8),
        Text(
          l10n.linkImportFailedText,
          style: context.text.body.copyWith(color: context.colors.inkSecondary),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: AppSpacing.x24),
        PrimaryButton(label: l10n.linkImportToSupport, onPressed: onSupport),
        const SizedBox(height: AppSpacing.x8),
        TertiaryButton(label: l10n.actionBack, onPressed: onBack),
      ],
    );
  }
}
