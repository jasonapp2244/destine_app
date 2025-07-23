import 'package:destine_app/controllers/quiz_controller.dart';
import 'package:destine_app/model/quiz.dart';
import 'package:get/get.dart';

class QuizesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<QuizController>(() => QuizController(), tag: 'quizes');
  }
}
