import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomRoleOptionTileCard extends StatelessWidget {
  final String roleName;
  final bool isSelected;
  final VoidCallback onTap;
  final Color primaryColor;
  final Color textColor;

  const CustomRoleOptionTileCard({
    Key? key,
    required this.roleName,
    required this.isSelected,
    required this.onTap,
    required this.primaryColor,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 46.h,
        padding: EdgeInsets.symmetric(horizontal: 18.w),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30.r),
          border: Border.all(
            color: isSelected ? primaryColor : Colors.transparent,
            width: 1.w,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              roleName,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 12.sp,
                color: textColor,
              ),
            ),
            if (isSelected)
              Container(
                height: 20.h,
                width: 20.w,
                decoration: BoxDecoration(
                  color: primaryColor,
                  shape: BoxShape.circle,
                ),
                padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),
                child: const Icon(Icons.check, size: 12, color: Colors.white),
              ),
          ],
        ),
      ),
    );
  }
}
