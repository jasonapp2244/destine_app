import 'package:destine_app/constants/assets.dart';
import 'package:destine_app/constants/colors.dart';
import 'package:destine_app/constants/paddings.dart';
import 'package:destine_app/routes/routes.dart';
import 'package:destine_app/widgets/custom_button.dart';
import 'package:destine_app/widgets/custom_or_divider.dart';
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
      resizeToAvoidBottomInset: true, // 👈 important!
      backgroundColor: secondaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: horizontalPadding.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                   SizedBox(height: 110.h), // Add some top padding instead of Spacer
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
        ),
      ),
    );
  }

  Widget _buildHeaderText() {
    return Text(
      'Welcome Back!',
      style: TextStyle(
        color: textColor,
        fontWeight: FontWeight.w600,
        fontSize: 28.sp,
      ),
    );
  }

  Widget _buildSubHeaderText() {
    return Text(
      'Log in to explore about our app',
      style: TextStyle(
        color: textColor,
        fontWeight: FontWeight.w400,
        fontSize: 12.sp,
      ),
    );
  }

  Widget _buildInputFields() {
    return Column(
      children: [
        CustomTextField(hintText: 'Email Address', iconPath: AppImages.mail),
        CustomTextField(
          hintText: 'Password',
          iconPath: AppImages.lock_password,
        ),
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
              color: textColor,
              fontWeight: FontWeight.w700,
              fontSize: 12.sp,
            ),
          ),
        ),
        Text(
          'Forget Password?',
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.bold,
            fontSize: 12.sp,
          ),
        ),
      ],
    );
  }

  _buildLoginButton() {
    return CustomButton(
      width: double.infinity,
      text: 'Login',
      onPressed: () {
        if (true)
          Get.offAllNamed(
            AppRoutes.chooseRole,
          ); // Will show home with bottom nav
      },
    );
  }

  Widget _buildOrDivider() {
    return OrDivider(text: 'OR', lineColor: dividerColor);
  }

  Widget _buildSignupPrompt(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(AppRoutes.signup);
      },
      child: Padding(
        padding: EdgeInsets.only(bottom: 16.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
              child: RichText(
                text: TextSpan(
                  text: 'New here? ',
                  style: TextStyle(color: textColor, fontSize: 12.sp),
                  children: [
                    TextSpan(
                      text: 'Create an account',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: textColor,
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
