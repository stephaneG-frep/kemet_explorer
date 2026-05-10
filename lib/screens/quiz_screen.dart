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
  int? selectedIndex;
  bool revealAnswer = false;

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
    if (finished || revealAnswer) return;

    final isCorrect = quizData[current].correctIndex == index;
    if (isCorrect) {
      score++;
    }

    setState(() {
      selectedIndex = index;
      revealAnswer = true;
    });

    await Future<void>.delayed(const Duration(milliseconds: 700));

    if (current == quizData.length - 1) {
      await storage.saveBestQuizScore(score);
      bestScore = await storage.loadBestQuizScore();
      if (widget.onQuizFinished != null) {
        await widget.onQuizFinished!.call();
      }
      setState(() => finished = true);
    } else {
      setState(() {
        current++;
        selectedIndex = null;
        revealAnswer = false;
      });
    }
  }

  void restartQuiz() {
    setState(() {
      current = 0;
      score = 0;
      finished = false;
      selectedIndex = null;
      revealAnswer = false;
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
    final progress = (current + (finished ? 1 : 0)) / quizData.length;

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
                  const SizedBox(height: 8),
                  LinearProgressIndicator(
                    value: progress,
                    minHeight: 7,
                    borderRadius: BorderRadius.circular(10),
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
                    final isCorrect = question.correctIndex == index;
                    final isSelected = selectedIndex == index;
                    Color? borderColor;
                    Color? backgroundColor;
                    if (revealAnswer && isCorrect) {
                      borderColor = Colors.green;
                      backgroundColor = Colors.green.withValues(alpha: 0.10);
                    } else if (revealAnswer && isSelected && !isCorrect) {
                      borderColor = Colors.red;
                      backgroundColor = Colors.red.withValues(alpha: 0.10);
                    }
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(
                          onPressed: () => selectAnswer(index),
                          style: OutlinedButton.styleFrom(
                            backgroundColor: backgroundColor,
                            side: BorderSide(
                              color: borderColor ?? Colors.transparent,
                              width: borderColor == null ? 0 : 1.5,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            child: Text(question.options[index]),
                          ),
                        ),
                      ),
                    );
                  }),
                  if (revealAnswer) ...[
                    const SizedBox(height: 6),
                    Text(
                      selectedIndex == question.correctIndex
                          ? 'Bonne réponse'
                          : 'Bonne réponse: ${question.options[question.correctIndex]}',
                      style: TextStyle(
                        color: selectedIndex == question.correctIndex
                            ? Colors.green
                            : Colors.red,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ],
              ),
      ),
    );
  }
}
