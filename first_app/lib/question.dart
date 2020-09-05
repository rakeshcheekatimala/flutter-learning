import 'package:flutter/material.dart';

class  Question extends StatelessWidget {
  final String questionText; // to avoid changing this property inside class
  // we are telling dart, the value never change after initialization

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
  
}