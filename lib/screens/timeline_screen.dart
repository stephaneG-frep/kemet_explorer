import 'package:flutter/material.dart';

import '../data/history_data.dart';
import '../widgets/timeline_item.dart';

class TimelineScreen extends StatefulWidget {
  const TimelineScreen({super.key});

  @override
  State<TimelineScreen> createState() => _TimelineScreenState();
}

class _TimelineScreenState extends State<TimelineScreen> {
  int selected = 1;

  @override
  Widget build(BuildContext context) {
    final data = selected == 0 ? timelineData : pharaohTimelineData;

    return Scaffold(
      appBar: AppBar(title: const Text('Kemet Explorer')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
            child: Row(
              children: [
                Expanded(
                  child: SegmentedButton<int>(
                    segments: const [
                      ButtonSegment(
                        value: 0,
                        icon: Icon(Icons.public_rounded),
                        label: Text('Histoire'),
                      ),
                      ButtonSegment(
                        value: 1,
                        icon: Icon(Icons.account_balance_rounded),
                        label: Text('Pharaons'),
                      ),
                    ],
                    selected: {selected},
                    onSelectionChanged: (set) {
                      setState(() => selected = set.first);
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: data.length,
              itemBuilder: (context, index) {
                final event = data[index];
                return TimelineItem(
                  date: event.date,
                  title: event.title,
                  description: event.description,
                  isLast: index == data.length - 1,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
