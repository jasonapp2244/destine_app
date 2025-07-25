import 'package:destine_app/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:responsive_navigation_bar/responsive_navigation_bar.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final String initialRoute;

  const CustomBottomNavigationBar({Key? key, required this.initialRoute})
    : super(key: key);
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
    _selectedIndex = _routeOrder.indexOf(widget.initialRoute);
  }

  void changeTab(int index) {
    final route = _routeOrder[index];
    if (index != _selectedIndex) {
      Navigator.pushReplacementNamed(context, route);
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
