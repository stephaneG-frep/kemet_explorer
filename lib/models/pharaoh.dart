class Pharaoh {
  const Pharaoh({
    required this.id,
    required this.name,
    required this.era,
    required this.role,
    required this.facts,
    required this.imagePath,
  });

  final String id;
  final String name;
  final String era;
  final String role;
  final List<String> facts;
  final String imagePath;
}
