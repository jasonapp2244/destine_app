import 'package:destine_app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CustomQuizResultPopup extends StatelessWidget {
  final String userName;
  final int correctAnswers;
  final int totalQuestions;
  final VoidCallback? onClose;

  const CustomQuizResultPopup({
    Key? key,
    required this.userName,
    required this.correctAnswers,
    required this.totalQuestions,
    this.onClose,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final accuracy = (correctAnswers / totalQuestions * 100).round();

    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
      child: Container(
        padding: EdgeInsets.all(24.w),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Celebration Icon
            Container(
              width: 170.w,
              height: 130.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: primaryColor.withValues(alpha: 0.2),
              ),
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: SvgPicture.asset(
                  'assets/icons/quiz_completed.svg',

                  width: 20,
                  height: 20,
                ),
              ),
            ),
            SizedBox(height: 24.h),
            Text(
              "Well done, $userName!\n You got $correctAnswers/$totalQuestions correct",
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),

            SizedBox(height: 16.h),

            // Detailed Score
            Text(
              "You answered $correctAnswers out of $totalQuestions questions correctly.\nYour accuracy is $accuracy%.",
              style: TextStyle(fontSize: 16.sp, color: textColor, height: 1.4),
              textAlign: TextAlign.center,
            ),

            SizedBox(height: 32.h),

            // Close Button
            Container(
              width: double.infinity,
              height: 50.h,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xff7E7EFF), Color(0xff6B6BFF)],
                ),
                borderRadius: BorderRadius.circular(25.r),
              ),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: onClose ?? () => Get.back(),
                  borderRadius: BorderRadius.circular(25.r),
                  child: Center(
                    child: Text(
                      "Close",
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
