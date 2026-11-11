import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/cart/cart_cubit.dart';
import '../../../../core/cart/cart_item.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/l10n/l10n.dart';
import '../../../../core/locale/locale_cubit.dart';
import '../../../../core/product/presentation/sku_properties_view.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/widgets/widgets.dart';
import '../bloc/variant_picker_cubit.dart';

/// Change-variant sheet of a cart line. On «Сохранить» the line moves to
/// the new variant (merged if that variant is already in the cart).
Future<void> showVariantSheet(BuildContext context, CartItem line) {
  final cart = context.read<CartCubit>();
  final languageCode = context.read<LocaleCubit>().state.languageCode;
  return showAppBottomSheet<void>(
    context: context,
    builder: (_) => BlocProvider(
      create: (_) => getIt<VariantPickerCubit>()
        ..load(
          languageCode: languageCode,
          productId: line.productId,
          currentSkuId: line.skuId,
        ),
      child: _VariantSheet(line: line, cart: cart),
    ),
  );
}

class _VariantSheet extends StatelessWidget {
  const _VariantSheet({required this.line, required this.cart});

  final CartItem line;
  final CartCubit cart;

  static const double _skeleton = 160;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return BlocBuilder<VariantPickerCubit, VariantPickerState>(
      builder: (context, state) {
        final picker = context.read<VariantPickerCubit>();
        return switch (state) {
          VariantPickerLoading() => AppBottomSheet(
            title: l10n.cartChangeVariant,
            child: const Shimmer(
              child: SkeletonBox(width: double.infinity, height: _skeleton),
            ),
          ),
          VariantPickerFailure(:final failure) => AppBottomSheet(
            title: l10n.cartChangeVariant,
            child: switch (failure) {
              final f? => FailureView(
                failure: f,
                onRetry: () => picker.load(
                  languageCode: context.read<LocaleCubit>().state.languageCode,
                  productId: line.productId,
                  currentSkuId: line.skuId,
                ),
              ),
              null => Text(l10n.cartVariantGone, style: context.text.body),
            },
          ),
          final VariantPickerReady ready => () {
            final selection = ready.selection;
            final sku = selection.sku;
            final missing = selection.missing;
            final canSave = sku != null && sku.stock > 0;
            return AppBottomSheet(
              title: l10n.cartChangeVariant,
              action: PrimaryButton(
                label: missing.isEmpty
                    ? l10n.cartSaveVariant
                    : l10n.productSelectOption(missing.first.title),
                onPressed: !canSave
                    ? null
                    : () {
                        cart.changeVariant(
                          line.key,
                          skuId: sku.id,
                          skuLabel: selection.label,
                          price: sku.price,
                          imageUrl: selection.chosenImage ?? line.imageUrl,
                        );
                        Navigator.of(context).pop();
                      },
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SkuPropertiesView(
                    selection: selection,
                    onSelect: picker.choose,
                  ),
                  if (sku != null) StockNote(stock: sku.stock),
                  const SizedBox(height: AppSpacing.x8),
                ],
              ),
            );
          }(),
        };
      },
    );
  }
}
