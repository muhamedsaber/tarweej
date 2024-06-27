import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class ConnectivityController {
  ConnectivityController._();

  static ConnectivityController instance = ConnectivityController._();

  /// This Notifier carry [ConnectivityResult] status
  ValueNotifier<bool> isConnected = ValueNotifier<bool>(true);

  /// listen to Connectiviy Changes and keeps trigger [isInternetAvailable]
  /// to update [isConnected] notifier
  init() async {
    await Connectivity().checkConnectivity();
    Connectivity().onConnectivityChanged.listen((event) {
      isInternetAvailable(event);
    });
  }

  ///Update The [isConnected] with Current Connection Status
  isInternetAvailable(List<ConnectivityResult> results) async {
    isConnected.value = !results.contains(ConnectivityResult.none);
  }
}
