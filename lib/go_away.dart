import 'package:flutter/material.dart';

class GoAway extends StatelessWidget {
  final String message;

  GoAway(this.message);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        message,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 50,
          color: Colors.red,
        ),
      ),
    );
  }
}
