import 'package:get/get.dart';

class ChooseYourRoleController extends GetxController {
  RxString selectedRoleValue = ''.obs;

  void selectRole(String role) {
    selectedRoleValue.value = role;
  }
}
