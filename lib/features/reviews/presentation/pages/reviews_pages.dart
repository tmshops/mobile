import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/locale/locale_cubit.dart';
import '../bloc/reviews_cubits.dart';
import '../widgets/my_reviews_view.dart';
import '../widgets/product_reviews_view.dart';
import '../widgets/write_review_view.dart';

/// «Все отзывы» of a product, over the menu.
class ProductReviewsPage extends StatelessWidget {
  const ProductReviewsPage({required this.productId, super.key});

  final String productId;

  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (context) =>
        getIt<ProductReviewsCubit>()
          ..load(context.read<LocaleCubit>().state.languageCode, productId),
    child: const ProductReviewsView(),
  );
}

/// «Написать отзыв» for item [itemId] of order [orderNumber].
class WriteReviewPage extends StatelessWidget {
  const WriteReviewPage({
    required this.orderNumber,
    required this.itemId,
    required this.onDone,
    super.key,
  });

  final String orderNumber;
  final String itemId;
  final VoidCallback onDone;

  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (context) => getIt<WriteReviewCubit>()
      ..load(
        context.read<LocaleCubit>().state.languageCode,
        orderNumber,
        itemId,
      ),
    child: WriteReviewView(onDone: onDone),
  );
}

/// «Мои отзывы» inside the Profile tab.
class MyReviewsPage extends StatelessWidget {
  const MyReviewsPage({required this.onOpenProduct, super.key});

  final ValueChanged<String> onOpenProduct;

  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (context) =>
        getIt<MyReviewsCubit>()
          ..load(context.read<LocaleCubit>().state.languageCode),
    child: MyReviewsView(onOpenProduct: onOpenProduct),
  );
}
