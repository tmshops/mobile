import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/product/domain/product_summary.dart';
import '../../../../core/l10n/l10n.dart';
import '../../../../core/locale/locale_cubit.dart';
import '../../../../core/network/connectivity_cubit.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/utils/money_format.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/category.dart';
import '../../domain/entities/product_query.dart';
import '../bloc/category_products_bloc.dart';
import 'active_filters_row.dart';
import 'filters/filters_sheet.dart';
import 'product_results_slivers.dart';
import 'products_toolbar.dart';
import 'sort_sheet.dart';

/// Product list layout and side effects. Expects [CategoryProductsBloc]
/// above it.
class CategoryProductsView extends StatefulWidget {
  const CategoryProductsView({
    required this.onOpenCategory,
    required this.onOpenProduct,
    required this.onOpenCatalog,
    super.key,
  });

  final ValueChanged<String> onOpenCategory;
  final ValueChanged<ProductSummary> onOpenProduct;
  final VoidCallback onOpenCatalog;

  @override
  State<CategoryProductsView> createState() => _CategoryProductsViewState();
}

class _CategoryProductsViewState extends State<CategoryProductsView> {
  static const double _loadMoreExtent = 800;

  /// Grid or rows: a screen-local preference, not business state.
  bool _isListView = false;

  CategoryProductsBloc get _bloc => context.read<CategoryProductsBloc>();

  Future<void> _openSort() async {
    final sort = await showSortSheet(context, _bloc.state.query.sort);
    if (sort != null) _bloc.add(CategoryProductsEvent.sortChanged(sort));
  }

  Future<void> _openFilters() async {
    final query = _bloc.state.query;
    final applied = await showFiltersSheet(
      context,
      languageCode: context.read<LocaleCubit>().state.languageCode,
      categorySlug: query.categorySlug,
      applied: query.filters,
    );
    if (applied != null) {
      _bloc.add(CategoryProductsEvent.filtersApplied(applied));
    }
  }

  void _applyFilters(AppliedFilters filters) =>
      _bloc.add(CategoryProductsEvent.filtersApplied(filters));

  Future<void> _refresh() async {
    _bloc.add(const CategoryProductsEvent.refreshed());
    await _bloc.stream.firstWhere(
      (s) => s.status != ProductsStatus.loadingFirst,
    );
  }

  bool _onScroll(ScrollNotification n) {
    final state = _bloc.state;
    if (n.metrics.axis == Axis.vertical &&
        n.metrics.extentAfter < _loadMoreExtent &&
        state.status == ProductsStatus.idle &&
        state.hasMore) {
      _bloc.add(const CategoryProductsEvent.nextPageRequested());
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<LocaleCubit, Locale>(
          listener: (_, locale) => _bloc.add(
            CategoryProductsEvent.started(
              languageCode: locale.languageCode,
              slug: _bloc.state.query.categorySlug,
            ),
          ),
        ),
        BlocListener<ConnectivityCubit, bool>(
          listenWhen: (wasOnline, isOnline) => !wasOnline && isOnline,
          listener: (_, _) {
            if (_bloc.state.status == ProductsStatus.failure) {
              _bloc.add(const CategoryProductsEvent.nextPageRequested());
            }
          },
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          title:
              BlocSelector<CategoryProductsBloc, CategoryProductsState, String>(
                selector: (s) => s.category?.name ?? '',
                builder: (_, name) => Text(name),
              ),
        ),
        body: Column(
          children: [
            BlocBuilder<ConnectivityCubit, bool>(
              builder: (_, isOnline) =>
                  isOnline ? const SizedBox.shrink() : const OfflineBanner(),
            ),
            Expanded(
              child: NotificationListener<ScrollNotification>(
                onNotification: _onScroll,
                child: RefreshIndicator(
                  onRefresh: _refresh,
                  child:
                      BlocBuilder<CategoryProductsBloc, CategoryProductsState>(
                        builder: (context, state) => CustomScrollView(
                          physics: const AlwaysScrollableScrollPhysics(),
                          slivers: state.status == ProductsStatus.notFound
                              ? [
                                  SliverFillRemaining(
                                    hasScrollBody: false,
                                    child: Center(
                                      child: EmptyState(
                                        icon: AppIcons.navCatalog,
                                        title:
                                            context.l10n.catalogNotFoundTitle,
                                        message:
                                            context.l10n.catalogNotFoundText,
                                        actionLabel:
                                            context.l10n.actionGoToCatalog,
                                        onAction: widget.onOpenCatalog,
                                      ),
                                    ),
                                  ),
                                ]
                              : _slivers(context, state),
                        ),
                      ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _slivers(BuildContext context, CategoryProductsState state) {
    final children = state.category?.children ?? const <Category>[];
    final banner = state.banner;
    final filters = state.query.filters;
    final hasResults = state.items.isNotEmpty;
    return [
      if (children.isNotEmpty)
        SliverToBoxAdapter(
          child: _SubcategoryChips(
            categories: children,
            onOpen: widget.onOpenCategory,
          ),
        ),
      if (banner != null)
        SliverPadding(
          padding: const EdgeInsets.only(bottom: AppSpacing.x12),
          sliver: SliverToBoxAdapter(
            child: PromoBannerCarousel(
              aspectRatio: 3,
              items: [
                PromoBannerItem(
                  imageUrl: banner.imageUrl,
                  semanticLabel: banner.title,
                ),
              ],
            ),
          ),
        ),
      PinnedHeaderSliver(
        child: ProductsToolbar(
          sort: state.query.sort,
          activeFilters: filters.activeCount,
          isListView: _isListView,
          onSort: _openSort,
          onFilters: _openFilters,
          onToggleView: () => setState(() => _isListView = !_isListView),
        ),
      ),
      if (!filters.isEmpty)
        SliverPadding(
          padding: const EdgeInsets.only(top: AppSpacing.x4),
          sliver: SliverToBoxAdapter(
            child: ActiveFiltersRow(filters: filters, onChanged: _applyFilters),
          ),
        ),
      if (hasResults)
        SliverPadding(
          padding: const EdgeInsets.fromLTRB(
            AppSpacing.screen,
            AppSpacing.x8,
            AppSpacing.screen,
            0,
          ),
          sliver: SliverToBoxAdapter(
            child: Text(
              context.l10n.catalogProductCount(
                state.total,
                MoneyFormat.group(state.total),
              ),
              style: context.text.caption.copyWith(
                color: context.colors.inkSecondary,
              ),
            ),
          ),
        ),
      ProductResultsSlivers(
        state: state,
        isListView: _isListView,
        onOpenProduct: widget.onOpenProduct,
        onRetry: () => _bloc.add(const CategoryProductsEvent.refreshed()),
        onLoadMore: () =>
            _bloc.add(const CategoryProductsEvent.nextPageRequested()),
        onClearFilters: () => _applyFilters(const AppliedFilters()),
      ),
    ];
  }
}

/// Subcategories as chips under the app bar («хлебные крошки», TZ §5.5).
class _SubcategoryChips extends StatelessWidget {
  const _SubcategoryChips({required this.categories, required this.onOpen});

  final List<Category> categories;
  final ValueChanged<String> onOpen;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.x12),
      child: Row(
        children: [
          for (final category in categories)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSpacing.x4),
              child: AppChip(
                label: category.name,
                onTap: () => onOpen(category.slug),
              ),
            ),
        ],
      ),
    );
  }
}
