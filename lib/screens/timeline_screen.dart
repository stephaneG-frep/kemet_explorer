import 'package:flutter/material.dart';

import '../data/history_data.dart';
import '../models/timeline_event.dart';
import '../widgets/timeline_item.dart';

class TimelineScreen extends StatefulWidget {
  const TimelineScreen({super.key});

  @override
  State<TimelineScreen> createState() => _TimelineScreenState();
}

class _TimelineScreenState extends State<TimelineScreen> {
  int selected = 0;
  String historyFilter = 'Tout';
  String abydosFilter = 'Tout';

  String _periodForHistory(TimelineEvent e) {
    final t = '${e.title} ${e.description}'.toLowerCase();
    if (t.contains('prédynast') ||
        t.contains('naqada') ||
        t.contains('unification') ||
        t.contains('premières dynasties')) {
      return 'Prédynastique & Thinite';
    }
    if (t.contains('ancien empire') ||
        t.contains('gizeh') ||
        t.contains('pyramide') ||
        t.contains('djéser') ||
        t.contains('sphinx')) {
      return 'Ancien Empire';
    }
    if (t.contains('montouhotep') ||
        t.contains('moyen empire') ||
        t.contains('sésostris') ||
        t.contains('amenemhat') ||
        t.contains('fayoum')) {
      return 'Moyen Empire';
    }
    if (t.contains('ahmôsis') ||
        t.contains('nouvel empire') ||
        t.contains('thoutmôsis') ||
        t.contains('hatchepsout') ||
        t.contains('amenhotep') ||
        t.contains('akhenaton') ||
        t.contains('toutânkhamon') ||
        t.contains('séthi') ||
        t.contains('ramsès') ||
        t.contains('amarna')) {
      return 'Nouvel Empire';
    }
    if (t.contains('troisième période intermédiaire') ||
        t.contains('tanis') ||
        t.contains('libyenne') ||
        t.contains('kouchite') ||
        t.contains('assyr')) {
      return '3e Période intermédiaire';
    }
    if (t.contains('psammétique') ||
        t.contains('néchao') ||
        t.contains('amasis') ||
        t.contains('basse époque') ||
        t.contains('perse')) {
      return 'Basse époque';
    }
    if (t.contains('alexandre') ||
        t.contains('ptolém') ||
        t.contains('lagide') ||
        t.contains('cléopâtre')) {
      return 'Ptolémaïque';
    }
    if (t.contains('romain')) {
      return 'Romaine';
    }
    return 'Transition';
  }

  String _groupForAbydos(TimelineEvent e) {
    final n = int.tryParse(e.date.replaceAll(RegExp(r'[^0-9]'), '')) ?? 0;
    if (n >= 1 && n <= 8) return 'Ire dynastie';
    if (n >= 9 && n <= 14) return 'IIe dynastie';
    if (n >= 15 && n <= 25) return 'III-IVe';
    if (n >= 26 && n <= 56) return 'Ve-VIIIe';
    if (n >= 57 && n <= 65) return 'XI-XIIe';
    if (n >= 66 && n <= 76) return 'XVIII-XIXe';
    return 'Autres';
  }

  @override
  Widget build(BuildContext context) {
    final raw = switch (selected) {
      0 => timelineData,
      _ => abydosTimelineData,
    };

    final data = raw.where((e) {
      if (selected == 0 && historyFilter != 'Tout') {
        return _periodForHistory(e) == historyFilter;
      }
      if (selected == 1 && abydosFilter != 'Tout') {
        return _groupForAbydos(e) == abydosFilter;
      }
      return true;
    }).toList();

    final historyFilters = [
      'Tout',
      'Prédynastique & Thinite',
      'Ancien Empire',
      'Moyen Empire',
      'Nouvel Empire',
      '3e Période intermédiaire',
      'Basse époque',
      'Ptolémaïque',
      'Romaine',
    ];

    final abydosFilters = [
      'Tout',
      'Ire dynastie',
      'IIe dynastie',
      'III-IVe',
      'Ve-VIIIe',
      'XI-XIIe',
      'XVIII-XIXe',
    ];

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
                        icon: Icon(Icons.list_alt_rounded),
                        label: Text('Abydos'),
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
          if (selected == 1)
            const Padding(
              padding: EdgeInsets.fromLTRB(16, 0, 16, 6),
              child: Text(
                'Référence: ordre de la liste d’Abydos (Temple de Séthi Ier).',
              ),
            ),
          if (selected == 0)
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.fromLTRB(12, 0, 12, 8),
              child: Row(
                children: historyFilters
                    .map(
                      (f) => Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: ChoiceChip(
                          label: Text(f),
                          selected: historyFilter == f,
                          onSelected: (_) => setState(() => historyFilter = f),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          if (selected == 1)
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.fromLTRB(12, 0, 12, 8),
              child: Row(
                children: abydosFilters
                    .map(
                      (f) => Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: ChoiceChip(
                          label: Text(f),
                          selected: abydosFilter == f,
                          onSelected: (_) => setState(() => abydosFilter = f),
                        ),
                      ),
                    )
                    .toList(),
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
