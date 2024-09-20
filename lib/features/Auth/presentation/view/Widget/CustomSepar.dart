import 'package:flutter/material.dart';

class CustomSepar extends StatelessWidget {
  const CustomSepar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 2,
          width: 160,
          color: const Color(0xff9A9A9A),
        )
        
        
        ],
    );
  }
}
