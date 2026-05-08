import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class LaunchVideoScreen extends StatefulWidget {
  const LaunchVideoScreen({super.key, required this.onFinished});

  final VoidCallback onFinished;

  @override
  State<LaunchVideoScreen> createState() => _LaunchVideoScreenState();
}

class _LaunchVideoScreenState extends State<LaunchVideoScreen> {
  late final VideoPlayerController _controller;
  bool _completed = false;
  bool _failed = false;

  void _finishOnce() {
    if (_completed) return;
    _completed = true;
    widget.onFinished();
  }

  @override
  void initState() {
    super.initState();
    Future<void>.delayed(const Duration(seconds: 8), () {
      if (!mounted) return;
      if (!_controller.value.isInitialized || _failed) {
        _finishOnce();
      }
    });

    _controller = VideoPlayerController.asset('assets/videos/launch_narmer.mp4')
      ..initialize()
          .then((_) {
            if (!mounted) return;
            setState(() {});
            _controller.play();
          })
          .catchError((_) {
            _failed = true;
            _finishOnce();
          });

    _controller.addListener(() {
      if (!_controller.value.isInitialized) return;
      final finished =
          _controller.value.position >= _controller.value.duration &&
          !_controller.value.isPlaying;
      if (finished) {
        _finishOnce();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Center(
            child: _controller.value.isInitialized
                ? AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: VideoPlayer(_controller),
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
