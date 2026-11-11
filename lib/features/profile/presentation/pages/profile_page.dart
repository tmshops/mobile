import 'package:flutter/material.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/widgets/widgets.dart';

/// Profile tab root. Placeholder until the Profile screen (UI_DESIGN §7.11).
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) =>
      RootTabPage(title: context.l10n.tabProfile);
}
