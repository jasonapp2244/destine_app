import 'package:destine_app/controllers/course_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomRadioCircle extends StatelessWidget {
  final int index;

  const CustomRadioCircle({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<CourseDetailsController>();

    return Obx(() {
      final isSelected = controller.isSelected(index);

      return GestureDetector(
        onTap: () => controller.toggle(index),
        child: Container(
          width: 20.w,
          height: 20.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isSelected ? const Color(0xFF7E7EFF) : Colors.transparent,
            border: Border.all(color: const Color(0xFF7E7EFF), width: 1.5),
          ),
          child: isSelected
              ? Icon(Icons.check, size: 12.sp, color: Colors.white)
              : null,
        ),
      );
    });
  }
}
