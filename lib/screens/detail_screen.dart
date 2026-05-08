import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

import '../services/audio_narration_service.dart';
import '../widgets/section_title.dart';
import 'gallery_screen.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({
    super.key,
    required this.title,
    required this.subtitle,
    required this.description,
    this.extraLines = const [],
    this.imagePath,
    this.imageSourceUrl,
    this.galleryImages = const [],
    this.galleryTitles = const [],
    this.galleryIndex = 0,
    this.globalGalleryImages = const [],
    this.globalGalleryTitles = const [],
    this.globalGalleryIndex = 0,
    this.isFavorite = false,
    this.onFavoriteToggle,
  });

  final String title;
  final String subtitle;
  final String description;
  final List<String> extraLines;
  final String? imagePath;
  final String? imageSourceUrl;
  final List<String> galleryImages;
  final List<String> galleryTitles;
  final int galleryIndex;
  final List<String> globalGalleryImages;
  final List<String> globalGalleryTitles;
  final int globalGalleryIndex;
  final bool isFavorite;
  final VoidCallback? onFavoriteToggle;

  Future<void> _openSource() async {
    if (imageSourceUrl == null) return;
    final uri = Uri.parse(imageSourceUrl!);
    await launchUrl(uri, mode: LaunchMode.externalApplication);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kemet Explorer'),
        actions: [
          if (galleryImages.isNotEmpty)
            IconButton(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => GalleryScreen(
                    images: galleryImages,
                    titles: galleryTitles,
                    initialIndex: galleryIndex,
                  ),
                ),
              ),
              icon: const Icon(Icons.photo_library_outlined),
              tooltip: 'Galerie de la section',
            ),
          if (imageSourceUrl != null)
            IconButton(
              onPressed: _openSource,
              icon: const Icon(Icons.link_rounded),
            ),
          IconButton(
            onPressed: () => AudioNarrationService.instance.speak(
              '$title. $subtitle. $description',
            ),
            icon: const Icon(Icons.volume_up_rounded),
          ),
          if (onFavoriteToggle != null)
            IconButton(
              onPressed: onFavoriteToggle,
              icon: Icon(isFavorite ? Icons.favorite : Icons.favorite_border),
            ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          SectionTitle(title: title, subtitle: subtitle),
          const SizedBox(height: 14),
          if (imagePath != null)
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: SizedBox(
                height: 250,
                child: _AssetImageWithFallback(imagePath: imagePath!),
              ),
            ),
          const SizedBox(height: 14),
          if (globalGalleryImages.isNotEmpty)
            Align(
              alignment: Alignment.centerLeft,
              child: OutlinedButton.icon(
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => GalleryScreen(
                      images: globalGalleryImages,
                      titles: globalGalleryTitles,
                      initialIndex: globalGalleryIndex,
                    ),
                  ),
                ),
                icon: const Icon(Icons.collections_rounded),
                label: const Text('Ouvrir dans la galerie globale'),
              ),
            ),
          if (globalGalleryImages.isNotEmpty) const SizedBox(height: 10),
          _LearningCard(
            title: 'Essentiel',
            text: description,
            icon: Icons.lightbulb_outline_rounded,
          ),
          const SizedBox(height: 10),
          _LearningCard(
            title: 'Anecdote',
            text: extraLines.isNotEmpty
                ? extraLines.first
                : 'Un détail marquant: $subtitle',
            icon: Icons.auto_awesome_rounded,
          ),
          const SizedBox(height: 10),
          _LearningCard(
            title: 'À retenir',
            text: "$title est un repere cle pour comprendre l'Egypte antique.",
            icon: Icons.bookmark_added_outlined,
          ),
          if (extraLines.length > 1) ...[
            const SizedBox(height: 12),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: extraLines
                      .skip(1)
                      .map(
                        (line) => Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Text('• $line'),
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class _AssetImageWithFallback extends StatelessWidget {
  const _AssetImageWithFallback({required this.imagePath});

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ByteData>(
      future: rootBundle.load(imagePath),
      builder: (context, snapshot) {
        if (snapshot.hasData && snapshot.data!.lengthInBytes > 400) {
          return Container(
            color: Theme.of(context).colorScheme.surfaceContainerHighest,
            child: InteractiveViewer(
              minScale: 1,
              maxScale: 3,
              child: Image.asset(imagePath, fit: BoxFit.contain),
            ),
          );
        }
        return const _ImageFallback(title: 'Image à ajouter');
      },
    );
  }
}

class _ImageFallback extends StatelessWidget {
  const _ImageFallback({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF1A3B5F), Color(0xFF3FBFBF), Color(0xFFC9A227)],
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.photo_library_rounded,
              size: 44,
              color: Colors.white,
            ),
            const SizedBox(height: 8),
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _LearningCard extends StatelessWidget {
  const _LearningCard({
    required this.title,
    required this.text,
    required this.icon,
  });

  final String title;
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: Theme.of(context).textTheme.titleMedium),
                  const SizedBox(height: 5),
                  Text(text),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
