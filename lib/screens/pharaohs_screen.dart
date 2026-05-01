import 'package:flutter/material.dart';

import '../data/pharaohs_data.dart';
import '../widgets/info_card.dart';
import 'detail_screen.dart';

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
  String selectedEra = 'Toutes';

  @override
  Widget build(BuildContext context) {
    final eras = <String>{'Toutes', ...pharaohsData.map((p) => p.era)}.toList();
    final filtered = pharaohsData.where((p) {
      final matchesQuery =
          p.name.toLowerCase().contains(query.toLowerCase()) ||
          p.era.toLowerCase().contains(query.toLowerCase());
      final matchesEra = selectedEra == 'Toutes' || p.era == selectedEra;
      return matchesQuery && matchesEra;
    }).toList();

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
            const SizedBox(height: 8),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: eras
                    .map(
                      (era) => Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: ChoiceChip(
                          label: Text(era),
                          selected: selectedEra == era,
                          onSelected: (_) => setState(() => selectedEra = era),
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
                  final p = filtered[index];
                  final isFav = widget.favorites.contains(p.id);
                  return InfoCard(
                    title: p.name,
                    subtitle: '${p.era} • ${p.role}',
                    icon: isFav
                        ? Icons.favorite
                        : Icons.workspace_premium_rounded,
                    imagePath: p.imagePath,
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => DetailScreen(
                          title: p.name,
                          subtitle: '${p.era} • ${p.role}',
                          description:
                              'Repères essentiels pour comprendre la place de ${p.name} dans l’histoire égyptienne.',
                          imagePath: p.imagePath,
                          imageSourceUrl: p.imageSourceUrl,
                          galleryImages: pharaohsData
                              .map((e) => e.imagePath)
                              .toList(),
                          galleryTitles: pharaohsData
                              .map((e) => e.name)
                              .toList(),
                          galleryIndex: pharaohsData.indexWhere(
                            (e) => e.id == p.id,
                          ),
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
