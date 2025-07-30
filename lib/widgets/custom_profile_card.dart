import 'package:destine_app/constants/colors.dart';
import 'package:destine_app/constants/assets.dart';
import 'package:destine_app/routes/routes.dart';
import 'package:destine_app/widgets/custom_divider.dart';
import 'package:destine_app/widgets/custom_icon_round.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomProfileCard extends StatelessWidget {
  final String userName;
  final String userEmail;
  final String profileImagePath;
  final VoidCallback? onLanguageTap;
  final VoidCallback? onNotificationsTap;
  final VoidCallback? onPaymentMethodTap;
  final VoidCallback? onChangePasswordTap;
  final VoidCallback? onSubscriptionTap;
  final VoidCallback? onHelpSupportTap;
  final VoidCallback? onLogoutTap;

  const CustomProfileCard({
    super.key,
    required this.userName,
    required this.userEmail,
    required this.profileImagePath,
    this.onLanguageTap,
    this.onNotificationsTap,
    this.onPaymentMethodTap,
    this.onChangePasswordTap,
    this.onSubscriptionTap,
    this.onHelpSupportTap,
    this.onLogoutTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(19.r),

        boxShadow: [],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// User Profile Section
          Row(
            children: [
              // Profile Picture
              Container(
                width: 60.w,
                height: 60.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(profileImagePath),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 16.w),

              // User Info
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userName,
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      userEmail,
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: textColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          SizedBox(height: 24.h),

          /// Menu Options
          _buildMenuItem(
            icon: AppImages.language,
            title: 'Language',
            onTap: () {
              Get.toNamed(AppRoutes.langugage);
            },
            bgColor: Color(0x7E7E7EFF),
          ),

          CustomDivider(color: const Color(0x1A000000)),

          _buildMenuItem(
            icon: AppImages.notification_outline,
            title: 'Notifications',

            bgColor: Color(0x7E7E7EFF),
            onTap: () {
              Get.toNamed(AppRoutes.notification);
            },
          ),

          CustomDivider(color: const Color(0x1A000000)),

          _buildMenuItem(
            icon: AppImages.payment_method,
            title: 'Payment Method',
            onTap: onPaymentMethodTap,
            bgColor: Color(0x7E7E7EFF),
          ),

          CustomDivider(color: const Color(0x1A000000)),

          _buildMenuItem(
            icon: AppImages.change_password,
            title: 'Change Password',
            onTap: onChangePasswordTap,
            bgColor: Color(0x7E7E7EFF),
          ),

          CustomDivider(color: const Color(0x1A000000)),

          _buildMenuItem(
            icon: AppImages.subscription,
            title: 'Subscription',
            onTap: onSubscriptionTap,
            bgColor: Color(0x7E7E7EFF),
          ),

          CustomDivider(color: const Color(0x1A000000)),

          _buildMenuItem(
            icon: AppImages.helpanddesk,
            title: 'Help & Support',
            onTap: onHelpSupportTap,
            bgColor: Color(0x7E7E7EFF),
          ),

          CustomDivider(color: const Color(0x1A000000)),

          _buildMenuItem(
            icon: AppImages.logout_outline,
            title: 'Logout',

            onTap: onLogoutTap,
            bgColor: Colors.red,
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem({
    required String icon,
    required String title,
    required VoidCallback? onTap,
    required Color bgColor,
  }) {
    final isLogout = title.toLowerCase() == 'logout';

    if (isLogout) {
      return SizedBox(
        width: double.infinity,
        height: 50.h,
        child: ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.red,
            padding: EdgeInsets.symmetric(vertical: 14.h),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.r),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Icon (Optional)
              SizedBox(width: 12.w),
              Text(
                'Logout',
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      );
    }

    // Default Menu Item
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 12.h),
        child: Row(
          children: [
            Container(
              width: 43.w,
              height: 43.h,
              decoration: BoxDecoration(
                color: bgColor.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: CustomIconCircle(
                  iconAsset: icon,
                  backgroundColor: Colors.transparent,
                  iconSize: 30,
                ),
              ),
            ),
            SizedBox(width: 16.w),
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
            ),
            Icon(Icons.arrow_forward_ios, size: 16.sp, color: textColor),
          ],
        ),
      ),
    );
  }
}
