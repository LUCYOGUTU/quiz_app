import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  const Answer({
    super.key,
    required this.answerQuestion,
    required this.widget,
  });

  final VoidCallback answerQuestion;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: answerQuestion,
        child: widget,
      ),
    );
  }
}
