import 'package:flutter/material.dart';

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
            Text(questions[_questionIndex]),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: Text("Answer 1"),
            ),
            ElevatedButton(
              onPressed: () => print("Answer 2 is chosen!"),
              child: Text("Answer 2"),
            ),
            ElevatedButton(
              onPressed: () {
                //....
                print("Answer 3 is chosen!");
              },
              child: Text("Answer 3"),
            ),
          ],
        ),
      ),
    );
  }
}
