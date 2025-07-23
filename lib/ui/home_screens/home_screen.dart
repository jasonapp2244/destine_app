import 'package:destine_app/constants/colors.dart';
import 'package:destine_app/constants/paddings.dart';
import 'package:destine_app/widgets/custom_bottom_navigation_bar.dart';
import 'package:destine_app/widgets/custom_course_card.dart';
import 'package:destine_app/widgets/custom_notification_card.dart';
import 'package:destine_app/widgets/custom_recent_quiz_card.dart';
import 'package:destine_app/widgets/custom_stats.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
              CustomNotificationCard(userName: 'Sarah!', text: 'Welcome Back'),
              SizedBox(height: 22.h),
              StatsCardContainer(),
              SizedBox(height: 20.h),
              CustomCourseCard(
                courseTitle: 'Course title',
                sectionTitle: 'Pharmacology Basics',
                imagePath: 'images/continuestudying.png',
                progress: 0.2,

                onTap: () {},
              ),
              SizedBox(height: 20.h),
              CustomCourseCard(
                sectionTitle: 'Completed Topics',
                courseTitle: 'Pharmacology Basics',
                imagePath: 'images/continuestudying.png',
                progress: 0.2,
                onTap: () {},
                buttonText: 'Go to Quiz',
              ),
              SizedBox(height: 20.h),
              CustomCourseCard(
                sectionTitle: 'Recommended Study Material',
                courseTitle: 'Cardiovascular System',
                imagePath: 'images/continuestudying.png',
                progress: 0.2,
                buttonText: 'Enroll Now',
                onTap: () {},
              ),
              SizedBox(height: 20.h),
              CustomRecentQuizCard(
                title: 'Pharmacology Basics',
                subtitle: 'Based on your last lesson',
                icon: 'icons/Star.svg',
                iconBackgroundColor: primaryColor,
                arrowColor: Colors.deepPurple,
                onTap: () {
                  print('Quiz card tapped');
                },
              ),
              CustomRecentQuizCard(
                title: 'Pharmacology Basics',
                subtitle: 'Based on your last lesson',
                icon: 'icons/Star.svg',
                iconBackgroundColor: primaryColor,
                arrowColor: Colors.deepPurple,
                onTap: () {
                  print('Quiz card tapped');
                },
              ),
              CustomCourseCard(
                sectionTitle: 'Recommended Study Material',
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
      //  bottomNavigationBar:  CustomBottomNavBar(currentIndex: 0, onTap:(){} ),
    );
  }
}
