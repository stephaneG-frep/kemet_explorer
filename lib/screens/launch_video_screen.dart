import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class LaunchVideoScreen extends StatefulWidget {
  const LaunchVideoScreen({super.key, required this.onFinished});

  final VoidCallback onFinished;

  @override
  State<LaunchVideoScreen> createState() => _LaunchVideoScreenState();
}

class _LaunchVideoScreenState extends State<LaunchVideoScreen> {
  static const _playlist = [
    'assets/videos/narmer.mp4',
    'assets/videos/cleopatre_video.mp4',
  ];

  VideoPlayerController? _controller;
  int _index = 0;
  bool _completed = false;

  void _finishOnce() {
    if (_completed) return;
    _completed = true;
    widget.onFinished();
  }

  Future<void> _loadAndPlayCurrent() async {
    if (_index >= _playlist.length) {
      _finishOnce();
      return;
    }

    final next = VideoPlayerController.asset(_playlist[_index]);
    _controller = next;

    try {
      await next.initialize();
      if (!mounted) return;
      setState(() {});
      await next.play();
      next.addListener(_onVideoTick);
    } catch (_) {
      await next.dispose();
      _index += 1;
      if (!mounted) return;
      await _loadAndPlayCurrent();
    }
  }

  Future<void> _playNext() async {
    final current = _controller;
    if (current != null) {
      current.removeListener(_onVideoTick);
      await current.dispose();
    }
    _controller = null;
    _index += 1;
    if (!mounted) return;
    await _loadAndPlayCurrent();
  }

  void _onVideoTick() {
    final c = _controller;
    if (c == null || !c.value.isInitialized) return;
    final done = c.value.position >= c.value.duration && !c.value.isPlaying;
    if (done) {
      _playNext();
    }
  }

  @override
  void initState() {
    super.initState();

    Future<void>.delayed(const Duration(seconds: 20), () {
      if (!mounted) return;
      _finishOnce();
    });

    _loadAndPlayCurrent();
  }

  @override
  void dispose() {
    _controller?.removeListener(_onVideoTick);
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final controller = _controller;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Center(
            child: controller != null && controller.value.isInitialized
                ? AspectRatio(
                    aspectRatio: controller.value.aspectRatio,
                    child: VideoPlayer(controller),
                  )
                : const CircularProgressIndicator(),
          ),
          Positioned(
            top: 40,
            right: 16,
            child: TextButton(
              onPressed: _finishOnce,
              child: const Text('Passer'),
            ),
          ),
        ],
      ),
    );
  }
}
