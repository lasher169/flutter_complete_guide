import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  var totalScore = 0;
  final VoidCallback resetQuiz;

  Result({required this.totalScore, required this.resetQuiz});

  String get resultPhrase {
    String resultText;

    if(totalScore <= 8){
      resultText = 'You are awesome and innocent $totalScore';
    }else if(totalScore <= 12){
      resultText = 'pretty likeable $totalScore';
    }else if(totalScore <= 16){
      resultText = 'you are strange ... $totalScore';
    }else {
      resultText = 'you are bad ... $totalScore';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(resultPhrase,
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
          ),
          TextButton(onPressed: resetQuiz, child: Text('Restart Quiz',style: TextStyle(color: Colors.purple, fontSize: 20),))
        ],
      ),
    );
  }
}
