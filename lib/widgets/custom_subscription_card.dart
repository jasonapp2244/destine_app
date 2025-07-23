import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSubscriptionCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 370.h,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Icon at the top
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xFFF1EAFE),
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.location_on, color: Color(0xFF8B5CF6)),
            ),
            SizedBox(height: 14.h),

            // Title
            Text(
              'Unlock Full Access',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Color(0xff0F1011),
              ),
            ),
            SizedBox(height: 6.h),

            // Subtitle
            Text(
              'Start your medical learning journey with full features and daily tools.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: Colors.grey.shade700),
            ),
            SizedBox(height: 20),

            // Price Row
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Just ',
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),
                  TextSpan(
                    text: '\$1.99',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(
                    text: '/month',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Features List
            _buildFeatureItem("All quizzes unlocked"),
            _buildFeatureItem("Study progress & streaks"),
            _buildFeatureItem("Role-based content dashboard"),
            _buildFeatureItem("Save progress across devices"),
            _buildFeatureItem("No hidden fees. Cancel anytime."),
            SizedBox(height: 24),

            // Subscribe Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF8B5CF6),
                  padding: EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Text(
                  'Subscribe & Continue',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureItem(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Row(
        children: [
          Icon(Icons.check_circle, color: Color(0xFF8B5CF6), size: 20),
          SizedBox(width: 8),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 14, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
