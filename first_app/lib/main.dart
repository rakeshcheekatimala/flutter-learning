import 'package:flutter/material.dart'; // It has lot of built in widgets , it has bas
import './question.dart';

//This is the funciton that gets executed when the app starts
void main() {
  runApp(MyApp());
  // once this is called build method of MyApp will be called and the widget returned from MyApp will be rendered on the screen
}
// everything in flutter in a widget , we need to create our widget
// to create a widget , create a class that extends StatelessWidget or StatefulWidget

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

// this tells flutter this state belongs to MyApp
// _ makes the scope to private and the MyAppState accessible within this file

class _MyAppState extends State<MyApp> {
  // This will be called by flutter to draw or render the widget on the screen
  // BuildContext context is a object that will be passed by flutter which holds the meta data about the overall application and widgetTree
  var _questionIndex = 0; // make this as private property

  void answerQuestionHandler() {
    // this will trigger the re-render of the application
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite song?',
      'What\'s your favorite sport',
      'What\'s your favorite color'
    ];

    //Scaffhold gives you a base design and structure that gives the colorscheme which looks like a mobileWidget
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('Hello from MyApp')),
            body: Column(
              children: [
                Question(questions[_questionIndex]),
                RaisedButton(
                    onPressed: answerQuestionHandler, child: Text('Answer 1')),
                RaisedButton(
                    onPressed: answerQuestionHandler, child: Text('Answer 2')),
                RaisedButton(
                    onPressed: answerQuestionHandler, child: Text('Answer 3'))
              ],
            )));
    // home is the core widget will be mounted on the screen, this is called named parameters to the constructor
  }
}
