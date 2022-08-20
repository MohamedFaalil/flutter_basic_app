import 'package:flutter/material.dart';

import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, dynamic>> _questions;
  final int _questionIndex;
  final Function _answerQuestion;
  const Quiz(this._questions, this._questionIndex, this._answerQuestion,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questionText: (_questions[_questionIndex]['questionText'] as String),
        ),
        ...(_questions[_questionIndex]['answers'] as List<Map<String, Object>>)
            .map((each) {
          var answer = (each as Map);
          return Answer(
              _answerQuestion, answer['text'], answer['score'].toDouble());
        }).toList(),
      ],
    );
  }
}
