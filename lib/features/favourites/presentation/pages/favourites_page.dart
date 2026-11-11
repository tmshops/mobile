import 'package:flutter/material.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/widgets/widgets.dart';

/// Favourites tab root. Placeholder until the Favourites screen (UI_DESIGN §7.17).
class FavouritesPage extends StatelessWidget {
  const FavouritesPage({super.key});

  @override
  Widget build(BuildContext context) =>
      RootTabPage(title: context.l10n.tabFavourites);
}
