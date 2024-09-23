import 'package:flutter/material.dart';
import 'package:satim_hack/core/helper/CustomBox.dart';

class Customrownotify extends StatelessWidget {
  final Icon icon;
  final String statWeb;
  final Color color;
  const Customrownotify({super.key, required this.icon, required this.statWeb, required this.color});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon.icon),
        horizontal(10),
         Text(statWeb,style: TextStyle(
          fontFamily: 'PoppinsRegular',
          color: color,
          fontSize: 14,
          fontWeight: FontWeight.w400
         ),)
      ],
    );
  }
}
