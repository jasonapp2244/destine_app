import 'package:destine_app/constants/assets.dart';
import 'package:destine_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomPricingCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 370,

      padding: EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(19),
        border: Border.all(color: Color(0xFFE3E8FF)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          // Top icon
          Container(
            decoration: BoxDecoration(
              color: Color(0xFFEDEBFF),
              shape: BoxShape.circle,
            ),
            padding: EdgeInsets.all(11),
            child: SvgPicture.asset(
              AppImages.diamond,
              width: 20.w,
              height: 20.h,
            ),
          ),
          SizedBox(height: 14.h),

          // Title
          const Text(
            "Unlock Full Access",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),

          SizedBox(height: 6.h),

          // Subtitle
          Text(
            "Start your medical learning journey with full features and daily tools.",
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 14.sp,
              color: Color(0xff0F1011),
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 14.h),

          // Pricing
          RichText(
            text: TextSpan(
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(
                  text: "Just",
                  style: TextStyle(
                    fontSize: 36.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: " \$1.99",
                  style: TextStyle(
                    fontSize: 36.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "/month",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.h),

          // Feature list
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              FeatureItem("All quizzes unlocked"),
              FeatureItem("Study progress & streaks"),
              FeatureItem("Role-based content dashboard"),
              FeatureItem("Save progress across devices"),
              FeatureItem("No hidden fees. Cancel anytime."),
            ],
          ),
          SizedBox(height: 16.h),

          // Button
          CustomButton(text: 'Subscribe & Continue', onPressed: () {}),
        ],
      ),
    );
  }
}

class FeatureItem extends StatelessWidget {
  final String text;

  const FeatureItem(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 7.5.h),
      child: Container(
        child: Row(
          children: [
            const Icon(Icons.check_circle, color: Color(0xFF7B61FF), size: 20),
            SizedBox(width: 8.w),
            Expanded(
              child: Text(text, style: TextStyle(fontSize: 14.sp)),
            ),
          ],
        ),
      ),
    );
  }
}
