import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final double? width;
  final double? height;
  final double borderRadius;
  final TextStyle? textStyle;
  final double elevation;
  final Color? textColor;
  final double? fontSize;
  final Widget? suffixIcon; // 👈 NEW PARAM

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor = const Color(0xFF7B6EF6),
    this.width,
    this.height,
    this.borderRadius = 24,
    this.textStyle,
    this.elevation = 0,
    this.textColor,
    this.fontSize,
    this.suffixIcon, // 👈 include in constructor
  });

  @override
  Widget build(BuildContext context) {
    Widget button = ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        elevation: elevation,
        fixedSize: (width != null && height != null && width != double.infinity)
            ? Size(width!, height!)
            : null,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (suffixIcon != null) ...[
            SizedBox(width: 8.w),
            suffixIcon!, // 👈 suffix icon widget
          ],
          SizedBox(width: 10.w),
          Text(
            text,
            style:
                textStyle ??
                TextStyle(
                  color: textColor ?? Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: fontSize ?? 14,
                ),
          ),
        ],
      ),
    );

    if (width == double.infinity) {
      return SizedBox(width: double.infinity, height: height, child: button);
    }

    return button;
  }
}
