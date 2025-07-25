class CourseItem {
  final String iconAsset;
  final String title;
  final String subtitle;

  CourseItem({
    required this.iconAsset,
    required this.title,
    required this.subtitle,
  });
}

class CourseSection {
  final String sectionTitle;
  final List<CourseItem> items;

  CourseSection({required this.sectionTitle, required this.items});
}
