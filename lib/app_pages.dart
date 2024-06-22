import 'package:flutter/material.dart';
import 'screens/Landing/landing.dart';
import 'screens/splash.dart';

class AppPages {
  static MaterialPageRoute generateRoutePages(RouteSettings settings) {
    final args = settings.arguments;
    final name = settings.name;
    switch (name) {
      case "/landing":
        return MaterialPageRoute(builder: (_) => Landing());
      case "/":
      default:
        return MaterialPageRoute(builder: (_) => Splash());
    }
  }
}
