import 'package:get/get.dart';
import 'package:destine_app/model/course_section.dart';

class CourseDetailsController extends GetxController {
  // Tab selection
  final RxInt selectedTabIndex = 0.obs;

  // Course sections for Videos & Docs tab
  final RxList<CourseSection> courseSections = [
    CourseSection(
      title: 'Section 1 - Course Information',
      lessons: [
        LessonItem(
          title: 'Anatomy of the Heart',
          subtitle: 'Introduction to heart structure',
          type: LessonType.video,
          status: LessonStatus.completed,
          durationOrSize: '3:15 min',
        ),
        LessonItem(
          title: 'Heart Wall Summary',
          subtitle: 'Detailed heart wall analysis',
          type: LessonType.document,
          status: LessonStatus.locked,
          durationOrSize: '15 mb',
        ),
      ],
    ),
    CourseSection(
      title: 'Section 2 - Course Information',
      lessons: [
        LessonItem(
          title: 'Anatomy of the Heart',
          subtitle: 'Advanced heart anatomy',
          type: LessonType.video,
          status: LessonStatus.uncompleted,
          durationOrSize: '4:20 min',
        ),
        LessonItem(
          title: 'Heart Wall Summary',
          subtitle: 'Comprehensive heart wall guide',
          type: LessonType.video,
          status: LessonStatus.uncompleted,
          durationOrSize: '5:10 min',
        ),
        LessonItem(
          title: 'Heart Wall Summary',
          subtitle: 'Heart wall documentation',
          type: LessonType.document,
          status: LessonStatus.locked,
          durationOrSize: '12 mb',
        ),
      ],
    ),
    CourseSection(
      title: 'Section 3 - Course Information',
      lessons: [
        LessonItem(
          title: 'Anatomy of the Heart',
          subtitle: 'Final heart anatomy review',
          type: LessonType.video,
          status: LessonStatus.uncompleted,
          durationOrSize: '6:30 min',
        ),
        LessonItem(
          title: 'Heart Wall Summary',
          subtitle: 'Complete heart wall reference',
          type: LessonType.video,
          status: LessonStatus.uncompleted,
          durationOrSize: '7:45 min',
        ),
        LessonItem(
          title: 'Heart Wall Summary',
          subtitle: 'Final heart wall documentation',
          type: LessonType.document,
          status: LessonStatus.locked,
          durationOrSize: '18 mb',
        ),
      ],
    ),
  ].obs;

  void changeTab(int index) {
    selectedTabIndex.value = index;
  }

  void onLessonTap(LessonItem lesson) {
    print('Lesson tapped: ${lesson.title}');
    // Add navigation logic here
  }
}
