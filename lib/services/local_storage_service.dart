import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class LocalStorageService {
  static const _favoritesKey = 'favorites_ids';
  static const _onboardingKey = 'onboarding_seen';
  static const _bestQuizScoreKey = 'best_quiz_score';
  static const _lastSectionKey = 'last_section_key';
  static const _ambienceEnabledKey = 'ambience_enabled';
  static const _chatProviderKey = 'chat_provider_key';
  static const _chatConfigsKey = 'chat_provider_configs_json';

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

  Future<void> saveLastSection(String sectionKey) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_lastSectionKey, sectionKey);
  }

  Future<String?> loadLastSection() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_lastSectionKey);
  }

  Future<void> saveAmbienceEnabled(bool enabled) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_ambienceEnabledKey, enabled);
  }

  Future<bool> loadAmbienceEnabled() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_ambienceEnabledKey) ?? false;
  }

  Future<void> saveChatProvider(String providerName) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_chatProviderKey, providerName);
  }

  Future<String?> loadChatProvider() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_chatProviderKey);
  }

  Future<void> saveChatProviderConfigs(
    Map<String, Map<String, String>> data,
  ) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_chatConfigsKey, jsonEncode(data));
  }

  Future<Map<String, Map<String, String>>> loadChatProviderConfigs() async {
    final prefs = await SharedPreferences.getInstance();
    final raw = prefs.getString(_chatConfigsKey);
    if (raw == null || raw.isEmpty) return <String, Map<String, String>>{};

    try {
      final decoded = jsonDecode(raw);
      if (decoded is! Map) return <String, Map<String, String>>{};
      final result = <String, Map<String, String>>{};
      decoded.forEach((key, value) {
        if (key is String && value is Map) {
          result[key] = value.map((k, v) => MapEntry('$k', '$v'));
        }
      });
      return result;
    } catch (_) {
      return <String, Map<String, String>>{};
    }
  }
}
