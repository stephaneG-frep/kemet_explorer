class EgyptianGod {
  const EgyptianGod({
    required this.id,
    required this.name,
    required this.role,
    required this.symbol,
    required this.description,
    required this.imagePath,
    this.useCartouche = false,
    this.imageSourceUrl,
  });

  final String id;
  final String name;
  final String role;
  final String symbol;
  final String description;
  final String imagePath;
  final bool useCartouche;
  final String? imageSourceUrl;
}
