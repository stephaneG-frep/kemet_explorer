import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key, required this.onDone});

  final Future<void> Function() onDone;

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final controller = PageController();
  int index = 0;

  static const pages = [
    (
      icon: Icons.temple_hindu_rounded,
      title: 'Bienvenue dans Kemet Explorer',
      text:
          'Découvre la mythologie, les pharaons et les monuments de l’Égypte antique.',
    ),
    (
      icon: Icons.travel_explore_rounded,
      title: 'Apprends pas à pas',
      text:
          'Chaque section est pensée pour les débutants curieux, avec des explications claires.',
    ),
    (
      icon: Icons.quiz_rounded,
      title: 'Teste tes connaissances',
      text:
          'Utilise le quiz, la recherche et les favoris pour progresser à ton rythme.',
    ),
  ];

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final last = index == pages.length - 1;
    return Scaffold(
      appBar: AppBar(title: const Text('Kemet Explorer')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: controller,
                onPageChanged: (value) => setState(() => index = value),
                itemCount: pages.length,
                itemBuilder: (_, i) {
                  final page = pages[i];
                  return AnimatedSwitcher(
                    duration: const Duration(milliseconds: 350),
                    child: Column(
                      key: ValueKey(i),
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TweenAnimationBuilder<double>(
                          tween: Tween(begin: 0.8, end: 1),
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeOutBack,
                          builder: (context, value, child) =>
                              Transform.scale(scale: value, child: child),
                          child: CircleAvatar(
                            radius: 48,
                            child: Icon(page.icon, size: 44),
                          ),
                        ),
                        const SizedBox(height: 24),
                        Text(
                          page.title,
                          style: Theme.of(context).textTheme.headlineSmall,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 10),
                        Text(page.text, textAlign: TextAlign.center),
                      ],
                    ),
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                pages.length,
                (i) => AnimatedContainer(
                  duration: const Duration(milliseconds: 250),
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  width: i == index ? 22 : 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: i == index
                        ? Theme.of(context).colorScheme.primary
                        : Theme.of(context).colorScheme.outlineVariant,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: () async {
                  if (!last) {
                    await controller.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeOutCubic,
                    );
                    return;
                  }
                  await widget.onDone();
                },
                child: Text(last ? 'Commencer' : 'Suivant'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
