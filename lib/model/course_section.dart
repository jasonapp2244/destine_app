enum LessonType { video, document }
enum LessonStatus { completed, locked, uncompleted }

class CourseSection {
  final String title;
  final List<LessonItem> lessons;

  CourseSection({
    required this.title,
    required this.lessons,
  });

  factory CourseSection.fromMap(Map<String, dynamic> map) {
    return CourseSection(
      title: map['title'] ?? '',
      lessons: List<LessonItem>.from(map['lessons']?.map((x) => LessonItem.fromMap(x)) ?? []),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'lessons': lessons.map((x) => x.toMap()).toList(),
    };
  }
}

class LessonItem {
  final String title;
  final String subtitle;
  final LessonType type;
  final LessonStatus status;
  final String durationOrSize;

  LessonItem({
    required this.title,
    required this.subtitle,
    required this.type,
    required this.status,
    required this.durationOrSize,
  });

  factory LessonItem.fromMap(Map<String, dynamic> map) {
    return LessonItem(
      title: map['title'] ?? '',
      subtitle: map['subtitle'] ?? '',
      type: LessonType.values.firstWhere(
        (e) => e.toString() == 'LessonType.${map['type']}',
        orElse: () => LessonType.video,
      ),
      status: LessonStatus.values.firstWhere(
        (e) => e.toString() == 'LessonStatus.${map['status']}',
        orElse: () => LessonStatus.uncompleted,
      ),
      durationOrSize: map['durationOrSize'] ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'subtitle': subtitle,
      'type': type.toString().split('.').last,
      'status': status.toString().split('.').last,
      'durationOrSize': durationOrSize,
    };
  }
} 