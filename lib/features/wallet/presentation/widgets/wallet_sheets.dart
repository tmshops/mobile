import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/utils/money_format.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/wallet.dart';

/// Top-up limits and quick amounts. Fixed until the app config endpoint
/// exists (TZ §3: AppConfigCubit); the server checks them again anyway.
abstract final class TopUpLimits {
  static const min = 10;
  static const max = 10000;
  static const quick = [100, 300, 500, 1000];
}

/// «Пополнение баланса» (UI_DESIGN §7.20). Returns the amount, or `null`
/// when dismissed.
Future<int?> showTopUpSheet(BuildContext context) => showAppBottomSheet<int>(
  context: context,
  builder: (_) => const TopUpSheet(),
);

class TopUpSheet extends StatefulWidget {
  const TopUpSheet({super.key});

  @override
  State<TopUpSheet> createState() => _TopUpSheetState();
}

class _TopUpSheetState extends State<TopUpSheet> {
  final _controller = TextEditingController();

  int? get _amount => int.tryParse(_controller.text);

  bool get _isValid {
    final amount = _amount;
    return amount != null &&
        amount >= TopUpLimits.min &&
        amount <= TopUpLimits.max;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _pick(int amount) => setState(() => _controller.text = '$amount');

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final range = l10n.walletTopUpRange(
      MoneyFormat.group(TopUpLimits.min),
      MoneyFormat.group(TopUpLimits.max),
    );
    final hasText = _controller.text.isNotEmpty;
    return AppBottomSheet(
      title: l10n.walletTopUpTitle,
      action: PrimaryButton(
        label: l10n.walletTopUpByCard,
        onPressed: _isValid
            ? () => Navigator.of(context).pop<int>(_amount)
            : null,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AppTextField(
            controller: _controller,
            label: l10n.walletTopUpAmount,
            keyboardType: TextInputType.number,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
              LengthLimitingTextInputFormatter('${TopUpLimits.max}'.length),
            ],
            autofocus: true,
            helperText: hasText && !_isValid ? null : range,
            errorText: hasText && !_isValid ? range : null,
            onChanged: (_) => setState(() {}),
          ),
          const SizedBox(height: AppSpacing.x12),
          Wrap(
            spacing: AppSpacing.x8,
            runSpacing: AppSpacing.x8,
            children: [
              for (final amount in TopUpLimits.quick)
                AppChip(
                  label: MoneyFormat.tmt(l10n, amount),
                  isSelected: _amount == amount,
                  onTap: () => _pick(amount),
                ),
            ],
          ),
          const SizedBox(height: AppSpacing.x8),
        ],
      ),
    );
  }
}

/// «Чем оплатить» for a surcharge: balance (if enough) or card. Returns
/// the method, or `null` when dismissed.
Future<PayMethod?> showPayMethodSheet(
  BuildContext context, {
  required int amount,
  required int balance,
}) => showAppBottomSheet<PayMethod>(
  context: context,
  builder: (_) => PayMethodSheet(amount: amount, balance: balance),
);

class PayMethodSheet extends StatefulWidget {
  const PayMethodSheet({
    required this.amount,
    required this.balance,
    super.key,
  });

  final int amount;
  final int balance;

  @override
  State<PayMethodSheet> createState() => _PayMethodSheetState();
}

class _PayMethodSheetState extends State<PayMethodSheet> {
  late PayMethod _method = _canUseBalance ? PayMethod.balance : PayMethod.card;

  bool get _canUseBalance => widget.balance >= widget.amount;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final balance = MoneyFormat.tmt(l10n, widget.balance);
    return AppBottomSheet(
      title: l10n.walletPayTitle,
      action: PrimaryButton(
        label: l10n.checkoutPay(MoneyFormat.tmt(l10n, widget.amount)),
        onPressed: () => Navigator.of(context).pop<PayMethod>(_method),
      ),
      child: Column(
        children: [
          _MethodRow(
            icon: AppIcons.wallet,
            title: l10n.walletPayFromBalance,
            subtitle: _canUseBalance
                ? l10n.walletAvailable(balance)
                : l10n.walletNotEnough(balance),
            isSelected: _method == PayMethod.balance,
            onTap: _canUseBalance
                ? () => setState(() => _method = PayMethod.balance)
                : null,
          ),
          const SizedBox(height: AppSpacing.x8),
          _MethodRow(
            icon: AppIcons.statusPaid,
            title: l10n.walletPayByCard,
            isSelected: _method == PayMethod.card,
            onTap: () => setState(() => _method = PayMethod.card),
          ),
          const SizedBox(height: AppSpacing.x8),
        ],
      ),
    );
  }
}

class _MethodRow extends StatelessWidget {
  const _MethodRow({
    required this.icon,
    required this.title,
    required this.isSelected,
    required this.onTap,
    this.subtitle,
  });

  final IconData icon;
  final String title;
  final String? subtitle;
  final bool isSelected;

  /// `null` = not possible (shown greyed).
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final hint = subtitle;
    return Semantics(
      inMutuallyExclusiveGroup: true,
      checked: isSelected,
      enabled: onTap != null,
      child: Opacity(
        opacity: onTap == null ? AppOpacity.disabled : 1,
        child: Material(
          color: isSelected ? c.primarySoft : c.surface,
          borderRadius: AppRadii.cardBorder,
          child: InkWell(
            onTap: onTap,
            borderRadius: AppRadii.cardBorder,
            child: Padding(
              padding: const EdgeInsets.all(AppSpacing.x12),
              child: Row(
                children: [
                  Icon(icon, color: c.ink),
                  const SizedBox(width: AppSpacing.x12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(title, style: context.text.bodyStrong),
                        if (hint != null)
                          Text(
                            hint,
                            style: context.text.caption.copyWith(
                              color: c.inkSecondary,
                            ),
                          ),
                      ],
                    ),
                  ),
                  RadioMark(isSelected: isSelected),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
