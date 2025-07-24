import 'package:destine_app/widgets/custom_profile_card.dart';
import 'package:flutter/material.dart';

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
          ),
        ],
      ),
    );
  }
}
