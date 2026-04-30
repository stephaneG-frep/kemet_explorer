import 'package:flutter/material.dart';

import '../data/history_data.dart';
import '../widgets/info_card.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  String query = '';

  @override
  Widget build(BuildContext context) {
    final filtered = historyData
        .where(
          (p) =>
              p.name.toLowerCase().contains(query.toLowerCase()) ||
              p.description.toLowerCase().contains(query.toLowerCase()),
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
                hintText: 'Rechercher une période...',
                prefixIcon: Icon(Icons.search_rounded),
              ),
              onChanged: (value) => setState(() => query = value),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: ListView.builder(
                itemCount: filtered.length,
                itemBuilder: (context, index) {
                  final item = filtered[index];
                  return InfoCard(
                    title: item.name,
                    subtitle: '${item.dateRange}\n${item.description}',
                    icon: Icons.history_toggle_off_rounded,
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
