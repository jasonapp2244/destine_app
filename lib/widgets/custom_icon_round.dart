import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomIconCircle extends StatelessWidget {
  final String iconAsset;
  final Color backgroundColor;
  final double iconSize;
  final double padding;

  const CustomIconCircle({
    Key? key,
    required this.iconAsset,
    this.backgroundColor = const Color(0xFFEDEBFF),
    this.iconSize = 24,
    this.padding = 11,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: backgroundColor, shape: BoxShape.circle),
      padding: EdgeInsets.symmetric(horizontal: padding.w, vertical: padding.h),
      child: SvgPicture.asset(iconAsset, width: iconSize.w, height: iconSize.h),
    );
  }
}
