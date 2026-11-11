import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../core/cart/cart_cubit.dart';
import '../core/di/injection.dart';
import '../core/l10n/l10n.dart';
import '../core/locale/locale_cubit.dart';
import '../core/network/connectivity_cubit.dart';
import '../core/region/region_cubit.dart';
import '../core/theme/theme.dart';
import 'router/app_router.dart';

class TmshopApp extends StatefulWidget {
  const TmshopApp({super.key});

  @override
  State<TmshopApp> createState() => _TmshopAppState();
}

class _TmshopAppState extends State<TmshopApp> {
  // Created once so hot reload and rebuilds keep the navigation state.
  late final GoRouter _router = createAppRouter();

  @override
  void dispose() {
    _router.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Global blocs (TZ §3): live for the whole session, used by any feature.
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<LocaleCubit>()),
        BlocProvider(create: (_) => getIt<ConnectivityCubit>()),
        BlocProvider(create: (_) => getIt<CartCubit>()..load()),
        BlocProvider(
          create: (context) =>
              getIt<RegionCubit>()
                ..load(context.read<LocaleCubit>().state.languageCode),
        ),
      ],
      child: BlocConsumer<LocaleCubit, Locale>(
        // Region names come in the interface language.
        listener: (context, locale) =>
            context.read<RegionCubit>().load(locale.languageCode),
        builder: (context, locale) => MaterialApp.router(
          onGenerateTitle: (context) => context.l10n.appName,
          debugShowCheckedModeBanner: false,
          theme: AppTheme.light(),
          locale: locale,
          localizationsDelegates: AppLocales.delegates,
          supportedLocales: AppLocales.supported,
          routerConfig: _router,
        ),
      ),
    );
  }
}
