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

  @override
  Widget build(BuildContext context) {
    final locations = <String>{
      'Toutes',
      ...monumentsData.map((m) => m.location),
    }.toList();
    final filtered = monumentsData.where((m) {
      final matchesQuery =
          m.name.toLowerCase().contains(query.toLowerCase()) ||
          m.location.toLowerCase().contains(query.toLowerCase());
      final matchesLocation =
          selectedLocation == 'Toutes' || m.location == selectedLocation;
      return matchesQuery && matchesLocation;
    }).toList();

    return Scaffold(
      appBar: AppBar(title: const Text('Kemet Explorer')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
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
            const SizedBox(height: 12),
            Expanded(
              child: ListView.builder(
                itemCount: filtered.length,
                itemBuilder: (context, index) {
                  final m = filtered[index];
                  return InfoCard(
                    title: m.name,
                    subtitle: '${m.location} • ${m.importance}',
                    icon: Icons.temple_buddhist_rounded,
                    imagePath: m.imagePath,
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => DetailScreen(
                          title: m.name,
                          subtitle: m.location,
                          description: m.importance,
                          imagePath: m.imagePath,
                          imageSourceUrl: m.imageSourceUrl,
                          galleryImages: monumentsData
                              .map((e) => e.imagePath)
                              .toList(),
                          galleryTitles: monumentsData
                              .map((e) => e.name)
                              .toList(),
                          galleryIndex: monumentsData.indexWhere(
                            (e) => e.id == m.id,
                          ),
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
