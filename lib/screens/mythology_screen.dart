import 'package:flutter/material.dart';

import '../data/gods_data.dart';
import 'detail_screen.dart';
import '../widgets/info_card.dart';

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

  @override
  Widget build(BuildContext context) {
    final filtered = godsData
        .where(
          (g) =>
              g.name.toLowerCase().contains(query.toLowerCase()) ||
              g.role.toLowerCase().contains(query.toLowerCase()),
        )
        .toList();

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
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => DetailScreen(
                          title: god.name,
                          subtitle: '${god.role} • Symbole: ${god.symbol}',
                          description: god.description,
                          imagePath: god.imagePath,
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
