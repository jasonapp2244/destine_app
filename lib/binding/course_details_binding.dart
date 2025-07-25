import 'package:destine_app/controllers/course_details_controller.dart';
import 'package:get/get.dart';

class CourseDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CourseDetailsController>(() => CourseDetailsController(), tag: 'course_details');
  }
} 