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

  final RxList<CourseSection> quizSections = [
    CourseSection(
      title: 'Section 2 - Course Information',
      isLastQuiz: false,
      lessons: [
        LessonItem(
          title: 'Anatomy of the Heart',
          subtitle: 'Quiz - 10 questions - 4/5 correct',
          type: LessonType.quiz,
          status: LessonStatus.completed,
          durationOrSize: '3:15 min',
        ),
      ],
    ),
    CourseSection(
      title: 'Section 3 - Course Information',
      isLastQuiz: true,
      lessons: [
        LessonItem(
          title: 'Anatomy of the Heart',
          subtitle: 'Quiz - 10 questions - 4/5 correct',
          type: LessonType.quiz,
          status: LessonStatus.uncompleted,
          durationOrSize: '4:20 min',
        ),
      ],
    ),
  ].obs;

  void changeTab(int index) {
    selectedTabIndex.value = index;
  }

  void onLessonTap(LessonItem lesson) {
    // Add navigation logic here
  }

  var isBookmarked = false.obs;

  void toggleBookmark() {
    isBookmarked.value = !isBookmarked.value;
  }

  // Tracks which item is selected (you can adapt this based on your use case)
  var selectedIndex = (-1).obs;

  void toggle(int index) {
    if (selectedIndex.value == index) {
      selectedIndex.value = -1; // Deselect if already selected
    } else {
      selectedIndex.value = index;
    }
  }

  bool isSelected(int index) => selectedIndex.value == index;
}
