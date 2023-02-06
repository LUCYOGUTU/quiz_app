import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int questionIndex = 0;
  int totalScore = 0;

  void answerQuestion(int score) {
    totalScore += score;
    setState(() {
      questionIndex = questionIndex + 1;
    });
  }

  void resetQuiz() {
    setState(() {
      questionIndex = 0;
      totalScore = 0;
    });
  }

  static const List<Map<String, Object>> _questions = [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {
          'text': 'Black',
          'score': 10,
        },
        {
          'text': 'Red',
          'score': 8,
        },
        {
          'text': 'Green',
          'score': 5,
        },
        {
          'text': 'White',
          'score': 3,
        },
      ],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {
          'text': 'Rabbit',
          'score': 3,
        },
        {
          'text': 'Snake',
          'score': 10,
        },
        {
          'text': 'Elephant',
          'score': 5,
        },
        {
          'text': 'Lion',
          'score': 8,
        },
      ],
    },
    {
      'questionText': 'What\'s your favourite food?',
      'answers': [
        {
          'text': 'Chips',
          'score': 8,
        },
        {
          'text': 'Chicken',
          'score': 10,
        },
        {
          'text': 'Ugali',
          'score': 5,
        },
        {
          'text': 'Mukimo',
          'score': 3,
        },
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'My App',
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: questionIndex < _questions.length
              ? Quiz(
                  callback: answerQuestion,
                  questions: _questions,
                  questionIndex: questionIndex,
                )
              : Result(
                  score: totalScore,
                  callback: resetQuiz,
                ),
        ),
      ),
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}
