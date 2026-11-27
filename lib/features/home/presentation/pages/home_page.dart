import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/locale/locale_cubit.dart';
import '../../../../core/product/presentation/for_you_bloc.dart';
import '../bloc/home_bloc.dart';
import '../home_destination.dart';
import '../widgets/home_view.dart';

/// Home tab root (UI_DESIGN §7.2, TZ §5.3).
class HomePage extends StatelessWidget {
  const HomePage({required this.onNavigate, this.onOpenKit, super.key});

  final HomeNavigator onNavigate;

  /// Debug builds only: opens the component Kit.
  final VoidCallback? onOpenKit;

  @override
  Widget build(BuildContext context) {
    final languageCode = context.read<LocaleCubit>().state.languageCode;
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) =>
              getIt<HomeBloc>()..add(HomeEvent.started(languageCode)),
        ),
        BlocProvider(
          create: (_) =>
              getIt<ForYouBloc>()..add(ForYouEvent.started(languageCode)),
        ),
      ],
      child: HomeView(onNavigate: onNavigate, onOpenKit: onOpenKit),
    );
  }
}
