import 'package:get/get.dart';

class CoursesController extends GetxController {
  final RxList<String> categories = [
    'Anatomy',
    'Pharmacology',
    'Pathophysiology',
    'Clinical',
    'Diagnosis',
  ].obs;

  RxInt selectedIndex = 0.obs;
}
