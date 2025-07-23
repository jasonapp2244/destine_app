import 'package:destine_app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StatCard extends StatelessWidget {
  final String title;
  final String value;

  const StatCard({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: 116.w,
        height: 80.h,
        margin: EdgeInsets.symmetric(horizontal: 5.w),

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          color: Colors.white,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 10.sp,
                  color: Color(0xff0F1011),
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 8.h),
              Text(
                value,
                style: TextStyle(
                  fontSize: 25.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.start,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class StatsCardContainer extends StatelessWidget {
  const StatsCardContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        StatCard(title: 'Quizzes Completed', value: '12'),
        StatCard(title: 'Topics Covered', value: '7/15'),
        StatCard(title: 'Study Time', value: '26 min'),
      ],
    );
  }
}
