import 'package:flutter/material.dart';
import 'package:satim_hack/core/Theme/AppColor.dart';
import 'package:satim_hack/core/helper/Assets.dart';
import 'package:satim_hack/core/helper/CustomBox.dart';
import 'package:satim_hack/features/Auth/presentation/view/Widget/CustomButton.dart';
import 'package:satim_hack/features/Auth/presentation/view/Widget/CustomGoogle.dart';
import 'package:satim_hack/features/Auth/presentation/view/Widget/CustomInput.dart';
import 'package:satim_hack/features/Auth/presentation/view/Widget/CustomSepar.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(137),
                Image.asset(Assets.LoginP),
                verticalSpace(30),
                const Center(
                  child: Text('Login',
                      style: TextStyle(
                          fontFamily: 'PoppinsRegular',
                          color: AppColor.black,
                          fontSize: 30,
                          fontWeight: FontWeight.w500)),
                ),
                verticalSpace(20),
                const Padding(
                  padding: EdgeInsets.only(left: 30.0, right: 30),
                  child: Text(
                    'Drop your username and password here',
                    style: TextStyle(
                        fontFamily: 'PoppinsRegular',
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                verticalSpace(20),
                CustomInput(
                  hint: 'Email',
                  obc: false,
                  icon: Icons.email,
                  keyboardType: TextInputType.emailAddress,
                  mycontroller: emailController,
                  valid: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Email cannot be empty';
                    }
                    if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                      return 'Enter a valid email';
                    }
                    return null;
                  },
                ),
                verticalSpace(16),
                CustomInput(
                  hint: 'Password',
                  obc: true,
                  icon: Icons.lock,
                  keyboardType: TextInputType.visiblePassword,
                  mycontroller: passwordController,
                  valid: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Password cannot be empty';
                    }
                    if (value.length < 6) {
                      return 'Password must be at least 6 characters';
                    }
                    return null;
                  },
                ),
                verticalSpace(11),
                const Text(
                  'Forget your password ?',
                  style: TextStyle(
                      fontFamily: 'PoppinsRegular', fontSize: 15, fontWeight: FontWeight.w400),
                ),
                verticalSpace(10),
                GradientButton(
                  text: 'Login',
                  onPressed: () {},
                ),
                verticalSpace(17),
                const CustomGoogle(),
                verticalSpace(5),
                const CustomSepar(),
                verticalSpace(10),
                GradientButton(
                  text: 'Register',
                  onPressed: () {
                    Navigator.pushNamed(context, '/signup');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
