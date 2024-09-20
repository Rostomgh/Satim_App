import 'package:flutter/material.dart';


class CustomInput extends StatelessWidget {
  final String? Function(String?) valid;
  final TextEditingController? mycontroller;
  final String hint;
  final bool obc;
  final TextInputType? keyboardType;
  final IconData? icon;
  const CustomInput({
    super.key,
    required this.valid,
    this.mycontroller,
    required this.hint,
    required this.obc,
    this.keyboardType,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 317,
      height: 56,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.57),
      ),
      child: TextFormField(
        keyboardType: keyboardType,
        obscureText: obc,
        validator: valid,
        controller: mycontroller,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
          hintText: hint,
          hintStyle: const TextStyle(
            color: AppColors.hintColor,
            fontWeight: FontWeight.w500,
          ),
          prefixIcon: icon != null
              ? Icon(
                  icon,
                  color: AppColor.hintColor, // Color of the icon
                )
              : null,
        ),
      ),
    );
  }
}