import 'package:flutter/material.dart';

import '../data/symbols_data.dart';
import '../widgets/info_card.dart';
import 'detail_screen.dart';

class SymbolsScreen extends StatefulWidget {
  const SymbolsScreen({super.key});

  @override
  State<SymbolsScreen> createState() => _SymbolsScreenState();
}

class _SymbolsScreenState extends State<SymbolsScreen> {
  String query = '';
  String selectedMeaning = 'Tous';

  @override
  Widget build(BuildContext context) {
    final meanings = <String>{
      'Tous',
      ...symbolsData.map((s) => s.meaning),
    }.toList();
    final filtered = symbolsData.where((s) {
      final matchesQuery =
          s.name.toLowerCase().contains(query.toLowerCase()) ||
          s.meaning.toLowerCase().contains(query.toLowerCase()) ||
          s.description.toLowerCase().contains(query.toLowerCase());
      final matchesMeaning =
          selectedMeaning == 'Tous' || s.meaning == selectedMeaning;
      return matchesQuery && matchesMeaning;
    }).toList();

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
            const SizedBox(height: 8),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: meanings
                    .map(
                      (meaning) => Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: ChoiceChip(
                          label: Text(meaning),
                          selected: selectedMeaning == meaning,
                          onSelected: (_) =>
                              setState(() => selectedMeaning = meaning),
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
