import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/locale/locale_cubit.dart';
import '../../../../core/product/domain/product_summary.dart';
import '../../../../core/region/region_cubit.dart';
import '../bloc/product_bloc.dart';
import '../widgets/product_view.dart';

/// Product page, full-screen over the menu: `/product/:id` (TZ §4, §5.6).
class ProductPage extends StatelessWidget {
  const ProductPage({
    required this.id,
    required this.onOpenProduct,
    required this.onOpenCart,
    required this.onLogin,
    required this.onComingSoon,
    this.preview,
    super.key,
  });

  final String id;

  /// The tile that was tapped, if any: shown while details load.
  final ProductSummary? preview;
  final ValueChanged<ProductSummary> onOpenProduct;
  final VoidCallback onOpenCart;
  final VoidCallback onLogin;
  final VoidCallback onComingSoon;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProductBloc>()
        ..add(
          ProductEvent.started(
            languageCode: context.read<LocaleCubit>().state.languageCode,
            id: id,
            regionId: context.read<RegionCubit>().state.selectedId,
            preview: preview,
          ),
        ),
      child: ProductView(
        onOpenProduct: onOpenProduct,
        onOpenCart: onOpenCart,
        onLogin: onLogin,
        onComingSoon: onComingSoon,
      ),
    );
  }
}
