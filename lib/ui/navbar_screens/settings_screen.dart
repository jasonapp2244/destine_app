import 'package:destine_app/routes/routes.dart';
import 'package:destine_app/widgets/custom_profile_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomProfileCard(
            userName: 'Sarah Smith',
            userEmail: 'sarasmith@gmail.com',
            profileImagePath: '',
            onPaymentMethodTap: () {
              print('Navigating to payment method...');
              print('Route: ${AppRoutes.paymentMethod}');
              Get.toNamed(AppRoutes.paymentMethod);
            },
            onChangePasswordTap: () {
              Get.toNamed(AppRoutes.change_password);
            },
            onHelpSupportTap: () {
              Get.toNamed(AppRoutes.support);
            },
            onSubscriptionTap: () {},
          
          ),
        ],
      ),
    );
  }
}
