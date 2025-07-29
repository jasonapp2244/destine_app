import 'package:destine_app/controllers/quiz_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class CustomQuestionCard extends StatelessWidget {
  final QuizController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Obx(
        () => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 12),
            const Text(
              "Which valves prevent backflow in the heart?",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            ...List.generate(controller.options.length, (index) {
              final isSelected = controller.selectedAnswerIndex.value == index;
              final isCorrect = index == controller.correctAnswerIndex.value;
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
                  margin: const EdgeInsets.symmetric(vertical: 6),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 14,
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
                      Expanded(child: Text(controller.options[index])),
                      if (icon != null) icon,
                    ],
                  ),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
