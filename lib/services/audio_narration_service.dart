import 'package:flutter_tts/flutter_tts.dart';

class AudioNarrationService {
  AudioNarrationService._();

  static final AudioNarrationService instance = AudioNarrationService._();
  final FlutterTts _tts = FlutterTts();
  bool _configured = false;

  Future<void> _configure() async {
    if (_configured) return;
    await _tts.setLanguage('fr-FR');
    await _tts.setSpeechRate(0.46);
    await _tts.setPitch(1.0);
    _configured = true;
  }

  Future<void> speak(String text) async {
    await _configure();
    await _tts.stop();
    await _tts.speak(text);
  }
}
