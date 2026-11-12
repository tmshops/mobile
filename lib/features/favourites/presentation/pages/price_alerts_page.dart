import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/locale/locale_cubit.dart';
import '../../../../core/price_alerts/price_alerts_cubit.dart';
import '../../../../core/product/domain/product_summary.dart';
import '../widgets/price_alerts_view.dart';

/// «Подписки на снижение цены» inside the Profile tab (UI_DESIGN §7.17).
/// Uses the global [PriceAlertsCubit] and refreshes it on open.
class PriceAlertsPage extends StatefulWidget {
  const PriceAlertsPage({
    required this.onOpenProduct,
    required this.onOpenCatalog,
    super.key,
  });

  final ValueChanged<ProductSummary> onOpenProduct;
  final VoidCallback onOpenCatalog;

  @override
  State<PriceAlertsPage> createState() => _PriceAlertsPageState();
}

class _PriceAlertsPageState extends State<PriceAlertsPage> {
  @override
  void initState() {
    super.initState();
    context.read<PriceAlertsCubit>().load(
      context.read<LocaleCubit>().state.languageCode,
    );
  }

  @override
  Widget build(BuildContext context) => PriceAlertsView(
    onOpenProduct: widget.onOpenProduct,
    onOpenCatalog: widget.onOpenCatalog,
  );
}
