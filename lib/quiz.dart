import 'dart:ffi';

import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final questions;
  final questionIndex;
  final Function answerQuestion;

  Quiz({this.questions, this.questionIndex, this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => answerQuestion(answer['score']), answer['text'] as String);
        })
      ],
    );
  }
}
