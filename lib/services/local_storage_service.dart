import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageService {
  static const _favoritesKey = 'favorites_ids';
  static const _onboardingKey = 'onboarding_seen';
  static const _bestQuizScoreKey = 'best_quiz_score';

  Future<Set<String>> loadFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getStringList(_favoritesKey)?.toSet() ?? <String>{};
  }

  Future<void> saveFavorites(Set<String> ids) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList(_favoritesKey, ids.toList());
  }

  Future<bool> isOnboardingSeen() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_onboardingKey) ?? false;
  }

  Future<void> setOnboardingSeen() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_onboardingKey, true);
  }

  Future<int> loadBestQuizScore() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt(_bestQuizScoreKey) ?? 0;
  }

  Future<void> saveBestQuizScore(int score) async {
    final prefs = await SharedPreferences.getInstance();
    final current = prefs.getInt(_bestQuizScoreKey) ?? 0;
    if (score > current) {
      await prefs.setInt(_bestQuizScoreKey, score);
    }
  }
}
