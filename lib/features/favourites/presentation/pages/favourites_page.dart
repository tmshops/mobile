import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/favourites/favourites_cubit.dart';
import '../../../../core/locale/locale_cubit.dart';
import '../../../../core/product/domain/product_summary.dart';
import '../bloc/favourites_view_cubit.dart';
import '../widgets/favourites_view.dart';

/// Favourites tab root (UI_DESIGN §7.17).
class FavouritesPage extends StatelessWidget {
  const FavouritesPage({
    required this.onOpenProduct,
    required this.onOpenCatalog,
    required this.onOpenCart,
    required this.onLogin,
    super.key,
  });

  final ValueChanged<ProductSummary> onOpenProduct;
  final VoidCallback onOpenCatalog;
  final VoidCallback onOpenCart;
  final VoidCallback onLogin;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<FavouritesViewCubit>()
        ..refresh(context.read<LocaleCubit>().state.languageCode, [
          for (final f in context.read<FavouritesCubit>().state.items) f.id,
        ]),
      child: FavouritesView(
        onOpenProduct: onOpenProduct,
        onOpenCatalog: onOpenCatalog,
        onOpenCart: onOpenCart,
        onLogin: onLogin,
      ),
    );
  }
}
