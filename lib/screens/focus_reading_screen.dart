import 'package:flutter/material.dart';

class FocusReadingScreen extends StatelessWidget {
  const FocusReadingScreen({
    super.key,
    required this.title,
    required this.subtitle,
    required this.text,
    required this.imagePath,
  });

  final String title;
  final String subtitle;
  final String text;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F1DF),
      appBar: AppBar(title: const Text('Lecture Zen')),
      body: ListView(
        padding: const EdgeInsets.all(18),
        children: [
          Text(title, style: Theme.of(context).textTheme.headlineSmall),
          const SizedBox(height: 4),
          Text(subtitle),
          const SizedBox(height: 14),
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Container(
              color: Theme.of(context).colorScheme.surfaceContainerHighest,
              height: 260,
              child: Image.asset(imagePath, fit: BoxFit.contain),
            ),
          ),
          const SizedBox(height: 14),
          Text(text, style: const TextStyle(height: 1.55, fontSize: 16)),
        ],
      ),
    );
  }
}
