import 'package:flutter/material.dart';

import '../data/royal_rulers_data.dart';

class RoyalListScreen extends StatefulWidget {
  const RoyalListScreen({super.key});

  @override
  State<RoyalListScreen> createState() => _RoyalListScreenState();
}

class _RoyalListScreenState extends State<RoyalListScreen> {
  String query = '';

  @override
  Widget build(BuildContext context) {
    final filtered = royalRulersData.where((r) {
      final q = query.toLowerCase();
      return r.name.toLowerCase().contains(q) ||
          r.reign.toLowerCase().contains(q) ||
          r.period.toLowerCase().contains(q);
    }).toList();

    return Scaffold(
      appBar: AppBar(title: const Text('Kemet Explorer • Liste royale')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                hintText: 'Rechercher un nom ou une date...',
                prefixIcon: Icon(Icons.search_rounded),
              ),
              onChanged: (v) => setState(() => query = v),
            ),
            const SizedBox(height: 10),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('Liste chronologique (nom + dates, sans photos)'),
            ),
            const SizedBox(height: 8),
            Expanded(
              child: ListView.separated(
                itemCount: filtered.length,
                separatorBuilder: (_, _) => const SizedBox(height: 6),
                itemBuilder: (context, index) {
                  final r = filtered[index];
                  return Card(
                    child: ListTile(
                      title: Text(r.name),
                      subtitle: Text('${r.reign}\n${r.period}'),
                      isThreeLine: true,
                      leading: CircleAvatar(child: Text('${index + 1}')),
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
