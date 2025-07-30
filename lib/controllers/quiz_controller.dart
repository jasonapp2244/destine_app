import 'package:destine_app/model/question_model.dart';
import 'package:get/get.dart';
import 'package:destine_app/model/quiz.dart';
import 'package:destine_app/widgets/custom_quiz_result_popup.dart';
import 'dart:async';

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
  var selectedAnswerIndex = (-1).obs;
  var correctAnswerIndex = 0.obs;
  var isAnswered = false.obs;
  var time = 15.obs;
  var correctAnswers = 0.obs;
  Timer? _timer;
  final RxInt currentQuestionIndex = 0.obs;

  void selectAnswer(int index) {
    if (isAnswered.value) return;
    selectedAnswerIndex.value = index;
    isAnswered.value = true;
    // Update correct answer index for current question
    correctAnswerIndex.value =
        questions[currentQuestionIndex.value].correctAnswerIndex;
    
    // Check if answer is correct
    if (index == questions[currentQuestionIndex.value].correctAnswerIndex) {
      correctAnswers.value++;
    }
  }

  void showQuizResult() {
    Get.dialog(
      CustomQuizResultPopup(
        userName: 'Sarah', // You can make this dynamic
        correctAnswers: correctAnswers.value,
        totalQuestions: questions.length,
        onClose: () {
          Get.back(); // Close dialog
          Get.back(); // Go back to previous screen
        },
      ),
    );
  }

  void nextQuestion() {
    print('Current question index: ${currentQuestionIndex.value}');
    print('Total questions: ${questions.length}');

    if (currentQuestionIndex.value < questions.length - 1) {
      selectedAnswerIndex.value = -1;
      isAnswered.value = false;
      currentQuestionIndex.value++;
      time.value = 15; // reset timer
    } else {
      showQuizResult();
    }
  }

  void previousQuestion() {
    print('Previous question - Current index: ${currentQuestionIndex.value}');
    
    if (currentQuestionIndex.value > 0) {
      selectedAnswerIndex.value = -1;
      isAnswered.value = false;
      currentQuestionIndex.value--;
      time.value = 15; // reset timer
      print('Moved to previous question: ${currentQuestionIndex.value}');
    } else {
      print('Already at first question, going back to previous screen');
      Get.back(); // Go back to previous screen if at first question
    }
  }

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
      text:
          "Which chamber of the heart receives oxygenated blood from the lungs?",
      options: [
        "Right Atrium",
        "Left Atrium",
        "Right Ventricle",
        "Left Ventricle",
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      text: "Which of the following are functions of the circulatory system?",
      options: [
        "Transport nutrients and oxygen",
        "Regulate body temperature",
        "Break down food",
        "Remove waste products",
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      text: "The valve that prevents backflow into the left atrium is called?",
      options: [
        "Pulmonary Valve",
        "Aortic Valve",
        "Tricuspid Valve",
        "Mitral Valve",
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      text: "Which arteries supply blood to the heart muscle itself?",
      options: [
        "Pulmonary Arteries",
        "Coronary Arteries",
        "Carotid Arteries",
        "Subclavian Arteries",
      ],
      correctAnswerIndex: 1,
    ),
    // ➕ Add more questions here
  ];
}
