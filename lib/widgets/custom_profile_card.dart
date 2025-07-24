import 'package:destine_app/constants/colors.dart';
import 'package:destine_app/constants/paddings.dart';
import 'package:destine_app/widgets/custom_icon_round.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      margin: EdgeInsets.symmetric(horizontal: horizontalPadding.w),
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(
          color: primaryColor.withValues(alpha: 0.3),
          width: 2,
          style: BorderStyle.solid,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
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
            icon: 'icons/globe.svg',
            title: 'Language',
            onTap: onLanguageTap,
            iconColor: primaryColor,
          ),
          
          CustomDivider(color: const Color(0xFFE0E0E0)),
          
          _buildMenuItem(
            icon: 'icons/bell.svg',
            title: 'Notifications',
            onTap: onNotificationsTap,
            iconColor: primaryColor,
          ),
          
          CustomDivider(color: const Color(0xFFE0E0E0)),
          
          _buildMenuItem(
            icon: 'icons/credit-card.svg',
            title: 'Payment Method',
            onTap: onPaymentMethodTap,
            iconColor: primaryColor,
          ),
          
          CustomDivider(color: const Color(0xFFE0E0E0)),
          
          _buildMenuItem(
            icon: 'icons/lock.svg',
            title: 'Change Password',
            onTap: onChangePasswordTap,
            iconColor: primaryColor,
          ),
          
          CustomDivider(color: const Color(0xFFE0E0E0)),
          
          _buildMenuItem(
            icon: 'icons/document.svg',
            title: 'Subscription',
            onTap: onSubscriptionTap,
            iconColor: primaryColor,
          ),
          
          CustomDivider(color: const Color(0xFFE0E0E0)),
          
          _buildMenuItem(
            icon: 'icons/headphones.svg',
            title: 'Help & Support',
            onTap: onHelpSupportTap,
            iconColor: primaryColor,
          ),
          
          CustomDivider(color: const Color(0xFFE0E0E0)),
          
          _buildMenuItem(
            icon: 'icons/logout.svg',
            title: 'Logout',
            onTap: onLogoutTap,
            iconColor: Colors.red,
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem({
    required String icon,
    required String title,
    required VoidCallback? onTap,
    required Color iconColor,
  }) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 12.h),
        child: Row(
          children: [
            // Icon with circular background
            Container(
              width: 40.w,
              height: 40.w,
              decoration: BoxDecoration(
                color: iconColor.withValues(alpha: 0.1),
                shape: BoxShape.circle,
              ),
                              child: Center(
                  child: CustomIconCircle(
                    iconAsset: icon,
                    backgroundColor: Colors.transparent,
                    iconSize: 20,
                  ),
                ),
            ),
            
            SizedBox(width: 16.w),
            
            // Title
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ),
            
            // Arrow
            Icon(
              Icons.arrow_forward_ios,
              size: 16.sp,
              color: textColor,
            ),
          ],
        ),
      ),
    );
  }
}

class CustomDivider extends StatelessWidget {
  final Color color;
  final double height;

  const CustomDivider({
    super.key,
    this.color = const Color(0xFFE0E0E0),
    this.height = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      color: color,
    );
  }
} 