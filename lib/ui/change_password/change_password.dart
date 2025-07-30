import 'package:destine_app/constants/assets.dart';
import 'package:destine_app/constants/colors.dart';
import 'package:destine_app/constants/paddings.dart';
import 'package:destine_app/widgets/custom_button.dart';
import 'package:destine_app/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ChangePasswordScreen extends StatelessWidget {
  final TextEditingController oldPasswordController = TextEditingController();
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      appBar: AppBar(
        backgroundColor: secondaryColor,
        title: Text(
          "Change Password",
          style: TextStyle(
            color: textColor,
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding.w,
          vertical: 41.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Your password must be at least six characters and should include a\n"
              "combination of numbers, letters and special characters (!\$@%)",
              style: TextStyle(
                color: textColor,
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 10.h),

            // Old Password
            CustomTextField(
              controller: oldPasswordController,
              hintText: 'Old Password',
              iconPath: AppImages.lock_password,
              obscureText: true,
            ),

            SizedBox(height: 5.h),

            // New Password
            CustomTextField(
              controller: newPasswordController,
              hintText: 'New Password',
              iconPath: AppImages.lock_password,
              obscureText: true,
            ),

            SizedBox(height: 5.h),

            // Confirm Password
            CustomTextField(
              controller: confirmPasswordController,
              hintText: 'Confirm New Password',
              iconPath: AppImages.lock_password,
              obscureText: true,
            ),

            Spacer(),

            // Save Button
            CustomButton(
              width: double.infinity,
              text: 'Save',
              onPressed: () {
                _changePassword();
              },
            ),
          ],
        ),
      ),
    );
  }

  void _changePassword() {
    // Validate passwords
    if (oldPasswordController.text.isEmpty) {
      Get.snackbar('Error', 'Please enter your old password');
      return;
    }

    if (newPasswordController.text.isEmpty) {
      Get.snackbar('Error', 'Please enter your new password');
      return;
    }

    if (newPasswordController.text.length < 6) {
      Get.snackbar('Error', 'New password must be at least 6 characters');
      return;
    }

    if (newPasswordController.text != confirmPasswordController.text) {
      Get.snackbar('Error', 'Passwords do not match');
      return;
    }

    // Here you would typically make an API call to change the password
    print('Changing password...');
    print('Old Password: ${oldPasswordController.text}');
    print('New Password: ${newPasswordController.text}');

    // Show success message
    Get.snackbar(
      'Success',
      'Password changed successfully',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.green,
      colorText: Colors.white,
    );

    // Navigate back
    Get.back();
  }
}
