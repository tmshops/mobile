import 'package:flutter/material.dart';

import '../../l10n/l10n.dart';
import '../../theme/theme.dart';

/// Search field with a camera button for photo search.
///
/// With [onTap] set, the bar is a read-only button that opens the search
/// screen (as on Home). Named `AppSearchBar` to avoid Material's `SearchBar`.
class AppSearchBar extends StatelessWidget {
  const AppSearchBar({
    this.controller,
    this.onTap,
    this.onChanged,
    this.onSubmitted,
    this.onCameraTap,
    this.autofocus = false,
    this.hintText,
    super.key,
  });

  final TextEditingController? controller;
  final VoidCallback? onTap;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;

  /// `null` hides the camera button.
  final VoidCallback? onCameraTap;
  final bool autofocus;

  /// Defaults to the product search hint.
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final l10n = context.l10n;
    final camera = onCameraTap;
    return TextField(
      controller: controller,
      readOnly: onTap != null,
      onTap: onTap,
      autofocus: autofocus,
      onChanged: onChanged,
      onSubmitted: onSubmitted,
      textInputAction: TextInputAction.search,
      style: context.text.body,
      decoration: InputDecoration(
        hintText: hintText ?? l10n.searchHint,
        contentPadding: const EdgeInsets.symmetric(vertical: AppSpacing.x12),
        prefixIcon: Icon(
          AppIcons.search,
          size: AppSizes.iconDense,
          color: c.inkSecondary,
        ),
        suffixIcon: camera == null
            ? null
            : IconButton(
                onPressed: camera,
                tooltip: l10n.searchByPhoto,
                icon: Icon(AppIcons.camera, color: c.ink),
              ),
      ),
    );
  }
}
