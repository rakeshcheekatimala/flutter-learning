import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function restartQuizHandler;
  Result(this.resultScore, this.restartQuizHandler);

  String get resultPharse {
    if (this.resultScore < 10) {
      return 'You are awesome and peaceful 🙂';
    } else if (this.resultScore > 10 && this.resultScore < 16) {
      return 'You are cool  🙂';
    } else if (this.resultScore > 18) {
      return 'You are superHero 🦸 ';
    } else {
      return 'Damn you are strange 	🐧 ';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(40),
        child: Center(
          child: Column(children: <Widget>[
            Text(
              resultPharse,
              style: TextStyle(fontSize: 30),
            ),
            FlatButton(
              child: Text(
                'Restart Quiz',
                style: TextStyle(fontSize: 30),
              ),
              onPressed: restartQuizHandler,
              textColor: Colors.blue,
            ),
          ]),
        ));
  }
}
