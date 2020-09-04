import 'package:flutter/material.dart'; // It has lot of built in widgets , it has bas

//This is the funciton that gets executed when the app starts
void main() {
  runApp(MyApp());
  // once this is called build method of MyApp will be called and the widget returned from MyApp will be rendered on the screen
}

// everything in flutter in a widget , we need to create our widget
// to create a widget , create a class that extends StatelessWidget or StatefulWidget

class MyApp extends StatelessWidget {
  // This will be called by flutter to draw or render the widget on the screen
  // BuildContext context is a object that will be passed by flutter which holds the meta data about the overall application and widgetTree

  @override
  Widget build(BuildContext context) {
    //Scaffhold gives you a base design and structure that gives the colorscheme which looks like a mobileWidget
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('Hello from MyApp')),
      body: Column(children: [Text('First Question1'),RaisedButton(onPressed: null,child:Text('Answer 1')),RaisedButton(onPressed: null,child:Text('Answer 2'))],)
    ));
    // home is the core widget will be mounted on the screen, this is called named parameters to the constructor
  }
}
