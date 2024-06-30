import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tarweej/config/connectivity/connectivity_controller.dart';
import 'package:tarweej/config/router/app_router.dart';
import 'package:tarweej/config/router/routes.dart';
import 'package:tarweej/config/theme/theme_manager/dark_theme_manager.dart';
import 'package:tarweej/generated/l10n.dart';
import 'package:tarweej/no_internet_material_app.dart';

class TarweejApp extends StatelessWidget {
  const TarweejApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConnectivityController.instance.isConnected,
      builder: (_, value, __) {
        if (value) {
          return ScreenUtilInit(
            designSize: const Size(360, 690),
            builder: (context, child) {
              return MaterialApp(
              locale: const Locale("en"),
              initialRoute: Routes.signupView,
              onGenerateRoute: AppRouter().onGenerateRoute,
              localizationsDelegates: const [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: S.delegate.supportedLocales,
              debugShowCheckedModeBanner: false,
              theme: DarkThemeManager().darkTheme,
              home: const TempHomeScreen(),
            );
            },
            minTextAdapt: true,
            splitScreenMode: true,
          
          );
        } else {
          return const NoInternetMaterialApp();
        }
      },
    );
  }
}

class TempHomeScreen extends StatelessWidget {
  const TempHomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Text(
        S.of(context).hello,
        style: const TextStyle(
          fontSize: 20,
          color: Colors.blue,
          fontWeight: FontWeight.w800,
          fontFamily: "LamaSans",
        ),
      ),
    );
  }
}
