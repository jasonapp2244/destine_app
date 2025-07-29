import 'package:destine_app/controllers/quiz_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomQuizAppBar extends StatelessWidget {
  final QuizController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      elevation: 0,
      title: Obx(
        () => Row(
          children: [
            const Icon(Icons.arrow_back_ios, color: Colors.black),
            const SizedBox(width: 8),
            Text(
              "Questions ${controller.currentQuestion.value + 1} of 5",
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
      ),
    );
  }
}
