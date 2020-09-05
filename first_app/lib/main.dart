import 'package:flutter/material.dart'; // It has lot of built in widgets , it has bas
import './result.dart';
import './quiz.dart';

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
  var _totalScore = 0;
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color',
      'answers': [
        {'text': 'Cyan', 'score': 10},
        {'text': 'Aquamarine', 'score': 5},
        {'text': 'Orange', 'score': 2},
        {'text': 'DeepPink', 'score': 8},
      ]
    },
    {
      'questionText': 'What\'s your favorite song?',
      'answers': [
        {'text': 'Lonely', 'score': 10},
        {'text': '50 Cents', 'score': 2},
        {'text': 'Summer Time', 'score': 1},
        {'text': 'One Love', 'score': 3},
      ]
    },
    {
      'questionText': 'What\'s your favorite sport',
      'answers': [
        {'text': 'Cricket', 'score': 2},
        {'text': 'Tennis', 'score': 7},
        {'text': 'Table Tennis', 'score': 3},
        {'text': 'Archery', 'score': 1},
      ]
    }
  ];

  void restartQuiz() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  void answerQuestionHandler(int score) {
    // this will trigger the re-render of the application
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    _totalScore += score;
    if (_questionIndex < _questions.length) {
      print('We have more questions , we are currently at');
      print(_questionIndex);
    } else {
      print("You have answered all the questions");
    }
  }

  @override
  Widget build(BuildContext context) {
    //Scaffhold gives you a base design and structure that gives the colorscheme which looks like a mobileWidget
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('Hello from MyApp')),
            body: _questionIndex < _questions.length
                ? Quiz(
                    answerQuestionHandler: answerQuestionHandler,
                    questionIndex: _questionIndex,
                    questions: _questions,
                  )
                : Result(_totalScore, restartQuiz)));
    // home is the core widget will be mounted on the screen, this is called named parameters to the constructor
  }
}
