import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/auth/auth_cubit.dart';
import '../../../../core/cart/cart_cubit.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/locale/locale_cubit.dart';
import '../../../../core/region/region_cubit.dart';
import '../../domain/entities/checkout.dart';
import '../bloc/checkout_bloc.dart';
import '../widgets/checkout_view.dart';

/// Checkout of the ticked cart lines, full-screen over the menu
/// (TZ §5.12). On success the ordered lines leave the cart.
class CheckoutPage extends StatelessWidget {
  const CheckoutPage({
    required this.onPlaced,
    required this.onReadOffer,
    this.promoCode,
    super.key,
  });

  /// Promo code accepted in the cart.
  final String? promoCode;

  /// Next step after the order exists: payment check or result.
  final ValueChanged<PlacedOrder> onPlaced;
  final VoidCallback onReadOffer;

  @override
  Widget build(BuildContext context) {
    final cart = context.read<CartCubit>();
    final lines = cart.state.selected;
    final profile = context.read<AuthCubit>().state.profile;
    return BlocProvider(
      create: (context) => getIt<CheckoutBloc>()
        ..add(
          CheckoutEvent.started(
            languageCode: context.read<LocaleCubit>().state.languageCode,
            regionId: context.read<RegionCubit>().state.selectedId,
            lines: lines,
            promoCode: promoCode,
            profileRecipient: profile == null
                ? null
                : Recipient(
                    firstName: profile.firstName,
                    lastName: profile.lastName,
                    phone: profile.phone,
                  ),
          ),
        ),
      child: BlocListener<CheckoutBloc, CheckoutState>(
        listenWhen: (a, b) =>
            a.status != CheckoutStatus.placed &&
            b.status == CheckoutStatus.placed,
        listener: (context, state) {
          final order = state.order;
          if (order == null) return;
          cart.removeMany({for (final l in lines) l.key});
          onPlaced(order);
        },
        child: CheckoutView(onReadOffer: onReadOffer),
      ),
    );
  }
}
