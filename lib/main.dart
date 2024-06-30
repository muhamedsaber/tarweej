import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:tarweej/config/connectivity/connectivity_controller.dart';
import 'package:tarweej/core/di/dependency_injection.dart';
import 'package:tarweej/firebase_options.dart';
import 'package:tarweej/tarweej_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await ConnectivityController.instance.init();
  await setupDependencyInjection();

  runApp(const TarweejApp());
}
