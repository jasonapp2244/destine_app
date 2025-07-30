import 'package:destine_app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomNotificationCard extends StatelessWidget {
  final String text;
  final String userName;
  final String emoji;
  final IconData icon;
  final Color backgroundColor;
  final Color iconBackgroundColor;
  final String? title;

  const CustomNotificationCard({
    super.key,
    this.text = '',
    required this.userName,
    this.emoji = '👋',
    this.icon = Icons.notifications_none,
    this.backgroundColor = const Color(0xFFF8F8F8),
    this.iconBackgroundColor = Colors.white,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Welcome text section
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: TextStyle(fontSize: 12.sp, color: textColor),
              ),
              SizedBox(height: 4.h),
              Text(
                '${title != null && title!.isNotEmpty ? title : userName + emoji}',

                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                  color: textColor,
                ),
              ),
            ],
          ),
          // Icon section
          Container(
            width: 46.w,
            height: 46.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: iconBackgroundColor,
            ),
            child: Icon(icon, size: 24, color: iconColor),
          ),
        ],
      ),
    );
  }
}
