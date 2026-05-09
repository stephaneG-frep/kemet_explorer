class FuneralRite {
  const FuneralRite({
    required this.id,
    required this.name,
    required this.period,
    required this.summary,
    required this.description,
    this.keyPoints = const [],
  });

  final String id;
  final String name;
  final String period;
  final String summary;
  final String description;
  final List<String> keyPoints;
}
