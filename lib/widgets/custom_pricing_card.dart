import 'package:destine_app/constants/assets.dart';
import 'package:destine_app/constants/colors.dart';
import 'package:destine_app/widgets/custom_button.dart';
import 'package:destine_app/widgets/custom_icon_round.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomPricingCard extends StatelessWidget {
  const CustomPricingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,

      padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 14.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(19.r),
        border: Border.all(color: Color(0xFFE3E8FF)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          // Top icon
          CustomIconCircle(iconAsset: AppImages.diamond, padding: 14),

          SizedBox(height: 14.h),

          // Title
          Text(
            "Unlock Full Access",
            style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
          ),

          SizedBox(height: 6.h),

          // Subtitle
          Text(
            "Start your medical learning journey with full features and daily tools.",
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 14.sp,
              color: textColor,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 14.h),

          // Pricing
          RichText(
            text: TextSpan(
              style: TextStyle(color: textColor),
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
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextSpan(
                  text: "/ month",
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 14.h),

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
          CustomButton(
            width: double.infinity,
            text: 'Subscribe & Continue',
            onPressed: () {},
          ),
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
      child: Row(
        children: [
          Container(
            height: 20.h,
            width: 20.w,
            decoration: BoxDecoration(
              color: primaryColor,
              shape: BoxShape.circle,
            ),
            padding: EdgeInsets.symmetric(horizontal: 4.w),
            child: const Icon(Icons.check, size: 10, color: Colors.white),
          ),
          SizedBox(width: 9.w),
          Expanded(
            child: Text(text, style: TextStyle(fontSize: 14.sp)),
          ),
        ],
      ),
    );
  }
}
