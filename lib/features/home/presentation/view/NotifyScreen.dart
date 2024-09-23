import 'package:flutter/material.dart';
import 'package:satim_hack/core/Theme/AppColor.dart';
import 'package:satim_hack/features/home/presentation/view/Widget/CustomNotifyAccept.dart';

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
      body: Customnotify()
    );
  }
}
