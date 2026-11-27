import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/locale/locale_cubit.dart';
import '../../domain/entities/orders_feed.dart';
import '../bloc/orders_feed_cubits.dart';
import '../widgets/orders_feed_view.dart';

/// Orders by profile filter, opened from «Мои заказы» in the profile
/// (UI_DESIGN §7.12).
class OrdersFeedPage extends StatelessWidget {
  const OrdersFeedPage({
    required this.filter,
    required this.navigator,
    super.key,
  });

  final OrdersFilter filter;
  final OrdersFeedNavigator navigator;

  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (context) =>
        getIt<OrdersFeedCubit>(param1: filter)
          ..load(context.read<LocaleCubit>().state.languageCode),
    child: OrdersFeedView(navigator: navigator),
  );
}
