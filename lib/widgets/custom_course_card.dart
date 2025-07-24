import 'package:destine_app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCourseCard extends StatelessWidget {
  final String? sectionTitle;
  final String courseTitle;
  final String imagePath; // Local asset or network
  final double progress; // From 0.0 to 1.0
  final String buttonText;
  final VoidCallback onTap;
  bool isList = false;

  CustomCourseCard({
    super.key,
    this.sectionTitle = '',
    required this.courseTitle,
    required this.imagePath,
    required this.progress,
    this.buttonText = 'Resume',
    required this.onTap,
    this.isList = false,
  });

  @override
  Widget build(BuildContext context) {
    final percentWatched = (progress * 100).toInt();

    return SizedBox(
      width: 370.w,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  sectionTitle ?? '',
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              isList
                  ? Text(
                      'See All',
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  : Text(''),
            ],
          ),
          SizedBox(height: 12.h),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16.r),
              boxShadow: [
                BoxShadow(
                  color: textColor.withOpacity(0.05),
                  blurRadius: 8,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              children: [
                // Image + Play icon
                Stack(
                  alignment: Alignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15.r),
                      child: Image.asset(
                        imagePath,
                        height: 167.h,

                        width: 350.0.w,
                        fit: BoxFit.cover,
                      ),
                    ),
                    ClipOval(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(
                              0x4FFFFFFF,
                            ), // White with ~30% opacity
                            shape: BoxShape.circle,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 8.w,
                            vertical: 8.h,
                          ),
                          child: Icon(
                            Icons.play_arrow,
                            size: 30.sp,
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12.h),

                // Title & Button
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      courseTitle,
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: textColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    GestureDetector(
                      onTap: onTap,
                      child: Row(
                        children: [
                          Text(
                            buttonText,
                            style: TextStyle(
                              color: primaryColor,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(width: 6.w),
                          Icon(
                            Icons.arrow_forward,
                            size: 16,
                            color: primaryColor,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                if (sectionTitle != 'Recommended Study Material') ...[
                  SizedBox(height: 12.h),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: LinearProgressIndicator(
                          value: progress,
                          minHeight: 6,
                          backgroundColor: Colors.grey.shade300,
                          valueColor: AlwaysStoppedAnimation<Color>(
                            primaryColor,
                          ),
                        ),
                      ),
                      SizedBox(height: 6.h),
                      Text(
                        '$percentWatched% Watched',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: textColor,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
