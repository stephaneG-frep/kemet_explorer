class DiscoveryItem {
  const DiscoveryItem({
    required this.id,
    required this.title,
    required this.period,
    required this.place,
    required this.description,
    required this.importance,
    required this.imagePath,
    this.sourceUrl,
    this.highlights = const [],
  });

  final String id;
  final String title;
  final String period;
  final String place;
  final String description;
  final String importance;
  final String imagePath;
  final String? sourceUrl;
  final List<String> highlights;
}
