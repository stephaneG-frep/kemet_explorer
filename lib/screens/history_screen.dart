import 'package:flutter/material.dart';

import '../data/history_data.dart';
import '../widgets/timeline_item.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  String query = '';
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    final filteredPeriods = historyData
        .where(
          (p) =>
              p.name.toLowerCase().contains(query.toLowerCase()) ||
              p.description.toLowerCase().contains(query.toLowerCase()),
        )
        .toList();

    final filteredConflicts = majorConflictData
        .where(
          (e) =>
              e.title.toLowerCase().contains(query.toLowerCase()) ||
              e.description.toLowerCase().contains(query.toLowerCase()) ||
              e.date.toLowerCase().contains(query.toLowerCase()),
        )
        .toList();

    return Scaffold(
      appBar: AppBar(title: const Text('Kemet Explorer')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            SegmentedButton<int>(
              segments: const [
                ButtonSegment(
                  value: 0,
                  icon: Icon(Icons.history_edu_rounded),
                  label: Text('Périodes'),
                ),
                ButtonSegment(
                  value: 1,
                  icon: Icon(Icons.gavel_rounded),
                  label: Text('Guerres & batailles'),
                ),
              ],
              selected: {selected},
              onSelectionChanged: (set) => setState(() => selected = set.first),
            ),
            const SizedBox(height: 12),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                selected == 0
                    ? 'Frise des grandes périodes de l’Égypte antique'
                    : 'Conflits majeurs, guerres et batailles',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                hintText: selected == 0
                    ? 'Rechercher une période...'
                    : 'Rechercher un conflit ou une bataille...',
                prefixIcon: Icon(Icons.search_rounded),
              ),
              onChanged: (value) => setState(() => query = value),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: ListView.builder(
                itemCount: selected == 0
                    ? filteredPeriods.length
                    : filteredConflicts.length,
                itemBuilder: (context, index) {
                  if (selected == 0) {
                    final item = filteredPeriods[index];
                    return TimelineItem(
                      date: item.dateRange,
                      title: item.name,
                      description: item.description,
                      isLast: index == filteredPeriods.length - 1,
                    );
                  }
                  final event = filteredConflicts[index];
                  return TimelineItem(
                    date: event.date,
                    title: event.title,
                    description: event.description,
                    isLast: index == filteredConflicts.length - 1,
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
