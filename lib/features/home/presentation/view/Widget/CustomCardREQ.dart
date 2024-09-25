import 'package:flutter/material.dart';
import 'package:satim_hack/core/Theme/AppColor.dart';
import 'package:satim_hack/core/helper/CustomBox.dart';

class CustomCardREQ extends StatefulWidget {
  final String NameWeb;
  final String status;
  final String Link;

  const CustomCardREQ({
    super.key,
    required this.NameWeb,
    required this.Link, required this.status,
  });

  @override
  State<CustomCardREQ> createState() => _CustomCardREQState();
}

class _CustomCardREQState extends State<CustomCardREQ> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15, top: 15),
      child: Container(
        padding: EdgeInsets.only(left: 10, top: 8),
        height: 112,
        width: 360,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: const Color(0xffF8F9FA),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.NameWeb,
              style: const TextStyle(
                fontFamily: 'PoppinsRegular',
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: AppColor.black,
              ),
            ),
            verticalSpace(10),
            Row(
              children: [
                const Text(
                  'Website',
                  style: TextStyle(
                    fontFamily: 'PoppinsRegular',
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: AppColor.black,
                  ),
                ),
                const Text(' : '),
                Text(
                  widget.Link,
                  style: const TextStyle(
                    fontFamily: 'PoppinsRegular',
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: AppColor.link,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
            verticalSpace(10),
            Row(
              children: [
                const Text(
                  'Website',
                  style: TextStyle(
                    fontFamily: 'PoppinsRegular',
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: AppColor.black,
                  ),
                ),
                const Text(' : '),
                Text(
                  widget.status,
                  style: const TextStyle(
                    fontFamily: 'PoppinsRegular',
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: AppColor.greenNotif,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
