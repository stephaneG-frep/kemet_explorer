import 'package:flutter/material.dart';

import '../data/funeral_rites_data.dart';
import '../widgets/timeline_item.dart';
import 'detail_screen.dart';

class FuneralRitesScreen extends StatefulWidget {
  const FuneralRitesScreen({super.key});

  @override
  State<FuneralRitesScreen> createState() => _FuneralRitesScreenState();
}

class _FuneralRitesScreenState extends State<FuneralRitesScreen> {
  String query = '';

  @override
  Widget build(BuildContext context) {
    final filtered = funeralRitesData.where((r) {
      final q = query.toLowerCase();
      return r.name.toLowerCase().contains(q) ||
          r.period.toLowerCase().contains(q) ||
          r.summary.toLowerCase().contains(q) ||
          r.description.toLowerCase().contains(q);
    }).toList();

    return Scaffold(
      appBar: AppBar(title: const Text('Kemet Explorer')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Rites funéraires: repères essentiels',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              decoration: const InputDecoration(
                hintText: 'Rechercher un rite funéraire...',
                prefixIcon: Icon(Icons.search_rounded),
              ),
              onChanged: (value) => setState(() => query = value),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: ListView.builder(
                itemCount: filtered.length,
                itemBuilder: (context, index) {
                  final rite = filtered[index];
                  return InkWell(
                    borderRadius: BorderRadius.circular(14),
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => DetailScreen(
                          title: rite.name,
                          subtitle: rite.period,
                          description: rite.description,
                          extraLines: rite.keyPoints,
                          imagePath: 'assets/images/kemet_1.png',
                        ),
                      ),
                    ),
                    child: TimelineItem(
                      date: rite.period,
                      title: rite.name,
                      description: rite.summary,
                      isLast: index == filtered.length - 1,
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
