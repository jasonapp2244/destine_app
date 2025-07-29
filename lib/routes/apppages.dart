import 'package:destine_app/binding/choose_your_role_binding.dart';
import 'package:destine_app/binding/course_details_binding.dart';
import 'package:destine_app/binding/course_quiz_binding.dart';
import 'package:destine_app/binding/courses_binding.dart';
import 'package:destine_app/binding/quizes_binding.dart';
import 'package:destine_app/main_wrapper.dart';
import 'package:destine_app/translations/language_selection_screen.dart';
import 'package:destine_app/ui/authentication_screens/choose_your_role.dart';
import 'package:destine_app/ui/authentication_screens/create_your_account.dart';
import 'package:destine_app/ui/authentication_screens/login_screen.dart';
import 'package:destine_app/ui/authentication_screens/subscription_screen.dart';
import 'package:destine_app/ui/home_screens/course_details_screen.dart';
import 'package:destine_app/ui/home_screens/courses_screen.dart';
import 'package:destine_app/ui/home_screens/home_screen.dart';
import 'package:destine_app/ui/home_screens/quiz_screen.dart';
import 'package:destine_app/ui/home_screens/quizes_screen.dart';
import 'package:destine_app/ui/notification_screens/notification_screen.dart';
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

    // 👇 TAB SCREENS wrapped with navigation
    GetPage(
      name: AppRoutes.home,
      page: () =>
          MainWrapper(currentRoute: AppRoutes.home, child: HomeScreen()),
    ),
    GetPage(
      name: AppRoutes.courses,
      page: () =>
          MainWrapper(currentRoute: AppRoutes.courses, child: CoursesScreen()),
      binding: CoursesBinding(),
    ),
    GetPage(
      name: AppRoutes.quizes,
      page: () =>
          MainWrapper(currentRoute: AppRoutes.quizes, child: QuizesScreen()),
      binding: QuizesBinding(),
    ),
    GetPage(
      name: AppRoutes.profile,
      page: () =>
          MainWrapper(currentRoute: AppRoutes.profile, child: ProfileScreen()),
    ),

    // Other screens
    GetPage(
      name: AppRoutes.course_detail,
      page: () => CourseDetailsScreen(),
      binding: CourseDetailsBinding(),
    ),
    GetPage(
      name: AppRoutes.quiz_course,
      page: () => QuizCourseScreen(),
      binding: QuizesBinding(),
    ),
    GetPage(name: AppRoutes.langugage, page: () => LanguageSelectionScreen()),

    GetPage(name: AppRoutes.notification, page: () => NotificationPermission()),
  ];
}
