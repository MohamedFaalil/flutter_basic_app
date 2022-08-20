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
  //here _questions variable can be initialized with a value only one time
  // also its value can not be modified too due to const key
  final _questions = const [
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
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
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
            ? Column(
                children: [
                  Question(
                    questionText:
                        (_questions[_questionIndex]['questionText'] as String),
                  ),
                  ...(_questions[_questionIndex]['answers'] as List)
                      .map((eachAnswer) {
                    return Answer(_answerQuestion, eachAnswer);
                  }).toList(),
                ],
              )
            : const Center(
                child: Text(
                  "You did it!",
                  style: TextStyle(fontSize: 35, color: Colors.blueAccent),
                ),
              ),
      ),
    );
  }
}
