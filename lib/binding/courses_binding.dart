import 'package:destine_app/controllers/courses_controller.dart';
import 'package:get/get.dart';

class CoursesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CoursesController>(() => CoursesController(), tag: 'courses');
  }
}
