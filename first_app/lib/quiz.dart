import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestionHandler;
  final int questionIndex;

  Quiz(
      {@required this.questions,
      @required this.answerQuestionHandler,
      @required this.questionIndex});

  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => answerQuestionHandler(answer['score']), answer['text']);
        }).toList() // to tell dart we want a list,it generates a new list when you called toList()
      ],
    );
  }
}
