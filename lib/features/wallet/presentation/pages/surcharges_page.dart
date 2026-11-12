import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/locale/locale_cubit.dart';
import '../bloc/surcharges_cubit.dart';
import '../bloc/wallet_payment_cubit.dart';
import '../widgets/surcharges_view.dart';

/// «Доплаты и возвраты» inside the Profile tab (UI_DESIGN §7.18).
class SurchargesPage extends StatelessWidget {
  const SurchargesPage({
    required this.onOpenOrder,
    required this.onOpenParcel,
    required this.onOpenPayment,
    this.initialTab = SurchargesTab.due,
    this.payParcel,
    super.key,
  });

  final ValueChanged<String> onOpenOrder;
  final ValueChanged<String> onOpenParcel;
  final Future<void> Function(WalletPayment payment) onOpenPayment;
  final SurchargesTab initialTab;

  /// Parcel whose surcharge payment opens at once.
  final String? payParcel;

  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (context) =>
        getIt<SurchargesCubit>()
          ..load(context.read<LocaleCubit>().state.languageCode),
    child: SurchargesView(
      onOpenOrder: onOpenOrder,
      onOpenParcel: onOpenParcel,
      onOpenPayment: onOpenPayment,
      initialTab: initialTab,
      payParcel: payParcel,
    ),
  );
}
