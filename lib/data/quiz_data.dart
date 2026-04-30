import '../models/quiz_question.dart';

const quizData = [
  QuizQuestion(
    question: 'Quel dieu est associé au soleil ?',
    options: ['Anubis', 'Râ', 'Osiris', 'Thot'],
    correctIndex: 1,
  ),
  QuizQuestion(
    question: 'Quel pharaon est lié à la Grande Pyramide ?',
    options: ['Khéops', 'Ramsès II', 'Toutânkhamon', 'Akhenaton'],
    correctIndex: 0,
  ),
  QuizQuestion(
    question: 'L’Ankh symbolise principalement...',
    options: ['La guerre', 'La navigation', 'La vie', 'Le désert'],
    correctIndex: 2,
  ),
  QuizQuestion(
    question: 'La Vallée des Rois est surtout...',
    options: ['Un port', 'Une nécropole', 'Un palais', 'Un marché'],
    correctIndex: 1,
  ),
  QuizQuestion(
    question: 'Le Nouvel Empire est connu pour...',
    options: [
      'L’absence de monuments',
      'Son apogée politique',
      'La fin de toute religion',
      'La fermeture des temples',
    ],
    correctIndex: 1,
  ),
];
