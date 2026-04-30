import 'package:flutter/material.dart';

import '../data/monuments_data.dart';
import 'detail_screen.dart';
import '../widgets/info_card.dart';

class MonumentsScreen extends StatefulWidget {
  const MonumentsScreen({super.key});

  @override
  State<MonumentsScreen> createState() => _MonumentsScreenState();
}

class _MonumentsScreenState extends State<MonumentsScreen> {
  String query = '';

  @override
  Widget build(BuildContext context) {
    final filtered = monumentsData
        .where(
          (m) =>
              m.name.toLowerCase().contains(query.toLowerCase()) ||
              m.location.toLowerCase().contains(query.toLowerCase()),
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
                hintText: 'Rechercher un monument...',
                prefixIcon: Icon(Icons.search_rounded),
              ),
              onChanged: (value) => setState(() => query = value),
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
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => DetailScreen(
                          title: m.name,
                          subtitle: m.location,
                          description: m.importance,
                          imagePath: m.imagePath,
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
