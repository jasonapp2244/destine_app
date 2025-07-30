import 'package:destine_app/controllers/quiz_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomQuestionCard extends StatelessWidget {
  final QuizController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Obx(() {
        // Safety check for valid question index
        if (controller.currentQuestionIndex.value < 0 || 
            controller.currentQuestionIndex.value >= controller.questions.length) {
          print('Invalid question index: ${controller.currentQuestionIndex.value}');
          return Container(
            padding: EdgeInsets.all(20.w),
            child: Center(
              child: Text(
                'Loading question...',
                style: TextStyle(fontSize: 16.sp),
              ),
            ),
          );
        }
        
        // Get current question
        final currentQuestion =
            controller.questions[controller.currentQuestionIndex.value];
        print('Building question card for index: ${controller.currentQuestionIndex.value}');
        print('Question text: ${currentQuestion.text}');

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              currentQuestion.text,
              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 65.h),

            ...List.generate(currentQuestion.options.length, (index) {
              final isSelected = controller.selectedAnswerIndex.value == index;
              final isCorrect = index == currentQuestion.correctAnswerIndex;
              final isWrong = isSelected && !isCorrect;

              Color borderColor = Colors.transparent;
              Color fillColor = Colors.white;
              Icon? icon;

              if (controller.isAnswered.value) {
                if (isCorrect) {
                  borderColor = Colors.green;
                  fillColor = Colors.green.withOpacity(0.05);
                  icon = const Icon(Icons.check_circle, color: Colors.green);
                } else if (isWrong) {
                  borderColor = Colors.red;
                  fillColor = Colors.red.withOpacity(0.05);
                  icon = const Icon(Icons.cancel, color: Colors.red);
                }
              }

              return GestureDetector(
                onTap: () => controller.selectAnswer(index),
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 4),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    color: fillColor,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: borderColor, width: 2),
                  ),
                  child: Row(
                    children: [
                      Text(
                        String.fromCharCode(65 + index) + ". ",
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Expanded(child: Text(currentQuestion.options[index])),
                      if (icon != null) icon,
                    ],
                  ),
                ),
              );
            }),
          ],
        );
      }),
    );
  }
}
