import 'package:flutter/material.dart';
import 'package:tarweej/config/connectivity/connectivity_controller.dart';
import 'package:tarweej/no_internet_material_app.dart';

class TarweejApp extends StatelessWidget {
  const TarweejApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConnectivityController.instance.isConnected,
      builder: (context, value, child) {
        if (value) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              appBar: AppBar(),
              body: const Text("There is internet"),
            ),
          );
        } else {
          return const NoInternetMaterialApp();
        }
      },
    );
  }
}



