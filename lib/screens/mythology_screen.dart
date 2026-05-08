import 'package:flutter/material.dart';

import '../data/gods_data.dart';
import '../data/global_gallery_data.dart';
import '../widgets/info_card.dart';
import 'detail_screen.dart';

class MythologyScreen extends StatefulWidget {
  const MythologyScreen({
    super.key,
    required this.favorites,
    required this.onToggleFavorite,
  });

  final Set<String> favorites;
  final Future<void> Function(String id) onToggleFavorite;

  @override
  State<MythologyScreen> createState() => _MythologyScreenState();
}

class _MythologyScreenState extends State<MythologyScreen> {
  String query = '';
  String selectedRole = 'Tous';

  @override
  Widget build(BuildContext context) {
    final roles = <String>{'Tous', ...godsData.map((g) => g.role)}.toList();
    final filtered = godsData.where((g) {
      final matchesQuery =
          g.name.toLowerCase().contains(query.toLowerCase()) ||
          g.role.toLowerCase().contains(query.toLowerCase());
      final matchesRole = selectedRole == 'Tous' || g.role == selectedRole;
      return matchesQuery && matchesRole;
    }).toList();

    return Scaffold(
      appBar: AppBar(title: const Text('Kemet Explorer')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                hintText: 'Rechercher un dieu...',
                prefixIcon: Icon(Icons.search_rounded),
              ),
              onChanged: (value) => setState(() => query = value),
            ),
            const SizedBox(height: 8),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: roles
                    .map(
                      (role) => Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: ChoiceChip(
                          label: Text(role),
                          selected: selectedRole == role,
                          onSelected: (_) =>
                              setState(() => selectedRole = role),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: ListView.builder(
                itemCount: filtered.length,
                itemBuilder: (context, index) {
                  final god = filtered[index];
                  final isFav = widget.favorites.contains(god.id);
                  return InfoCard(
                    title: god.name,
                    subtitle: god.role,
                    icon: isFav ? Icons.favorite : Icons.auto_awesome_rounded,
                    leading: god.useCartouche
                        ? _GodCartouche(label: god.name.toUpperCase())
                        : null,
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => DetailScreen(
                          title: god.name,
                          subtitle: '${god.role} • Symbole: ${god.symbol}',
                          description: god.description,
                          imagePath: god.imagePath,
                          imageSourceUrl: god.imageSourceUrl,
                          galleryImages: godsData
                              .map((e) => e.imagePath)
                              .toList(),
                          galleryTitles: godsData.map((e) => e.name).toList(),
                          galleryIndex: godsData.indexWhere(
                            (e) => e.id == god.id,
                          ),
                          globalGalleryImages: GlobalGalleryData.buildImages(),
                          globalGalleryTitles: GlobalGalleryData.buildTitles(),
                          globalGalleryIndex: GlobalGalleryData.indexForGodId(
                            god.id,
                          ),
                          isFavorite: isFav,
                          onFavoriteToggle: () async {
                            await widget.onToggleFavorite(god.id);
                            setState(() {});
                          },
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _GodCartouche extends StatelessWidget {
  const _GodCartouche({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.primary;
    return CustomPaint(
      painter: _CartouchePainter(color: color),
      child: SizedBox(
        width: 88,
        height: 88,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              label,
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: color,
                fontWeight: FontWeight.w700,
                fontSize: 12,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _CartouchePainter extends CustomPainter {
  const _CartouchePainter({required this.color});

  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final stroke = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    final rect = RRect.fromRectAndRadius(
      Rect.fromLTWH(4, 4, size.width - 14, size.height - 8),
      Radius.circular(size.height / 2),
    );
    canvas.drawRRect(rect, stroke);
    canvas.drawLine(
      Offset(size.width - 7, 10),
      Offset(size.width - 7, size.height - 10),
      stroke,
    );
  }

  @override
  bool shouldRepaint(covariant _CartouchePainter oldDelegate) {
    return oldDelegate.color != color;
  }
}
