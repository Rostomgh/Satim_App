import 'package:flutter/material.dart';
import 'package:satim_hack/core/helper/CustomBox.dart';

class Customrownotify extends StatelessWidget {
  final String icon;
  final String statWeb;
  final Color color;

  const Customrownotify({
    super.key,
    required this.icon,
    required this.statWeb,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:20.0,right: 50,top: 10),
      child: Row(
        children: [
          Image.asset(
            icon,
            width: 24,
            height: 24,
            
          ),
          horizontal(10),
          Text(
            statWeb,
            style: TextStyle(
              fontFamily: 'PoppinsRegular',
              color: color,
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
