import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function onPressHandler;
  final String answerText;
  Answer(this.onPressHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 150,
        height: 60,
        margin: EdgeInsets.all(5),
        child: RaisedButton(
          onPressed: this.onPressHandler,
          color: Colors.cyan,
          textColor: Colors.black,
          child:
              Text(answerText, style: TextStyle(fontStyle: FontStyle.italic)),
        ));
  }
}
