import 'package:destine_app/constants/colors.dart';
import 'package:destine_app/constants/paddings.dart';
import 'package:destine_app/controllers/quiz_controller.dart';
import 'package:destine_app/widgets/custom_button.dart';
import 'package:destine_app/widgets/custom_question_card.dart';
import 'package:destine_app/widgets/custom_quiz_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuizCourseScreen extends StatelessWidget {
  final QuizController controller = Get.put(QuizController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomQuizAppBar(),
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: horizontalPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 31.h),
            CustomQuestionCard(),
            const Spacer(),
            CustomButton(
              width: double.infinity,
              text: 'Next',
              onPressed: controller.nextQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
