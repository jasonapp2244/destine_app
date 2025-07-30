import 'package:destine_app/constants/assets.dart';
import 'package:destine_app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSearchBarWithFilterCard extends StatelessWidget {
  final bool showFilterIcon;
  final VoidCallback? onFilterTap;

  const CustomSearchBarWithFilterCard({
    super.key,
    this.showFilterIcon = true,
    this.onFilterTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 48,
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: Colors.grey.shade300),
              color: Colors.white,
            ),
            child: Row(
              children: [
                SvgPicture.asset(AppImages.search, width: 20, height: 20),
                SizedBox(width: 8),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 10.w),
                      hintText: 'Search topics...',
                      border: InputBorder.none,
                      isDense: true,
                    ),
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        if (showFilterIcon) ...[
          const SizedBox(width: 8), // Space between bar and icon
          GestureDetector(
            onTap: onFilterTap,
            child: Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: primaryColor,
              ),
              child: const Icon(
                Icons.filter_alt_outlined,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
        ],
      ],
    );
  }
}
