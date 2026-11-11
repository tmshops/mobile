import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/cart/cart_cubit.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/locale/locale_cubit.dart';
import '../../../../core/region/region_cubit.dart';
import '../bloc/cart_quote_bloc.dart';
import '../widgets/cart_view.dart';

/// Cart tab root (UI_DESIGN §7.7, TZ §5.10).
class CartPage extends StatelessWidget {
  const CartPage({
    required this.onOpenProduct,
    required this.onOpenCatalog,
    required this.onComingSoon,
    super.key,
  });

  final ValueChanged<String> onOpenProduct;
  final VoidCallback onOpenCatalog;
  final VoidCallback onComingSoon;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CartQuoteBloc>()
        ..add(
          CartQuoteEvent.started(
            languageCode: context.read<LocaleCubit>().state.languageCode,
            regionId: context.read<RegionCubit>().state.selectedId,
            lines: context.read<CartCubit>().state.items,
          ),
        ),
      child: CartView(
        onOpenProduct: onOpenProduct,
        onOpenCatalog: onOpenCatalog,
        onComingSoon: onComingSoon,
      ),
    );
  }
}
