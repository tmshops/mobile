import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/locale/locale_cubit.dart';
import '../../../../core/product/domain/product_summary.dart';
import '../../../../core/product/presentation/for_you_bloc.dart';
import '../../domain/entities/order.dart';
import '../bloc/order_cubit.dart';
import '../widgets/order_view.dart';

/// Order details (TZ §5.15, UI_DESIGN §7.12), with recommendations below.
class OrderPage extends StatelessWidget {
  const OrderPage({
    required this.number,
    required this.onOpenParcel,
    required this.onOpenProduct,
    required this.onOpenRecommended,
    required this.onPay,
    required this.onOpenCart,
    required this.onWriteReview,
    required this.onAskSupport,
    super.key,
  });

  final String number;
  final ValueChanged<String> onOpenParcel;
  final ValueChanged<String> onOpenProduct;

  /// A tile of the recommendations grid under the order.
  final ValueChanged<ProductSummary> onOpenRecommended;

  /// «Оплатить» for an order awaiting payment.
  final ValueChanged<OrderDetails> onPay;
  final VoidCallback onOpenCart;
  final Future<void> Function(String itemId) onWriteReview;

  /// «Написать в поддержку по заказу»: the chat with this order attached.
  final VoidCallback onAskSupport;

  @override
  Widget build(BuildContext context) {
    final languageCode = context.read<LocaleCubit>().state.languageCode;
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) =>
              getIt<OrderCubit>()
                ..load(languageCode: languageCode, number: number),
        ),
        BlocProvider(
          create: (_) =>
              getIt<ForYouBloc>()..add(ForYouEvent.started(languageCode)),
        ),
      ],
      child: OrderView(
        number: number,
        onOpenParcel: onOpenParcel,
        onOpenProduct: onOpenProduct,
        onOpenRecommended: onOpenRecommended,
        onPay: onPay,
        onOpenCart: onOpenCart,
        onWriteReview: onWriteReview,
        onAskSupport: onAskSupport,
      ),
    );
  }
}
