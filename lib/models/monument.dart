class Monument {
  const Monument({
    required this.id,
    required this.name,
    required this.location,
    required this.importance,
    required this.imagePath,
    this.altImagePath,
    this.category = 'Monument',
    this.highlights = const [],
    this.imageSourceUrl,
  });

  final String id;
  final String name;
  final String location;
  final String importance;
  final String imagePath;
  final String? altImagePath;
  final String category;
  final List<String> highlights;
  final String? imageSourceUrl;
}
