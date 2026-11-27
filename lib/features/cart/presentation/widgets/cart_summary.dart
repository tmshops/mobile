import 'package:flutter/material.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/cart_quote.dart';

/// Sticky bottom: round «Выбрать все» and «Быстрый заказ» above,
/// «Итого … ▾» (tap → breakdown) and «Оформить (N)» (UI_DESIGN §7.7).
class CartSummaryBar extends StatelessWidget {
  const CartSummaryBar({
    required this.total,
    required this.selectedCount,
    required this.isAllSelected,
    required this.onSelectAll,
    required this.canCheckout,
    required this.onCheckout,
    required this.onQuickOrder,
    this.summary,
    this.isLoading = false,
    super.key,
  });

  /// Server total, or the local sum of ticked lines before it arrives.
  final int total;
  final int selectedCount;
  final bool isAllSelected;
  final ValueChanged<bool> onSelectAll;
  final CartSummary? summary;
  final bool isLoading;
  final bool canCheckout;
  final VoidCallback onCheckout;
  final VoidCallback onQuickOrder;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final breakdown = summary;
    return StickyActionBar(
      above: Row(
        children: [
          Expanded(
            child: _SelectAll(isAll: isAllSelected, onChanged: onSelectAll),
          ),
          TertiaryButton(
            label: l10n.productQuickOrder,
            onPressed: canCheckout ? onQuickOrder : null,
          ),
        ],
      ),
      leading: Opacity(
        // A recalculation is on its way: the number is not final yet.
        opacity: isLoading ? AppOpacity.disabled : 1,
        child: ActionBarTotal(
          amount: total,
          onTap: breakdown == null
              ? null
              : () => showBreakdownSheet(context, breakdown),
        ),
      ),
      primary: PrimaryButton(
        label: selectedCount > 0
            ? l10n.cartCheckoutCount(selectedCount)
            : l10n.cartCheckout,
        onPressed: canCheckout ? onCheckout : null,
      ),
    );
  }
}

/// Round tick plus «Выбрать все»; the whole row is one tap target.
class _SelectAll extends StatelessWidget {
  const _SelectAll({required this.isAll, required this.onChanged});

  final bool isAll;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) => MergeSemantics(
    child: InkWell(
      onTap: () => onChanged(!isAll),
      borderRadius: AppRadii.badgeBorder,
      child: Row(
        children: [
          RoundCheckbox(value: isAll, onChanged: (v) => onChanged(v ?? false)),
          Flexible(
            child: Text(
              context.l10n.cartSelectAll,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: context.text.body,
            ),
          ),
        ],
      ),
    ),
  );
}

/// Items, China delivery, international estimate, discount, total.
Future<void> showBreakdownSheet(BuildContext context, CartSummary summary) =>
    showAppBottomSheet<void>(
      context: context,
      builder: (context) {
        final l10n = context.l10n;
        return AppBottomSheet(
          title: l10n.cartBreakdownTitle,
          child: MoneyBreakdown(
            total: summary.total,
            rows: [
              MoneyRow(label: l10n.moneyItems, amount: summary.items),
              MoneyRow(
                label: l10n.moneyChinaDelivery,
                amount: summary.chinaDelivery,
              ),
              MoneyRow(
                label: l10n.moneyInternationalDelivery,
                amount: summary.internationalEstimate,
                info: l10n.deliveryAfterWeighingInfo,
              ),
              if (summary.discount > 0)
                MoneyRow(
                  label: l10n.moneyDiscount,
                  amount: summary.discount,
                  isDiscount: true,
                ),
            ],
          ),
        );
      },
    );

/// Promo code: folded row with field and «Применить»; once accepted, a
/// chip with × (TZ §5.10).
class PromoCodeBlock extends StatefulWidget {
  const PromoCodeBlock({
    required this.onApply,
    required this.onRemove,
    this.appliedCode,
    this.error,
    this.isChecking = false,
    super.key,
  });

  final String? appliedCode;

  /// Server text for a rejected code.
  final String? error;
  final bool isChecking;
  final ValueChanged<String> onApply;
  final VoidCallback onRemove;

  @override
  State<PromoCodeBlock> createState() => _PromoCodeBlockState();
}

class _PromoCodeBlockState extends State<PromoCodeBlock> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _apply() {
    FocusScope.of(context).unfocus();
    widget.onApply(_controller.text);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final applied = widget.appliedCode;
    return Padding(
      padding: AppSpacing.screenPadding,
      child: applied != null
          ? Align(
              alignment: AlignmentDirectional.centerStart,
              child: RemovableChip(
                label: l10n.cartPromoApplied(applied),
                onRemove: widget.onRemove,
              ),
            )
          : CollapsibleSection(
              title: l10n.cartPromo,
              initiallyExpanded: widget.error != null,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: AppTextField(
                      controller: _controller,
                      hint: l10n.cartPromoHint,
                      errorText: widget.error,
                      prefix: const Icon(
                        AppIcons.promo,
                        size: AppSizes.iconDense,
                      ),
                      textInputAction: TextInputAction.done,
                      onSubmitted: (_) => _apply(),
                    ),
                  ),
                  const SizedBox(width: AppSpacing.x8),
                  SecondaryButton(
                    label: l10n.cartPromoApply,
                    isExpanded: false,
                    isLoading: widget.isChecking,
                    onPressed: _apply,
                  ),
                ],
              ),
            ),
    );
  }
}
