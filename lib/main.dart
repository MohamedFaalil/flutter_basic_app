import 'package:basic_app/result.dart';
import 'package:flutter/material.dart';
import './quiz.dart';

// void main(List<String> args) {
//   runApp(BasicApp());
// }

void main() => runApp(const BasicApp());

class BasicApp extends StatefulWidget {
  const BasicApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _BasicAppState();
  }
}

class _BasicAppState extends State<BasicApp> {
  //here _questions variable can be initialized with a value only one time
  // also its value can not be modified too due to const key
  final _questions = const [
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
  void _answerQuestion(double selected_answers_score) {
    setState(() {
      _questionIndex += 1;
      _totalScore += selected_answers_score;
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
    //const is compile time constant, and final is run time constant
    // variable questions can not be modified

/*
 Following operation can not be done:
  01) numberText variable can be modified/changed by assigning new value
    i.e numberText = ["one", "two"];
  02) But its existing value can not be modified
    // var numberText = const ['one'];
    // numberText.add("Two");
*/
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('This is my first app'),
        ),
        body: _questions.length > _questionIndex
            ? Quiz(_questions, _questionIndex, _answerQuestion)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
