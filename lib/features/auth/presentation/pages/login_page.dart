import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/injection.dart';
import '../bloc/login_bloc.dart';
import '../widgets/login_view.dart';

/// Sign-in by phone and code, full-screen over the menu (TZ §5.2).
class LoginPage extends StatelessWidget {
  const LoginPage({
    required this.onDone,
    required this.onReadPolicy,
    required this.onGoogle,
    super.key,
  });

  /// Signed in: back to where the customer came from.
  final VoidCallback onDone;
  final VoidCallback onReadPolicy;

  /// Not built yet: needs the Google OAuth client.
  final VoidCallback onGoogle;

  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (_) => getIt<LoginBloc>(),
    child: BlocListener<LoginBloc, LoginState>(
      listenWhen: (a, b) => !a.isDone && b.isDone,
      listener: (_, _) => onDone(),
      child: LoginView(onReadPolicy: onReadPolicy, onGoogle: onGoogle),
    ),
  );
}
