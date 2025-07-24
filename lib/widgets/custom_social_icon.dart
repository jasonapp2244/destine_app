import 'package:destine_app/constants/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SocialIconButton extends StatelessWidget {
  final Widget icon;
  final Color backgroundColor;

  const SocialIconButton({
    super.key,
    required this.icon,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 116.7.w, // responsive width
      height: 48.h, // responsive height
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(30.r), // responsive radius
      ),
      child: Center(child: icon),
    );
  }
}

class SocialButtonsRow extends StatelessWidget {
  const SocialButtonsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SocialIconButton(
          icon: SvgPicture.asset(
            AppImages.google,
            width: 20.w, // responsive icon width
            height: 20.h, // responsive icon height
          ),
          backgroundColor: Colors.white,
        ),
        SizedBox(width: 8.w), // responsive spacing
        SocialIconButton(
          icon: SvgPicture.asset(AppImages.facebook, width: 20.w, height: 20.h),
          backgroundColor: Colors.white,
        ),
        SizedBox(width: 8.w),
        SocialIconButton(
          icon: SvgPicture.asset(AppImages.apple, width: 20.w, height: 20.h),
          backgroundColor: Colors.white,
        ),
      ],
    );
  }
}
