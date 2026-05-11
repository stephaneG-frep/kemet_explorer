import 'package:flutter/material.dart';

import '../data/discoveries_data.dart';
import '../widgets/info_card.dart';
import 'detail_screen.dart';

class DiscoveriesScreen extends StatefulWidget {
  const DiscoveriesScreen({super.key});

  @override
  State<DiscoveriesScreen> createState() => _DiscoveriesScreenState();
}

class _DiscoveriesScreenState extends State<DiscoveriesScreen> {
  int selected = 0;
  String query = '';

  @override
  Widget build(BuildContext context) {
    final q = query.toLowerCase().trim();
    final filteredDiscoveries = discoveriesData.where((d) {
      return d.title.toLowerCase().contains(q) ||
          d.place.toLowerCase().contains(q) ||
          d.period.toLowerCase().contains(q) ||
          d.description.toLowerCase().contains(q);
    }).toList();
    final filteredArchaeologists = archaeologistsData.where((a) {
      return a.name.toLowerCase().contains(q) ||
          a.era.toLowerCase().contains(q) ||
          a.specialty.toLowerCase().contains(q) ||
          a.contribution.toLowerCase().contains(q);
    }).toList();

    return Scaffold(
      appBar: AppBar(title: const Text('Kemet Explorer • Découvertes')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            SegmentedButton<int>(
              segments: const [
                ButtonSegment(
                  value: 0,
                  icon: Icon(Icons.explore_rounded),
                  label: Text('Découvertes'),
                ),
                ButtonSegment(
                  value: 1,
                  icon: Icon(Icons.person_search_rounded),
                  label: Text('Archéologues'),
                ),
              ],
              selected: {selected},
              onSelectionChanged: (set) => setState(() => selected = set.first),
            ),
            const SizedBox(height: 12),
            TextField(
              decoration: InputDecoration(
                hintText: selected == 0
                    ? 'Rechercher une découverte...'
                    : 'Rechercher un archéologue...',
                prefixIcon: const Icon(Icons.search_rounded),
              ),
              onChanged: (value) => setState(() => query = value),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: selected == 0
                  ? ListView.builder(
                      itemCount: filteredDiscoveries.length,
                      itemBuilder: (context, index) {
                        final d = filteredDiscoveries[index];
                        return InfoCard(
                          title: d.title,
                          subtitle: '${d.period} • ${d.place}\n${d.importance}',
                          icon: Icons.auto_awesome_rounded,
                          onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => DetailScreen(
                                title: d.title,
                                subtitle: '${d.period} • ${d.place}',
                                description: d.description,
                                extraLines: d.highlights,
                                imagePath: d.imagePath,
                                imageSourceUrl: d.sourceUrl,
                              ),
                            ),
                          ),
                        );
                      },
                    )
                  : ListView.builder(
                      itemCount: filteredArchaeologists.length,
                      itemBuilder: (context, index) {
                        final a = filteredArchaeologists[index];
                        return InfoCard(
                          title: a.name,
                          subtitle:
                              '${a.era} • ${a.specialty}\n${a.contribution}',
                          icon: Icons.school_rounded,
                          onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => DetailScreen(
                                title: a.name,
                                subtitle: '${a.era} • ${a.specialty}',
                                description: a.contribution,
                                extraLines: a.highlights,
                                imagePath: a.imagePath,
                                imageSourceUrl: a.sourceUrl,
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
