import 'package:flutter/material.dart';

import '../../l10n/l10n.dart';
import '../../theme/theme.dart';

/// Opens [AppBottomSheet] content as a modal sheet with the app's shape,
/// scrim and safe-area handling.
Future<T?> showAppBottomSheet<T>({
  required BuildContext context,
  required WidgetBuilder builder,
  bool isDismissible = true,
}) {
  return showModalBottomSheet<T>(
    context: context,
    builder: builder,
    isScrollControlled: true,
    useSafeArea: true,
    isDismissible: isDismissible,
    enableDrag: isDismissible,
  );
}

/// Sheet scaffold: drag handle, title row with ×, scrollable [child] and an
/// optional sticky [action] that stays above the keyboard.
class AppBottomSheet extends StatelessWidget {
  const AppBottomSheet({
    required this.child,
    this.title,
    this.action,
    this.isFullHeight = false,
    super.key,
  });

  final String? title;
  final Widget child;
  final Widget? action;

  /// Takes almost the whole screen and pins [action] to the bottom, for
  /// long content such as filters.
  final bool isFullHeight;

  static const double _fullHeightFactor = 0.92;

  @override
  Widget build(BuildContext context) {
    final heading = title;
    final sticky = action;
    final keyboard = MediaQuery.viewInsetsOf(context).bottom;
    final sheet = Padding(
      padding: EdgeInsets.only(bottom: keyboard),
      child: Column(
        mainAxisSize: isFullHeight ? MainAxisSize.max : MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const _DragHandle(),
          if (heading != null) _SheetTitle(title: heading),
          Flexible(
            fit: isFullHeight ? FlexFit.tight : FlexFit.loose,
            child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(
                AppSpacing.screen,
                AppSpacing.x8,
                AppSpacing.screen,
                AppSpacing.x16,
              ),
              child: child,
            ),
          ),
          if (sticky != null)
            SafeArea(
              top: false,
              minimum: const EdgeInsets.only(bottom: AppSpacing.x12),
              child: Padding(padding: AppSpacing.screenPadding, child: sticky),
            ),
        ],
      ),
    );
    if (!isFullHeight) return sheet;
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * _fullHeightFactor,
      child: sheet,
    );
  }
}

class _DragHandle extends StatelessWidget {
  const _DragHandle();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.only(top: AppSpacing.x8),
        width: AppSizes.dragHandleWidth,
        height: AppSizes.dragHandleHeight,
        decoration: BoxDecoration(
          color: context.colors.divider,
          borderRadius: AppRadii.chipBorder,
        ),
      ),
    );
  }
}

class _SheetTitle extends StatelessWidget {
  const _SheetTitle({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(
        start: AppSpacing.screen,
        end: AppSpacing.x4,
        top: AppSpacing.x4,
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: context.text.h2,
            ),
          ),
          IconButton(
            onPressed: () => Navigator.of(context).maybePop(),
            tooltip: context.l10n.actionClose,
            icon: Icon(AppIcons.close, color: context.colors.ink),
          ),
        ],
      ),
    );
  }
}
