import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tarweej/config/router/routes.dart';
import 'package:tarweej/features/Auth/login/presentation/views/login_view.dart';
import 'package:tarweej/features/Auth/signup/presentation/views/signup_view.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.signupView:
        return MaterialPageRoute(builder: (context) => const SignupView());
      case Routes.loginView:
        return PageTransition(
            child: const LoginView(),
            type: PageTransitionType.rightToLeft,
            alignment: Alignment.centerLeft);
      default:
        return MaterialPageRoute(
            builder: (context) => Scaffold(
                  body: Center(
                    child: Text('No Routes Defined for ${settings.name}'),
                  ),
                ));
    }
  }
}
