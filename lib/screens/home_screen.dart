import 'package:flutter/material.dart';

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

  @override
  void initState() {
    super.initState();
    _loadFavorites();
  }

  Future<void> _loadFavorites() async {
    final saved = await storage.loadFavorites();
    if (!mounted) return;
    setState(() {
      favorites
        ..clear()
        ..addAll(saved);
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
      ('Quiz', Icons.quiz_rounded, Colors.green.shade700, const QuizScreen()),
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
                  const SizedBox(height: 16),
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
                        return HomeCategoryCard(
                          title: item.$1,
                          icon: item.$2,
                          color: item.$3,
                          onTap: () =>
                              Navigator.of(context).push(_buildRoute(item.$4)),
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
