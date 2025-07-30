import 'package:destine_app/constants/colors.dart';
import 'package:destine_app/controllers/course_details_controller.dart';
import 'package:destine_app/routes/routes.dart';
import 'package:destine_app/widgets/course_detail_section_card.dart';
import 'package:destine_app/widgets/custom_headerbar.dart';
import 'package:destine_app/widgets/custom_progress_bar.dart';
import 'package:destine_app/widgets/custom_segmented_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

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
                // CustomHeaderBar OVER the image
                Positioned(
                  top: 40.h,
                  left: 16.w,
                  right: 16.w,
                  child: CustomHeaderBar(
                    title: 'Pharmacology - Drug Types',
                    onBackTap: () {},
                    onBookmarkTap: () {},
                  ),
                ),

                Positioned(
                  top: 90.h,
                  left: 16.w,
                  right: 16.w,
                  child: CustomProgressBar(
                    completedTopics: 5,
                    totalQuestions: 158,
                    correctAnswers: 1,
                    progress: 0.5,
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
            Obx(() {
              int selectedTab = _courseDetailsController.selectedTabIndex.value;

              return Column(
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width * 0.9,
                    padding: EdgeInsets.symmetric(
                      horizontal: 15.w,
                      vertical: 15.h,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(19),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: selectedTab == 0
                            ? _courseDetailsController.courseSections.map((
                                section,
                              ) {
                                return CustomCourseSectionCard(
                                  section: section,
                                  onLessonTap: (value) {},
                                );
                              }).toList()
                            : _courseDetailsController.quizSections.map((
                                section,
                              ) {
                                return CustomCourseSectionCard(
                                  section: section,
                                  isLastQuiz: section.isLastQuiz,
                                  onLessonTap: (value) {},
                                  onPressedQuiz: () {
                                    Get.toNamed(AppRoutes.quiz_course);
                                  },
                                );
                              }).toList(),
                      ),
                    ),
                  ),
                ],
              );
            }),
          ],
        ),
      ),
    );
  }
}
