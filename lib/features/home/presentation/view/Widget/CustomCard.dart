import 'package:flutter/material.dart';
import 'package:satim_hack/core/Theme/AppColor.dart';

class CustomCard extends StatefulWidget {
  const CustomCard({super.key});

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      height: 297,
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.circular(18)
      ),
      child: const Column(
        children: [
          Text('Send your website',style: TextStyle(
            fontSize: 30,
            fontWeight:FontWeight.w500,
            color: AppColor.black,
            fontFamily: 'PoppinsRegular'
          ),)
        ],
      ),
    );
  }
}
