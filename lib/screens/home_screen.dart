import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import '../data/gods_data.dart';
import '../data/global_gallery_data.dart';
import '../data/monuments_data.dart';
import '../data/pharaohs_data.dart';
import '../data/quiz_data.dart';
import '../services/ambience_service.dart';
import '../services/local_storage_service.dart';
import '../widgets/home_category_card.dart';
import '../widgets/relax_background.dart';
import 'help_guide_screen.dart';
import 'guided_tour_screen.dart';
import 'gallery_screen.dart';
import 'funeral_rites_screen.dart';
import 'chatbot_screen.dart';
import 'history_screen.dart';
import 'launch_video_screen.dart';
import 'monuments_screen.dart';
import 'cartouches_screen.dart';
import 'discoveries_screen.dart';
import 'mythology_screen.dart';
import 'myth_stories_screen.dart';
import 'pharaohs_screen.dart';
import 'quiz_screen.dart';
import 'royal_list_screen.dart';
import 'symbols_screen.dart';
import 'timeline_screen.dart';
import 'writing_systems_screen.dart';
import 'zen_explore_screen.dart';

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
  String? lastSection;
  bool ambienceOn = false;
  int _homeStyleNonce = 1;

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

  bool get _canPlayIntroVideo {
    if (kIsWeb) return false;
    return defaultTargetPlatform == TargetPlatform.android ||
        defaultTargetPlatform == TargetPlatform.iOS;
  }

  Future<void> _replayIntroVideo() async {
    if (!_canPlayIntroVideo) return;
    await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => LaunchVideoScreen(
          onFinished: () {
            if (!Navigator.of(context).canPop()) return;
            Navigator.of(context).pop();
          },
        ),
      ),
    );
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
    if (!mounted) return;
    setState(() => _homeStyleNonce++);
  }

  List<Color> _gradientPair(Color color, int index) {
    final random = Random((_homeStyleNonce * 97) + (index * 13));
    final hsl = HSLColor.fromColor(color);
    final hueShift = random.nextDouble() * 28 - 14;
    final satShift = random.nextDouble() * 0.14 - 0.07;
    final lightShift = random.nextDouble() * 0.18 - 0.09;
    final shifted = hsl
        .withHue((hsl.hue + hueShift) % 360)
        .withSaturation((hsl.saturation + satShift).clamp(0.2, 1.0))
        .withLightness((hsl.lightness + lightShift).clamp(0.2, 0.82));
    final lighter = shifted.withLightness(
      (shifted.lightness + 0.12).clamp(0.0, 1.0),
    );
    final darker = shifted.withLightness(
      (shifted.lightness - 0.16).clamp(0.0, 1.0),
    );
    return [lighter.toColor(), darker.toColor()];
  }

  BorderRadius _shapeFor(int index) {
    final random = Random((_homeStyleNonce * 41) + (index * 19));

    double pick() => 8 + random.nextInt(26).toDouble();

    // On évite 4 coins identiques: au moins un coin peu arrondi et un très arrondi.
    final tl = pick();
    final tr = pick();
    final br = pick();
    final bl = pick();
    final values = [tl, tr, br, bl]..sort();
    final low = values.first.clamp(4, 10).toDouble();
    final high = values.last.clamp(22, 34).toDouble();

    final positions = [tl, tr, br, bl];
    final minIndex = positions.indexOf(values.first);
    final maxIndex = positions.indexOf(values.last);
    positions[minIndex] = low;
    positions[maxIndex] = high;

    return BorderRadius.only(
      topLeft: Radius.circular(positions[0]),
      topRight: Radius.circular(positions[1]),
      bottomRight: Radius.circular(positions[2]),
      bottomLeft: Radius.circular(positions[3]),
    );
  }

  bool _isLemonShape(int index) {
    final random = Random((_homeStyleNonce * 131) + (index * 23));
    return random.nextDouble() < 0.28;
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
      case 'royal_list':
        return const RoyalListScreen();
      case 'monuments':
        return const MonumentsScreen();
      case 'funeral_rites':
        return const FuneralRitesScreen();
      case 'gallery':
        final images = GlobalGalleryData.buildImages();
        final titles = GlobalGalleryData.buildTitles();
        return GalleryScreen(images: images, titles: titles);
      case 'help_guide':
        return const HelpGuideScreen();
      case 'chatbot':
        return const ChatbotScreen();
      case 'symbols':
        return const SymbolsScreen();
      case 'timeline':
        return const TimelineScreen();
      case 'myth_stories':
        return const MythStoriesScreen();
      case 'cartouches':
        return const CartouchesScreen();
      case 'writings':
        return const WritingSystemsScreen();
      case 'discoveries':
        return const DiscoveriesScreen();
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
        'royal_list',
        'Liste royale',
        Icons.format_list_numbered_rounded,
        Colors.deepOrange.shade400,
        const RoyalListScreen(),
      ),
      (
        'monuments',
        'Temples & monuments',
        Icons.temple_hindu_rounded,
        Colors.teal.shade600,
        const MonumentsScreen(),
      ),
      (
        'funeral_rites',
        'Rites funéraires',
        Icons.account_balance_wallet_rounded,
        Colors.brown.shade500,
        const FuneralRitesScreen(),
      ),
      (
        'gallery',
        'Galerie photos',
        Icons.photo_library_rounded,
        Colors.blueGrey.shade600,
        GalleryScreen(
          images: GlobalGalleryData.buildImages(),
          titles: GlobalGalleryData.buildTitles(),
        ),
      ),
      (
        'chatbot',
        'Chatbot',
        Icons.smart_toy_rounded,
        Colors.lightBlue.shade700,
        const ChatbotScreen(),
      ),
      (
        'help_guide',
        'Mode d’emploi',
        Icons.school_rounded,
        Colors.deepOrange.shade300,
        const HelpGuideScreen(),
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
        'myth_stories',
        'Récits mythologiques',
        Icons.menu_book_rounded,
        Colors.deepPurple.shade400,
        const MythStoriesScreen(),
      ),
      (
        'cartouches',
        'Cartouches royaux',
        Icons.circle_outlined,
        Colors.amber.shade800,
        const CartouchesScreen(),
      ),
      (
        'writings',
        'Écritures',
        Icons.translate_rounded,
        Colors.blue.shade700,
        const WritingSystemsScreen(),
      ),
      (
        'discoveries',
        'Découvertes & archéologues',
        Icons.travel_explore_rounded,
        Colors.blueGrey.shade700,
        const DiscoveriesScreen(),
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
    final displayedCategories = [...categories]
      ..shuffle(Random(_homeStyleNonce * 17));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Kemet Explorer'),
        actions: [
          if (_canPlayIntroVideo)
            IconButton(
              icon: const Icon(Icons.play_circle_fill_rounded),
              tooltip: 'Rejouer la vidéo',
              onPressed: _replayIntroVideo,
            ),
          IconButton(
            icon: Icon(
              ambienceOn ? Icons.music_note_rounded : Icons.music_off_rounded,
            ),
            onPressed: _toggleAmbience,
          ),
          IconButton(
            icon: const Icon(Icons.help_outline_rounded),
            tooltip: 'Mode d’emploi',
            onPressed: () =>
                _openSection('help_guide', const HelpGuideScreen()),
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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Explorer l’Égypte antique',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      const SizedBox(height: 6),
                      Text(
                        'Une visite tranquille, visuelle et culturelle.',
                        textAlign: TextAlign.center,
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
                        child: ListView(
                          children: [
                            if (displayedCategories.isNotEmpty)
                              SizedBox(
                                height: 164 + ((_homeStyleNonce % 3) * 10),
                                child: HomeCategoryCard(
                                  title: displayedCategories[0].$2,
                                  icon: displayedCategories[0].$3,
                                  color: displayedCategories[0].$4,
                                  borderRadius: _shapeFor(0),
                                  lemonShape: _isLemonShape(0),
                                  gradientColors: _gradientPair(
                                    displayedCategories[0].$4,
                                    0,
                                  ),
                                  onTap: () => _openSection(
                                    displayedCategories[0].$1,
                                    displayedCategories[0].$5,
                                  ),
                                ),
                              ),
                            const SizedBox(height: 12),
                            for (
                              int i = 1;
                              i < displayedCategories.length;
                              i += 3
                            ) ...[
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  if (i < displayedCategories.length)
                                    Expanded(
                                      flex: 6,
                                      child: SizedBox(
                                        height:
                                            176 +
                                            (((_homeStyleNonce + i) % 3) * 8),
                                        child: HomeCategoryCard(
                                          title: displayedCategories[i].$2,
                                          icon: displayedCategories[i].$3,
                                          color: displayedCategories[i].$4,
                                          borderRadius: _shapeFor(i),
                                          lemonShape: _isLemonShape(i),
                                          gradientColors: _gradientPair(
                                            displayedCategories[i].$4,
                                            i,
                                          ),
                                          onTap: () => _openSection(
                                            displayedCategories[i].$1,
                                            displayedCategories[i].$5,
                                          ),
                                        ),
                                      ),
                                    ),
                                  if (i + 1 < displayedCategories.length) ...[
                                    const SizedBox(width: 12),
                                    Expanded(
                                      flex: 4,
                                      child: SizedBox(
                                        height:
                                            122 +
                                            (((_homeStyleNonce + i) % 2) * 10),
                                        child: HomeCategoryCard(
                                          title: displayedCategories[i + 1].$2,
                                          icon: displayedCategories[i + 1].$3,
                                          color: displayedCategories[i + 1].$4,
                                          borderRadius: _shapeFor(i + 1),
                                          lemonShape: _isLemonShape(i + 1),
                                          gradientColors: _gradientPair(
                                            displayedCategories[i + 1].$4,
                                            i + 1,
                                          ),
                                          onTap: () => _openSection(
                                            displayedCategories[i + 1].$1,
                                            displayedCategories[i + 1].$5,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ],
                              ),
                              if (i + 2 < displayedCategories.length) ...[
                                const SizedBox(height: 12),
                                SizedBox(
                                  height:
                                      116 + (((_homeStyleNonce + i) % 3) * 10),
                                  child: HomeCategoryCard(
                                    title: displayedCategories[i + 2].$2,
                                    icon: displayedCategories[i + 2].$3,
                                    color: displayedCategories[i + 2].$4,
                                    borderRadius: _shapeFor(i + 2),
                                    lemonShape: _isLemonShape(i + 2),
                                    gradientColors: _gradientPair(
                                      displayedCategories[i + 2].$4,
                                      i + 2,
                                    ),
                                    onTap: () => _openSection(
                                      displayedCategories[i + 2].$1,
                                      displayedCategories[i + 2].$5,
                                    ),
                                  ),
                                ),
                              ],
                              const SizedBox(height: 12),
                            ],
                          ],
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
