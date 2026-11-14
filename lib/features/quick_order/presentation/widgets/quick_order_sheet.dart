import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/auth/auth_cubit.dart';
import '../../../../core/cart/cart_item.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/l10n/l10n.dart';
import '../../../../core/locale/locale_cubit.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/utils/money_format.dart';
import '../../../../core/utils/phone_format.dart';
import '../../../../core/widgets/widgets.dart';
import '../bloc/quick_order_cubit.dart';

/// What came of [showQuickOrderSheet]: the order was placed, and the
/// customer either wants to see it or keeps shopping.
typedef QuickOrderResult = ({String orderNumber, bool wantsOrder});

/// «Быстрый заказ» for [lines] (UI_DESIGN §7.15, TZ §5.11). `null` when the
/// sheet was closed before the order was placed.
Future<QuickOrderResult?> showQuickOrderSheet(
  BuildContext context, {
  required List<CartItem> lines,
}) async {
  QuickOrderResult? placed;
  final wantsOrder = await showAppBottomSheet<bool>(
    context: context,
    builder: (_) => BlocProvider(
      create: (_) => getIt<QuickOrderCubit>(),
      child: BlocListener<QuickOrderCubit, QuickOrderState>(
        listenWhen: (a, b) => a.orderNumber == null && b.orderNumber != null,
        listener: (_, state) {
          final number = state.orderNumber;
          if (number != null) placed = (orderNumber: number, wantsOrder: false);
        },
        child: QuickOrderSheet(lines: lines),
      ),
    ),
  );
  final result = placed;
  if (result == null) return null;
  return (orderNumber: result.orderNumber, wantsOrder: wantsOrder ?? false);
}

/// Body of [showQuickOrderSheet]. Expects [QuickOrderCubit] and
/// [AuthCubit]. Pops `true` for «К заказу».
class QuickOrderSheet extends StatelessWidget {
  const QuickOrderSheet({required this.lines, super.key});

  final List<CartItem> lines;

  @override
  Widget build(BuildContext context) {
    final phone = context.select<AuthCubit, String?>(
      (auth) => auth.state.profile?.phone,
    );
    return BlocBuilder<QuickOrderCubit, QuickOrderState>(
      builder: (context, state) => AppBottomSheet(
        title: context.l10n.quickOrderTitle,
        // Steps differ in height: grow and shrink smoothly, no new page.
        child: AnimatedSize(
          duration: AppMotion.of(context, AppMotion.base),
          curve: AppMotion.enter,
          alignment: Alignment.topCenter,
          child: switch (state.step) {
            QuickOrderStep.done => _DoneStep(number: state.orderNumber ?? ''),
            QuickOrderStep.code => _CodeStep(state: state, lines: lines),
            QuickOrderStep.phone when phone != null => _SignedInStep(
              phone: phone,
              state: state,
              lines: lines,
            ),
            QuickOrderStep.phone => _GuestPhoneStep(state: state, lines: lines),
          },
        ),
      ),
    );
  }
}

String _language(BuildContext context) =>
    context.read<LocaleCubit>().state.languageCode;

String? _errorText(BuildContext context, QuickOrderState state) {
  final failure = state.failure;
  return failure == null ? null : actionFailureText(context.l10n, failure);
}

/// Explanation and what is being ordered, on top of the first step.
class _Intro extends StatelessWidget {
  const _Intro({required this.lines});

  final List<CartItem> lines;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          context.l10n.quickOrderText,
          style: context.text.body.copyWith(color: context.colors.inkSecondary),
        ),
        const SizedBox(height: AppSpacing.x16),
        _OrderSummary(lines: lines),
        const SizedBox(height: AppSpacing.x16),
      ],
    );
  }
}

/// Thumbnail + title + price, or «3 товара · 1 216 TMT» for several lines.
class _OrderSummary extends StatelessWidget {
  const _OrderSummary({required this.lines});

  final List<CartItem> lines;

