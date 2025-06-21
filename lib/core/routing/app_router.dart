import 'package:flutter/material.dart';
import 'package:ufire/core/routing/routers.dart';
import 'package:ufire/features/login/ui/login_screen.dart';
import 'package:ufire/features/onbording/onboarding_Screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routers.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => OnBoardingScreen());
      case Routers.loginScreen:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      default:
        return MaterialPageRoute(
          builder:
              (_) => Scaffold(
                body: Center(
                  child: Text(
                    'No route defined for ${settings.name}',
                    style: TextStyle(fontSize: 24, color: Colors.red),
                  ),
                ),
              ),
        );
    }
  }
}
