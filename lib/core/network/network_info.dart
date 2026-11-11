import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:injectable/injectable.dart';

/// Whether the device has a network interface up. It cannot tell if the
/// internet is actually reachable; failed requests cover that case.
abstract interface class NetworkInfo {
  Future<bool> get isOnline;

  /// Emits on every change, without repeating the same value.
  Stream<bool> get onStatusChange;
}

@LazySingleton(as: NetworkInfo)
class NetworkInfoImpl implements NetworkInfo {
  const NetworkInfoImpl(this._connectivity);

  final Connectivity _connectivity;

  static bool _hasNetwork(List<ConnectivityResult> results) =>
      results.any((r) => r != ConnectivityResult.none);

  @override
  Future<bool> get isOnline async =>
      _hasNetwork(await _connectivity.checkConnectivity());

  @override
  Stream<bool> get onStatusChange =>
      _connectivity.onConnectivityChanged.map(_hasNetwork).distinct();
}
