import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/locale/locale_cubit.dart';
import '../bloc/orders_cubit.dart';
import '../widgets/orders_view.dart';

/// «Мои заказы» (TZ §5.15).
class OrdersPage extends StatelessWidget {
  const OrdersPage({
    required this.onOpenOrder,
    required this.onOpenCatalog,
    required this.onOpenCart,
    super.key,
  });

  final ValueChanged<String> onOpenOrder;
  final VoidCallback onOpenCatalog;
  final VoidCallback onOpenCart;

  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (context) =>
        getIt<OrdersCubit>()
          ..load(context.read<LocaleCubit>().state.languageCode),
    child: OrdersView(
      onOpenOrder: onOpenOrder,
      onOpenCatalog: onOpenCatalog,
      onOpenCart: onOpenCart,
    ),
  );
}
