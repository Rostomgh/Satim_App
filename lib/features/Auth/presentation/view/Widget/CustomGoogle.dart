import 'package:flutter/material.dart';
import 'package:satim_hack/core/Theme/AppColor.dart';
import 'package:satim_hack/core/helper/Assets.dart';
import 'package:satim_hack/core/helper/CustomBox.dart';

class CustomGoogle extends StatelessWidget {
  final void Function()? onpress;

  const CustomGoogle({super.key, this.onpress});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 370,
      height: 50,
      child: ElevatedButton(
        onPressed: onpress ?? () {
          // Fallback navigation if onpress is not provided
          Navigator.pushReplacementNamed(context, '/home');
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: const BorderSide(color: AppColor.black, width: 3),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              Assets.iconGoogle,
              height: 16,
              width: 18,
            ),
            horizontal(7),
            const Text(
              'Sign in with Google',
              style: TextStyle(
                fontFamily: 'PoppinsRegular',
                color: AppColor.black,
                fontWeight: FontWeight.w700,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
