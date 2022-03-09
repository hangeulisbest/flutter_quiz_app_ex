import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  String get resultPhrase {
    var resultText = 'You did it !';
    if (resultScore <= 25) {
      resultText = '잘했어요!';
    } else {
      resultText = '정말 잘했어요!';
    }
    return resultText;
  }

  Result(this.resultScore);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