  @override
  Widget build(BuildContext context) {
    final first = lines.firstOrNull;
    if (first == null) return const SizedBox.shrink();
    final l10n = context.l10n;
    final total = lines.fold<int>(0, (sum, l) => sum + l.price * l.quantity);
    final pieces = lines.fold<int>(0, (sum, l) => sum + l.quantity);
    final isSingle = lines.length == 1;
    return Row(
      children: [
        ClipRRect(
          borderRadius: AppRadii.imageBorder,
          child: SizedBox.square(
            dimension: AppSizes.swatch,
            child: AppNetworkImage(url: first.imageUrl),
          ),
        ),
        const SizedBox(width: AppSpacing.x12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (isSingle)
                Text(
                  first.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: context.text.body,
                ),
              Text(
                isSingle && first.quantity == 1
                    ? MoneyFormat.tmt(l10n, total)
                    : l10n.quickOrderLines(
                        pieces,
                        MoneyFormat.tmt(l10n, total),
                      ),
                style: context.text.bodyStrong,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _GuestPhoneStep extends StatefulWidget {
  const _GuestPhoneStep({required this.state, required this.lines});

  final QuickOrderState state;
  final List<CartItem> lines;

  @override
  State<_GuestPhoneStep> createState() => _GuestPhoneStepState();
}

class _GuestPhoneStepState extends State<_GuestPhoneStep> {
  String _phone = '';

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<QuickOrderCubit>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _Intro(lines: widget.lines),
        PhoneField(
          autofocus: true,
          errorText: _errorText(context, widget.state),
          onChanged: (digits) => setState(() => _phone = digits),
        ),
        const SizedBox(height: AppSpacing.x16),
        PrimaryButton(
          label: context.l10n.quickOrderGetCode,
          isLoading: widget.state.isBusy,
          onPressed: _phone.length == QuickOrderCubit.phoneLength
              ? () => cubit.requestCode(_language(context), _phone)
              : null,
        ),
      ],
    );
  }
}

class _CodeStep extends StatelessWidget {
  const _CodeStep({required this.state, required this.lines});

  final QuickOrderState state;
  final List<CartItem> lines;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final cubit = context.read<QuickOrderCubit>();
    final error = _errorText(context, state);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          l10n.quickOrderCodeSent(state.code?.destination ?? ''),
          style: context.text.body,
        ),
        const SizedBox(height: AppSpacing.x16),
        OtpField(
          length: state.code?.codeLength ?? 4,
          hasError: error != null,
          onChanged: (_) => cubit.codeEdited(),
          onCompleted: (code) =>
              cubit.confirmCode(_language(context), code, lines),
        ),
        if (error != null) ...[
          const SizedBox(height: AppSpacing.x8),
          Text(
            error,
            style: context.text.caption.copyWith(color: context.colors.danger),
          ),
        ],
        if (state.isBusy) ...[
          const SizedBox(height: AppSpacing.x16),
          const Center(
            child: SizedBox.square(
              dimension: AppSizes.spinner,
              child: CircularProgressIndicator(strokeWidth: 2),
            ),
          ),
        ],
        const SizedBox(height: AppSpacing.x8),
        Align(
          alignment: AlignmentDirectional.centerStart,
          child: TertiaryButton(
            label: l10n.quickOrderOtherNumber,
            onPressed: state.isBusy ? null : cubit.back,
          ),
        ),
      ],
    );
  }
}

class _SignedInStep extends StatelessWidget {
  const _SignedInStep({
    required this.phone,
    required this.state,
    required this.lines,
  });

  final String phone;
  final QuickOrderState state;
  final List<CartItem> lines;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final c = context.colors;
    final error = _errorText(context, state);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _Intro(lines: lines),
        Text(
          l10n.quickOrderPhoneLabel,
          style: context.text.caption.copyWith(color: c.inkSecondary),
        ),
        const SizedBox(height: AppSpacing.x4),
        Text(PhoneFormat.national(phone), style: context.text.bodyStrong),
        if (error != null) ...[
          const SizedBox(height: AppSpacing.x8),
          Text(error, style: context.text.caption.copyWith(color: c.danger)),
        ],
        const SizedBox(height: AppSpacing.x16),
        PrimaryButton(
          label: l10n.quickOrderConfirm,
          isLoading: state.isBusy,
          onPressed: () =>
              context.read<QuickOrderCubit>().place(_language(context), lines),
        ),
      ],
    );
  }
}

class _DoneStep extends StatelessWidget {
  const _DoneStep({required this.number});

  final String number;

  static const double _circle = 72;
  static const double _icon = 40;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final c = context.colors;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Center(
          child: TweenAnimationBuilder<double>(
            tween: Tween(begin: AppMotion.isReduced(context) ? 1 : 0, end: 1),
            duration: AppMotion.slow * 2,
            curve: Curves.elasticOut,
            builder: (context, scale, child) =>
                Transform.scale(scale: scale, child: child),
            child: Container(
              width: _circle,
              height: _circle,
              decoration: BoxDecoration(
                color: c.success.withValues(alpha: AppOpacity.tint),
                shape: BoxShape.circle,
              ),
              child: Icon(AppIcons.checkCircle, size: _icon, color: c.success),
            ),
          ),
        ),
        const SizedBox(height: AppSpacing.x16),
        Text(
          l10n.quickOrderDoneTitle(number),
          style: context.text.h2,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: AppSpacing.x4),
        Text(
          l10n.quickOrderDoneText,
          style: context.text.body.copyWith(color: c.inkSecondary),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: AppSpacing.x24),
        PrimaryButton(
          label: l10n.quickOrderToOrder,
          onPressed: () => Navigator.of(context).pop(true),
        ),
        const SizedBox(height: AppSpacing.x8),
        SecondaryButton(
          label: l10n.quickOrderContinue,
          onPressed: () => Navigator.of(context).pop(false),
        ),
      ],
    );
  }
}
