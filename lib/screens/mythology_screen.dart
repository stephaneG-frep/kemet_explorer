import 'package:flutter/material.dart';

import '../data/gods_data.dart';
import '../widgets/info_card.dart';
import 'detail_screen.dart';

class MythologyScreen extends StatefulWidget {
  const MythologyScreen({
    super.key,
    required this.favorites,
    required this.onToggleFavorite,
  });

  final Set<String> favorites;
  final Future<void> Function(String id) onToggleFavorite;

  @override
  State<MythologyScreen> createState() => _MythologyScreenState();
}

class _MythologyScreenState extends State<MythologyScreen> {
  String query = '';
  String selectedRole = 'Tous';

  @override
  Widget build(BuildContext context) {
    final roles = <String>{'Tous', ...godsData.map((g) => g.role)}.toList();
    final filtered = godsData.where((g) {
      final matchesQuery =
          g.name.toLowerCase().contains(query.toLowerCase()) ||
          g.role.toLowerCase().contains(query.toLowerCase());
      final matchesRole = selectedRole == 'Tous' || g.role == selectedRole;
      return matchesQuery && matchesRole;
    }).toList();

    return Scaffold(
      appBar: AppBar(title: const Text('Kemet Explorer')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                hintText: 'Rechercher un dieu...',
                prefixIcon: Icon(Icons.search_rounded),
              ),
              onChanged: (value) => setState(() => query = value),
            ),
            const SizedBox(height: 8),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: roles
                    .map(
                      (role) => Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: ChoiceChip(
                          label: Text(role),
                          selected: selectedRole == role,
                          onSelected: (_) =>
                              setState(() => selectedRole = role),
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
                  final god = filtered[index];
                  final isFav = widget.favorites.contains(god.id);
                  return InfoCard(
                    title: god.name,
                    subtitle: god.role,
                    icon: isFav ? Icons.favorite : Icons.auto_awesome_rounded,
                    imagePath: god.imagePath,
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => DetailScreen(
                          title: god.name,
                          subtitle: '${god.role} • Symbole: ${god.symbol}',
                          description: god.description,
                          imagePath: god.imagePath,
                          isFavorite: isFav,
                          onFavoriteToggle: () async {
                            await widget.onToggleFavorite(god.id);
                            setState(() {});
                          },
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
