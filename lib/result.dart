import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable!';
    } else if (resultScore <= 16) {
      resultText = 'You are... strange?!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(resultPhrase,
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold)),
          FlatButton(
            color: Colors.blue,
            textColor: Colors.white,
            child: Text('Restart Quiz'),
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}
