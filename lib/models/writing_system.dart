class WritingSystem {
  const WritingSystem({
    required this.id,
    required this.name,
    required this.period,
    required this.usage,
    required this.description,
    required this.keyPoints,
  });

  final String id;
  final String name;
  final String period;
  final String usage;
  final String description;
  final List<String> keyPoints;
}
