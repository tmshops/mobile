import 'package:flutter/widgets.dart';

import '../theme/theme.dart';
import 'tab_reselect_scope.dart';

/// Gives a tab root a [scrollController] that jumps back to the top when the
/// user taps the already active tab (TZ §4).
mixin TabReselectScrollMixin<T extends StatefulWidget> on State<T> {
  final scrollController = ScrollController();
  TabReselectSignal? _signal;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final signal = TabReselectScope.maybeOf(context);
    if (signal == _signal) return;
    _signal?.removeListener(_scrollToTop);
    _signal = signal?..addListener(_scrollToTop);
  }

  @override
  void dispose() {
    _signal?.removeListener(_scrollToTop);
    scrollController.dispose();
    super.dispose();
  }

  void _scrollToTop() {
    if (!scrollController.hasClients) return;
    if (AppMotion.isReduced(context)) {
      scrollController.jumpTo(0);
      return;
    }
    scrollController.animateTo(
      0,
      duration: AppMotion.slow,
      curve: AppMotion.enter,
    );
  }
}
