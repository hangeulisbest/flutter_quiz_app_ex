import 'package:flutter/material.dart';
import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String,Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({@required this.questions,@required this.answerQuestion,@required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
            children: <Widget>[
              Question(questions[questionIndex%3]['questionText'] as String),
              ...(questions[questionIndex%3]['answers' ] as List<Map<String,Object>>).map((answer){
                  return Answer(() => answerQuestion(answer['score']),answer['text'] as String);
              }).toList()
            ],
        );
  }
}