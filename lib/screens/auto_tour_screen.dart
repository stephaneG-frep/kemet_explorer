import 'dart:async';

import 'package:flutter/material.dart';

class AutoTourScreen extends StatefulWidget {
  const AutoTourScreen({
    super.key,
    required this.images,
    required this.titles,
    this.initialIndex = 0,
  });

  final List<String> images;
  final List<String> titles;
  final int initialIndex;

  @override
  State<AutoTourScreen> createState() => _AutoTourScreenState();
}

class _AutoTourScreenState extends State<AutoTourScreen> {
  late final PageController _controller;
  late int _index;
  Timer? _timer;
  bool _running = true;

  @override
  void initState() {
    super.initState();
    _index = widget.initialIndex;
    _controller = PageController(initialPage: _index);
    _start();
  }

  void _start() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 18), (_) {
      if (!_running || !_controller.hasClients) return;
      final next = (_index + 1) % widget.images.length;
      _controller.animateToPage(
        next,
        duration: const Duration(milliseconds: 700),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Balade auto • ${_index + 1}/${widget.images.length}'),
        actions: [
          IconButton(
            onPressed: () => setState(() => _running = !_running),
            icon: Icon(_running ? Icons.pause_circle : Icons.play_circle),
          ),
        ],
      ),
      body: PageView.builder(
        controller: _controller,
        itemCount: widget.images.length,
        onPageChanged: (v) => setState(() => _index = v),
        itemBuilder: (context, i) => Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Theme.of(
                      context,
                    ).colorScheme.surfaceContainerHighest,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(widget.images[i], fit: BoxFit.contain),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                widget.titles[i],
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
