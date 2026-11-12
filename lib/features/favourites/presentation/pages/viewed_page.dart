import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/product/domain/product_summary.dart';
import '../bloc/viewed_cubit.dart';
import '../widgets/viewed_view.dart';

/// «Просмотренные» inside the Profile tab (UI_DESIGN §7.17).
class ViewedPage extends StatelessWidget {
  const ViewedPage({
    required this.onOpenProduct,
    required this.onOpenCatalog,
    super.key,
  });

  final ValueChanged<ProductSummary> onOpenProduct;
  final VoidCallback onOpenCatalog;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<ViewedCubit>()..load(),
      child: ViewedView(
        onOpenProduct: onOpenProduct,
        onOpenCatalog: onOpenCatalog,
      ),
    );
  }
}
