import 'package:destine_app/constants/colors.dart';
import 'package:destine_app/constants/paddings.dart';
import 'package:destine_app/widgets/custom_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationPermission extends StatefulWidget {
  const NotificationPermission({super.key});

  @override
  State<NotificationPermission> createState() => _NotificationPermissionState();
}

class _NotificationPermissionState extends State<NotificationPermission> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      appBar: AppBar(
        backgroundColor: secondaryColor,
        title: Text(
          "Notifications",
          style: TextStyle(
            color: textColor,
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(
          horizontal: horizontalPadding.w,
           vertical: 41.h,
        ),
        child: Container(
          constraints: BoxConstraints(minHeight: 375.h, maxHeight: 375.h),

          padding: EdgeInsets.symmetric(vertical: 0.h, horizontal: 12.w),
          decoration: BoxDecoration(
            color: Colors.white,

            borderRadius: BorderRadius.circular(19.r),
          ),
          child: Column(
            children: [
              NotificationTile(text: "Daily Study Reminder"),
              CustomDivider(),
              NotificationTile(text: "Quiz Completion Reminder"),
              CustomDivider(),
              NotificationTile(text: "New Content Updates"),
              CustomDivider(),
              NotificationTile(text: "App Announcements"),
            ],
          ),
        ),
      ),
    );
  }
}

class NotificationTile extends StatefulWidget {
  final String text;
  // final String text;

  const NotificationTile({super.key, required this.text});

  @override
  State<NotificationTile> createState() => _NotificationTileState();
}

class _NotificationTileState extends State<NotificationTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.text,
              style: TextStyle(
                color: textColor,
                fontSize: 12.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            CustomSwitch(),
          ],
        ),
      ),
    );
  }
}

class CustomSwitch extends StatefulWidget {
  const CustomSwitch({super.key});

  @override
  State<CustomSwitch> createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  bool isSwitchOn = false;
  @override
  Widget build(BuildContext context) {
    return SwitchTheme(
      data: SwitchThemeData(
        trackOutlineColor: MaterialStateProperty.all(Colors.transparent),

        thumbColor: MaterialStateProperty.resolveWith<Color>((states) {
          if (states.contains(MaterialState.selected)) {
            return primaryColor;
          }
          return Colors.white;
        }),
        trackColor: MaterialStateProperty.all(Color(0xffEAEAEA)),
      ),
      child: Switch(
        splashRadius: 0, // optional: to prevent ripple on tap
        value: isSwitchOn,
        onChanged: (value) {
          setState(() {
            isSwitchOn = value;
          });
        },
      ),
    );
  }
}
