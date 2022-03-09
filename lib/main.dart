import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var questions = ['가장 좋아하는 색은 무엇인가요?', '가장 좋아하는 동물은 무엇인가요?'];
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('퀴즈 어플'),
          ),
          body: Column(
            children: <Widget>[
              Text('질문!'),
              RaisedButton(
                child: Text('정답 1'),
                onPressed: null,
              ),
              RaisedButton(
                child: Text('정답 2'),
                onPressed: null,
              ),
              RaisedButton(
                child: Text('정답 3'),
                onPressed: null,
              ),
              RaisedButton(
                child: Text('정답 4'),
                onPressed: null,
              ),
              RaisedButton(
                child: Text('정답 5'),
                onPressed: null,
              ),
            ],
          )),
    );
  }
}
