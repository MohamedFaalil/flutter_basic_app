import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final double totalScore;
  final void Function() resetHandler;
  const Result(this.totalScore, this.resetHandler, {Key? key})
      : super(key: key);

  String get resultPhrase {
    String text;
    if (totalScore >= 80) {
      text = "You are awesome and perfect";
    } else if (totalScore >= 65) {
      text = "You are pretty likable";
    } else if (totalScore >= 45) {
      text = "You are good";
    } else {
      text = "You are so bad";
    }
    return text;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: const TextStyle(
              fontSize: 35,
              color: Colors.orange,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: resetHandler,
            child: const Text(
              "Reset",
              style: TextStyle(
                fontSize: 20,
                color: Colors.pink,
              ),
            ),
          )
        ],
      ),
    );
  }
}
