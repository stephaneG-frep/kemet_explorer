import 'package:flutter/material.dart';

import 'history_screen.dart';
import 'monuments_screen.dart';
import 'mythology_screen.dart';
import 'pharaohs_screen.dart';
import 'symbols_screen.dart';
import 'timeline_screen.dart';

class ZenExploreScreen extends StatelessWidget {
  const ZenExploreScreen({
    super.key,
    required this.favorites,
    required this.onToggleFavorite,
  });

  final Set<String> favorites;
  final Future<void> Function(String id) onToggleFavorite;

  @override
  Widget build(BuildContext context) {
    final stops = [
      (
        'Lumière du Nil',
        'Commencer doucement avec l’histoire.',
        const HistoryScreen(),
      ),
      (
        'Souffle des dieux',
        'Mythes et divinités à ton rythme.',
        MythologyScreen(
          favorites: favorites,
          onToggleFavorite: onToggleFavorite,
        ),
      ),
      (
        'Mémoire des pierres',
        'Temples et monuments iconiques.',
        const MonumentsScreen(),
      ),
      (
        'Rois et reines',
        'Figures pharaoniques majeures.',
        PharaohsScreen(
          favorites: favorites,
          onToggleFavorite: onToggleFavorite,
        ),
      ),
      (
        'Signes sacrés',
        'Symboles essentiels à retenir.',
        const SymbolsScreen(),
      ),
      (
        'Fil du temps',
        'Chronologie visuelle de référence.',
        const TimelineScreen(),
      ),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Parcours Zen')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: stops.length,
        itemBuilder: (context, index) {
          final stop = stops[index];
          return Card(
            child: ListTile(
              leading: CircleAvatar(child: Text('${index + 1}')),
              title: Text(stop.$1),
              subtitle: Text(stop.$2),
              trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 18),
              onTap: () => Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (_) => stop.$3)),
            ),
          );
        },
      ),
    );
  }
}
