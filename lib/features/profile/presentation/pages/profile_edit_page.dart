import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/auth/auth_cubit.dart';
import '../../../../core/di/injection.dart';
import '../bloc/profile_edit_cubit.dart';
import '../widgets/profile_edit_view.dart';

/// «Личные данные» inside the Profile tab (UI_DESIGN §7.24).
class ProfileEditPage extends StatelessWidget {
  const ProfileEditPage({required this.onSaved, super.key});

  final VoidCallback onSaved;

  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (context) {
      final cubit = getIt<ProfileEditCubit>();
      // The login guard keeps guests out, so a profile is there.
      if (context.read<AuthCubit>().state case AuthSignedIn(:final profile)) {
        cubit.start(profile);
      }
      return cubit;
    },
    child: ProfileEditView(onSaved: onSaved),
  );
}
