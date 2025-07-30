import 'package:destine_app/constants/assets.dart';
import 'package:destine_app/constants/colors.dart';
import 'package:destine_app/model/quiz.dart';
import 'package:destine_app/widgets/custom_button.dart';
import 'package:destine_app/widgets/custom_divider.dart';
import 'package:destine_app/widgets/custom_icon_round.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomQuizCard extends StatelessWidget {
  final Quiz quiz;

  const CustomQuizCard({super.key, required this.quiz});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4.h),
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(color: const Color(0xFFE0E0E0)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.03),
            blurRadius: 6,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Top Section
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Icon avatar
              CustomIconCircle(
                iconAsset: AppImages.star,
                backgroundColor: primaryColor,
              ),
              SizedBox(width: 12.w),

              /// Title & Subtitle
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      quiz.title,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 12.sp,
                      ),
                    ),
                    SizedBox(height: 2.h),
                    Text(
                      quiz.subtitle,
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: textColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),

              /// Action Button (top right)
              CustomButton(
                height: 18.h,
                width: 90.w,
                fontSize: 10.sp,
                textColor: primaryColor,
                backgroundColor: primaryColor.withValues(alpha: 0.1),
                text: quiz.actionButton,
                onPressed: () {},
              ),
            ],
          ),

          Row(
            children: [
              Expanded(child: CustomDivider(color: const Color(0x1A000000))),
            ],
          ),

          /// Status Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            spacing: 30.sp,
            children: [
              _buildInfo("Status", quiz.status),
              Container(width: 1, height: 40, color: const Color(0x1A000000)),

              _buildInfo("Questions", quiz.questions),
              Container(width: 1, height: 40, color: const Color(0x1A000000)),

              _buildInfo("Score", quiz.score),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildInfo(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 12.sp,
            color: textColor,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: 2.h),
        Text(
          value,
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12.sp),
        ),
      ],
    );
  }
}
