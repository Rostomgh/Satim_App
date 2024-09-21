import 'package:flutter/material.dart';
import 'package:satim_hack/core/Router/ErrorRoute.dart';
import 'package:satim_hack/core/Ui/LogoScreen.dart';
import 'package:satim_hack/features/Auth/presentation/view/LoginScreen.dart';
import 'package:satim_hack/features/Auth/presentation/view/SignupScreen.dart';
import 'package:satim_hack/features/home/presentation/view/HomeScreen.dart';

class AppRoute {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const LogoScreen());
      case '/login':
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case '/signup':
        return MaterialPageRoute(builder: (_) => const SignupScreen());
      case '/home':
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      default:
        return MaterialPageRoute(builder: (_) => const ErrorRoute());
    }
  }
}
