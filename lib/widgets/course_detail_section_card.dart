import 'package:destine_app/constants/colors.dart';
import 'package:destine_app/model/course_section.dart';
import 'package:destine_app/routes/routes.dart';
import 'package:destine_app/widgets/custom_button.dart';
import 'package:destine_app/widgets/custom_divider.dart';
import 'package:destine_app/widgets/custom_icon_round.dart';
import 'package:destine_app/widgets/custom_radiobutton.dart';
import 'package:destine_app/widgets/cutom_radio_check.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomCourseSectionCard extends StatelessWidget {
  final CourseSection section;
  final Function(LessonItem) onLessonTap;
  final bool? isLastQuiz;
  void Function()? onPressedQuiz;
  CustomCourseSectionCard({
    Key? key,
    required this.section,
    required this.onLessonTap,

    this.isLastQuiz,
    this.onPressedQuiz,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(section.title, style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 14),
        ...section.lessons.asMap().entries.map((entry) {
          final index = entry.key;
          final lesson = entry.value;
          final isLast = index == section.lessons.length - 1;

          return Column(
            children: [
              GestureDetector(
                onTap: () => onLessonTap(lesson),
                child: Row(
                  children: [
                    CustomIconCircle(
                      iconColor: primaryColor,
                      iconAsset: lesson.type == LessonType.video
                          ? 'assets/icons/courses_video.svg'
                          : lesson.type == LessonType.quiz
                          ? 'assets/icons/star.svg'
                          : 'assets/icons/notes.svg',
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(lesson.title),

                          Text(
                            '${lesson.type == LessonType.video ? 'Video' : 'Document'} - ${lesson.durationOrSize}',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    lesson.type == LessonType.video
                        ? SvgPicture.asset('assets/icons/change_password.svg')
                        : lesson.type == LessonType.document
                        ? CustomRadioCircle(index: index)
                        : isLastQuiz == true
                        ? CustomButton(
                            textColor: primaryColor,
                            backgroundColor: Color(
                              0x1A7E7EFF,
                            ), // ARGB format in Flutter (alpha first)

                            height: 29.h,
                            text: 'Start Quiz',
                            onPressed: onPressedQuiz ?? () {
                              print('Navigating to quiz screen...');
                              try {
                                Get.toNamed(AppRoutes.quiz_course);
                                print('Navigation successful');
                              } catch (e) {
                                print('Navigation error: $e');
                              }
                            },
                          )
                        : Container(),
                  ],
                ),
              ),

              // ✅ Only show divider if not the last item
              if (!isLast) CustomDivider(),
              if (isLast) SizedBox(height: 20.h),
            ],
          );
        }).toList(),
      ],
    );
  }
}
