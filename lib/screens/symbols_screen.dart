import 'package:flutter/material.dart';

import '../data/symbols_data.dart';
import 'detail_screen.dart';
import '../widgets/info_card.dart';

class SymbolsScreen extends StatefulWidget {
  const SymbolsScreen({super.key});

  @override
  State<SymbolsScreen> createState() => _SymbolsScreenState();
}

class _SymbolsScreenState extends State<SymbolsScreen> {
  String query = '';

  @override
  Widget build(BuildContext context) {
    final filtered = symbolsData
        .where(
          (s) =>
              s.name.toLowerCase().contains(query.toLowerCase()) ||
              s.meaning.toLowerCase().contains(query.toLowerCase()),
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
                hintText: 'Rechercher un symbole...',
                prefixIcon: Icon(Icons.search_rounded),
              ),
              onChanged: (value) => setState(() => query = value),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: ListView.builder(
                itemCount: filtered.length,
                itemBuilder: (context, index) {
                  final s = filtered[index];
                  return InfoCard(
                    title: s.name,
                    subtitle: 'Signification: ${s.meaning}',
                    icon: Icons.stars_rounded,
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => DetailScreen(
                          title: s.name,
                          subtitle: 'Signification: ${s.meaning}',
                          description: s.description,
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
