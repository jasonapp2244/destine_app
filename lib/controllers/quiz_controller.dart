import 'package:get/get.dart';
import 'package:destine_app/model/quiz.dart';

class QuizController extends GetxController {
  final RxList<Quiz> quizzes = [
    Quiz(
      title: 'Pharmacology - Drug Types',
      subtitle: 'From Topic: \'Antihypertensive Drugs\'',
      status: 'Not Attempted',
      questions: '10',
      score: '4 / 5 Correct',
      actionButton: 'Start Quiz',
    ),
    Quiz(
      title: 'Pharmacology - Drug Types',
      subtitle: 'From Topic: \'Antihypertensive Drugs\'',
      status: 'In Progress',
      questions: '10',
      score: '4 / 5 Correct',
      actionButton: 'Resume',
    ),
    Quiz(
      title: 'Pharmacology - Drug Types',
      subtitle: 'From Topic: \'Antihypertensive Drugs\'',
      status: 'Completed',
      questions: '10',
      score: '4 / 5 Correct',
      actionButton: 'View Result',
    ),
  ].obs;

  void startQuiz(int index) {
    // Handle start quiz logic
  }

  void resumeQuiz(int index) {
    // Handle resume quiz logic
  }

  void viewResult(int index) {
    // Handle view result logic
  }
} 