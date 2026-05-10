import 'package:flutter/material.dart';

class HelpGuideScreen extends StatelessWidget {
  const HelpGuideScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Kemet Explorer • Mode d’emploi')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          _GuideCard(
            title: '1. Commencer simplement',
            text:
                'Depuis l’accueil, choisis une carte: Histoire, Mythologie, Pharaons ou Monuments.',
          ),
          _GuideCard(
            title: '2. Utiliser la recherche',
            text:
                'Dans chaque page, la barre de recherche te permet de trouver vite un nom, un lieu ou un thème.',
          ),
          _GuideCard(
            title: '3. Lire progressivement',
            text:
                'Commence par Histoire (vue globale), puis passe à Pharaons et Mythologie pour les détails.',
          ),
          _GuideCard(
            title: '4. Explorer les images',
            text:
                'La page Galerie regroupe les images. Tu peux aussi ouvrir la galerie globale depuis les fiches détail.',
          ),
          _GuideCard(
            title: '5. Favoris et progression',
            text:
                'Marque les éléments avec le cœur pour les retrouver plus facilement et suivre ta progression.',
          ),
          _GuideCard(
            title: '6. Quiz et chatbot',
            text:
                'Le Quiz sert à réviser, et le Chatbot peut t’expliquer les thèmes (mythes, pharaons, rites, monuments).',
          ),
          _GuideCard(
            title: 'Parcours conseillé',
            text:
                'Histoire → Chronologie → Pharaons → Mythologie → Monuments → Symboles → Rites funéraires.',
          ),
        ],
      ),
    );
  }
}

class _GuideCard extends StatelessWidget {
  const _GuideCard({required this.title, required this.text});

  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 10),
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 6),
            Text(text),
          ],
        ),
      ),
    );
  }
}
