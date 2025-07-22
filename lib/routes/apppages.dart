import 'package:destine_app/binding/choose_your_role_binding.dart';
import 'package:destine_app/ui/authentication_screens/choose_your_role.dart';
import 'package:destine_app/ui/authentication_screens/create_your_account.dart';
import 'package:destine_app/ui/authentication_screens/login_screen.dart';

import 'routes.dart';
import 'package:get/get.dart';

class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.login, page: () => LoginScreen()),
    GetPage(name: AppRoutes.signup, page: () => CreateYourAccountScreen()),
    GetPage(
      name: AppRoutes.chooseRole,
      page: () => ChooseRoleScreen(),
      binding: ChooseRoleBinding(),
    ),
  ];
}
