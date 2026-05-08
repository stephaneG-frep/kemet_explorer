import 'package:audioplayers/audioplayers.dart';

class AmbienceService {
  AmbienceService._();
  static final AmbienceService instance = AmbienceService._();

  final AudioPlayer _player = AudioPlayer();
  bool _initialized = false;
  bool _isPlaying = false;

  bool get isPlaying => _isPlaying;

  Future<void> _init() async {
    if (_initialized) return;
    await _player.setReleaseMode(ReleaseMode.loop);
    _initialized = true;
  }

  Future<void> toggle() async {
    await _init();
    if (_isPlaying) {
      await _player.stop();
      _isPlaying = false;
    } else {
      await _player.stop();
      await _player.setVolume(0.18);
      await _player.play(AssetSource('sounds/musique_kemet.mp3'));
      _isPlaying = true;
    }
  }

  Future<void> stop() async {
    await _player.stop();
    _isPlaying = false;
  }
}
