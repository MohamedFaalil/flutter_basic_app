import 'package:flutter/material.dart';

// void main(List<String> args) {
//   runApp(BasicApp());
// }

void main() => runApp(BasicApp());

class BasicApp extends StatefulWidget {
  const BasicApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return BasicAppState();
  }
}

class BasicAppState extends State<BasicApp> {
  var questionIndex = 0;
  void answerQuestion() {
    setState(() {
      questionIndex += 1;
    });

    print("# question index: $questionIndex");
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
            Text(questions[questionIndex]),
            ElevatedButton(
              onPressed: answerQuestion,
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
