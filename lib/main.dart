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

    print("# question index: $_questionIndex");
    print("Option is chosen!");
  }

  @override
  Widget build(BuildContext context) {
    List<String> questions = [
      "What's your favorite color?",
      "What's your favorite animal?",
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('This is my first app'),
        ),
        body: Column(
          children: [
            Question(questionText: questions[_questionIndex]),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ],
        ),
      ),
    );
  }
}
