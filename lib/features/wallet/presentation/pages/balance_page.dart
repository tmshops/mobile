import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/locale/locale_cubit.dart';
import '../bloc/balance_cubit.dart';
import '../bloc/wallet_payment_cubit.dart';
import '../widgets/balance_view.dart';

/// «Баланс» inside the Profile tab (UI_DESIGN §7.20).
class BalancePage extends StatelessWidget {
  const BalancePage({
    required this.onPayDebt,
    required this.onOpenOrder,
    required this.onOpenPayment,
    super.key,
  });

  final VoidCallback onPayDebt;
  final ValueChanged<String> onOpenOrder;
  final Future<void> Function(WalletPayment payment) onOpenPayment;

  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (context) =>
        getIt<BalanceCubit>()
          ..load(context.read<LocaleCubit>().state.languageCode),
    child: BalanceView(
      onPayDebt: onPayDebt,
      onOpenOrder: onOpenOrder,
      onOpenPayment: onOpenPayment,
    ),
  );
}
