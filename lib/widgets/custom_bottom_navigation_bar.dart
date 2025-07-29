import 'package:destine_app/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:responsive_navigation_bar/responsive_navigation_bar.dart';
import 'package:get/get.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final String? initialRoute;
  final Function(int)? onTabChanged;

  const CustomBottomNavigationBar({
    Key? key, 
    this.initialRoute,
    this.onTabChanged,
  }) : super(key: key);

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  late int _selectedIndex;

  static final _routeOrder = [
    AppRoutes.home,
    AppRoutes.courses,
    AppRoutes.quizes,
    AppRoutes.profile,
  ];

  @override
  void initState() {
    super.initState();
    _selectedIndex = _routeOrder.contains(widget.initialRoute)
        ? _routeOrder.indexOf(widget.initialRoute ?? '')
        : 0;
  }

  void changeTab(int index) {
    if (index == _selectedIndex) return;

    if (widget.onTabChanged != null) {
      widget.onTabChanged!(index);
    } else {
      final route = _routeOrder[index];
      print('Navigating to: $route');
      print('Current route: ${Get.currentRoute}');
      Get.offNamed(route);
    }
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveNavigationBar(
      backgroundColor: const Color(0xff7E7EFF),
      activeIconColor: const Color(0xff7E7EFF),
      showActiveButtonText: true,
      selectedIndex: _selectedIndex,
      onTabChange: changeTab,
      textStyle: const TextStyle(
        color: Color(0xff7E7EFF),
        fontWeight: FontWeight.bold,
      ),
      navigationBarButtons: const <NavigationBarButton>[
        NavigationBarButton(
          text: 'Home',
          iconPath: 'assets/icons/home.svg',
          backgroundGradient: LinearGradient(
            colors: [Colors.white, Colors.white],
          ),
        ),
        NavigationBarButton(
          text: 'Courses',
          iconPath: 'assets/icons/courses.svg',
          backgroundGradient: LinearGradient(
            colors: [Colors.white, Colors.white],
          ),
        ),
        NavigationBarButton(
          text: 'Quizzes',
          iconPath: 'assets/icons/quizzes.svg',
          backgroundGradient: LinearGradient(
            colors: [Colors.white, Colors.white],
          ),
        ),
        NavigationBarButton(
          text: 'Profile',
          iconPath: 'assets/icons/profile.svg',
          backgroundGradient: LinearGradient(
            colors: [Colors.white, Colors.white],
          ),
        ),
      ],
    );
  }
}
