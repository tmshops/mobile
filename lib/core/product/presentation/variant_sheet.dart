import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../di/injection.dart';
import '../../l10n/l10n.dart';
import '../../locale/locale_cubit.dart';
import '../../theme/theme.dart';
import '../../widgets/widgets.dart';
import '../domain/sku.dart';
import 'sku_properties_view.dart';
import 'variant_picker_cubit.dart';

/// What the customer picked in [showVariantSheet].
typedef ChosenVariant = ({Sku sku, String? label, String? imageUrl});

/// Variant sheet titled [title], confirmed with [actionLabel]. Returns the
/// chosen in-stock variant, or `null` when dismissed.
Future<ChosenVariant?> showVariantSheet(
  BuildContext context, {
  required String productId,
  required String title,
  required String actionLabel,
  String? currentSkuId,
}) {
  final languageCode = context.read<LocaleCubit>().state.languageCode;
  return showAppBottomSheet<ChosenVariant>(
    context: context,
    builder: (_) => BlocProvider(
      create: (_) => getIt<VariantPickerCubit>()
        ..load(
          languageCode: languageCode,
          productId: productId,
          currentSkuId: currentSkuId,
        ),
      child: VariantSheet(
        productId: productId,
        title: title,
        actionLabel: actionLabel,
        currentSkuId: currentSkuId,
      ),
    ),
  );
}

/// Body of [showVariantSheet]. Expects [VariantPickerCubit].
class VariantSheet extends StatelessWidget {
  const VariantSheet({
    required this.productId,
    required this.title,
    required this.actionLabel,
    this.currentSkuId,
    super.key,
  });

  final String productId;
  final String title;
  final String actionLabel;
  final String? currentSkuId;

  static const double _skeleton = 160;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return BlocBuilder<VariantPickerCubit, VariantPickerState>(
      builder: (context, state) {
        final picker = context.read<VariantPickerCubit>();
        return switch (state) {
          VariantPickerLoading() => AppBottomSheet(
            title: title,
            child: const Shimmer(
              child: SkeletonBox(width: double.infinity, height: _skeleton),
            ),
          ),
          VariantPickerFailure(:final failure) => AppBottomSheet(
            title: title,
            child: switch (failure) {
              final f? => FailureView(
                failure: f,
                onRetry: () => picker.load(
                  languageCode: context.read<LocaleCubit>().state.languageCode,
                  productId: productId,
                  currentSkuId: currentSkuId,
                ),
              ),
              null => Text(l10n.cartVariantGone, style: context.text.body),
            },
          ),
          final VariantPickerReady ready => _Ready(
            selection: ready,
            title: title,
            actionLabel: actionLabel,
            onSelect: picker.choose,
          ),
        };
      },
    );
  }
}

class _Ready extends StatelessWidget {
  const _Ready({
    required this.selection,
    required this.title,
    required this.actionLabel,
    required this.onSelect,
  });

  final VariantPickerReady selection;
  final String title;
  final String actionLabel;
  final void Function(String propertyId, String valueId) onSelect;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final current = selection.selection;
    final sku = current.sku;
    final missing = current.missing;
    final canConfirm = sku != null && sku.stock > 0;
    return AppBottomSheet(
      title: title,
      action: PrimaryButton(
        label: missing.isEmpty
            ? actionLabel
            : l10n.productSelectOption(missing.first.title),
        onPressed: !canConfirm
            ? null
            : () => Navigator.of(context).pop<ChosenVariant>((
                sku: sku,
                label: current.label,
                imageUrl: current.chosenImage,
              )),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SkuPropertiesView(selection: current, onSelect: onSelect),
          if (sku != null) StockNote(stock: sku.stock),
          const SizedBox(height: AppSpacing.x8),
        ],
      ),
    );
  }
}
