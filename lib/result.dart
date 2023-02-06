import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({
    super.key,
    required this.score,
    required this.callback,
  });

  final int score;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'You score is:',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).primaryColor,
            ),
          ),
          Text(
            score.toString(),
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
          if (score >= 20) ...[
            const Text(
              'You are so weird',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
          ] else if (score >= 10 && score < 20) ...[
            const Text(
              'You are definitely normal',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
          ] else if (score >= 0 && score < 10) ...[
            const Text(
              'You are so nice',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
          ] else ...[
            const Text(
              'You don\'t have a score',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
          TextButton(
            onPressed: callback,
            child: const Text('Refresh'),
          ),
        ],
      ),
    );
  }
}
