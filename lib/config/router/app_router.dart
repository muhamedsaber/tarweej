import 'package:flutter/material.dart';
import 'package:tarweej/config/router/routes.dart';
import 'package:tarweej/features/Auth/signup/presentation/views/signup_view.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.signupView:
        return MaterialPageRoute(builder: (context) => const SignupView());

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
