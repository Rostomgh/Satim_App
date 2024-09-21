import 'package:flutter/material.dart';
import 'package:satim_hack/core/Theme/AppColor.dart';
import 'package:satim_hack/core/helper/Assets.dart';
import 'package:satim_hack/core/helper/CustomBox.dart';
import 'package:satim_hack/features/Auth/presentation/view/Widget/CustomButton.dart';
import 'package:satim_hack/features/Auth/presentation/view/Widget/CustomInput.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool _isChecked = false; 
  final _formKey = GlobalKey<FormState>();
  final TextEditingController fullnameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

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
                  child: Text('Register',
                      style: TextStyle(
                          fontFamily: 'PoppinsRegular',
                          color: AppColor.black,
                          fontSize: 30,
                          fontWeight: FontWeight.w500)),
                ),
                verticalSpace(20),
                const Center(
                  child: Text(
                    'Write your information below',
                    style: TextStyle(
                        fontFamily: 'PoppinsRegular',
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                verticalSpace(20),
                CustomInput(
                  hint: 'Full Name',
                  obc: false, 
                  icon: Icons.person,
                  keyboardType: TextInputType.text,
                  mycontroller: fullnameController,
                  valid: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Full Name cannot be empty';
                    }
                    return null;
                  },
                ),
                verticalSpace(18),
                CustomInput(
                  hint: 'Username',
                  obc: false, 
                  icon: Icons.person_outline,
                  keyboardType: TextInputType.text,
                  mycontroller: usernameController,
                  valid: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Username cannot be empty';
                    }
                    return null;
                  },
                ),
                verticalSpace(18),
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
                verticalSpace(18),
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
                verticalSpace(20),
                Row(
                  children: [
                    Checkbox(
                      value: _isChecked,
                      activeColor: AppColor.satim,
                      onChanged: (bool? newValue) {
                        setState(() {
                          _isChecked = newValue ?? false;
                        });
                      },
                    ),
                    const Text(
                      'I agree to the Terms and Conditions',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                GradientButton(
                  text: 'Sign Up',
                  onPressed: () {
                    if (_formKey.currentState?.validate() ?? false) {
                      if (_isChecked) {
                        Navigator.pushNamed(context, '/home');
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Please accept terms and conditions'),
                          ),
                        );
                      }
                    }
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
