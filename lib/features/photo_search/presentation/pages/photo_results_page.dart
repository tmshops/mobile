import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/locale/locale_cubit.dart';
import '../../../../core/product/domain/product_summary.dart';
import '../../domain/entities/photo_search.dart';
import '../bloc/photo_search_cubit.dart';
import '../widgets/photo_results_view.dart';

/// Products like the photo (UI_DESIGN §7.6, TZ §5.8).
class PhotoResultsPage extends StatelessWidget {
  const PhotoResultsPage({
    required this.query,
    required this.onOpenProduct,
    required this.onAnotherPhoto,
    required this.onFindForMe,
    super.key,
  });

  final PhotoQuery query;
  final ValueChanged<ProductSummary> onOpenProduct;
  final VoidCallback onAnotherPhoto;
  final VoidCallback onFindForMe;

  @override
  Widget build(BuildContext context) {
    final languageCode = context.read<LocaleCubit>().state.languageCode;
    return BlocProvider(
      create: (_) => getIt<PhotoSearchCubit>()..search(languageCode, query),
      child: Builder(
        builder: (context) => PhotoResultsView(
          query: query,
          onRetry: () =>
              context.read<PhotoSearchCubit>().search(languageCode, query),
          onOpenProduct: onOpenProduct,
          onAnotherPhoto: onAnotherPhoto,
          onFindForMe: onFindForMe,
        ),
      ),
    );
  }
}
