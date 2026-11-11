import 'package:flutter/material.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/home_section.dart';

/// «Как мы работаем»: 4-step stepper plus the three delivery terms.
/// Explains the bought-to-order model up front (UI_DESIGN §2).
class HowWeWorkCard extends StatelessWidget {
  const HowWeWorkCard({required this.section, super.key});

  final HowWeWorkSection section;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SectionHeader(title: section.title),
        const SizedBox(height: AppSpacing.x12),
        Padding(
          padding: AppSpacing.screenPadding,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: c.surface,
              borderRadius: AppRadii.cardBorder,
            ),
            child: Padding(
              padding: const EdgeInsets.all(AppSpacing.x16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _Stepper(steps: section.steps),
                  if (section.delivery.isNotEmpty) ...[
                    const SizedBox(height: AppSpacing.x16),
                    const Divider(),
                    const SizedBox(height: AppSpacing.x12),
                    Text(
                      context.l10n.homeDeliveryTerms,
                      style: context.text.caption.copyWith(
                        color: c.inkSecondary,
                      ),
                    ),
                    for (final term in section.delivery) _DeliveryRow(term),
                  ],
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _Stepper extends StatelessWidget {
  const _Stepper({required this.steps});

  final List<String> steps;

  static const double _dot = 40;

  /// The server sends text only; icons follow the step order.
  static const _icons = [
    AppIcons.cart,
    AppIcons.statusBought,
    AppIcons.statusWarehouse,
    AppIcons.deliveryTruck,
  ];

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return Stack(
      children: [
        // Connector behind the dots, from the first centre to the last.
        Positioned(
          top: _dot / 2,
          left: 0,
          right: 0,
          child: FractionallySizedBox(
            widthFactor: (steps.length - 1) / steps.length,
            child: Container(height: AppSizes.selectedBorder, color: c.primary),
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (final (i, step) in steps.indexed)
              Expanded(
                child: Column(
                  children: [
                    Container(
                      width: _dot,
                      height: _dot,
                      decoration: BoxDecoration(
                        color: c.primarySoft,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: c.surface,
                          width: AppSizes.selectedBorder,
                        ),
                      ),
                      child: Icon(
                        i < _icons.length ? _icons[i] : AppIcons.package,
                        size: AppSizes.iconDense,
                        color: c.primary,
                      ),
                    ),
                    const SizedBox(height: AppSpacing.x8),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppSpacing.x2,
                      ),
                      child: Text(
                        step,
                        textAlign: TextAlign.center,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: context.text.caption,
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ],
    );
  }
}

class _DeliveryRow extends StatelessWidget {
  const _DeliveryRow(this.term);

  final DeliveryTerm term;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final icon = switch (term.kind) {
      DeliveryKind.air => AppIcons.deliveryAir,
      DeliveryKind.express => AppIcons.deliveryExpress,
      DeliveryKind.truck => AppIcons.deliveryTruck,
    };
    return Padding(
      padding: const EdgeInsets.only(top: AppSpacing.x8),
      child: Row(
        children: [
          Icon(icon, size: AppSizes.iconDense, color: c.primary),
          const SizedBox(width: AppSpacing.x12),
          Expanded(child: Text(term.name, style: context.text.bodyStrong)),
          const SizedBox(width: AppSpacing.x8),
          Text(
            term.term,
            style: context.text.body.copyWith(color: c.inkSecondary),
          ),
        ],
      ),
    );
  }
}
