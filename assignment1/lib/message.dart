import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  final String message;
  Message(this.message);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(5),
        color: Colors.deepOrange,
        padding: EdgeInsets.all(15),
        child: Text(message,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white)));
  }
}
