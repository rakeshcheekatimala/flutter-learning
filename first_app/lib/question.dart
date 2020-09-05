import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText; // to avoid changing this property inside class
  // we are telling dart, the value never change after initialization

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(width:double.infinity, // this takes the full width of the container
    margin: EdgeInsets.all(10),
    child:Text(
      questionText,
      style: TextStyle(fontSize: 28),
      textAlign: TextAlign.center,
    ));
  }
}
