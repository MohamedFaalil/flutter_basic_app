import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

// void main(List<String> args) {
//   runApp(BasicApp());
// }

void main() => runApp(BasicApp());

class BasicApp extends StatefulWidget {
  const BasicApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _BasicAppState();
  }
}

class _BasicAppState extends State<BasicApp> {
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> questions = [
      {
        'questionText': "What's your favorite color?",
        'answers': [
          'Black',
          'Red',
          'Green',
          'White',
        ],
      },
      {
        'questionText': "What's your favorite animal?",
        'answers': [
          'Cat',
          'Horse',
          'Tiger',
          'Rabbit',
          'Elephant',
        ],
      },
      {
        'questionText': "What's your favorite instructor?",
        'answers': [
          'Max',
          'Mosh',
          'Krish',
          'Caleb',
          'Navin',
        ],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('This is my first app'),
        ),
        body: Column(
          children: [
            Question(questionText: questions[_questionIndex]['questionText']),
            ...(questions[_questionIndex]['answers'] as List).map((eachAnswer) {
              return Answer(_answerQuestion, eachAnswer);
            }).toList(),
          ],
        ),
      ),
    );
  }
}
