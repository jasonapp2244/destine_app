import 'package:destine_app/constants/assets.dart';
import 'package:destine_app/constants/colors.dart';
import 'package:destine_app/constants/paddings.dart';
import 'package:destine_app/controllers/signup_controller.dart';
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
  final SignupController controller = Get.put(SignupController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: horizontalPadding.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                 SizedBox(height: 110.h),
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
    return Form(
      key: controller.formKey,
      child: Column(
        children: [
          CustomTextField(
            hintText: 'Full Name',
            iconPath: AppImages.multiple_users,
            controller: controller.fullNameController,
          ),
          CustomTextField(
            hintText: 'Email Address',
            iconPath: AppImages.mail,
            controller: controller.emailController,
          ),
          CustomTextField(
            hintText: 'Password',
            iconPath: AppImages.lock_password,
            controller: controller.passwordController,
          ),
        ],
      ),
    );
  }

  Widget _buildRememberMeRow() {
    return Obx(
      () => Row(
        children: [
          CustomRadio(
            isSelected: controller.rememberMe.value,
            onTap: controller.toggleRememberMe,
          ),
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
      ),
    );
  }

  Widget _buildSignUpButton() {
    return CustomButton(
      width: double.infinity,
      text: 'Sign Up',
      onPressed: controller.signUp,
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
                  style: TextStyle(color: textColor, fontSize: 12.sp),
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
