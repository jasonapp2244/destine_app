import 'package:destine_app/constants/assets.dart';
import 'package:destine_app/constants/colors.dart';
import 'package:destine_app/constants/paddings.dart';
import 'package:destine_app/routes/routes.dart';
import 'package:destine_app/widgets/custom_bottom_navigation_bar.dart';
import 'package:destine_app/widgets/custom_course_card.dart';
import 'package:destine_app/widgets/custom_notification_card.dart';
import 'package:destine_app/widgets/custom_recent_quiz_card.dart';
import 'package:destine_app/widgets/custom_stats.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              _buildStatsCard(),
              SizedBox(height: 20.h),
              _buildCourseCards(),
              SizedBox(height: 20.h),
              _buildRecentQuizzes(),
              SizedBox(height: 20.h),
              _buildPurchasedCourses(),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: CustomBottomNavigationBar(initialRoute: AppRoutes.home),
    );
  }

  Widget _buildHeader() {
    return CustomNotificationCard(userName: 'Sarah !', text: 'Welcome Back');
  }

  Widget _buildStatsCard() {
    return StatsCardContainer();
  }

  Widget _buildCourseCards() {
    return Column(
      children: [
        CustomCourseCard(
          courseTitle: 'Course title',
          sectionTitle: 'Pharmacology Basics',
          imagePath: AppImages.continue_studying,
          progress: 0.2,
          onTap: () {},
        ),
        SizedBox(height: 20.h),
        CustomCourseCard(
          sectionTitle: 'Completed Topics',
          courseTitle: 'Pharmacology Basics',
          imagePath: AppImages.continue_studying,
          progress: 0.2,
          onTap: () {},
          buttonText: 'Go to Quiz',
        ),
        SizedBox(height: 20.h),
        CustomCourseCard(
          sectionTitle: 'Recommended Study Material',
          courseTitle: 'Cardiovascular System',
          imagePath: AppImages.continue_studying,
          progress: 0.2,
          buttonText: 'Enroll Now',
          onTap: () {},
        ),
      ],
    );
  }

  Widget _buildRecentQuizzes() {
    return Column(
      children: [
        CustomRecentQuizCard(
          title: 'Pharmacology Basics',
          subtitle: 'Based on your last lesson',
          icon: AppImages.star,
          iconBackgroundColor: lightPurple,
          arrowColor: primaryColor,
          firstIconBgColor: primaryColor,
          onTap: () {
            if (kDebugMode) {
              print('Quiz card tapped');
            }
          },
        ),
        CustomRecentQuizCard(
          title: 'Pharmacology Basics',
          subtitle: 'Based on your last lesson',
          icon: AppImages.star,
          iconBackgroundColor: lightPurple,
          arrowColor: primaryColor,
          firstIconBgColor: primaryColor,
          onTap: () {},
        ),
      ],
    );
  }

  Widget _buildPurchasedCourses() {
    return CustomCourseCard(
      sectionTitle: 'My Purchased Courses',
      courseTitle: 'Cardiovascular System',
      imagePath: AppImages.continue_studying,
      progress: 0.2,
      buttonText: 'Enroll Now',
      onTap: () {},
    );
  }
}
