import 'package:flutter/material.dart';
import 'package:world_of_knowledge/core/app_color.dart';

class QuestionWidget extends StatelessWidget {
  QuestionWidget({
    Key? key,
    required this.question,
    required this.indexAction,
    required this.totalQuestions,
    required this.score,
  }) : super(key: key);

  final String question;
  final int indexAction;
  final int totalQuestions;
  final int score;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.grey,
      child: Padding(
        padding: const EdgeInsets.all(9.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Вопрос',
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              '${indexAction + 1}/$totalQuestions',
              style: TextStyle(
                fontSize: 17,
                color: Colors.white,
              ),
            ),
            Spacer(),
            Text(
              '${question}',
              style: TextStyle(
                  fontSize: 27,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Верно: ${score}',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
