import 'package:destine_app/controllers/choose_your_role_controller.dart';
import 'package:get/get.dart';

class ChooseRoleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChooseYourRoleController>(() => ChooseYourRoleController());
  }
}
