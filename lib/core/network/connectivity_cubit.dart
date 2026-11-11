import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'network_info.dart';

/// App-wide online flag (TZ §3 global blocs). `true` = online.
///
/// Starts optimistic so the offline bar never flashes on launch.
@lazySingleton
class ConnectivityCubit extends Cubit<bool> {
  ConnectivityCubit(this._networkInfo) : super(true) {
    _subscription = _networkInfo.onStatusChange.listen(emit);
    unawaited(
      _networkInfo.isOnline.then((online) {
        if (!isClosed) emit(online);
      }),
    );
  }

  final NetworkInfo _networkInfo;
  late final StreamSubscription<bool> _subscription;

  @override
  Future<void> close() async {
    await _subscription.cancel();
    return super.close();
  }
}
