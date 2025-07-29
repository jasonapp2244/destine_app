import 'package:destine_app/constants/colors.dart';
import 'package:destine_app/constants/paddings.dart';
import 'package:destine_app/controllers/quiz_controller.dart';
import 'package:destine_app/routes/routes.dart';
import 'package:destine_app/widgets/custom_bottom_navigation_bar.dart';
import 'package:destine_app/widgets/custom_notification_card.dart';
import 'package:destine_app/widgets/custom_quiz_card.dart';
import 'package:destine_app/widgets/custom_searchfield_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class QuizesScreen extends StatelessWidget {
  final _quizController = Get.find<QuizController>(tag: 'quizes');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(
          horizontal: horizontalPadding.w,
          vertical: 31,
        ),
        child: Column(
          children: [
            CustomNotificationCard(title: 'Quizzes', userName: ''),
            SizedBox(height: 22.h),
            CustomSearchBarWithFilterCard(showFilterIcon: false),
            SizedBox(height: 10.h),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.all(0),
                itemCount: _quizController.quizzes.length,
                itemBuilder: (context, index) {
                  return CustomQuizCard(quiz: _quizController.quizzes[index]);
                },
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: CustomBottomNavigationBar(
      //   initialRoute: AppRoutes.quizes,
      // ),
    );
  }
}
