import 'package:flutter/widgets.dart';

/// Fires when the user taps the bottom-nav tab that is already active.
///
/// The shell wraps each tab's navigator in its own scope, so a root screen
/// only hears about its own tab and can scroll back to the top (TZ §4).
class TabReselectScope extends InheritedNotifier<TabReselectSignal> {
  const TabReselectScope({
    required TabReselectSignal signal,
    required super.child,
    super.key,
  }) : super(notifier: signal);

  /// The signal of the enclosing tab, or `null` outside the shell
  /// (e.g. in tests or a full-screen route).
  static TabReselectSignal? maybeOf(BuildContext context) =>
      context.getInheritedWidgetOfExactType<TabReselectScope>()?.notifier;
}

/// Notifies its listeners each time [reselect] is called.
class TabReselectSignal extends ChangeNotifier {
  void reselect() => notifyListeners();
}
