import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

// void main(){
//   runApp(new MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {


  final _questions = [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'text': 'black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1}
      ],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 8},
        {'text': 'Snake', 'score': 6},
        {'text': 'Elephant', 'score': 4},
        {'text': 'Lion', 'score': 2}
      ],
    },
    {
      'questionText': 'Who\'s your fav instructor?',
      'answers': [
        {'text': 'a', 'score': 8},
        {'text': 'b', 'score': 6},
        {'text': 'c', 'score': 4},
        {'text': 'd', 'score': 2}
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz(){
    setState((){
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {

    setState(() {
      _totalScore += score;
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              'My First App',
            ),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  questions: _questions,
                  questionIndex: _questionIndex,
                  answerQuestion: _answerQuestion)
              : Result(totalScore: _totalScore, resetQuiz: _resetQuiz,)),
    );
  }
}
