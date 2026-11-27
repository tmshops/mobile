import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/cart/cart_cubit.dart';
import '../../../../core/l10n/l10n.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/widgets/widgets.dart';

/// Stepper behind a line's «×N» badge. Each step goes to the cart at once,
/// so the sheet only reads the live quantity back from [CartCubit].
Future<void> showCartQuantitySheet(
  BuildContext context, {
  required String lineKey,
  required int max,
}) {
  final cart = context.read<CartCubit>();
  return showAppBottomSheet<void>(
    context: context,
    builder: (_) => BlocProvider.value(
      value: cart,
      child: _CartQuantitySheet(lineKey: lineKey, max: max),
    ),
  );
}

class _CartQuantitySheet extends StatelessWidget {
  const _CartQuantitySheet({required this.lineKey, required this.max});

  final String lineKey;
  final int max;

  @override
  Widget build(BuildContext context) {
    return AppBottomSheet(
      title: context.l10n.cartQuantityTitle,
      child: Padding(
        padding: const EdgeInsets.only(bottom: AppSpacing.x16),
        child: Center(
          child: BlocSelector<CartCubit, CartState, int?>(
            selector: (cart) {
              for (final item in cart.items) {
                if (item.key == lineKey) return item.quantity;
              }
              return null;
            },
            builder: (context, quantity) {
              // The line was removed meanwhile: nothing left to change.
              if (quantity == null) return const SizedBox.shrink();
              return QuantityStepper(
                value: quantity,
                max: max < quantity ? quantity : max,
                onChanged: (q) =>
                    context.read<CartCubit>().setQuantity(lineKey, q),
              );
            },
          ),
        ),
      ),
    );
  }
}
