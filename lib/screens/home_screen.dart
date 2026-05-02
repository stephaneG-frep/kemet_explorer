import 'package:flutter/material.dart';

import '../data/gods_data.dart';
import '../data/monuments_data.dart';
import '../data/pharaohs_data.dart';
import '../data/quiz_data.dart';
import '../services/ambience_service.dart';
import '../services/local_storage_service.dart';
import '../services/pdf_export_service.dart';
import '../widgets/home_category_card.dart';
import '../widgets/relax_background.dart';
import 'guided_tour_screen.dart';
import 'history_screen.dart';
import 'monuments_screen.dart';
import 'mythology_screen.dart';
import 'pharaohs_screen.dart';
import 'quiz_screen.dart';
import 'symbols_screen.dart';
import 'timeline_screen.dart';
import 'zen_explore_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final storage = LocalStorageService();
  final pdfExport = PdfExportService();
  final Set<String> favorites = <String>{};
  bool loadingFavorites = true;
  int bestQuizScore = 0;
  String? lastSection;
  bool ambienceOn = false;

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
    final savedLast = await storage.loadLastSection();
    final savedAmbience = await storage.loadAmbienceEnabled();
    if (savedAmbience && !AmbienceService.instance.isPlaying) {
      await AmbienceService.instance.toggle();
    }
    if (!mounted) return;
    setState(() {
      favorites
        ..clear()
        ..addAll(savedFavorites);
      bestQuizScore = savedBestScore;
      lastSection = savedLast;
      ambienceOn = savedAmbience;
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

  Future<void> _toggleAmbience() async {
    await AmbienceService.instance.toggle();
    ambienceOn = AmbienceService.instance.isPlaying;
    await storage.saveAmbienceEnabled(ambienceOn);
    if (!mounted) return;
    setState(() {});
  }

  Route<T> _buildRoute<T>(Widget page) {
    return PageRouteBuilder<T>(
      transitionDuration: const Duration(milliseconds: 520),
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
              begin: const Offset(0.03, 0),
              end: Offset.zero,
            ).animate(curved),
            child: child,
          ),
        );
      },
    );
  }

  Future<void> _openSection(String key, Widget page) async {
    await storage.saveLastSection(key);
    if (!mounted) return;
    setState(() => lastSection = key);
    await Navigator.of(context).push(_buildRoute(page));
  }

  Widget? _pageForKey(String? key) {
    switch (key) {
      case 'mythology':
        return MythologyScreen(
          favorites: favorites,
          onToggleFavorite: toggleFavorite,
        );
      case 'history':
        return const HistoryScreen();
      case 'pharaohs':
        return PharaohsScreen(
          favorites: favorites,
          onToggleFavorite: toggleFavorite,
        );
      case 'monuments':
        return const MonumentsScreen();
      case 'symbols':
        return const SymbolsScreen();
      case 'timeline':
        return const TimelineScreen();
      case 'guided':
        return GuidedTourScreen(
          favorites: favorites,
          onToggleFavorite: toggleFavorite,
        );
      case 'zen':
        return ZenExploreScreen(
          favorites: favorites,
          onToggleFavorite: toggleFavorite,
        );
      default:
        return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    final quizRatio = bestQuizScore / quizData.length;
    final progress = ((favorites.length / 12) + quizRatio).clamp(0, 1) / 2;

    final categories = [
      (
        'mythology',
        'Mythologie',
        Icons.auto_stories_rounded,
        Colors.amber.shade700,
        MythologyScreen(favorites: favorites, onToggleFavorite: toggleFavorite),
      ),
      (
        'history',
        'Histoire',
        Icons.history_edu_rounded,
        Colors.brown.shade700,
        const HistoryScreen(),
      ),
      (
        'pharaohs',
        'Pharaons',
        Icons.account_balance_rounded,
        Colors.orange.shade700,
        PharaohsScreen(favorites: favorites, onToggleFavorite: toggleFavorite),
      ),
      (
        'monuments',
        'Temples & monuments',
        Icons.temple_hindu_rounded,
        Colors.teal.shade600,
        const MonumentsScreen(),
      ),
      (
        'symbols',
        'Symboles',
        Icons.stars_rounded,
        Colors.cyan.shade700,
        const SymbolsScreen(),
      ),
      (
        'timeline',
        'Chronologie',
        Icons.timeline_rounded,
        Colors.indigo.shade700,
        const TimelineScreen(),
      ),
      (
        'guided',
        'Parcours guidé',
        Icons.route_rounded,
        Colors.deepOrange.shade600,
        GuidedTourScreen(
          favorites: favorites,
          onToggleFavorite: toggleFavorite,
        ),
      ),
      (
        'quiz',
        'Quiz (plus tard)',
        Icons.quiz_rounded,
        Colors.green.shade700,
        QuizScreen(onQuizFinished: refreshBestScore),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Kemet Explorer'),
        actions: [
          IconButton(
            icon: Icon(
              ambienceOn ? Icons.music_note_rounded : Icons.music_off_rounded,
            ),
            onPressed: _toggleAmbience,
          ),
          IconButton(
            icon: const Icon(Icons.picture_as_pdf_rounded),
            onPressed: () => pdfExport.exportKemetBooklet(
              title: 'Carnet de visite Kemet',
              sections: [
                'Favoris enregistrés: ${favorites.length}',
                'Meilleur score Quiz: $bestQuizScore/${quizData.length}',
                'Parcours détente conseillé: Histoire > Mythologie > Monuments > Symboles',
              ],
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          const RelaxBackground(),
          loadingFavorites
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
                        'Une visite tranquille, visuelle et culturelle.',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: FilledButton.icon(
                              onPressed: () => _openSection(
                                'zen',
                                ZenExploreScreen(
                                  favorites: favorites,
                                  onToggleFavorite: toggleFavorite,
                                ),
                              ),
                              icon: const Icon(Icons.spa_rounded),
                              label: const Text('Parcours Zen'),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: OutlinedButton.icon(
                              onPressed: lastSection == null
                                  ? null
                                  : () {
                                      final page = _pageForKey(lastSection);
                                      if (page != null) {
                                        _openSection(lastSection!, page);
                                      }
                                    },
                              icon: const Icon(Icons.play_arrow_rounded),
                              label: const Text('Continuer'),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
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
                                    'Progression douce',
                                    style: Theme.of(
                                      context,
                                    ).textTheme.titleMedium,
                                  ),
                                  const Spacer(),
                                  Text('${(progress * 100).round()}%'),
                                ],
                              ),
                              const SizedBox(height: 8),
                              TweenAnimationBuilder<double>(
                                tween: Tween(begin: 0, end: progress),
                                duration: const Duration(milliseconds: 800),
                                builder: (context, value, _) =>
                                    LinearProgressIndicator(
                                      value: value,
                                      minHeight: 8,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                'Favoris: ${favorites.length} • Quiz en pause pour le moment',
                              ),
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
                              duration: Duration(
                                milliseconds: 300 + (index * 70),
                              ),
                              curve: Curves.easeOut,
                              builder: (context, value, child) => Opacity(
                                opacity: value,
                                child: Transform.translate(
                                  offset: Offset(0, (1 - value) * 14),
                                  child: child,
                                ),
                              ),
                              child: HomeCategoryCard(
                                title: item.$2,
                                icon: item.$3,
                                color: item.$4,
                                onTap: () => _openSection(item.$1, item.$5),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
        ],
      ),
    );
  }
}
