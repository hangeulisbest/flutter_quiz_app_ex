import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': '가장 좋아하는 색은 무엇인가요?',
      'answers': [{'text':'빨강','score':10}, {'text':'검정','score':7}, {'text':'노랑','score':5}, {'text':'하양','score':3}]
    },
    {
      'questionText': '가장 좋아하는 동물은 무엇인가요?',
      'answers': [{'text':'돼지','score':10},{'text':'말','score':4},{'text':'고양이','score':15}]
    },
    {
      'questionText': '가장 좋아하는 사람은 누구인가요?',
      'answers': [{'text':'엄마','score':13},{'text':'아빠','score':15}]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {

    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('퀴즈 어플'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions)
              : Result(_totalScore)
              ),
    );
  }
}
