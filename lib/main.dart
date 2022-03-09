import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _MyAppState();
  }

}
class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion(){
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText':'가장 좋아하는 색은 무엇인가요?',
        'answers':[
          '빨강','검정','노랑','파랑'
        ]
      },
      {
        'questionText':'가장 좋아하는 동물은 무엇인가요?',
        'answers':[
          '호랑이','말','고양이','돼지'
        ]
      },
      {
        'questionText':'가장 좋아하는 사람은 누구인가요?',
        'answers':[
          '엄마','아빠','배우자','자식'
        ]
      },
    ];
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('퀴즈 어플'),
          ),
          body: Column(
            children: <Widget>[
              Question(questions[_questionIndex%3]['questionText']),
              ...(questions[_questionIndex%3]['answers'] as List<String>).map((answer){
                  return Answer(_answerQuestion,answer);
              }).toList()
            ],
          )),
    );
  }
}
