import 'package:destine_app/constants/colors.dart';
import 'package:destine_app/widgets/custom_profile_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Profile',
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h),
          child: CustomProfileCard(
            userName: 'Sarah Smith',
            userEmail: 'Sarasmith@gmail.com',
            profileImagePath: 'assets/images/profile.jpg', // You'll need to add this image
            onLanguageTap: () {
              // Handle language tap
              print('Language tapped');
            },
            onNotificationsTap: () {
              // Handle notifications tap
              print('Notifications tapped');
            },
            onPaymentMethodTap: () {
              // Handle payment method tap
              print('Payment method tapped');
            },
            onChangePasswordTap: () {
              // Handle change password tap
              print('Change password tapped');
            },
            onSubscriptionTap: () {
              // Handle subscription tap
              print('Subscription tapped');
            },
            onHelpSupportTap: () {
              // Handle help & support tap
              print('Help & support tapped');
            },
            onLogoutTap: () {
              // Handle logout tap
              print('Logout tapped');
            },
          ),
        ),
      ),
    );
  }
} 