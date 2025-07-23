import 'package:destine_app/constants/colors.dart';
import 'package:destine_app/constants/paddings.dart';
import 'package:destine_app/routes/routes.dart';
import 'package:destine_app/ui/authentication_screens/login_screen.dart';
import 'package:destine_app/widgets/custom_button.dart';
import 'package:destine_app/widgets/custom_or_divider.dart';
import 'package:destine_app/widgets/custom_radiobutton.dart';
import 'package:destine_app/widgets/custom_social_icon.dart';
import 'package:destine_app/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CreateYourAccountScreen extends StatelessWidget {
  const CreateYourAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: horizontalPadding.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(),
            _buildTitleText(),
            SizedBox(height: 4.h),
            _buildSubtitleText(),
            SizedBox(height: 20.h),
            _buildInputFields(),
            SizedBox(height: 10.h),
            _buildRememberMeRow(),
            SizedBox(height: 50.h),
            _buildSignUpButton(),
            SizedBox(height: 69.h),
            _buildOrDivider(),
            SizedBox(height: 69.h),
            SocialButtonsRow(),
            SizedBox(height: 69.h),
            _buildLoginPrompt(context),
          ],
        ),
      ),
    );
  }

  Widget _buildTitleText() {
    return Text(
      'Create Your Account!',
      style: TextStyle(
        color: textColor,
        fontWeight: FontWeight.w600,
        fontSize: 28.sp,
      ),
    );
  }

  Widget _buildSubtitleText() {
    return Text(
      'Create your account to explore about our app',
      style: TextStyle(
        color: textColor,
        fontWeight: FontWeight.w400,
        fontSize: 12.sp,
      ),
    );
  }

  Widget _buildInputFields() {
    return Column(
      children: const [
        CustomTextField(hintText: 'Full Name', icon: Icons.person),
        CustomTextField(hintText: 'Email Address', icon: Icons.email),
        CustomTextField(hintText: 'Password', icon: Icons.password),
      ],
    );
  }

  Widget _buildRememberMeRow() {
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
      ],
    );
  }

  Widget _buildSignUpButton() {
    return CustomButton(
      width: double.infinity,
      text: 'Sign Up',
      onPressed: () {
        Get.toNamed(AppRoutes.home);
        // Handle sign-up logic or navigation
      },
    );
  }

  Widget _buildOrDivider() {
    return OrDivider(text: 'OR', lineColor: dividerColor);
  }

  Widget _buildLoginPrompt(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.h),
      child: GestureDetector(
        onTap: () {
          Get.to(() => const LoginScreen());
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
              child: RichText(
                text: TextSpan(
                  text: 'Already have an account? ',
                  style: TextStyle(color: primaryColor, fontSize: 12.sp),
                  children: [
                    TextSpan(
                      text: 'login here',
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
