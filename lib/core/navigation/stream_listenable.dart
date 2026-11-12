import 'dart:async';

import 'package:flutter/foundation.dart';

/// Notifies on every event of [stream]: lets go_router re-run its guards
/// when a bloc changes (`refreshListenable`).
class StreamListenable extends ChangeNotifier {
  StreamListenable(Stream<Object?> stream) {
    _subscription = stream.listen((_) => notifyListeners());
  }

  late final StreamSubscription<Object?> _subscription;

  @override
  void dispose() {
    unawaited(_subscription.cancel());
    super.dispose();
  }
}
