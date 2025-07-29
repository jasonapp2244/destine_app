import 'package:destine_app/constants/colors.dart';
import 'package:destine_app/constants/paddings.dart';
import 'package:destine_app/routes/routes.dart';
import 'package:destine_app/widgets/custom_bottom_navigation_bar.dart';
import 'package:destine_app/widgets/custom_notification_card.dart';
import 'package:destine_app/widgets/custom_profile_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                profileImagePath:
                    'assets/images/profile.png', // You'll need to add this image
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
                },
              ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: CustomBottomNavigationBar(
      //   initialRoute: AppRoutes.profile,
      // ),
    );
  }
}
