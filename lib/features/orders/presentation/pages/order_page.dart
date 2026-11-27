import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/locale/locale_cubit.dart';
import '../../domain/entities/order.dart';
import '../bloc/order_cubit.dart';
import '../widgets/order_view.dart';

/// Order details (TZ §5.15, UI_DESIGN §7.12).
class OrderPage extends StatelessWidget {
  const OrderPage({
    required this.number,
    required this.onOpenParcel,
    required this.onOpenProduct,
    required this.onPay,
    required this.onOpenCart,
    required this.onWriteReview,
    required this.onAskSupport,
    super.key,
  });

  /// «Написать в поддержку по заказу»: the chat with this order attached.
  final VoidCallback onAskSupport;

  final String number;
  final ValueChanged<String> onOpenParcel;
  final ValueChanged<String> onOpenProduct;

  /// «Оплатить» for an order awaiting payment.
  final ValueChanged<OrderDetails> onPay;
  final VoidCallback onOpenCart;
  final Future<void> Function(String itemId) onWriteReview;

  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (context) => getIt<OrderCubit>()
      ..load(
        languageCode: context.read<LocaleCubit>().state.languageCode,
        number: number,
      ),
    child: OrderView(
      number: number,
      onOpenParcel: onOpenParcel,
      onOpenProduct: onOpenProduct,
      onPay: onPay,
      onOpenCart: onOpenCart,
      onWriteReview: onWriteReview,
      onAskSupport: onAskSupport,
    ),
  );
}
