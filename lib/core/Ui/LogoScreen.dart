import 'package:flutter/material.dart';
import 'package:satim_hack/core/helper/Assets.dart';

class LogoScreen extends StatefulWidget {
  const LogoScreen({super.key});

  @override
  State<LogoScreen> createState() => _LogoScreenState();
}

class _LogoScreenState extends State<LogoScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(child: Image.asset(Assets.logo)),
    );
  }
}