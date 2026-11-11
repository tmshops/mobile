import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/locale/locale_cubit.dart';
import '../bloc/category_tree_bloc.dart';
import '../widgets/catalog_view.dart';

/// Catalog tab root: the category tree (UI_DESIGN §7.4, TZ §5.5).
class CatalogPage extends StatelessWidget {
  const CatalogPage({required this.onOpenCategory, super.key});

  /// Opens the product list of a category.
  final ValueChanged<String> onOpenCategory;

  @override
  Widget build(BuildContext context) {
    final languageCode = context.read<LocaleCubit>().state.languageCode;
    return BlocProvider(
      create: (_) =>
          getIt<CategoryTreeBloc>()
            ..add(CategoryTreeEvent.started(languageCode)),
      child: CatalogView(onOpenCategory: onOpenCategory),
    );
  }
}
