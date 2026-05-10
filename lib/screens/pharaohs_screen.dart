import 'package:flutter/material.dart';

import '../data/global_gallery_data.dart';
import '../data/pharaohs_data.dart';
import '../models/pharaoh.dart';
import '../widgets/info_card.dart';
import 'detail_screen.dart';

class PharaohsScreen extends StatefulWidget {
  const PharaohsScreen({
    super.key,
    required this.favorites,
    required this.onToggleFavorite,
  });

  final Set<String> favorites;
  final Future<void> Function(String id) onToggleFavorite;

  @override
  State<PharaohsScreen> createState() => _PharaohsScreenState();
}

class _PharaohsScreenState extends State<PharaohsScreen> {
  String query = '';
  String selectedDynasty = 'Toutes';

  int _fallbackYearForEra(String era) {
    final e = era.toLowerCase();
    if (e.contains('thinite') || e.contains('ire dynastie')) return -3000;
    if (e.contains('ancien empire')) return -2600;
    if (e.contains('première période intermédiaire')) return -2100;
    if (e.contains('moyen empire')) return -1900;
    if (e.contains('deuxième période intermédiaire')) return -1600;
    if (e.contains('nouvel empire')) return -1400;
    if (e.contains('troisième période intermédiaire')) return -1000;
    if (e.contains('basse époque')) return -700;
    if (e.contains('première domination perse')) return -525;
    if (e.contains('seconde domination perse')) return -343;
    if (e.contains('ptolémaïque')) return -300;
    return 0;
  }

  int _startYearFor(Pharaoh p) {
    final text = '${p.facts.join(' ')} ${p.era} ${p.role}'.toLowerCase();
    final yearMatch = RegExp(r'(\d{2,4})').firstMatch(text);
    if (yearMatch == null) return _fallbackYearForEra(p.era);

    final value = int.tryParse(yearMatch.group(1) ?? '');
    if (value == null) return _fallbackYearForEra(p.era);

    if (text.contains('av. j.-c')) return -value;
    if (text.contains('apr. j.-c')) return value;
    return _fallbackYearForEra(p.era);
  }

  String _extractDynastyLabel(String era, String role) {
    final lowerRole = role.toLowerCase();
    final lowerEra = era.toLowerCase();
    final dynMatch = RegExp(
      r'((?:[ivxlcdm]+e|ire|xxve|xxviie|xxxe|xixe|xxe|xviiie|xviie|xvie|xve|xive|xiiie|xiie|xie|xe|ixe|viiie|viie|vie|ve|ive|iiie|iie)\s+dynastie)',
      caseSensitive: false,
    ).firstMatch(lowerRole);

    if (dynMatch != null) {
      final value = dynMatch.group(1)!;
      return value[0].toUpperCase() + value.substring(1);
    }
    if (lowerEra.contains('ptol')) return 'Dynastie lagide';
    if (lowerEra.contains('perse')) return 'Dynastie achéménide';
    if (lowerEra.contains('thinite')) return 'Dynasties thinites';
    if (lowerEra.contains('ancien empire')) return 'Ancien Empire (autres)';
    if (lowerEra.contains('moyen empire')) return 'Moyen Empire (autres)';
    if (lowerEra.contains('nouvel empire')) return 'Nouvel Empire (autres)';
    if (lowerEra.contains('basse époque')) return 'Basse époque (autres)';
    if (lowerEra.contains('intermédiaire')) {
      return 'Périodes intermédiaires';
    }
    return 'Autres';
  }

  @override
  Widget build(BuildContext context) {
    final dynasties = <String>{
      'Toutes',
      ...pharaohsData.map((p) => _extractDynastyLabel(p.era, p.role)),
    }.toList();
    final filtered =
        pharaohsData.where((p) {
          final matchesQuery =
              p.name.toLowerCase().contains(query.toLowerCase()) ||
              p.era.toLowerCase().contains(query.toLowerCase()) ||
              p.role.toLowerCase().contains(query.toLowerCase());
          final dynasty = _extractDynastyLabel(p.era, p.role);
          final matchesDynasty =
              selectedDynasty == 'Toutes' || dynasty == selectedDynasty;
          return matchesQuery && matchesDynasty;
        }).toList()..sort((a, b) {
          final yearCompare = _startYearFor(a).compareTo(_startYearFor(b));
          if (yearCompare != 0) return yearCompare;
          return a.name.compareTo(b.name);
        });

    return Scaffold(
      appBar: AppBar(title: const Text('Kemet Explorer')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                hintText: 'Rechercher un pharaon...',
                prefixIcon: Icon(Icons.search_rounded),
              ),
              onChanged: (value) => setState(() => query = value),
            ),
            const SizedBox(height: 8),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Filtrer par dynastie',
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
            const SizedBox(height: 6),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: dynasties
                    .map(
                      (dynasty) => Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: ChoiceChip(
                          label: Text(dynasty),
                          selected: selectedDynasty == dynasty,
                          onSelected: (_) =>
                              setState(() => selectedDynasty = dynasty),
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
                  final p = filtered[index];
                  final isFav = widget.favorites.contains(p.id);
                  return InfoCard(
                    title: p.name,
                    subtitle: '${p.era} • ${p.role}',
                    icon: isFav
                        ? Icons.favorite
                        : Icons.workspace_premium_rounded,
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => DetailScreen(
                          title: p.name,
                          subtitle: '${p.era} • ${p.role}',
                          description:
                              'Repères essentiels pour comprendre la place de ${p.name} dans l’histoire égyptienne.',
                          imagePath: p.imagePath,
                          imageSourceUrl: p.imageSourceUrl,
                          galleryImages: pharaohsData
                              .map((e) => e.imagePath)
                              .toList(),
                          galleryTitles: pharaohsData
                              .map((e) => e.name)
                              .toList(),
                          galleryIndex: pharaohsData.indexWhere(
                            (e) => e.id == p.id,
                          ),
                          globalGalleryImages: GlobalGalleryData.buildImages(),
                          globalGalleryTitles: GlobalGalleryData.buildTitles(),
                          globalGalleryIndex:
                              GlobalGalleryData.indexForPharaohId(p.id),
                          extraLines: p.facts,
                          isFavorite: isFav,
                          onFavoriteToggle: () async {
                            await widget.onToggleFavorite(p.id);
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
