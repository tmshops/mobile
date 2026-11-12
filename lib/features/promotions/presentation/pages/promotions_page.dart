import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/locale/locale_cubit.dart';
import '../bloc/promotions_cubits.dart';
import '../widgets/promotions_view.dart';

/// «Акции», full-screen over the menu (UI_DESIGN §7.16). A promotion's
/// own page is [PromoHeader] over the catalog's product list, joined by
/// the router.
class PromotionsPage extends StatelessWidget {
  const PromotionsPage({required this.onOpen, super.key});

  final ValueChanged<String> onOpen;

  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (context) =>
        getIt<PromotionsCubit>()
          ..load(context.read<LocaleCubit>().state.languageCode),
    child: PromotionsView(onOpen: onOpen),
  );
}
