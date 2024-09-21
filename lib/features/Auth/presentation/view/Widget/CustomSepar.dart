import 'package:flutter/material.dart';
import 'package:satim_hack/core/helper/CustomBox.dart';

class CustomSepar extends StatelessWidget {
  const CustomSepar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Row(
        children: [
          Container(
            height: 2,
            width: 140,
            color: const Color(0xff9A9A9A),
          ),
          horizontal(12),
          const Text(
            'Or',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
          ),
          horizontal(12),
          Container(
            height: 2,
            width: 160,
            color: const Color(0xff9A9A9A),
          ),
        ],
      ),
    );
  }
}
