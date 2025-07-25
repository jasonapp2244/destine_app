import 'package:destine_app/constants/colors.dart';
import 'package:destine_app/controllers/course_details_controller.dart';
import 'package:destine_app/widgets/course_detail_section_card.dart';
import 'package:destine_app/widgets/custom_course_card.dart';
import 'package:destine_app/widgets/custom_divider.dart';
import 'package:destine_app/widgets/custom_icon_round.dart';
import 'package:destine_app/widgets/custom_segmented_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CourseDetailsScreen extends StatelessWidget {
  final _courseDetailsController = Get.find<CourseDetailsController>(
    tag: 'course_details',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Stack for image + overlapping tab
            Stack(
              clipBehavior: Clip.none,
              children: [
                // Background Image with bottom border radius
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20.r),
                    bottomRight: Radius.circular(20.r),
                  ),
                  child: Image.asset(
                    'assets/images/course_detail.png',
                    width: double.infinity,
                    height: 200.h,
                    fit: BoxFit.cover,
                  ),
                ),

                // Segmented Tab bar positioned to hang halfway
                Positioned(
                  left: 16.w,
                  right: 16.w,
                  bottom: -25.h, // Puts half the tab on image, half on body
                  child: Obx(
                    () => CustomSegmentedTab(
                      selectedIndex:
                          _courseDetailsController.selectedTabIndex.value,
                      onTabChanged: (index) =>
                          _courseDetailsController.changeTab(index),
                    ),
                  ),
                ),
              ],
            ),

            // Add space for tab overlap
            SizedBox(height: 32.h),

            CustomDivider(),

            Column(
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width * 0.8,
                  height: MediaQuery.sizeOf(context).height * 0.8,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: _courseDetailsController.courseSections.map((
                        section,
                      ) {
                        return CustomCourseSectionCard(
                          section: section,
                          onLessonTap: (value) {},
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),

        // Tab content
        // Expanded(
        //   child:
        // Obx(() {
        //   switch (_courseDetailsController.selectedTabIndex.value) {
        //     case 0:
        //       return Container(
        //       ); // Videos & Docs
        //     case 1:
        //       return Container(); // Quiz
        //     default:
        //       return Container();
        //   }
        // }),
        // ),
      ),
    );
  }
}
