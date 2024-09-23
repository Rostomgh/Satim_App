import 'package:flutter/material.dart';
import 'package:satim_hack/core/Theme/AppColor.dart';
import 'package:satim_hack/core/Ui/CustomRowNotify.dart';
import 'package:satim_hack/core/helper/Assets.dart';

class Customnotify extends StatelessWidget {
  const Customnotify({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 360,
        height: 80,
        
        decoration: BoxDecoration(
          color: const Color(0xffF8F9FA),
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: AppColor.black.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            )
          ]
        ),
        child:  const Column(
          children: [
            Customrownotify(color:AppColor.greenNotif,icon: Assets.active,statWeb: 'Your website was accepted',)
          ],
        ),
      ),
    );
  }
}
