import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:destine_app/routes/routes.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn));

    // Start animation
    _controller.forward();

    // Navigate to login after 3 seconds and mark first launch as complete
    Future.delayed(const Duration(seconds: 3), () async {
      // Mark that first launch is complete
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setBool('isFirstLaunch', false);

      // Navigate to login
      Get.offAllNamed(AppRoutes.login);
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff161349),
      body: SafeArea(
        child: FadeTransition(
          opacity: _fadeAnimation,
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo Image
                Image.asset(
                  'assets/images/splash.png',
                  width: 200.w,
                  height: 200.h,
                  fit: BoxFit.contain,
                ),
                SizedBox(height: 5.h),

                // App Name
                Text(
                  'Gradient Medical Review',
                  style: TextStyle(
                    color: const Color(0xff8DEDFF),
                    fontSize: 24.sp,

                    letterSpacing: 2.0,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 5.h),

                // Tagline
                Text(
                  'PASS WITH CONTINUE',
                  style: TextStyle(
                    color: const Color(0xff7E7EFF),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 2.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
