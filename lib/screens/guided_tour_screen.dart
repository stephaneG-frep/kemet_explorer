import 'package:flutter/material.dart';

import 'history_screen.dart';
import 'monuments_screen.dart';
import 'mythology_screen.dart';
import 'pharaohs_screen.dart';
import 'symbols_screen.dart';
import 'timeline_screen.dart';

class GuidedTourScreen extends StatelessWidget {
  const GuidedTourScreen({
    super.key,
    required this.favorites,
    required this.onToggleFavorite,
  });

  final Set<String> favorites;
  final Future<void> Function(String id) onToggleFavorite;

  @override
  Widget build(BuildContext context) {
    final steps = [
      (
        'Niveau Débutant',
        'Commence par les repères essentiels.',
        const HistoryScreen(),
      ),
      (
        'Niveau Découverte',
        'Découvre les dieux et symboles majeurs.',
        MythologyScreen(
          favorites: favorites,
          onToggleFavorite: onToggleFavorite,
        ),
      ),
      (
        'Niveau Culture',
        'Explore monuments et grands pharaons.',
        const MonumentsScreen(),
      ),
      (
        'Niveau Expert',
        'Mets tout en perspective avec la chronologie.',
        const TimelineScreen(),
      ),
      (
        'Niveau Synthèse',
        'Revois les figures du pouvoir et symboles.',
        PharaohsScreen(
          favorites: favorites,
          onToggleFavorite: onToggleFavorite,
        ),
      ),
      (
        'Niveau Mémoire',
        'Révise visuellement les symboles.',
        const SymbolsScreen(),
      ),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Parcours guidé')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: steps.length,
        itemBuilder: (context, index) {
          final s = steps[index];
          return Card(
            child: ListTile(
              leading: CircleAvatar(child: Text('${index + 1}')),
              title: Text(s.$1),
              subtitle: Text(s.$2),
              trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 18),
              onTap: () => Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (_) => s.$3)),
            ),
          );
        },
      ),
    );
  }
}
