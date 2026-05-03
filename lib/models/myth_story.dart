class MythStory {
  const MythStory({
    required this.id,
    required this.title,
    required this.theme,
    required this.summary,
    required this.story,
    required this.imagePath,
    this.imageSourceUrl,
    this.keyLessons = const [],
  });

  final String id;
  final String title;
  final String theme;
  final String summary;
  final String story;
  final String imagePath;
  final String? imageSourceUrl;
  final List<String> keyLessons;
}
