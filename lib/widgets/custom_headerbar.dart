import 'dart:ui';
import 'package:destine_app/controllers/course_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CustomHeaderBar extends StatelessWidget {
  final String title;
  final VoidCallback onBackTap;
  final VoidCallback onBookmarkTap;

  const CustomHeaderBar({
    super.key,
    required this.title,
    required this.onBackTap,
    required this.onBookmarkTap,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CourseDetailsController());

    return ClipRRect(
      borderRadius: BorderRadius.circular(12.r),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 12.w),
        child: Row(
          children: [
            // Back Arrow
            GestureDetector(
              onTap: onBackTap,
              child: Icon(Icons.arrow_back, color: Colors.white, size: 24.sp),
            ),
            SizedBox(width: 12.w),

            // Title
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            Spacer(),

            // Bookmark Icon
            Obx(
              () => GestureDetector(
                onTap: () {
                  controller.toggleBookmark();
                  onBookmarkTap(); // optional: callback to parent
                },
                child: SvgPicture.asset(
                  controller.isBookmarked.value
                      ? 'assets/icons/bookmarks_fill.svg'
                      : 'assets/icons/bookmarks.svg',

                  width: 24.w,
                  height: 24.h,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
