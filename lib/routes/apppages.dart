import 'package:destine_app/binding/choose_your_role_binding.dart';
import 'package:destine_app/binding/courses_binding.dart';
import 'package:destine_app/binding/quizes_binding.dart';
import 'package:destine_app/ui/authentication_screens/choose_your_role.dart';
import 'package:destine_app/ui/authentication_screens/create_your_account.dart';
import 'package:destine_app/ui/authentication_screens/login_screen.dart';
import 'package:destine_app/ui/authentication_screens/subscription_screen.dart';
import 'package:destine_app/ui/home_screens/courses_screen.dart';
import 'package:destine_app/ui/home_screens/home_screen.dart';
import 'package:destine_app/ui/home_screens/quizes_screen.dart';
import 'package:destine_app/ui/profile_screen.dart';

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
    GetPage(name: AppRoutes.subscription, page: () => SubscriptionScreen()),
    GetPage(name: AppRoutes.home, page: () => HomeScreen()),
    GetPage(
      name: AppRoutes.courses,
      page: () => CoursesScreen(),
      binding: CoursesBinding(),
    ),
    GetPage(
      name: AppRoutes.quizes,
      page: () => QuizesScreen(),
      binding: QuizesBinding(),
    ),
    GetPage(name: AppRoutes.profile, page: () => ProfileScreen()),
  ];
}
