import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tarweej/core/helpers/spacing.dart';
import 'package:tarweej/core/utils/app_assets.dart';
import 'package:tarweej/core/utils/app_strings.dart';

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
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(body: NoInternetView()),
        );
      },
    );
  }
}

class NoInternetView extends StatelessWidget {
  const NoInternetView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 130.h,
          width: 130.w,
          child: Image.asset(AppAssets.noInternet),
        ),
        verticalSpace(20),
        Align(
          alignment: Alignment.center,
          child: Text(
            AppStrings.noInternetAvailable,
            style: TextStyle(
                fontSize: 20.sp,
                color: Colors.blue,
                fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}
