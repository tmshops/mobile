import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/locale/locale_cubit.dart';
import '../bloc/notifications_cubit.dart';
import '../widgets/notifications_view.dart';

/// Notification centre, full-screen over the menu (UI_DESIGN §7.21).
class NotificationsPage extends StatelessWidget {
  const NotificationsPage({required this.onOpen, super.key});

  final ValueChanged<String> onOpen;

  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (context) =>
        getIt<NotificationsCubit>()
          ..load(context.read<LocaleCubit>().state.languageCode),
    child: NotificationsView(onOpen: onOpen),
  );
}
