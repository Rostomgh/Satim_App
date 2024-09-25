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
  bool isChecked_ = false;
  final TextEditingController mycontrollerEmail = TextEditingController();
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
          color: Colors.white, 
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
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Send your website',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  color: AppColor.black,
                  fontFamily: 'PoppinsBold'),
            ),
            verticalSpace(20),
            Padding(
              padding: const EdgeInsets.only(left:10.0,right: 10),
              child: CustomInput(
                  hint: 'Your Email',
                  obc: false,
                  keyboardType: TextInputType.url,
                  icon: Icons.web,
                  mycontroller: mycontrollerEmail,
                  valid: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Url cannot be empty';
                    }
                    return null;
                  }),
            ),
            verticalSpace(10),
            Padding(
              padding: const EdgeInsets.only(left:10.0,right: 10),
              child: CustomInput(
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
            ),
            verticalSpace(10),
          Row(
                  children: [
                    Checkbox(
                      value: isChecked_,
                      activeColor: AppColor.satim,
                      onChanged: (bool? newValue) {
                        setState(() {
                          isChecked_ = newValue ?? false;
                        });
                      },
                    ),
                    const Text(
                      'i follow The Rolls',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
            verticalSpace(10),

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
