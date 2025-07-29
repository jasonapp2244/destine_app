import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomIconCircle extends StatelessWidget {
  final String iconAsset;
  final Color backgroundColor;
  final double iconSize;
  final double padding;
  Color? iconColor;
  CustomIconCircle({
    super.key,
    required this.iconAsset,
    this.backgroundColor = const Color(0xFFEDEBFF),
    this.iconSize = 24,
    this.padding = 11,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: backgroundColor, shape: BoxShape.circle),
      padding: EdgeInsets.symmetric(horizontal: padding.w, vertical: padding.h),
      child: SvgPicture.asset(
        iconAsset,
        width: iconSize.w,
        height: iconSize.h,
        color: iconColor,
      ),
    );
  }
}
