class Archaeologist {
  const Archaeologist({
    required this.id,
    required this.name,
    required this.era,
    required this.specialty,
    required this.contribution,
    required this.imagePath,
    this.sourceUrl,
    this.highlights = const [],
  });

  final String id;
  final String name;
  final String era;
  final String specialty;
  final String contribution;
  final String imagePath;
  final String? sourceUrl;
  final List<String> highlights;
}
