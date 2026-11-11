import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/locale/locale_cubit.dart';
import '../../../../core/navigation/tab_reselect_scroll.dart';
import '../../../../core/network/connectivity_cubit.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/category.dart';
import '../bloc/category_tree_bloc.dart';
import 'catalog_skeleton.dart';
import 'category_rail.dart';
import 'subcategory_pane.dart';

/// Two-pane tree: root categories on the left, the picked root's
/// subcategories on the right. Expects [CategoryTreeBloc] above it.
class CatalogView extends StatefulWidget {
  const CatalogView({required this.onOpenCategory, super.key});

  final ValueChanged<String> onOpenCategory;

  @override
  State<CatalogView> createState() => _CatalogViewState();
}

class _CatalogViewState extends State<CatalogView> with TabReselectScrollMixin {
  /// Kept by slug so it survives a refresh or a language switch.
  String? _selectedSlug;

  Category _selectedRoot(List<Category> roots) => roots.firstWhere(
    (r) => r.slug == _selectedSlug,
    orElse: () => roots.first,
  );

  void _select(Category root) {
    if (root.slug == _selectedSlug) return;
    setState(() => _selectedSlug = root.slug);
    if (scrollController.hasClients) scrollController.jumpTo(0);
  }

  Future<void> _refresh() async {
    final bloc = context.read<CategoryTreeBloc>()
      ..add(const CategoryTreeEvent.refreshed());
    await bloc.stream.firstWhere(
      (s) =>
          s is! CategoryTreeLoading &&
          !(s is CategoryTreeLoaded && s.isRefreshing),
    );
  }

  void _onReconnected() {
    final bloc = context.read<CategoryTreeBloc>();
    final isStale = switch (bloc.state) {
      CategoryTreeFailure() => true,
      CategoryTreeLoaded(:final tree, :final refreshFailure) =>
        tree.isFromCache || refreshFailure != null,
      CategoryTreeInitial() || CategoryTreeLoading() => false,
    };
    if (isStale) bloc.add(const CategoryTreeEvent.refreshed());
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<CategoryTreeBloc>();
    return MultiBlocListener(
      listeners: [
        BlocListener<LocaleCubit, Locale>(
          listener: (_, locale) =>
              bloc.add(CategoryTreeEvent.started(locale.languageCode)),
        ),
        BlocListener<ConnectivityCubit, bool>(
          listenWhen: (wasOnline, isOnline) => !wasOnline && isOnline,
          listener: (_, _) => _onReconnected(),
        ),
      ],
      child: Scaffold(
        body: SafeArea(
          bottom: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              BlocBuilder<ConnectivityCubit, bool>(
                builder: (_, isOnline) =>
                    isOnline ? const SizedBox.shrink() : const OfflineBanner(),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(
                  AppSpacing.screen,
                  AppSpacing.x16,
                  AppSpacing.screen,
                  AppSpacing.x12,
                ),
                child: Semantics(
                  header: true,
                  child: Text(context.l10n.tabCatalog, style: context.text.h1),
                ),
              ),
              Expanded(
                child: BlocBuilder<CategoryTreeBloc, CategoryTreeState>(
                  buildWhen: (previous, current) =>
                      !(previous is CategoryTreeLoaded &&
                          current is CategoryTreeLoaded &&
                          previous.tree.roots == current.tree.roots),
                  builder: (context, state) => switch (state) {
                    CategoryTreeInitial() ||
                    CategoryTreeLoading() => const CatalogSkeleton(),
                    CategoryTreeFailure(:final failure) => Center(
                      child: SingleChildScrollView(
                        child: FailureView(
                          failure: failure,
                          onRetry: () =>
                              bloc.add(const CategoryTreeEvent.refreshed()),
                        ),
                      ),
                    ),
                    CategoryTreeLoaded(:final tree) when tree.roots.isEmpty =>
                      Center(
                        child: EmptyState(
                          icon: AppIcons.navCatalog,
                          title: context.l10n.catalogEmptyTitle,
                          message: context.l10n.catalogEmptyText,
                        ),
                      ),
                    CategoryTreeLoaded(:final tree) => _TwoPanes(
                      roots: tree.roots,
                      selected: _selectedRoot(tree.roots),
                      onSelect: _select,
                      scrollController: scrollController,
                      onRefresh: _refresh,
                      onOpenCategory: widget.onOpenCategory,
                    ),
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _TwoPanes extends StatelessWidget {
  const _TwoPanes({
    required this.roots,
    required this.selected,
    required this.onSelect,
    required this.scrollController,
    required this.onRefresh,
    required this.onOpenCategory,
  });

  final List<Category> roots;
  final Category selected;
  final ValueChanged<Category> onSelect;
  final ScrollController scrollController;
  final Future<void> Function() onRefresh;
  final ValueChanged<String> onOpenCategory;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CategoryRail(roots: roots, selected: selected, onSelect: onSelect),
        Expanded(
          child: RefreshIndicator(
            onRefresh: onRefresh,
            child: SubcategoryPane(
              root: selected,
              controller: scrollController,
              onOpenCategory: onOpenCategory,
            ),
          ),
        ),
      ],
    );
  }
}
