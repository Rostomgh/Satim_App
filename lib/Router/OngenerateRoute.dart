import 'package:flutter/material.dart';
import 'package:satim_hack/Router/ErrorRoute.dart';
import 'package:satim_hack/core/Ui/LogoScreen.dart';

class AppRoute {
   Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const LogoScreen());
      default:
        return MaterialPageRoute(builder: (_) => const ErrorRoute());
    }
  }
}
