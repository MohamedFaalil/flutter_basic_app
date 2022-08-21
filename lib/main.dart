import 'package:flutter/material.dart';
import './quiz_collection.dart';

// void main(List<String> args) {
//   runApp(BasicApp());
// }

void main() => runApp(const BasicApp());

class BasicApp extends StatelessWidget {
  const BasicApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
/*
 Following operation can not be done:
  01) numberText variable can not be changed by assigning new value
    var numberText = ['one'];
    i.e numberText = ["one", "two"];
  02) But its existing value can not be modified
    // var numberText = const ['one'];
    // numberText.add("Two");
*/
    return MaterialApp(
      title: "Basic App",
      home: Scaffold(
        appBar: AppBar(
          title: const Text('This is my first app'),
        ),
        body: const QuizCollection(),
      ),
    );
  }
}
