import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialIconButton extends StatelessWidget {
  final Widget icon;
  final Color backgroundColor;

  const SocialIconButton({
    Key? key,
    required this.icon,
    required this.backgroundColor,
  }) : super(key: key);

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
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SocialIconButton(
          icon: SvgPicture.asset(
            'assets/icons/google.svg',
            width: 20.w, // responsive icon width
            height: 20.h, // responsive icon height
          ),
          backgroundColor: Colors.white,
        ),
        SizedBox(width: 8.w), // responsive spacing
        SocialIconButton(
          icon: SvgPicture.asset(
            'assets/icons/facebook.svg',
            width: 20.w,
            height: 20.h,
          ),
          backgroundColor: Colors.white,
        ),
        SizedBox(width: 8.w),
        SocialIconButton(
          icon: SvgPicture.asset(
            'assets/icons/apple.svg',
            width: 20.w,
            height: 20.h,
          ),
          backgroundColor: Colors.white,
        ),
      ],
    );
  }
}
