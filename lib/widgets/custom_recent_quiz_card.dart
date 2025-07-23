import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomRecentQuizCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final VoidCallback onTap;
  final String? icon;
  final Color iconBackgroundColor;
  final Color iconColor;
  final Color arrowColor;
  final bool showTrailingArrow;
  final bool showIcon;

  const CustomRecentQuizCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.onTap,
    this.icon = '',
    this.iconBackgroundColor = const Color(0xFF7B61FF),
    this.iconColor = Colors.white,
    this.arrowColor = const Color(0xFF7B61FF),
    this.showTrailingArrow = true,
    this.showIcon = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.03),
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          // Optional leading icon
          if (showIcon)
            Container(
              width: 42,
              height: 42,
              padding: EdgeInsets.all(11),
              decoration: BoxDecoration(
                color: iconBackgroundColor,
                shape: BoxShape.circle,
              ),
              child: SvgPicture.asset('assets/icons/Star.svg'),
            ),

          if (showIcon) const SizedBox(width: 12),

          // Title & subtitle
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 14.sp,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color(0xff0F1011),
                  ),
                ),
              ],
            ),
          ),

          // Optional trailing arrow
          if (showTrailingArrow)
            GestureDetector(
              onTap: onTap,
              child: Container(
                width: 42,
                height: 36,
                decoration: BoxDecoration(
                  color: arrowColor.withOpacity(0.1),
                  shape: BoxShape.rectangle,
                ),
                child: Icon(Icons.arrow_forward, size: 18, color: arrowColor),
              ),
            ),
        ],
      ),
    );
  }
}
