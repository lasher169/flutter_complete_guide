import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final VoidCallback selectHandler;
  Answer(
    this.selectHandler,
    this.answerText,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateColor.resolveWith((states) => Colors.green),
              foregroundColor:
                  MaterialStateColor.resolveWith((states) => Colors.white)),
          child: Text(this.answerText),
          onPressed: selectHandler),
    );
  }
}
