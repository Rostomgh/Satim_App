import 'package:flutter/material.dart';
import 'package:satim_hack/core/Theme/AppColor.dart';


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
      
      width: 370,
      height: 50,
      decoration: BoxDecoration(
        color: AppColor.backgroundB,
        borderRadius: BorderRadius.circular(16),
        
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
            borderSide: const BorderSide(color: AppColor.backgroundB),
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
          hintText: hint,
          hintStyle: const TextStyle(
            color: AppColor.hint,
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
          prefixIcon: icon != null
              ? Icon(
                  icon,
                  color: AppColor.hint, // Color of the icon
                )
              : null,
        ),
      ),
    );
  }
}