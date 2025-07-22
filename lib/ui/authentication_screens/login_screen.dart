import 'package:destine_app/ui/authentication_screens/choose_your_role.dart';
import 'package:destine_app/ui/authentication_screens/registration_screen.dart';
import 'package:destine_app/widgets/custom_button.dart';
import 'package:destine_app/widgets/custom_divider.dart';
import 'package:destine_app/widgets/custom_radiobutton.dart';
import 'package:destine_app/widgets/custom_social_icon.dart';
import 'package:destine_app/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffF5F5F5),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(),
            _buildHeaderText(),
            SizedBox(height: 4.h),
            _buildSubHeaderText(),
            SizedBox(height: 20.h),
            _buildInputFields(),
            SizedBox(height: 10.h),
            _buildRememberMeAndForgot(),
            SizedBox(height: 50.h),
            _buildLoginButton(),
            SizedBox(height: 69.h),
            _buildOrDivider(),
            SizedBox(height: 69.h),
            SocialButtonsRow(),
            SizedBox(height: 69.h),
            _buildSignupPrompt(context),
          ],
        ),
      ),
    );
  }

  Widget _buildHeaderText() {
    return Text(
      'Welcome Back!',
      style: TextStyle(
        color: const Color(0xff0F1011),
        fontWeight: FontWeight.w600,
        fontSize: 28.sp,
      ),
    );
  }

  Widget _buildSubHeaderText() {
    return Text(
      'Log in to explore about our app',
      style: TextStyle(
        color: const Color(0xff0F1011),
        fontWeight: FontWeight.w400,
        fontSize: 12.sp,
      ),
    );
  }

  Widget _buildInputFields() {
    return Column(
      children: const [
        CustomTextField(hintText: 'Email Address', icon: Icons.email),
        CustomTextField(hintText: 'Password', icon: Icons.password),
      ],
    );
  }

  Widget _buildRememberMeAndForgot() {
    return Row(
      children: [
        CustomRadio(isSelected: true, onTap: () {}),
        SizedBox(width: 8.w),
        Expanded(
          child: Text(
            'Remember Me',
            style: TextStyle(
              color: const Color(0xff0F1011),
              fontWeight: FontWeight.w700,
              fontSize: 12.sp,
            ),
          ),
        ),
        Text(
          'Forget Password?',
          style: TextStyle(
            color: const Color(0xff0F1011),
            fontWeight: FontWeight.bold,
            fontSize: 12.sp,
          ),
        ),
      ],
    );
  }

  Widget _buildLoginButton() {
    return CustomButton(
      text: 'Login',
      onPressed: () {
        Get.to(() => const ChooseRoleScreen());
      },
    );
  }

  Widget _buildOrDivider() {
    return OrDivider(text: 'OR', lineColor: const Color(0xff0F10111A));
  }

  Widget _buildSignupPrompt(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => const RegistrationScreen());
      },
      child: Padding(
        padding: EdgeInsets.only(bottom: 16.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: const Color(0xFF8CA4D4),
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
              child: RichText(
                text: TextSpan(
                  text: 'New here? ',
                  style: TextStyle(color: Colors.black, fontSize: 12.sp),
                  children: [
                    TextSpan(
                      text: 'Create an account',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                        fontSize: 12.sp,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
