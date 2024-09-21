import 'package:flutter/material.dart';
import 'package:satim_hack/core/Theme/AppColor.dart';
import 'package:satim_hack/core/helper/CustomBox.dart';
import 'package:satim_hack/features/Auth/presentation/view/Widget/CustomButton.dart';
import 'package:satim_hack/features/Auth/presentation/view/Widget/CustomInput.dart';

class CustomCard extends StatefulWidget {
  const CustomCard({super.key});

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  final TextEditingController mycontroller = TextEditingController();
  final TextEditingController url = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 380,
        height: 297,
        decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(18),
          color: Colors.white, // Set a background color
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2), // Shadow color
              spreadRadius: 2, // Spread radius
              blurRadius: 5, // Blur radius
              offset: const Offset(0, 3), // Changes position of shadow
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Send your website',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  color: AppColor.black,
                  fontFamily: 'PoppinsRegular'),
            ),
            CustomInput(
                hint: 'Website Name',
                obc: false,
                keyboardType: TextInputType.url,
                icon: Icons.web,
                mycontroller: mycontroller,
                valid: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Url cannot be empty';
                  }
                  return null;
                }),
            verticalSpace(10),
            CustomInput(
                hint: 'Url',
                obc: false,
                keyboardType: TextInputType.url,
                icon: Icons.link,
                mycontroller: url,
                valid: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Url cannot be empty';
                  }
                  return null;
                }),
            verticalSpace(15),
            GradientButton(
              text: 'Submit',
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
            ),
          ],
        ),
      ),
    );
  }
}
