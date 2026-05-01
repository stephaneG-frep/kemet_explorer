import 'package:flutter/material.dart';

import '../data/gods_data.dart';
import '../data/monuments_data.dart';
import '../data/pharaohs_data.dart';
import '../data/quiz_data.dart';
import '../services/local_storage_service.dart';
import '../widgets/home_category_card.dart';
import 'history_screen.dart';
import 'monuments_screen.dart';
import 'mythology_screen.dart';
import 'pharaohs_screen.dart';
import 'quiz_screen.dart';
import 'symbols_screen.dart';
import 'timeline_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final storage = LocalStorageService();
  final Set<String> favorites = <String>{};
  bool loadingFavorites = true;
  int bestQuizScore = 0;

  @override
  void initState() {
    super.initState();
    _loadState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _warmImageCache();
    });
  }

  Future<void> _warmImageCache() async {
    final all = [
      ...godsData.map((e) => e.imagePath),
      ...pharaohsData.map((e) => e.imagePath),
      ...monumentsData.map((e) => e.imagePath),
    ];
    for (final path in all) {
      await precacheImage(AssetImage(path), context);
    }
  }

  Future<void> _loadState() async {
    final savedFavorites = await storage.loadFavorites();
    final savedBestScore = await storage.loadBestQuizScore();
    if (!mounted) return;
    setState(() {
      favorites
        ..clear()
        ..addAll(savedFavorites);
      bestQuizScore = savedBestScore;
      loadingFavorites = false;
    });
  }

  Future<void> toggleFavorite(String id) async {
    setState(() {
      if (favorites.contains(id)) {
        favorites.remove(id);
      } else {
        favorites.add(id);
      }
    });
    await storage.saveFavorites(favorites);
  }

  Future<void> refreshBestScore() async {
    bestQuizScore = await storage.loadBestQuizScore();
    if (!mounted) return;
    setState(() {});
  }

  Route<T> _buildRoute<T>(Widget page) {
    return PageRouteBuilder<T>(
      transitionDuration: const Duration(milliseconds: 340),
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final curved = CurvedAnimation(
          parent: animation,
          curve: Curves.easeOutCubic,
        );
        return FadeTransition(
          opacity: curved,
          child: SlideTransition(
            position: Tween(
              begin: const Offset(0.05, 0),
              end: Offset.zero,
            ).animate(curved),
            child: child,
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final quizRatio = bestQuizScore / quizData.length;
    final progress = ((favorites.length / 12) + quizRatio).clamp(0, 1) / 2;

    final badges = <String>[
      if (favorites.length >= 3) 'Collectionneur',
      if (favorites.length >= 6) 'Archiviste',
      if (bestQuizScore >= 3) 'Scribe',
      if (bestQuizScore >= 5) 'Grand prêtre',
    ];

    final categories = [
      (
        'Mythologie',
        Icons.auto_stories_rounded,
        Colors.amber.shade700,
        MythologyScreen(favorites: favorites, onToggleFavorite: toggleFavorite),
      ),
      (
        'Histoire',
        Icons.history_edu_rounded,
        Colors.brown.shade700,
        const HistoryScreen(),
      ),
      (
        'Pharaons',
        Icons.account_balance_rounded,
        Colors.orange.shade700,
        PharaohsScreen(favorites: favorites, onToggleFavorite: toggleFavorite),
      ),
      (
        'Temples & monuments',
        Icons.temple_hindu_rounded,
        Colors.teal.shade600,
        const MonumentsScreen(),
      ),
      (
        'Symboles',
        Icons.stars_rounded,
        Colors.cyan.shade700,
        const SymbolsScreen(),
      ),
      (
        'Chronologie',
        Icons.timeline_rounded,
        Colors.indigo.shade700,
        const TimelineScreen(),
      ),
      (
        'Quiz',
        Icons.quiz_rounded,
        Colors.green.shade700,
        QuizScreen(onQuizFinished: refreshBestScore),
      ),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Kemet Explorer')),
      body: loadingFavorites
          ? const Center(child: CircularProgressIndicator())
          : Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Explorer l’Égypte antique',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'Mythes, histoire, pharaons et plus encore.',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(height: 12),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(14),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Icon(Icons.insights_rounded),
                              const SizedBox(width: 8),
                              Text(
                                'Progression',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              const Spacer(),
                              Text('${(progress * 100).round()}%'),
                            ],
                          ),
                          const SizedBox(height: 8),
                          TweenAnimationBuilder<double>(
                            tween: Tween(begin: 0, end: progress),
                            duration: const Duration(milliseconds: 600),
                            builder: (context, value, _) =>
                                LinearProgressIndicator(
                                  value: value,
                                  minHeight: 8,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Favoris: ${favorites.length} • Meilleur quiz: $bestQuizScore/${quizData.length}',
                          ),
                          if (badges.isNotEmpty) ...[
                            const SizedBox(height: 8),
                            Wrap(
                              spacing: 8,
                              children: badges
                                  .map((b) => Chip(label: Text(b)))
                                  .toList(),
                            ),
                          ],
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Expanded(
                    child: GridView.builder(
                      itemCount: categories.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 1.12,
                            crossAxisSpacing: 12,
                            mainAxisSpacing: 12,
                          ),
                      itemBuilder: (context, index) {
                        final item = categories[index];
                        return TweenAnimationBuilder<double>(
                          tween: Tween(begin: 0, end: 1),
                          duration: Duration(milliseconds: 240 + (index * 60)),
                          curve: Curves.easeOut,
                          builder: (context, value, child) => Opacity(
                            opacity: value,
                            child: Transform.translate(
                              offset: Offset(0, (1 - value) * 14),
                              child: child,
                            ),
                          ),
                          child: HomeCategoryCard(
                            title: item.$1,
                            icon: item.$2,
                            color: item.$3,
                            onTap: () => Navigator.of(
                              context,
                            ).push(_buildRoute(item.$4)),
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
