import 'package:destine_app/constants/assets.dart';
import 'package:destine_app/constants/colors.dart';
import 'package:destine_app/constants/paddings.dart';
import 'package:destine_app/controllers/courses_controller.dart';
import 'package:destine_app/routes/routes.dart';

import 'package:destine_app/widgets/custom_category.dart';
import 'package:destine_app/widgets/custom_course_card.dart';
import 'package:destine_app/widgets/custom_notification_card.dart';
import 'package:destine_app/widgets/custom_searchfield_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CoursesScreen extends StatelessWidget {
  final _coursesController = Get.find<CoursesController>(tag: 'courses');

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: secondaryColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: horizontalPadding.w,
              vertical: 31,
            ),
            child: Column(
              children: [
                _buildHeader(),
                SizedBox(height: 22.h),
                _buildSearchBar(),
                SizedBox(height: 10.h),
                _buildCategoryList(),

                _buildCourseList(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return CustomNotificationCard(title: 'Courses', userName: '');
  }

  Widget _buildSearchBar() {
    return CustomSearchBarWithFilterCard();
  }

  Widget _buildCategoryList() {
    return SizedBox(
      height: 27.h,

      child: ListView.builder(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemCount: _coursesController.categories.length,

        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(right: 8.w, bottom: 0),
            child: Obx(
              () => CustomCategoryChip(
                label: _coursesController.categories[index],
                isSelected: _coursesController.selectedIndex.value == index,
                onTap: () {
                  _coursesController.selectedIndex.value = index;
                  print(
                    'Selected index updated to: ${_coursesController.selectedIndex.value}',
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildCourseList() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CustomCourseCard(
          courseTitle: 'Cardiovascular System',
          imagePath: AppImages.continue_studying,
          progress: 0.2,
          buttonText: 'Enroll Now',
          onTapCourseDetail: () {
            Get.toNamed(AppRoutes.course_detail);
          },
          isCourses: true,
          onTap: () {},
        ),

        CustomCourseCard(
          courseTitle: 'Pharmacology Basics',
          imagePath: AppImages.pharmo,
          progress: 0.2,
          buttonText: 'Enroll Now',
          onTapCourseDetail: () {
            Get.toNamed(AppRoutes.course_detail);
          },
          isCourses: true,
          onTap: () {},
        ),

        CustomCourseCard(
          courseTitle: 'Cardiovascular System',
          imagePath: AppImages.continue_studying,
          progress: 0.2,
          buttonText: 'Enroll Now',
          onTapCourseDetail: () {
            Get.toNamed(AppRoutes.course_detail);
          },
          isCourses: true,
          onTap: () {},
        ),
      ],
    );
  }
}
