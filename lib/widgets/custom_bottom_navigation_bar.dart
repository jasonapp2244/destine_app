import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:responsive_navigation_bar/responsive_navigation_bar.dart';

///
class CustomBottomNavigationBar extends StatefulWidget {
  ///
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;

  void changeTab(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // extendBody: true,
        bottomNavigationBar: ResponsiveNavigationBar(
          backgroundColor: Color(0xff7E7EFF),
          activeIconColor: Color(0xff7E7EFF),
          showActiveButtonText: true,
          selectedIndex: _selectedIndex,
          onTabChange: changeTab,

          // showActiveButtonText: false,
          textStyle: const TextStyle(
            color: Color(0xff7E7EFF),
            fontWeight: FontWeight.bold,
          ),
          navigationBarButtons: const <NavigationBarButton>[
            NavigationBarButton(
              text: 'Tab 1',
              icon: Icons.people,

              backgroundGradient: LinearGradient(
                colors: [Colors.white, Colors.white, Colors.white],
              ),
            ),
            NavigationBarButton(
              text: 'Tab 2',
              icon: Icons.people,

              backgroundGradient: LinearGradient(
                colors: [Colors.white, Colors.white, Colors.white],
              ),
            ),
            NavigationBarButton(
              text: 'Tab 3',
              icon: Icons.people,

              backgroundGradient: LinearGradient(
                colors: [Colors.white, Colors.white, Colors.white],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
