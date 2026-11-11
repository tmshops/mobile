import 'package:flutter/material.dart';

import '../../../../core/theme/theme.dart';
import '../../../../core/widgets/widgets.dart';

/// Search bar that stays pinned at the top while Home scrolls. A tap opens
/// the search screen rather than typing here.
class HomeSearchHeader extends StatelessWidget {
  const HomeSearchHeader({
    required this.onSearch,
    required this.onPhotoSearch,
    super.key,
  });

  final VoidCallback onSearch;
  final VoidCallback onPhotoSearch;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: context.colors.background,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(
          AppSpacing.screen,
          AppSpacing.x8,
          AppSpacing.screen,
          AppSpacing.x8,
        ),
        child: AppSearchBar(onTap: onSearch, onCameraTap: onPhotoSearch),
      ),
    );
  }
}
