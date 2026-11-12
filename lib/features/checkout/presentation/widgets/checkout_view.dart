import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/network/connectivity_cubit.dart';
import '../../../../core/region/region_cubit.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/utils/money_format.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/checkout.dart';
import '../bloc/checkout_bloc.dart';
import 'order_sections.dart';
import 'recipient_receiving_sections.dart';

/// One-screen checkout (UI_DESIGN §7.8): six numbered cards on a grey
/// background and a sticky pay button. Expects [CheckoutBloc] above it.
class CheckoutView extends StatelessWidget {
  const CheckoutView({required this.onReadOffer, super.key});

  final VoidCallback onReadOffer;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<CheckoutBloc>();
    final c = context.colors;
    return MultiBlocListener(
      listeners: [
        BlocListener<RegionCubit, RegionState>(
          listenWhen: (a, b) => a.selectedId != b.selectedId,
          listener: (_, region) =>
              bloc.add(CheckoutEvent.regionChanged(region.selectedId)),
        ),
        BlocListener<ConnectivityCubit, bool>(
          listenWhen: (wasOnline, isOnline) => !wasOnline && isOnline,
          listener: (_, _) {
            if (bloc.state.previewFailure != null) {
              bloc.add(const CheckoutEvent.previewRetried());
            }
          },
        ),
        BlocListener<CheckoutBloc, CheckoutState>(
          listenWhen: (a, b) =>
              b.submitFailure != null && a.submitFailure != b.submitFailure,
          listener: (context, _) => showAppToast(
            context,
            message: context.l10n.checkoutSubmitError,
            icon: AppIcons.warning,
          ),
        ),
      ],
      child: Scaffold(
        backgroundColor: c.surface,
        appBar: AppBar(
          backgroundColor: c.surface,
          title: Text(context.l10n.checkoutTitle),
        ),
        body: Column(
          children: [
            BlocBuilder<ConnectivityCubit, bool>(
              builder: (_, isOnline) =>
                  isOnline ? const SizedBox.shrink() : const OfflineBanner(),
            ),
            Expanded(
              child: BlocBuilder<CheckoutBloc, CheckoutState>(
                builder: (context, state) =>
                    _Sections(state: state, onReadOffer: onReadOffer),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BlocBuilder<CheckoutBloc, CheckoutState>(
          builder: (context, state) => _PayBar(
            state: state,
            onPay: () => bloc.add(const CheckoutEvent.submitted()),
          ),
        ),
      ),
    );
  }
}

class _Sections extends StatelessWidget {
  const _Sections({required this.state, required this.onReadOffer});

  final CheckoutState state;
  final VoidCallback onReadOffer;

  static const double _skeleton = 160;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final preview = state.preview;
    final draft = state.draft;
    final failure = state.previewFailure;
    final problems = state.showProblems
        ? state.problems
        : const <DraftProblem>[];
    return ListView(
      padding: const EdgeInsets.only(
        top: AppSpacing.x8,
        bottom: AppSpacing.x24,
      ),
      children: [
        if (state.status == CheckoutStatus.priceChanged)
          _Notice(
            text: l10n.checkoutPriceChanged,
            color: context.colors.warning,
          ),
        if (failure != null && preview == null)
          FailureView(
            failure: failure,
            onRetry: () => context.read<CheckoutBloc>().add(
              const CheckoutEvent.previewRetried(),
            ),
          )
        else ...[
          if (failure != null)
            _Notice(
              text: l10n.checkoutPreviewError,
              color: context.colors.danger,
            ),
          RecipientSection(
            recipient: draft.recipient,
            showError: problems.contains(DraftProblem.recipient),
          ),
          ReceivingSection(
            draft: draft,
            preview: preview,
            showErrors: state.showProblems,
          ),
          if (preview == null)
            const Padding(
              padding: AppSpacing.screenPadding,
              child: Shimmer(
                child: SkeletonBox(
                  width: double.infinity,
                  height: _skeleton,
                  borderRadius: AppRadii.cardBorder,
                ),
              ),
            )
          else ...[
            DeliveryTypeSection(
              preview: preview,
              selected: draft.deliveryType,
              showError: problems.contains(DraftProblem.deliveryType),
            ),
            ServicesSection(
              services: preview.services,
              selected: draft.serviceIds,
              comment: draft.comment,
            ),
            PaymentSection(payment: draft.payment, summary: preview.summary),
            TotalSection(
              summary: preview.summary,
              hasConsent: draft.hasConsent,
              showError: problems.contains(DraftProblem.consent),
              onReadOffer: onReadOffer,
            ),
          ],
        ],
      ],
    );
  }
}

class _Notice extends StatelessWidget {
  const _Notice({required this.text, required this.color});

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.fromLTRB(
      AppSpacing.screen,
      0,
      AppSpacing.screen,
      AppSpacing.x12,
    ),
    child: Semantics(
      liveRegion: true,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color.withValues(alpha: AppOpacity.tint),
          borderRadius: AppRadii.cardBorder,
        ),
        child: Padding(
          padding: AppSpacing.cardPadding,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(AppIcons.warning, color: color, size: AppSizes.iconDense),
              const SizedBox(width: AppSpacing.x8),
              Expanded(child: Text(text, style: context.text.body)),
            ],
          ),
        ),
      ),
    ),
  );
}

/// Sticky «Оплатить 1 216 TMT» (card) / «Оформить заказ» (cash), with the
/// amount rolling on change; «Подтвердить …» after a price change.
class _PayBar extends StatelessWidget {
  const _PayBar({required this.state, required this.onPay});

  final CheckoutState state;
  final VoidCallback onPay;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final summary = state.preview?.summary;
    final amount = summary?.payNow ?? 0;
    final formatted = MoneyFormat.tmt(l10n, amount);
    final label = switch (state.status) {
      CheckoutStatus.priceChanged => l10n.checkoutConfirmNew(formatted),
      _ when state.draft.payment == PaymentMethod.cash => l10n.checkoutPlace,
      _ => l10n.checkoutPay(formatted),
    };
    return StickyActionBar(
      leading: summary == null
          ? null
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  l10n.moneyTotal,
                  style: context.text.caption.copyWith(
                    color: context.colors.inkSecondary,
                  ),
                ),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  alignment: AlignmentDirectional.centerStart,
                  child: RollingAmount(amount: summary.total),
                ),
              ],
            ),
      primary: PrimaryButton(
        label: label,
        isLoading: state.status == CheckoutStatus.submitting,
        onPressed: state.canSubmit ? onPay : null,
      ),
    );
  }
}
