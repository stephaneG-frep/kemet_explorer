import 'package:flutter/material.dart';

import '../data/myth_stories_data.dart';
import '../widgets/info_card.dart';
import 'detail_screen.dart';

class MythStoriesScreen extends StatefulWidget {
  const MythStoriesScreen({super.key});

  @override
  State<MythStoriesScreen> createState() => _MythStoriesScreenState();
}

class _MythStoriesScreenState extends State<MythStoriesScreen> {
  String query = '';
  String selectedTheme = 'Tous';

  @override
  Widget build(BuildContext context) {
    final themes = <String>{
      'Tous',
      ...mythStoriesData.map((s) => s.theme),
    }.toList();

    final filtered = mythStoriesData.where((s) {
      final q = query.toLowerCase();
      final matchesQuery =
          s.title.toLowerCase().contains(q) ||
          s.summary.toLowerCase().contains(q) ||
          s.story.toLowerCase().contains(q);
      final matchesTheme = selectedTheme == 'Tous' || s.theme == selectedTheme;
      return matchesQuery && matchesTheme;
    }).toList();

    return Scaffold(
      appBar: AppBar(title: const Text('Kemet Explorer')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                hintText: 'Rechercher un récit...',
                prefixIcon: Icon(Icons.search_rounded),
              ),
              onChanged: (value) => setState(() => query = value),
            ),
            const SizedBox(height: 8),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: themes
                    .map(
                      (t) => Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: ChoiceChip(
                          label: Text(t),
                          selected: selectedTheme == t,
                          onSelected: (_) => setState(() => selectedTheme = t),
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
                  final story = filtered[index];
                  return InfoCard(
                    title: story.title,
                    subtitle: '${story.theme}\n${story.summary}',
                    icon: Icons.menu_book_rounded,
                    imagePath: story.imagePath,
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => DetailScreen(
                          title: story.title,
                          subtitle: story.theme,
                          description: story.story,
                          extraLines: story.keyLessons,
                          imagePath: story.imagePath,
                          imageSourceUrl: story.imageSourceUrl,
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
