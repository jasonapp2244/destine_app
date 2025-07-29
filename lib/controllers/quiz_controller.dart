import 'package:destine_app/model/question_model.dart';
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
  var currentQuestion = 0.obs;
  var selectedAnswerIndex = (-1).obs;
  var correctAnswerIndex = 0.obs;
  var isAnswered = false.obs;
  var time = 15.obs;

  List<String> options = [
    "Pharmacology – Drug Types",
    "Mitral Valve",
    "Tricuspid Valve",
    "Pulmonary Valve",
  ];

  void selectAnswer(int index) {
    if (isAnswered.value) return;
    selectedAnswerIndex.value = index;
    isAnswered.value = true;
  }

  void nextQuestion() {
    selectedAnswerIndex.value = -1;
    isAnswered.value = false;
    currentQuestion.value++;
    time.value = 15; // reset timer
  }

  final RxInt currentQuestionIndex = 0.obs;

  final List<Question> questions = [
    Question(
      text: "Which valves prevent backflow in the heart?",
      options: [
        "Pharmacology – Drug Types",
        "Mitral Valve",
        "Tricuspid Valve",
        "Pulmonary Valve",
      ],
      correctAnswerIndex: 2,
    ),
    Question(
      text: "What is the function of the pulmonary valve?",
      options: [
        "Regulate oxygen",
        "Prevent backflow",
        "Aid digestion",
        "Produce hormones",
      ],
      correctAnswerIndex: 1,
    ),
    // ➕ Add more questions here
  ];

  void goToNextQuestion() {
    if (currentQuestionIndex.value < questions.length - 1) {
      currentQuestionIndex.value++;
      selectedAnswerIndex.value = -1;
      isAnswered.value = false;
    }
  }
}
