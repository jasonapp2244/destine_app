import 'package:destine_app/constants/colors.dart';
import 'package:destine_app/model/course_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCourseSection extends StatelessWidget {
  final List<CourseSection> sections;
  final Function(LessonItem)? onLessonTap;

  const CustomCourseSection({
    super.key,
    required this.sections,
    this.onLessonTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: sections.length,
        separatorBuilder: (context, index) => Divider(
          height: 1,
          color: Colors.grey[200],
          indent: 16.w,
          endIndent: 16.w,
        ),
        itemBuilder: (context, sectionIndex) {
          return _buildSection(sections[sectionIndex]);
        },
      ),
    );
  }

  Widget _buildSection(CourseSection section) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Section Header
        Padding(
          padding: EdgeInsets.all(16.w),
          child: Text(
            section.title,
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        
        // Section Lessons
        ...section.lessons.map((lesson) => _buildLessonItem(lesson)).toList(),
      ],
    );
  }

  Widget _buildLessonItem(LessonItem lesson) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      child: Row(
        children: [
          // Lesson Icon
          Container(
            width: 40.w,
            height: 40.h,
            decoration: BoxDecoration(
              color: primaryColor.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(
              lesson.type == LessonType.video ? Icons.play_arrow : Icons.description,
              color: primaryColor,
              size: 20.sp,
            ),
          ),
          
          SizedBox(width: 12.w),
          
          // Lesson Content
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  lesson.title,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  '${lesson.type == LessonType.video ? 'Video' : 'Doc'} - ${lesson.durationOrSize}',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
          
          // Status Indicator
          _buildStatusIndicator(lesson.status),
        ],
      ),
    );
  }

  Widget _buildStatusIndicator(LessonStatus status) {
    switch (status) {
      case LessonStatus.completed:
        return Container(
          width: 24.w,
          height: 24.h,
          decoration: BoxDecoration(
            color: primaryColor,
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.check,
            color: Colors.white,
            size: 16.sp,
          ),
        );
        
      case LessonStatus.locked:
        return Container(
          width: 24.w,
          height: 24.h,
          decoration: BoxDecoration(
            color: Colors.transparent,
            shape: BoxShape.circle,
            border: Border.all(
              color: primaryColor.withOpacity(0.5),
              width: 2,
            ),
          ),
          child: Icon(
            Icons.lock,
            color: primaryColor.withOpacity(0.5),
            size: 16.sp,
          ),
        );
        
      case LessonStatus.uncompleted:
        return Container(
          width: 24.w,
          height: 24.h,
          decoration: BoxDecoration(
            color: Colors.transparent,
            shape: BoxShape.circle,
            border: Border.all(
              color: primaryColor.withOpacity(0.5),
              width: 2,
            ),
          ),
        );
    }
  }
} 