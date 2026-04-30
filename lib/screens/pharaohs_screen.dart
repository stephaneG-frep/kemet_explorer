import 'package:flutter/material.dart';

import '../data/pharaohs_data.dart';
import 'detail_screen.dart';
import '../widgets/info_card.dart';

class PharaohsScreen extends StatefulWidget {
  const PharaohsScreen({
    super.key,
    required this.favorites,
    required this.onToggleFavorite,
  });

  final Set<String> favorites;
  final Future<void> Function(String id) onToggleFavorite;

  @override
  State<PharaohsScreen> createState() => _PharaohsScreenState();
}

class _PharaohsScreenState extends State<PharaohsScreen> {
  String query = '';

  @override
  Widget build(BuildContext context) {
    final filtered = pharaohsData
        .where(
          (p) =>
              p.name.toLowerCase().contains(query.toLowerCase()) ||
              p.era.toLowerCase().contains(query.toLowerCase()),
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
                hintText: 'Rechercher un pharaon...',
                prefixIcon: Icon(Icons.search_rounded),
              ),
              onChanged: (value) => setState(() => query = value),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: ListView.builder(
                itemCount: filtered.length,
                itemBuilder: (context, index) {
                  final p = filtered[index];
                  final isFav = widget.favorites.contains(p.id);
                  return InfoCard(
                    title: p.name,
                    subtitle: '${p.era} • ${p.role}',
                    icon: isFav
                        ? Icons.favorite
                        : Icons.workspace_premium_rounded,
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => DetailScreen(
                          title: p.name,
                          subtitle: '${p.era} • ${p.role}',
                          description: 'Faits importants sur ${p.name}.',
                          imagePath: p.imagePath,
                          extraLines: p.facts,
                          isFavorite: isFav,
                          onFavoriteToggle: () async {
                            await widget.onToggleFavorite(p.id);
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
