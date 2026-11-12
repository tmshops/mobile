import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/product/domain/product_summary.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/locale/locale_cubit.dart';
import '../bloc/category_products_bloc.dart';
import '../widgets/category_products_view.dart';

/// Products of one category: `/catalog/category/:slug` (TZ §5.5).
class CategoryProductsPage extends StatelessWidget {
  const CategoryProductsPage({
    required this.slug,
    required this.onOpenCategory,
    required this.onOpenProduct,
    required this.onOpenCatalog,
    super.key,
  });

  final String slug;
  final ValueChanged<String> onOpenCategory;
  final ValueChanged<ProductSummary> onOpenProduct;

  /// Back to the tree, from the «not found» state.
  final VoidCallback onOpenCatalog;

  @override
  Widget build(BuildContext context) {
    final languageCode = context.read<LocaleCubit>().state.languageCode;
    return BlocProvider(
      create: (_) => getIt<CategoryProductsBloc>()
        ..add(
          CategoryProductsEvent.started(languageCode: languageCode, slug: slug),
        ),
      child: CategoryProductsView(
        onOpenCategory: onOpenCategory,
        onOpenProduct: onOpenProduct,
        onOpenCatalog: onOpenCatalog,
      ),
    );
  }
}

/// A promotion's products with sort and filters, under [header] (the
/// promotion's banner and conditions, built by the promotions feature and
/// joined here by the router).
class PromoProductsPage extends StatelessWidget {
  const PromoProductsPage({
    required this.promoSlug,
    required this.header,
    required this.onOpenProduct,
    required this.onOpenCatalog,
    super.key,
  });

  final String promoSlug;
  final Widget header;
  final ValueChanged<ProductSummary> onOpenProduct;
  final VoidCallback onOpenCatalog;

  @override
  Widget build(BuildContext context) {
    final languageCode = context.read<LocaleCubit>().state.languageCode;
    return BlocProvider(
      create: (_) => getIt<CategoryProductsBloc>()
        ..add(
          CategoryProductsEvent.started(
            languageCode: languageCode,
            slug: '',
            promoSlug: promoSlug,
          ),
        ),
      child: CategoryProductsView(
        header: header,
        // No subcategories on a promotion page.
        onOpenCategory: (_) {},
        onOpenProduct: onOpenProduct,
        onOpenCatalog: onOpenCatalog,
      ),
    );
  }
}
