import 'package:destine_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class CustomQuizPopup extends StatelessWidget {
  final String name;
  final int correct;
  final int total;
  final VoidCallback onClose;

  CustomQuizPopup({
    super.key,
    required this.name,
    required this.correct,
    required this.total,
    required this.onClose,
  });

  @override
  Widget build(BuildContext context) {
    double accuracy = (correct / total) * 100;

    return Center(
      child: Container(
        width: 291,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 8,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.celebration, color: Colors.purple, size: 40),
            const SizedBox(height: 12),
            Text(
              'Well done, $name! You got $correct/$total correct',
              textAlign: TextAlign.center,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 8),
            Text(
              'You answered $correct out of $total questions correctly.\nYour accuracy is ${accuracy.toStringAsFixed(0)}%.',
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 13, color: Colors.black87),
            ),
            const SizedBox(height: 16),
            CustomButton(text: 'Close', onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
