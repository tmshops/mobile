import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/theme/theme.dart';
import '../../domain/entities/checkout.dart';
import '../bloc/checkout_bloc.dart';

/// White card with a small numbered header (UI_DESIGN §7.8).
class CheckoutSection extends StatelessWidget {
  const CheckoutSection({
    required this.number,
    required this.title,
    required this.child,
    this.error,
    super.key,
  });

  final int number;
  final String title;
  final Widget child;

  /// Shown under the header after «Оплатить» when the section is invalid.
  final String? error;

  static const double _badge = 24;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final problem = error;
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        AppSpacing.screen,
        0,
        AppSpacing.screen,
        AppSpacing.x12,
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: c.background,
          borderRadius: AppRadii.cardBorder,
          border: problem == null
              ? null
              : Border.all(color: c.danger, width: AppSizes.inputBorder),
        ),
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.x16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Container(
                    width: _badge,
                    height: _badge,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: c.primarySoft,
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      '$number',
                      textScaler: TextScaler.noScaling,
                      style: context.text.micro.copyWith(
                        color: c.primaryPressed,
                      ),
                    ),
                  ),
                  const SizedBox(width: AppSpacing.x8),
                  Expanded(
                    child: Semantics(
                      header: true,
                      child: Text(title, style: context.text.h3),
                    ),
                  ),
                ],
              ),
              if (problem != null) ...[
                const SizedBox(height: AppSpacing.x4),
                Text(
                  problem,
                  style: context.text.caption.copyWith(color: c.danger),
                ),
              ],
              const SizedBox(height: AppSpacing.x12),
              child,
            ],
          ),
        ),
      ),
    );
  }
}

/// Sends an edited draft, built from the bloc's latest one so fast edits
/// in different fields never overwrite each other.
void editDraft(
  BuildContext context,
  CheckoutDraft Function(CheckoutDraft draft) change,
) {
  final bloc = context.read<CheckoutBloc>();
  bloc.add(CheckoutEvent.draftChanged(change(bloc.state.draft)));
}
