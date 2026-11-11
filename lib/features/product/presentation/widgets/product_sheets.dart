import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/product_details.dart';
import '../bloc/product_bloc.dart';
import 'product_header_blocks.dart';

/// What the variant sheet was opened for; sets its button text.
enum SkuSheetPurpose { addToCart, buyNow }

/// Variant sheet (UI_DESIGN §7.14). Returns `true` when the user confirmed
/// with every property chosen; the caller then adds to the cart.
Future<bool> showSkuSheet(
  BuildContext context, {
  required SkuSheetPurpose purpose,
  required VoidCallback? onSizeChart,
}) async {
  final bloc = context.read<ProductBloc>();
  final confirmed = await showAppBottomSheet<bool>(
    context: context,
    builder: (_) => BlocProvider.value(
      value: bloc,
      child: _SkuSheet(purpose: purpose, onSizeChart: onSizeChart),
    ),
  );
  return confirmed ?? false;
}

class _SkuSheet extends StatelessWidget {
  const _SkuSheet({required this.purpose, required this.onSizeChart});

  final SkuSheetPurpose purpose;
  final VoidCallback? onSizeChart;

  static const double _photo = 72;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return BlocBuilder<ProductBloc, ProductState>(
      builder: (context, state) {
        final details = state.details;
        final selection = state.selection;
        if (details == null || selection == null) {
          return const SizedBox.shrink();
        }
        final bloc = context.read<ProductBloc>();
        final missing = selection.missing;
        final stock = state.stock;
        final image =
            selection.chosenImage ?? details.media.firstOrNull?.imageUrl ?? '';
        final label = missing.isNotEmpty
            ? l10n.productSelectOption(missing.first.title)
            : switch (purpose) {
                SkuSheetPurpose.addToCart => l10n.actionAddToCart,
                SkuSheetPurpose.buyNow => l10n.actionBuyNow,
              };
        final canConfirm = missing.isEmpty && (stock ?? 0) > 0;
        return AppBottomSheet(
          action: PrimaryButton(
            label: label,
            onPressed: canConfirm
                ? () => Navigator.of(context).pop(true)
                : null,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: AppRadii.imageBorder,
                    child: SizedBox.square(
                      dimension: _photo,
                      child: AppNetworkImage(url: image),
                    ),
                  ),
                  const SizedBox(width: AppSpacing.x12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ProductPriceBlock(
                          details: details,
                          selection: selection,
                        ),
                        if (stock != null) StockNote(stock: stock),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: AppSpacing.x16),
              SkuPropertiesView(
                selection: selection,
                onSizeChart: onSizeChart,
                onSelect: (propertyId, valueId) => bloc.add(
                  ProductEvent.valueSelected(
                    propertyId: propertyId,
                    valueId: valueId,
                  ),
                ),
              ),
              QuantityRow(
                quantity: state.quantity,
                max: stock,
                onChanged: (q) => bloc.add(ProductEvent.quantityChanged(q)),
              ),
              CommentField(
                initial: state.comment,
                onChanged: (text) =>
                    bloc.add(ProductEvent.commentChanged(text)),
              ),
            ],
          ),
        );
      },
    );
  }
}

/// «Количество» with a stepper capped at the variant's stock.
class QuantityRow extends StatelessWidget {
  const QuantityRow({
    required this.quantity,
    required this.onChanged,
    this.max,
    super.key,
  });

  final int quantity;
  final int? max;
  final ValueChanged<int> onChanged;

  static const _noStockLimit = 99;

  @override
  Widget build(BuildContext context) {
    final limit = max;
    return Row(
      children: [
        Expanded(
          child: Text(context.l10n.productQuantity, style: context.text.h3),
        ),
        QuantityStepper(
          value: quantity,
          max: limit == null || limit < 1 ? _noStockLimit : limit,
          onChanged: onChanged,
        ),
      ],
    );
  }
}

/// Folded «Комментарий для оператора» field (TZ §5.6.9).
class CommentField extends StatefulWidget {
  const CommentField({
    required this.initial,
    required this.onChanged,
    super.key,
  });

  final String initial;
  final ValueChanged<String> onChanged;

  @override
  State<CommentField> createState() => _CommentFieldState();
}

class _CommentFieldState extends State<CommentField> {
  late final _controller = TextEditingController(text: widget.initial);

  static const _maxLength = 200;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return CollapsibleSection(
      title: l10n.productComment,
      initiallyExpanded: widget.initial.isNotEmpty,
      child: AppTextField(
        controller: _controller,
        hint: l10n.productCommentHint,
        minLines: 2,
        maxLines: 4,
        maxLength: _maxLength,
        onChanged: widget.onChanged,
      ),
    );
  }
}

/// Size chart: horizontally scrollable table, first column pinned, zebra
/// rows (UI_DESIGN §7.14).
Future<void> showSizeChart(BuildContext context, SizeChart chart) =>
    showAppBottomSheet<void>(
      context: context,
      builder: (context) => AppBottomSheet(
        title: context.l10n.skuSizeChart,
        child: _SizeChartTable(chart: chart),
      ),
    );

class _SizeChartTable extends StatelessWidget {
  const _SizeChartTable({required this.chart});

  final SizeChart chart;

  static const double _cellWidth = 96;
  static const double _firstWidth = 112;

  @override
  Widget build(BuildContext context) {
    final rowHeight = MediaQuery.textScalerOf(
      context,
    ).scale(AppSizes.touchTarget);
    Widget cell(String text, int row, {bool isHeader = false, double? width}) {
      final c = context.colors;
      return Container(
        width: width ?? _cellWidth,
        height: rowHeight,
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.symmetric(horizontal: AppSpacing.x8),
        color: isHeader
            ? c.primarySoft
            : row.isEven
            ? c.background
            : c.surface,
        child: Text(
          text,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: isHeader
              ? context.text.caption.copyWith(fontWeight: FontWeight.w700)
              : context.text.body,
        ),
      );
    }

    final headers = chart.headers;
    return ClipRRect(
      borderRadius: AppRadii.imageBorder,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Pinned first column: the Chinese size.
          Column(
            children: [
              cell(
                headers.firstOrNull ?? '',
                0,
                isHeader: true,
                width: _firstWidth,
              ),
              for (final (i, row) in chart.rows.indexed)
                cell(row.firstOrNull ?? '', i, width: _firstWidth),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                children: [
                  Row(
                    children: [
                      for (final h in headers.skip(1))
                        cell(h, 0, isHeader: true),
                    ],
                  ),
                  for (final (i, row) in chart.rows.indexed)
                    Row(children: [for (final v in row.skip(1)) cell(v, i)]),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
