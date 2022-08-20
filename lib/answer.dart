import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;
  final double answerScore;
  const Answer(this.selectHandler, this.answerText, this.answerScore,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          selectHandler(answerScore);
        },
        child: Text(answerText),
      ),
    );
  }
}
