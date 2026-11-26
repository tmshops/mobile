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

/// A list with sort and filters that is not a category: a promotion's
/// products, search results or a seller's products. Exactly one of
/// [promoSlug], [searchText] and [sellerId] is set. [header] (built by the
/// feature that owns the list and joined here by the router) replaces the
/// app bar.
class ScopedProductsPage extends StatelessWidget {
  const ScopedProductsPage({
    required this.header,
    required this.onOpenProduct,
    required this.onOpenCatalog,
    this.promoSlug,
    this.searchText,
    this.sellerId,
    this.empty,
    super.key,
  }) : assert(
         (promoSlug == null ? 0 : 1) +
                 (searchText == null ? 0 : 1) +
                 (sellerId == null ? 0 : 1) ==
             1,
         'exactly one scope',
       );

  final String? promoSlug;
  final String? searchText;
  final String? sellerId;
  final Widget header;
  final ValueChanged<ProductSummary> onOpenProduct;
  final VoidCallback onOpenCatalog;

  /// Shown instead of «Здесь пока пусто» when nothing matches without
  /// filters, e.g. search's «Поиск по фото» and «Найдите мне товар».
  final Widget? empty;

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
            searchText: searchText,
            sellerId: sellerId,
          ),
        ),
      child: CategoryProductsView(
        header: header,
        empty: empty,
        // No subcategories on these lists.
        onOpenCategory: (_) {},
        onOpenProduct: onOpenProduct,
        onOpenCatalog: onOpenCatalog,
      ),
    );
  }
}
