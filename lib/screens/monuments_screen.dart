import 'package:flutter/material.dart';

import '../data/monuments_data.dart';
import '../widgets/info_card.dart';
import 'detail_screen.dart';

class MonumentsScreen extends StatefulWidget {
  const MonumentsScreen({super.key});

  @override
  State<MonumentsScreen> createState() => _MonumentsScreenState();
}

class _MonumentsScreenState extends State<MonumentsScreen> {
  String query = '';
  String selectedLocation = 'Toutes';
  String selectedCategory = 'Toutes';

  @override
  Widget build(BuildContext context) {
    final locations = <String>{
      'Toutes',
      ...monumentsData.map((m) => m.location),
    }.toList();
    final categories = <String>{
      'Toutes',
      ...monumentsData.map((m) => m.category),
    }.toList();
    final filtered = monumentsData.where((m) {
      final matchesQuery =
          m.name.toLowerCase().contains(query.toLowerCase()) ||
          m.location.toLowerCase().contains(query.toLowerCase());
      final matchesLocation =
          selectedLocation == 'Toutes' || m.location == selectedLocation;
      final matchesCategory =
          selectedCategory == 'Toutes' || m.category == selectedCategory;
      return matchesQuery && matchesLocation && matchesCategory;
    }).toList();

    return Scaffold(
      appBar: AppBar(title: const Text('Kemet Explorer • Monuments+')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondaryContainer,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Text(
                'Version enrichie: filtres lieu + catégorie, fiches détaillées, galerie 2 vues',
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              decoration: const InputDecoration(
                hintText: 'Rechercher un monument...',
                prefixIcon: Icon(Icons.search_rounded),
              ),
              onChanged: (value) => setState(() => query = value),
            ),
            const SizedBox(height: 8),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: locations
                    .map(
                      (location) => Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: ChoiceChip(
                          label: Text(location),
                          selected: selectedLocation == location,
                          onSelected: (_) =>
                              setState(() => selectedLocation = location),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            const SizedBox(height: 8),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: categories
                    .map(
                      (cat) => Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: ChoiceChip(
                          label: Text(cat),
                          selected: selectedCategory == cat,
                          onSelected: (_) =>
                              setState(() => selectedCategory = cat),
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
                  final m = filtered[index];
                  final photoPending = m.imagePath.contains('placeholder');
                  return InfoCard(
                    title: m.name,
                    subtitle:
                        '${m.location} • ${m.category}${photoPending ? ' • Photo à venir' : ''}\n${m.importance}',
                    icon: Icons.temple_buddhist_rounded,
                    imagePath: m.imagePath,
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => DetailScreen(
                          title: m.name,
                          subtitle: '${m.location} • ${m.category}',
                          description: m.importance,
                          imagePath: m.imagePath,
                          imageSourceUrl: m.imageSourceUrl,
                          extraLines: photoPending
                              ? ['Photo à venir', ...m.highlights]
                              : m.highlights,
                          galleryImages: [
                            m.imagePath,
                            if (m.altImagePath != null) m.altImagePath!,
                          ],
                          galleryTitles: [
                            '${m.name} • vue 1',
                            if (m.altImagePath != null) '${m.name} • vue 2',
                          ],
                          galleryIndex: 0,
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
