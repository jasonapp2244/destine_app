// lib/widgets/main_wrapper.dart
import 'package:flutter/material.dart';
import 'package:destine_app/widgets/custom_bottom_navigation_bar.dart';

class MainWrapper extends StatelessWidget {
  final Widget child;
  final String currentRoute;

  const MainWrapper({
    Key? key,
    required this.child,
    required this.currentRoute,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: CustomBottomNavigationBar(
        initialRoute: currentRoute,
      ),
    );
  }
}
