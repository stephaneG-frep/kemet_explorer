import 'package:flutter/material.dart';

import '../data/writing_systems_data.dart';
import '../widgets/info_card.dart';
import 'detail_screen.dart';

class WritingSystemsScreen extends StatefulWidget {
  const WritingSystemsScreen({super.key});

  @override
  State<WritingSystemsScreen> createState() => _WritingSystemsScreenState();
}

class _WritingSystemsScreenState extends State<WritingSystemsScreen> {
  String query = '';
  String selectedFilter = 'Tous';
  final hieroglyphUniliterals = const [
    _HieroglyphSign('𓄿', 'G1', 'Vautour', 'ꜣ'),
    _HieroglyphSign('𓇋', 'M17', 'Feuille de roseau', 'j / i'),
    _HieroglyphSign('𓈖', 'N35', 'Eau', 'n'),
    _HieroglyphSign('𓂧', 'D46', 'Main', 'd'),
    _HieroglyphSign('𓆑', 'I9', 'Vipère', 'f'),
    _HieroglyphSign('𓅱', 'G43', 'Caille', 'w / u'),
    _HieroglyphSign('𓃀', 'D58', 'Jambe', 'b'),
    _HieroglyphSign('𓊪', 'Q3', 'Tabouret', 'p'),
    _HieroglyphSign('𓂋', 'D21', 'Bouche', 'r'),
    _HieroglyphSign('𓉔', 'V28', 'Mèche', 'ḥ'),
    _HieroglyphSign('𓐍', 'Aa1', 'Placenta (trad.)', 'ḫ'),
    _HieroglyphSign('𓋴', 'S29', 'Tissu plié', 's'),
    _HieroglyphSign('𓊃', 'O34', 'Verrou', 'z'),
    _HieroglyphSign('𓏏', 'X1', 'Pain rond', 't'),
    _HieroglyphSign('𓍿', 'V13', 'Corde attachée', 'ṯ'),
    _HieroglyphSign('𓅓', 'G17', 'Chouette', 'm'),
    _HieroglyphSign('𓄔', 'E34', 'Lièvre', 'wn'),
  ];

  final copticAlphabet = const [
    ('Ⲁ', 'alpha'),
    ('Ⲃ', 'vida'),
    ('Ⲅ', 'gamma'),
    ('Ⲇ', 'dalda'),
    ('Ⲉ', 'eie'),
    ('Ⲍ', 'zita'),
    ('Ⲏ', 'ita'),
    ('Ⲑ', 'thita'),
    ('Ⲓ', 'iauda'),
    ('Ⲕ', 'kapa'),
    ('Ⲗ', 'laula'),
    ('Ⲙ', 'mi'),
  ];

  String _groupLabel(String period) {
    final p = period.toLowerCase();
    if (p.contains('av. j.-c.')) return 'Égypte antique';
    if (p.contains('apr. j.-c.')) return 'Égypte tardive';
    if (p.contains('toute')) return 'Transversal';
    return 'Autres';
  }

  @override
  Widget build(BuildContext context) {
    final filters = <String>{
      'Tous',
      ...writingSystemsData.map((w) => _groupLabel(w.period)),
    }.toList();

    final filtered = writingSystemsData.where((w) {
      final q = query.toLowerCase();
      final matchesQuery =
          w.name.toLowerCase().contains(q) ||
          w.usage.toLowerCase().contains(q) ||
          w.description.toLowerCase().contains(q);
      final matchesFilter =
          selectedFilter == 'Tous' || _groupLabel(w.period) == selectedFilter;
      return matchesQuery && matchesFilter;
    }).toList();

    return Scaffold(
      appBar: AppBar(title: const Text('Kemet Explorer')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                hintText: 'Rechercher une écriture...',
                prefixIcon: Icon(Icons.search_rounded),
              ),
              onChanged: (value) => setState(() => query = value),
            ),
            const SizedBox(height: 8),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: filters
                    .map(
                      (f) => Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: ChoiceChip(
                          label: Text(f),
                          selected: selectedFilter == f,
                          onSelected: (_) => setState(() => selectedFilter = f),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: ListView(
                children: [
                  _AlphabetCard(
                    title: 'Hiéroglyphes: signes unilitères (repères)',
                    subtitle:
                        'Vrais signes Unicode + code Gardiner + son (si tu vois des carrés, il manque la police hiéroglyphique sur l’appareil).',
                    items: hieroglyphUniliterals
                        .map((e) => ('${e.glyph} ${e.code} ${e.name}', e.sound))
                        .toList(),
                  ),
                  const SizedBox(height: 10),
                  _AlphabetCard(
                    title: 'Lettres coptes (sélection)',
                    subtitle:
                        'Le copte prolonge la langue égyptienne à l’époque tardive.',
                    items: copticAlphabet,
                  ),
                  const SizedBox(height: 12),
                  ...filtered.map(
                    (item) => InfoCard(
                      title: item.name,
                      subtitle: '${item.period}\n${item.usage}',
                      icon: Icons.translate_rounded,
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => DetailScreen(
                            title: item.name,
                            subtitle: '${item.period} • ${item.usage}',
                            description: item.description,
                            extraLines: item.keyPoints,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _AlphabetCard extends StatelessWidget {
  const _AlphabetCard({
    required this.title,
    required this.subtitle,
    required this.items,
  });

  final String title;
  final String subtitle;
  final List<(String, String)> items;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 4),
            Text(subtitle),
            const SizedBox(height: 10),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: items
                  .map(
                    (e) => Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.surfaceContainer,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.onSurface,
                            fontWeight: FontWeight.w600,
                          ),
                          children: [
                            TextSpan(
                              text: '${e.$1.split(' ').first} ',
                              style: const TextStyle(fontSize: 30, height: 1),
                            ),
                            TextSpan(
                              text:
                                  '${e.$1.split(' ').skip(1).join(' ')} → ${e.$2}',
                              style: const TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}

class _HieroglyphSign {
  const _HieroglyphSign(this.glyph, this.code, this.name, this.sound);

  final String glyph;
  final String code;
  final String name;
  final String sound;
}
