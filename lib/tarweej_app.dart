import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tarweej/config/connectivity/connectivity_controller.dart';
import 'package:tarweej/core/utils/app_assets.dart';

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



/// This MaterialApp will show only 
/// if the [Internet] is Not Available no more
class NoInternetMaterialApp extends StatelessWidget {
  const NoInternetMaterialApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            body: Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: 130.h,
                width: 130.w,
                child: Image.asset(AppAssets.noInternet),
              ),
            ),
          ),
        );
      },
    );
  }
}
