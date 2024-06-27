import 'dart:io';

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

  /// Dummy Method to check if there is internet connection
  /// This method is Not used
  Future<bool> checkConnection() async {
    List<ConnectivityResult> results = await Connectivity().checkConnectivity();
    if (!results.contains(ConnectivityResult.none)) {
      return true;
    } else {
      return false;
    }
  }

  /// Check if the connection is fast This method Needs a refactoring
  /// i promise to do it in the next update
  /// This method is Not used yet
  Future<bool> isConnectionFast() async {
    try {
      final Stopwatch stopwatch = Stopwatch()..start();
      final result = await InternetAddress.lookup('google.com');
      stopwatch.stop();

      // Assuming a threshold of 1000 milliseconds for slow connection
      if (result.isNotEmpty && stopwatch.elapsedMilliseconds < 1000) {
        return true;
      }
    } catch (_) {
      // If there's an error, assume no connection
      return false;
    }
    return false;
  }
}
