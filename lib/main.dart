import 'package:flutter/material.dart';
import 'package:tarweej/config/connectivity/connectivity_controller.dart';
import 'package:tarweej/tarweej_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ConnectivityController.instance.init();
  runApp(const TarweejApp());
}
