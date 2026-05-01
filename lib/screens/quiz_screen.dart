import 'package:flutter/material.dart';

import '../data/quiz_data.dart';
import '../services/local_storage_service.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key, this.onQuizFinished});

  final Future<void> Function()? onQuizFinished;

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  final storage = LocalStorageService();
  int current = 0;
  int score = 0;
  int bestScore = 0;
  bool finished = false;

  @override
  void initState() {
    super.initState();
    _loadBestScore();
  }

  Future<void> _loadBestScore() async {
    bestScore = await storage.loadBestQuizScore();
    if (!mounted) return;
    setState(() {});
  }

  Future<void> selectAnswer(int index) async {
    if (finished) return;

    if (quizData[current].correctIndex == index) {
      score++;
    }

    if (current == quizData.length - 1) {
      await storage.saveBestQuizScore(score);
      bestScore = await storage.loadBestQuizScore();
      if (widget.onQuizFinished != null) {
        await widget.onQuizFinished!.call();
      }
      setState(() => finished = true);
    } else {
      setState(() => current++);
    }
  }

  void restartQuiz() {
    setState(() {
      current = 0;
      score = 0;
      finished = false;
    });
  }

  String get resultMessage {
    final ratio = score / quizData.length;
    if (ratio >= 0.8) return 'Excellent, vous maîtrisez très bien le sujet.';
    if (ratio >= 0.5) return 'Bon score, continuez à explorer Kemet.';
    return 'Bon début, refaites le quiz pour progresser.';
  }

  @override
  Widget build(BuildContext context) {
    final question = quizData[current];

    return Scaffold(
      appBar: AppBar(title: const Text('Kemet Explorer')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: finished
            ? Card(
                child: Padding(
                  padding: const EdgeInsets.all(18),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Score final: $score / ${quizData.length}',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      const SizedBox(height: 8),
                      Text('Meilleur score: $bestScore / ${quizData.length}'),
                      const SizedBox(height: 10),
                      Text(resultMessage, textAlign: TextAlign.center),
                      const SizedBox(height: 14),
                      FilledButton.icon(
                        onPressed: restartQuiz,
                        icon: const Icon(Icons.refresh_rounded),
                        label: const Text('Recommencer'),
                      ),
                    ],
                  ),
                ),
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Question ${current + 1} / ${quizData.length}',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 12),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Text(
                        question.question,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  ...List.generate(question.options.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(
                          onPressed: () => selectAnswer(index),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            child: Text(question.options[index]),
                          ),
                        ),
                      ),
                    );
                  }),
                ],
              ),
      ),
    );
  }
}
