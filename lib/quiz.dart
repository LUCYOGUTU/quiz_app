import 'package:flutter/material.dart';
import 'package:quiz_app/answer.dart';
import 'package:quiz_app/question.dart';

class Quiz extends StatelessWidget {
  const Quiz({
    super.key,
    required this.callback,
    required this.questions,
    required this.questionIndex,
  });

  final Function callback;
  final List questions;
  final int questionIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questionText: questions[questionIndex]['questionText'].toString(),
        ),
        const SizedBox(
          height: 10,
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map(
          (answer) {
            return Answer(
              answerQuestion: () => callback(answer['score']),
              widget: Text(answer['text'].toString()),
            );
          },
        ).toList(),
      ],
    );
  }
}
