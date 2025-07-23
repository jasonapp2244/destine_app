import 'package:destine_app/constants/colors.dart';
import 'package:destine_app/constants/paddings.dart';
import 'package:destine_app/controllers/courses_controller.dart';
import 'package:destine_app/widgets/custom_category.dart';
import 'package:destine_app/widgets/custom_course_card.dart';
import 'package:destine_app/widgets/custom_notification_card.dart';
import 'package:destine_app/widgets/custom_searchfield_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CoursesScreen extends StatelessWidget {
  final _coursesController = Get.find<CoursesController>(tag: 'courses');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(
            horizontal: horizontalPadding.w,
            vertical: 31,
          ),
          child: Column(
            children: [
              CustomNotificationCard(
                title: 'Courses',
               
                userName: '',
              ),
              SizedBox(height: 22.h),
              CustomSearchBarWithFilterCard(),
               SizedBox(height: 10.h),
              SizedBox(
                height: 27.h, // Give the ListView a fixed height
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.horizontal,
                  itemCount: _coursesController.categories.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding:  EdgeInsets.only(right: 8.w),
                      child: Obx(() => CustomCategoryChip(
                        label: _coursesController.categories[index],
                        isSelected: _coursesController.selectedIndex.value == index,
                        // Debug print to see the isSelected value
                        // print('Index: $index, Selected: ${_coursesController.selectedIndex.value}, isSelected: ${_coursesController.selectedIndex.value == index}'),
                        onTap: () {
                          print('Tapped index: $index');
                          _coursesController.selectedIndex.value = index;
                          print('Selected index updated to: ${_coursesController.selectedIndex.value}');
                        },
                      )),
                    );
                  },
                ),
              ),
        
              CustomCourseCard(
                courseTitle: 'Cardiovascular System',
                imagePath: 'images/continuestudying.png',
                progress: 0.2,
                buttonText: 'Enroll Now',
                onTap: () {},
              ),
              SizedBox(height: 10.h),
              CustomCourseCard(
                courseTitle: 'Pharmacology Basics',
                imagePath: 'images/continuestudying.png',
                progress: 0.2,
                buttonText: 'Enroll Now',
                onTap: () {},
              ),
              SizedBox(height: 10.h),
              CustomCourseCard(
                courseTitle: 'Cardiovascular System',
                imagePath: 'images/continuestudying.png',
                progress: 0.2,
                buttonText: 'Enroll Now',
                onTap: () {},
              ),
             
            ],
          ),
        ),
      ),

      //   bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
