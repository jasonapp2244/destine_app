import 'package:destine_app/constants/assets.dart';
import 'package:destine_app/constants/colors.dart';
import 'package:destine_app/constants/paddings.dart';
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
                _buildStatsCard(),
                SizedBox(height: 20.h),
                _buildCourseCards(),
                SizedBox(height: 20.h),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Recent Quizzes',
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                _buildRecentQuizzes(),
                SizedBox(height: 20.h),
                _buildPurchasedCourses(),
              ],
            ),
          ),
        ),
      ),
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
          sectionTitle: 'Continue Studying',
          courseTitle: 'Cardiovascular Anatomy',

          imagePath: AppImages.continue_studying,
          progress: 0.45,
          onTap: () {},
        ),
        SizedBox(height: 20.h),
        CustomCourseCard(
          sectionTitle: 'Completed Topics',
          courseTitle: 'Pharmacology Basics',
          imagePath: AppImages.pharmo,
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
        SizedBox(height: 12.h),
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
      courseTitle: 'Pharmacology Basics',
      imagePath: AppImages.pharmo,
      progress: 0.45,
      buttonText: 'Go to Quiz',
      onTap: () {},
    );
  }
}
