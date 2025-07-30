import 'package:destine_app/controllers/quiz_controller.dart';
import 'package:get/get.dart';

class CoursesQuizBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<QuizController>(() => QuizController(), tag: 'courses');
  }
}
