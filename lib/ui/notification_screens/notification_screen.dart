import 'package:destine_app/constants/colors.dart';
import 'package:destine_app/widgets/custom_divider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 16.w, vertical: 30.h),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
          decoration: BoxDecoration(
            color: Colors.white,

            borderRadius: BorderRadius.circular(19),
          ),
          child: Column(
            spacing: 10,
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
      // width: ,
      // height: ,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.text,
              style: TextStyle(
                color: textColor,
                fontSize: 18.sp,
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
    return Theme(
      data: ThemeData(useSystemColors: true),
      child: Switch(
        value: isSwitchOn,
        activeColor: Colors.white,
        inactiveTrackColor: Color(0xffEAEAEA),
        onChanged: (value) {
          setState(() {
            isSwitchOn = value;
          });
        },
      ),
    );
  }
}
