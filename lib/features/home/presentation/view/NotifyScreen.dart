import 'package:flutter/material.dart';
import 'package:satim_hack/core/Theme/AppColor.dart';

class Notifyscreen extends StatelessWidget {
  const Notifyscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Notification',
          style: TextStyle(
              color: AppColor.black, fontFamily: 'PoppinsBold', fontSize: 20),
        ),
      ),
    //
    );
  }
}
