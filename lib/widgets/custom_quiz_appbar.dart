import 'package:destine_app/constants/colors.dart';
import 'package:destine_app/controllers/quiz_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomQuizAppBar extends StatelessWidget {
  final QuizController controller = Get.find<QuizController>();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: secondaryColor,
      elevation: 0,
      title: Obx(
        () => Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () => controller.previousQuestion(),
                  child: const Icon(Icons.arrow_back_ios, color: Colors.black),
                ),
                const SizedBox(width: 8),
                Text(
                  "Questions ${controller.currentQuestionIndex.value + 1} of ${controller.questions.length}",
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                Text(
                  "00:${controller.time.value.toString().padLeft(2, '0')}",
                  style: const TextStyle(color: Colors.black),
                ),
              ],
            ),
            const SizedBox(height: 8),
            // Progress Bar
            Container(
              height: 4,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(2),
              ),
              child: FractionallySizedBox(
                alignment: Alignment.centerLeft,
                widthFactor: (controller.currentQuestionIndex.value + 1) / controller.questions.length,
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff7E7EFF), // Purple color
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
