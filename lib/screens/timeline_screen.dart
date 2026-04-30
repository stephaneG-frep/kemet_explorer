import 'package:flutter/material.dart';

import '../data/history_data.dart';
import '../widgets/timeline_item.dart';

class TimelineScreen extends StatelessWidget {
  const TimelineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Kemet Explorer')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: timelineData.length,
        itemBuilder: (context, index) {
          final event = timelineData[index];
          return TimelineItem(
            date: event.date,
            title: event.title,
            description: event.description,
            isLast: index == timelineData.length - 1,
          );
        },
      ),
    );
  }
}
