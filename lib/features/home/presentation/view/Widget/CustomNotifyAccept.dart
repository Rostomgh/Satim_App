import 'package:flutter/material.dart';
import 'package:satim_hack/core/Theme/AppColor.dart';
import 'package:satim_hack/core/Ui/CustomRowNotify.dart';
import 'package:satim_hack/core/helper/Assets.dart';
import 'package:satim_hack/core/helper/CustomBox.dart';

class Customnotify extends StatelessWidget {
  final String Name;
  const Customnotify({super.key, required this.Name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0,right: 15,top: 10),
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
            ]),
        child: Column(
          children: [
            const Customrownotify(
              color: AppColor.greenNotif,
              icon: Assets.active,
              statWeb: 'Your website was accepted',
            ),
            verticalSpace(8),
            RichText(
              text: TextSpan(
                text: 'Your website ', 
                style: const TextStyle(
                  color: AppColor.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'PoppinsRegular',
                ),
                children: [
                  TextSpan(
                    text: Name, 
                    style: const TextStyle(
                      fontWeight: FontWeight.bold, 
                    ),
                  ),
                  const TextSpan(
                    text: ' was accepted',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
