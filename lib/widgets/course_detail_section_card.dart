import 'package:destine_app/model/course_section.dart';
import 'package:destine_app/widgets/custom_divider.dart';
import 'package:destine_app/widgets/custom_icon_round.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomCourseSectionCard extends StatelessWidget {
  final CourseSection section;
  final Function(LessonItem) onLessonTap;

  const CustomCourseSectionCard({
    Key? key,
    required this.section,
    required this.onLessonTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(section.title, style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 14),
        ...section.lessons.map((lesson) {
          return Column(
            children: [
              GestureDetector(
                onTap: () => onLessonTap(lesson),
                child: Row(
                  children: [
                    CustomIconCircle(
                      iconAsset: lesson.type == LessonType.video
                          ? 'assets/icons/courses_video.svg'
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

                    SvgPicture.asset('assets/icons/change_password.svg'),
                  ],
                ),
              ),
              CustomDivider(),
            ],
          );
        }).toList(),
      ],
    );
  }
}
