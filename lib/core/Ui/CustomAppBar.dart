import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:satim_hack/core/helper/Assets.dart';
import 'package:satim_hack/core/helper/CustomBox.dart';

AppBar CustomAppBar(BuildContext context, String title) {
  return AppBar(
    title: Row(
      children: [
        Image.asset(
          Assets.logo,
          height: 23,
          width: 129,
        )
      ],
    ),
    elevation: 4,
    actions: [
      IconButton(
        onPressed: () {
          Navigator.pushNamed(context, '/notify'); 
        },
        icon: const HugeIcon(
          icon: HugeIcons.strokeRoundedNotification01,
          color: Colors.black,
          size: 30.0,
        ),
      ),
      horizontal(15), 
      const HugeIcon(
        icon: HugeIcons.strokeRoundedMenu01,
        color: Colors.black,
        size: 30.0,
      ),
    ],
  );
}
