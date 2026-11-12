import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/cart/cart_cubit.dart';
import '../../../../core/l10n/l10n.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/order.dart';

/// «Повторить заказ»: puts the available lines in the cart and says what
/// did not fit (TZ §5.15).
Future<void> addRepeatedToCart(
  BuildContext context,
  RepeatedOrder repeated, {
  required VoidCallback onOpenCart,
}) async {
  final l10n = context.l10n;
  final cart = context.read<CartCubit>();
  for (final line in repeated.lines) {
    await cart.add(line);
  }
  if (!context.mounted) return;
  final added = repeated.lines.length;
  final missing = repeated.unavailable;
  showAppToast(
    context,
    message: switch ((added, missing)) {
      (0, _) => l10n.ordersRepeatNone,
      (_, 0) => l10n.ordersRepeatAdded(added),
      _ => l10n.ordersRepeatPartly(added, missing),
    },
    icon: added == 0 ? AppIcons.warning : AppIcons.cart,
    actionLabel: added == 0 ? null : l10n.ordersOpenCart,
    onAction: added == 0 ? null : onOpenCart,
  );
}
