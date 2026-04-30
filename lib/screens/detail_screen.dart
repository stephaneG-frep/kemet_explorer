import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widgets/section_title.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({
    super.key,
    required this.title,
    required this.subtitle,
    required this.description,
    this.extraLines = const [],
    this.imagePath,
    this.isFavorite = false,
    this.onFavoriteToggle,
  });

  final String title;
  final String subtitle;
  final String description;
  final List<String> extraLines;
  final String? imagePath;
  final bool isFavorite;
  final VoidCallback? onFavoriteToggle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kemet Explorer'),
        actions: [
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
                height: 220,
                child: _AssetImageWithFallback(imagePath: imagePath!),
              ),
            ),
          const SizedBox(height: 14),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(14),
              child: Text(description),
            ),
          ),
          if (extraLines.isNotEmpty) ...[
            const SizedBox(height: 12),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: extraLines
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
          return Image.asset(imagePath, fit: BoxFit.cover);
        }
        return _ImageFallback(title: 'Image à ajouter');
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
