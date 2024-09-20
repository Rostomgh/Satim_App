import 'package:flutter/material.dart';
import 'package:satim_hack/Router/OngenerateRoute.dart';
import 'package:satim_hack/core/Ui/LogoScreen.dart';
void main() {
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
       onGenerateRoute: (settings) => AppRoute().generateRoute(settings),
      home: LogoScreen(),
    );
  }
}

