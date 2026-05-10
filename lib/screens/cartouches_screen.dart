import 'package:flutter/material.dart';

class CartouchesScreen extends StatefulWidget {
  const CartouchesScreen({super.key});

  @override
  State<CartouchesScreen> createState() => _CartouchesScreenState();
}

class _CartouchesScreenState extends State<CartouchesScreen> {
  String query = '';
  String selectedEra = 'Toutes';

  final cartouches = const [
    _CartoucheItem(
      name: 'Narmer',
      throneName: 'Nar-mer',
      transliteration: 'nꜥr-mr',
      hieroglyphs: '𓈖𓄿𓂋 𓅓𓂋',
      era: 'Période thinite',
    ),
    _CartoucheItem(
      name: 'Djéser',
      throneName: 'Netjerikhet',
      transliteration: 'nṯr-jḫt',
      hieroglyphs: '𓊹𓇋𓐍𓏏',
      era: 'Ancien Empire',
    ),
    _CartoucheItem(
      name: 'Khéops',
      throneName: 'Khnum-Khufu',
      transliteration: 'ḫwfw',
      hieroglyphs: '𓎡𓅱𓆑𓅱',
      era: 'Ancien Empire',
    ),
    _CartoucheItem(
      name: 'Khéphren',
      throneName: 'Khafrê',
      transliteration: 'ḫꜥ-f-rꜥ',
      hieroglyphs: '𓐍𓂝𓆑𓂋𓂝',
      era: 'Ancien Empire',
    ),
    _CartoucheItem(
      name: 'Mykérinos',
      throneName: 'Menkaourê',
      transliteration: 'mn-kꜣw-rꜥ',
      hieroglyphs: '𓌳𓈖𓂓𓅱𓂋𓂝',
      era: 'Ancien Empire',
    ),
    _CartoucheItem(
      name: 'Pépi Ier',
      throneName: 'Meryrê',
      transliteration: 'mry-rꜥ',
      hieroglyphs: '𓌳𓂋𓇌𓂋𓂝',
      era: 'Ancien Empire',
    ),
    _CartoucheItem(
      name: 'Sésostris III',
      throneName: 'Khakaourê',
      transliteration: 'ḫꜥ-kꜣw-rꜥ',
      hieroglyphs: '𓐍𓂝𓂓𓅱𓂋𓂝',
      era: 'Moyen Empire',
    ),
    _CartoucheItem(
      name: 'Amenemhat III',
      throneName: 'Ni-maât-Rê',
      transliteration: 'nj-mꜣꜥt-rꜥ',
      hieroglyphs: '𓈖𓇋𓌳𓂝𓏏𓂋𓂝',
      era: 'Moyen Empire',
    ),
    _CartoucheItem(
      name: 'Hatchepsout',
      throneName: 'Maâtkarê',
      transliteration: 'm3ꜥt-k3-rꜥ',
      hieroglyphs: '𓌳𓂝𓏏𓂓𓂋𓂝',
      era: 'Nouvel Empire',
    ),
    _CartoucheItem(
      name: 'Thoutmôsis III',
      throneName: 'Menkheperrê',
      transliteration: 'mn-ḫpr-rꜥ',
      hieroglyphs: '𓌳𓈖𓐍𓊪𓂋𓂋𓂝',
      era: 'Nouvel Empire',
    ),
    _CartoucheItem(
      name: 'Amenhotep III',
      throneName: 'Nebmaâtrê',
      transliteration: 'nb-m3ꜥt-rꜥ',
      hieroglyphs: '𓎟𓌳𓂝𓏏𓂋𓂝',
      era: 'Nouvel Empire',
    ),
    _CartoucheItem(
      name: 'Akhenaton',
      throneName: 'Néferkhéperourê',
      transliteration: 'nfr-ḫprw-rꜥ',
      hieroglyphs: '𓄤𓆑𓂋𓐍𓊪𓂋𓅱𓂋𓂝',
      era: 'Nouvel Empire',
    ),
    _CartoucheItem(
      name: 'Toutânkhamon',
      throneName: 'Nebkhéperourê',
      transliteration: 'nb-ḫprw-rꜥ',
      hieroglyphs: '𓎟𓐍𓊪𓂋𓅱𓂋𓂝',
      era: 'Nouvel Empire',
    ),
    _CartoucheItem(
      name: 'Séthi Ier',
      throneName: 'Menmaâtrê',
      transliteration: 'mn-m3ꜥt-rꜥ',
      hieroglyphs: '𓌳𓈖𓌳𓂝𓏏𓂋𓂝',
      era: 'Nouvel Empire',
    ),
    _CartoucheItem(
      name: 'Mérenptah',
      throneName: 'Baenrê-Meryamon',
      transliteration: 'bꜣ-n-rꜥ mry-imn',
      hieroglyphs: '𓃀𓄿𓈖𓂋𓂝 𓌳𓂋𓇌𓇋𓅓𓈖',
      era: 'Nouvel Empire',
    ),
    _CartoucheItem(
      name: 'Ramsès II',
      throneName: 'Ousermaâtrê Setepenrê',
      transliteration: 'wsr-m3ꜥt-rꜥ stp-n-rꜥ',
      hieroglyphs: '𓅱𓋴𓂋𓌳𓂝𓏏𓂋𓂝 𓋴𓏏𓊪𓈖𓂋𓂝',
      era: 'Nouvel Empire',
    ),
    _CartoucheItem(
      name: 'Ramsès III',
      throneName: 'Ousermaâtrê-Meryamon',
      transliteration: 'wsr-m3ꜥt-rꜥ mry-imn',
      hieroglyphs: '𓅱𓋴𓂋𓌳𓂝𓏏𓂋𓂝 𓌳𓂋𓇌𓇋𓅓𓈖',
      era: 'Nouvel Empire',
    ),
    _CartoucheItem(
      name: 'Sheshonq Ier',
      throneName: 'Hedjkheperrê Setepenrê',
      transliteration: 'ḥḏ-ḫpr-rꜥ stp-n-rꜥ',
      hieroglyphs: '𓉔𓆓𓐍𓊪𓂋𓂋𓂝 𓋴𓏏𓊪𓈖𓂋𓂝',
      era: 'Troisième Période intermédiaire',
    ),
    _CartoucheItem(
      name: 'Psammétique Ier',
      throneName: 'Ouahibrê',
      transliteration: 'w3ḥ-jb-rꜥ',
      hieroglyphs: '𓅱𓄿𓎛𓇋𓃀𓂋𓂝',
      era: 'Basse époque',
    ),
    _CartoucheItem(
      name: 'Néchao II',
      throneName: 'Ouahibrê-Nekau',
      transliteration: 'w3ḥ-jb-rꜥ n-k3w',
      hieroglyphs: '𓅱𓄿𓎛𓇋𓃀𓂋𓂝 𓈖𓂓𓅱',
      era: 'Basse époque',
    ),
    _CartoucheItem(
      name: 'Nectanébo II',
      throneName: 'Nakhthorheb',
      transliteration: 'nḫt-ḥr-ḥbyt',
      hieroglyphs: '𓈖𓐍𓏏𓉔𓂋𓉔𓃀𓇌𓏏',
      era: 'Basse époque',
    ),
    _CartoucheItem(
      name: 'Ptolémée Ier',
      throneName: 'Ptolémée Sôter',
      transliteration: 'ptwlmys swtr',
      hieroglyphs: '𓊪𓏏𓅱𓃭𓅓𓇌𓋴 𓋴𓅱𓏏𓂋',
      era: 'Ptolémaïque',
    ),
    _CartoucheItem(
      name: 'Cléopâtre VII',
      throneName: 'Kleopatra Philopator',
      transliteration: 'kljwp3dr3',
      hieroglyphs: '𓎡𓃭𓏭𓅱𓊪𓄿𓂧𓂋𓄿',
      era: 'Ptolémaïque',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final eras = <String>{'Toutes', ...cartouches.map((e) => e.era)}.toList();
    final filtered = cartouches.where((c) {
      final q = query.toLowerCase();
      final matchesQuery =
          c.name.toLowerCase().contains(q) ||
          c.throneName.toLowerCase().contains(q) ||
          c.transliteration.toLowerCase().contains(q);
      final matchesEra = selectedEra == 'Toutes' || c.era == selectedEra;
      return matchesQuery && matchesEra;
    }).toList();

    return Scaffold(
      appBar: AppBar(title: const Text('Kemet Explorer')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                hintText: 'Rechercher un cartouche...',
                prefixIcon: Icon(Icons.search_rounded),
              ),
              onChanged: (value) => setState(() => query = value),
            ),
            const SizedBox(height: 8),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: eras
                    .map(
                      (era) => Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: ChoiceChip(
                          label: Text(era),
                          selected: selectedEra == era,
                          onSelected: (_) => setState(() => selectedEra = era),
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
                  final item = filtered[index];
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.name,
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          const SizedBox(height: 4),
                          Text('${item.era} • ${item.throneName}'),
                          const SizedBox(height: 10),
                          _CartoucheGlyph(name: item.hieroglyphs),
                          const SizedBox(height: 8),
                          Text('Translittération: ${item.transliteration}'),
                        ],
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

class _CartoucheGlyph extends StatelessWidget {
  const _CartoucheGlyph({required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _CartouchePainter(color: Theme.of(context).colorScheme.primary),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.fromLTRB(18, 16, 18, 16),
        child: Center(
          child: Text(
            name,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 32, height: 1.1),
          ),
        ),
      ),
    );
  }
}

class _CartouchePainter extends CustomPainter {
  const _CartouchePainter({required this.color});

  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final stroke = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.4;

    final rect = RRect.fromRectAndRadius(
      Rect.fromLTWH(6, 4, size.width - 24, size.height - 8),
      Radius.circular(size.height / 2),
    );
    canvas.drawRRect(rect, stroke);

    canvas.drawLine(
      Offset(size.width - 12, 8),
      Offset(size.width - 12, size.height - 8),
      stroke,
    );
  }

  @override
  bool shouldRepaint(covariant _CartouchePainter oldDelegate) {
    return oldDelegate.color != color;
  }
}

class _CartoucheItem {
  const _CartoucheItem({
    required this.name,
    required this.throneName,
    required this.transliteration,
    required this.hieroglyphs,
    required this.era,
  });

  final String name;
  final String throneName;
  final String transliteration;
  final String hieroglyphs;
  final String era;
}
