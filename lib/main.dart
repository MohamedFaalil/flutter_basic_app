import 'package:flutter/material.dart';

// void main(List<String> args) {
//   runApp(BasicApp());
// }

void main() => runApp(BasicApp());

class BasicApp extends StatelessWidget {
  void answerQuestion() {
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
            Text('Question!'),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text("Answer 1"),
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text("Answer 2"),
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text("Answer 3"),
            ),
          ],
        ),
      ),
    );
  }
}
