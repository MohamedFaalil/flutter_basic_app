import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

class QuizCollection extends StatefulWidget {
  const QuizCollection({Key? key}) : super(key: key);

  @override
  State<QuizCollection> createState() => _QuizCollectionState();
}

class _QuizCollectionState extends State<QuizCollection> {
  //here _questions variable can be initialized with a value only one time
  // also its value can not be modified too due to const key
  final _questions = const [
    //const is compile time constant, and final is run time constant
    // variable questions can not be modified
    {
      'questionText': "What's your favorite color?",
      'answers': [
        {
          'text': 'Black',
          'score': 13,
        },
        {
          'text': 'Red',
          'score': 27,
        },
        {
          'text': 'Green',
          'score': 35,
        },
        {
          'text': 'White',
          'score': 25,
        },
      ],
    },
    {
      'questionText': "What's your favorite animal?",
      'answers': [
        {
          'text': 'Cat',
          'score': 30,
        },
        {
          'text': 'Horse',
          'score': 20,
        },
        {
          'text': 'Tiger',
          'score': 10,
        },
        {
          'text': 'Rabbit',
          'score': 30,
        },
        {
          'text': 'Elephant',
          'score': 10,
        },
      ],
    },
    {
      'questionText': "What's your favorite instructor?",
      'answers': [
        {
          'text': 'Max',
          'score': 25,
        },
        {
          'text': 'Mosh',
          'score': 25,
        },
        {
          'text': 'Krish',
          'score': 10,
        },
        {
          'text': 'Caleb',
          'score': 25,
        },
        {
          'text': 'Navin',
          'score': 15,
        },
      ],
    },
  ];
  var _questionIndex = 0;
  double _totalScore = 0.0;
  void _answerQuestion(double selectedAnswerScore) {
    setState(() {
      _questionIndex += 1;
      _totalScore += selectedAnswerScore;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return _questions.length > _questionIndex
        ? Quiz(_questions, _questionIndex, _answerQuestion)
        : Result(_totalScore, _resetQuiz);
  }
}
