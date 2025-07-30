import 'package:destine_app/constants/colors.dart';
import 'package:destine_app/constants/paddings.dart';
import 'package:destine_app/constants/assets.dart';
import 'package:destine_app/routes/routes.dart';
import 'package:destine_app/widgets/custom_notification_card.dart';
import 'package:destine_app/widgets/custom_profile_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: secondaryColor,

        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 31,
              horizontal: horizontalPadding.w,
            ),
            child: Column(
              children: [
                CustomNotificationCard(
                  title: 'Profile',
                  userName: '',
                  backgroundColor: secondaryColor,
                ),
                SizedBox(height: 28.h),
                CustomProfileCard(
                  userName: 'Sarah Smith',
                  userEmail: 'Sarasmith@gmail.com',
                  profileImagePath: AppImages.profile,
                  onLanguageTap: () {
                    // Handle language tap
                
                  },
                  onNotificationsTap: () {
                    // Handle notifications tap
                   
                  },
                  onPaymentMethodTap: () {
                    // Handle payment method tap
                    print('Navigating to payment method from profile...');
                    try {
                      Get.toNamed(AppRoutes.paymentMethod);
                    } catch (e) {
                      print('Navigation error: $e');
                      Get.snackbar(
                        'Error',
                        'Could not open payment method screen',
                        snackPosition: SnackPosition.BOTTOM,
                      );
                    }
                  },
                  onChangePasswordTap: () {
                    // Handle change password tap
                    print('Navigating to change password...');
                    try {
                      Get.toNamed(AppRoutes.change_password);
                    } catch (e) {
                      print('Navigation error: $e');
                      Get.snackbar(
                        'Error',
                        'Could not open change password screen',
                        snackPosition: SnackPosition.BOTTOM,
                      );
                    }
                  },
                  onSubscriptionTap: () {
                    // Handle subscription tap
                  
                  },
                  onHelpSupportTap: () {
                    // Handle help & support tap
                    print('Navigating to help & support...');
                    try {
                      Get.toNamed(AppRoutes.support);
                    } catch (e) {
                      print('Navigation error: $e');
                      Get.snackbar(
                        'Error',
                        'Could not open help & support screen',
                        snackPosition: SnackPosition.BOTTOM,
                      );
                    }
                  },
                  onLogoutTap: () {
                    // Handle logout tap
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
